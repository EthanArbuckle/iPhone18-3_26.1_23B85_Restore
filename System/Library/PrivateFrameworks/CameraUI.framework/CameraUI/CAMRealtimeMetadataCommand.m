@interface CAMRealtimeMetadataCommand
- (CAMRealtimeMetadataCommand)initWithCoder:(id)a3;
- (CAMRealtimeMetadataCommand)initWithTypes:(id)a3;
- (id)_metadataObjectTypeForRealtimeMetadataType:(int64_t)a3;
- (id)_metadataObjectTypesForRealtimeMetadataTypes:(id)a3 withAvailableMetadataTypes:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMRealtimeMetadataCommand

- (CAMRealtimeMetadataCommand)initWithTypes:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CAMRealtimeMetadataCommand;
  v5 = [(CAMCaptureCommand *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    desiredTypes = v5->__desiredTypes;
    v5->__desiredTypes = v6;

    v8 = v5;
  }

  return v5;
}

- (CAMRealtimeMetadataCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CAMRealtimeMetadataCommand;
  v5 = [(CAMCaptureCommand *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"CAMRealtimeMetadataCommandTypes"];
    desiredTypes = v5->__desiredTypes;
    v5->__desiredTypes = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CAMRealtimeMetadataCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v6 encodeWithCoder:v4];
  v5 = [(CAMRealtimeMetadataCommand *)self _desiredTypes:v6.receiver];
  [v4 encodeObject:v5 forKey:@"CAMRealtimeMetadataCommandTypes"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CAMRealtimeMetadataCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:a3];
  v5 = [(CAMRealtimeMetadataCommand *)self _desiredTypes];
  v6 = v4[3];
  v4[3] = v5;

  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 currentVideoDevice];
  if ([v5 isFaceDetectionSupported])
  {
    v29 = v5;
    v6 = [v4 currentCaptureSession];
    v7 = [v4 currentMetadataOutput];
    v8 = [(CAMRealtimeMetadataCommand *)self _desiredTypes];
    v9 = [v8 containsObject:&unk_1F16C7B20];
    v10 = [v7 isVideoPreviewHistogramMetadataSupported];
    if (v9 && v10)
    {
      [v7 setVideoPreviewHistogramMetadataObjectTypesAvailable:1];
    }

    v11 = [v8 containsObject:&unk_1F16C7B38];
    v12 = [v7 isAppClipCodeMetadataSupported];
    if (v11 && v12)
    {
      [v7 setAppClipCodeMetadataObjectTypeAvailable:1];
    }

    v13 = [v8 containsObject:&unk_1F16C7B50];
    v14 = [v7 isTextRegionMetadataSupported];
    if (v13 && v14)
    {
      [v7 setTextRegionMetadataObjectTypeAvailable:1];
    }

    else if (v13)
    {
      v16 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CAMRealtimeMetadataCommand executeWithContext:v16];
      }
    }

    if ([v8 containsObject:&unk_1F16C7B68] & 1) != 0 || (objc_msgSend(v8, "containsObject:", &unk_1F16C7B80))
    {
      v17 = 1;
    }

    else
    {
      v17 = [v8 containsObject:&unk_1F16C7B98];
    }

    v18 = [v7 isHeadMetadataSupported];
    if (v17 && v18)
    {
      [v7 setHeadMetadataObjectTypesAvailable:1];
    }

    v27 = [v7 availableMetadataObjectTypes];
    v19 = [(CAMRealtimeMetadataCommand *)self _metadataObjectTypesForRealtimeMetadataTypes:v8 withAvailableMetadataTypes:?];
    v20 = [v7 metadataObjectTypes];
    v21 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v19];
    v22 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v20];
    v23 = [v21 isEqual:v22];
    v24 = [v6 isBeingConfigured];
    v28 = v6;
    if (v23 & 1) != 0 || (v24)
    {
      if (v23)
      {
        goto LABEL_28;
      }
    }

    else if (![v19 count])
    {
LABEL_28:
      v25 = [v19 count];
      v26 = [v7 connectionWithMediaType:*MEMORY[0x1E69875D0]];
      if ((v25 != 0) != [v26 isEnabled])
      {
        [v26 setEnabled:v25 != 0];
      }

      v15 = v28;
      v5 = v29;
      goto LABEL_31;
    }

    [v7 setMetadataObjectTypes:v19];
    goto LABEL_28;
  }

  v15 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [CAMFaceDrivenImageProcessingCommand executeWithContext:v15];
  }

LABEL_31:
}

- (id)_metadataObjectTypesForRealtimeMetadataTypes:(id)a3 withAvailableMetadataTypes:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v22;
    *&v10 = 138543362;
    v19 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = -[CAMRealtimeMetadataCommand _metadataObjectTypeForRealtimeMetadataType:](self, "_metadataObjectTypeForRealtimeMetadataType:", [v14 integerValue]);
        if (v15)
        {
          if ([v7 containsObject:v15])
          {
            [v20 addObject:v15];
          }

          else
          {
            v17 = os_log_create("com.apple.camera", "Camera");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v19;
              v28 = v15;
              _os_log_impl(&dword_1A3640000, v17, OS_LOG_TYPE_DEFAULT, "Requested AVMetadataObjectType is unavailable: %{public}@", buf, 0xCu);
            }
          }
        }

        else
        {
          v16 = os_log_create("com.apple.camera", "Camera");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [(CAMRealtimeMetadataCommand *)v25 _metadataObjectTypesForRealtimeMetadataTypes:v14 withAvailableMetadataTypes:&v26, v16];
          }
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v11);
  }

  return v20;
}

- (id)_metadataObjectTypeForRealtimeMetadataType:(int64_t)a3
{
  if (a3 > 0xB)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_1E76FACA8 + a3);
  }

  return v4;
}

- (void)_metadataObjectTypesForRealtimeMetadataTypes:(uint64_t *)a3 withAvailableMetadataTypes:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, uint64_t *a3, NSObject *a4)
{
  v7 = [a2 integerValue];
  *a1 = 134217984;
  *a3 = v7;
  _os_log_error_impl(&dword_1A3640000, a4, OS_LOG_TYPE_ERROR, "Did not find AVMetadataObjectType for CAMRealtimeMetadataType: %ld", a1, 0xCu);
}

@end