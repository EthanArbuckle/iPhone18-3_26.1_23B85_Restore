@interface CAMBurstSession
- (CAMBurstSession)init;
- (NSString)identifier;
- (id)description;
- (id)performBurstAnalysisForDevice:(int64_t)device;
- (void)addStillImageCaptureResult:(id)result;
- (void)addStillImageLocalPersistenceResult:(id)result withFaces:(id)faces;
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
  identifier = [(CAMBurstSession *)self identifier];
  v6 = [(CAMBurstSession *)self count];
  estimatedCount = [(CAMBurstSession *)self estimatedCount];
  _isFinalized = [(CAMBurstSession *)self _isFinalized];
  v9 = @"NO";
  if (_isFinalized)
  {
    v9 = @"YES";
  }

  v10 = [v3 stringWithFormat:@"<%@ identifier:%@, count:%ld, estimatedCount:%ld, finalized:%@>", v4, identifier, v6, estimatedCount, v9];

  return v10;
}

- (NSString)identifier
{
  _burstImageSet = [(CAMBurstSession *)self _burstImageSet];
  burstId = [_burstImageSet burstId];

  return burstId;
}

- (id)performBurstAnalysisForDevice:(int64_t)device
{
  if ([(CAMBurstSession *)self _isFinalized])
  {
    v4 = 0;
  }

  else
  {
    identifier = [(CAMBurstSession *)self identifier];
    _burstImageSet = [(CAMBurstSession *)self _burstImageSet];
    allImageIdentifiers = [_burstImageSet allImageIdentifiers];
    bestImageIdentifiers = [_burstImageSet bestImageIdentifiers];
    coverImageIdentifier = [_burstImageSet coverImageIdentifier];
    v4 = [[CAMBurstAnalysisResult alloc] initWithIdentifier:identifier allAssetIdentifiers:allImageIdentifiers goodAssetIdentifiers:bestImageIdentifiers bestAssetIdentifier:coverImageIdentifier];
  }

  return v4;
}

- (void)addStillImageCaptureResult:(id)result
{
  resultCopy = result;
  _isFinalized = [(CAMBurstSession *)self _isFinalized];
  v5 = resultCopy;
  if (!_isFinalized)
  {
    error = [resultCopy error];
    if (!error)
    {
      [(CAMBurstSession *)self _setEstimatedCount:[(CAMBurstSession *)self estimatedCount]+ 1];
    }

    v5 = resultCopy;
  }

  MEMORY[0x1EEE66BB8](_isFinalized, v5);
}

- (void)addStillImageLocalPersistenceResult:(id)result withFaces:(id)faces
{
  v28 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  facesCopy = faces;
  if (![(CAMBurstSession *)self _isFinalized])
  {
    captureResult = [resultCopy captureResult];
    error = [captureResult error];
    if (error)
    {
      v10 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CAMBurstSession addStillImageLocalPersistenceResult:error withFaces:v10];
      }
    }

    else
    {
      stillImageUnfilteredPreviewSurface = [captureResult stillImageUnfilteredPreviewSurface];
      metadata = [captureResult metadata];
      v21 = [metadata mutableCopy];
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v12 = facesCopy;
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

            burstMetadataRepresentation = [*(*(&v23 + 1) + 8 * i) burstMetadataRepresentation];
            [v11 addObject:burstMetadataRepresentation];
          }

          v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v14);
      }

      [v21 setObject:v11 forKey:@"AccumulatedFaceMetadata"];
      localPersistenceUUID = [resultCopy localPersistenceUUID];
      _burstImageSet = [(CAMBurstSession *)self _burstImageSet];
      [_burstImageSet addImageFromIOSurface:stillImageUnfilteredPreviewSurface properties:v21 identifier:localPersistenceUUID completionBlock:0];
      [(CAMBurstSession *)self _setCount:[(CAMBurstSession *)self count]+ 1];

      v10 = metadata;
      error = 0;
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