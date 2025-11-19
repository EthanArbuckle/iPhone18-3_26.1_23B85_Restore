@interface CAMBurstSession
- (CAMBurstSession)init;
- (NSString)identifier;
- (id)description;
- (id)performBurstAnalysisForDevice:(int64_t)a3;
- (void)addStillImageCaptureResult:(id)a3;
- (void)addStillImageLocalPersistenceResult:(id)a3 withFaces:(id)a4;
@end

@implementation CAMBurstSession

- (CAMBurstSession)init
{
  v8.receiver = self;
  v8.super_class = CAMBurstSession;
  v2 = [(CAMBurstSession *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_estimatedCount = 0;
    v2->_count = 0;
    v4 = objc_alloc_init(CAMBurstImageSet);
    burstImageSet = v3->__burstImageSet;
    v3->__burstImageSet = v4;

    v6 = v3;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CAMBurstSession *)self identifier];
  v6 = [(CAMBurstSession *)self count];
  v7 = [(CAMBurstSession *)self estimatedCount];
  v8 = [(CAMBurstSession *)self _isFinalized];
  v9 = @"NO";
  if (v8)
  {
    v9 = @"YES";
  }

  v10 = [v3 stringWithFormat:@"<%@ identifier:%@, count:%ld, estimatedCount:%ld, finalized:%@>", v4, v5, v6, v7, v9];

  return v10;
}

- (NSString)identifier
{
  v2 = [(CAMBurstSession *)self _burstImageSet];
  v3 = [v2 burstId];

  return v3;
}

- (id)performBurstAnalysisForDevice:(int64_t)a3
{
  if ([(CAMBurstSession *)self _isFinalized])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CAMBurstSession *)self identifier];
    v6 = [(CAMBurstSession *)self _burstImageSet];
    v7 = [v6 allImageIdentifiers];
    v8 = [v6 bestImageIdentifiers];
    v9 = [v6 coverImageIdentifier];
    v4 = [[CAMBurstAnalysisResult alloc] initWithIdentifier:v5 allAssetIdentifiers:v7 goodAssetIdentifiers:v8 bestAssetIdentifier:v9];
  }

  return v4;
}

- (void)addStillImageCaptureResult:(id)a3
{
  v7 = a3;
  v4 = [(CAMBurstSession *)self _isFinalized];
  v5 = v7;
  if (!v4)
  {
    v6 = [v7 error];
    if (!v6)
    {
      [(CAMBurstSession *)self _setEstimatedCount:[(CAMBurstSession *)self estimatedCount]+ 1];
    }

    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)addStillImageLocalPersistenceResult:(id)a3 withFaces:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![(CAMBurstSession *)self _isFinalized])
  {
    v8 = [v6 captureResult];
    v9 = [v8 error];
    if (v9)
    {
      v10 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CAMBurstSession addStillImageLocalPersistenceResult:v9 withFaces:v10];
      }
    }

    else
    {
      v20 = [v8 stillImageUnfilteredPreviewSurface];
      v22 = [v8 metadata];
      v21 = [v22 mutableCopy];
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v12 = v7;
      v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v24;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v24 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v23 + 1) + 8 * i) burstMetadataRepresentation];
            [v11 addObject:v17];
          }

          v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v14);
      }

      [v21 setObject:v11 forKey:@"AccumulatedFaceMetadata"];
      v18 = [v6 localPersistenceUUID];
      v19 = [(CAMBurstSession *)self _burstImageSet];
      [v19 addImageFromIOSurface:v20 properties:v21 identifier:v18 completionBlock:0];
      [(CAMBurstSession *)self _setCount:[(CAMBurstSession *)self count]+ 1];

      v10 = v22;
      v9 = 0;
    }
  }
}

- (void)addStillImageLocalPersistenceResult:(uint64_t)a1 withFaces:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Unable to enqueue still image capture result for burst analysis due to a capture error (%{public}@)", &v2, 0xCu);
}

@end