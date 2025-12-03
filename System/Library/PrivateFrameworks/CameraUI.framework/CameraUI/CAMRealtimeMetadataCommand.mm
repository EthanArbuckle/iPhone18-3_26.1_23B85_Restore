@interface CAMRealtimeMetadataCommand
- (CAMRealtimeMetadataCommand)initWithCoder:(id)coder;
- (CAMRealtimeMetadataCommand)initWithTypes:(id)types;
- (id)_metadataObjectTypeForRealtimeMetadataType:(int64_t)type;
- (id)_metadataObjectTypesForRealtimeMetadataTypes:(id)types withAvailableMetadataTypes:(id)metadataTypes;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMRealtimeMetadataCommand

- (CAMRealtimeMetadataCommand)initWithTypes:(id)types
{
  typesCopy = types;
  v10.receiver = self;
  v10.super_class = CAMRealtimeMetadataCommand;
  v5 = [(CAMCaptureCommand *)&v10 init];
  if (v5)
  {
    v6 = [typesCopy copy];
    desiredTypes = v5->__desiredTypes;
    v5->__desiredTypes = v6;

    v8 = v5;
  }

  return v5;
}

- (CAMRealtimeMetadataCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CAMRealtimeMetadataCommand;
  v5 = [(CAMCaptureCommand *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"CAMRealtimeMetadataCommandTypes"];
    desiredTypes = v5->__desiredTypes;
    v5->__desiredTypes = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CAMRealtimeMetadataCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CAMRealtimeMetadataCommand *)self _desiredTypes:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"CAMRealtimeMetadataCommandTypes"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CAMRealtimeMetadataCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:zone];
  _desiredTypes = [(CAMRealtimeMetadataCommand *)self _desiredTypes];
  v6 = v4[3];
  v4[3] = _desiredTypes;

  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  currentVideoDevice = [contextCopy currentVideoDevice];
  if ([currentVideoDevice isFaceDetectionSupported])
  {
    v29 = currentVideoDevice;
    currentCaptureSession = [contextCopy currentCaptureSession];
    currentMetadataOutput = [contextCopy currentMetadataOutput];
    _desiredTypes = [(CAMRealtimeMetadataCommand *)self _desiredTypes];
    v9 = [_desiredTypes containsObject:&unk_1F16C7B20];
    isVideoPreviewHistogramMetadataSupported = [currentMetadataOutput isVideoPreviewHistogramMetadataSupported];
    if (v9 && isVideoPreviewHistogramMetadataSupported)
    {
      [currentMetadataOutput setVideoPreviewHistogramMetadataObjectTypesAvailable:1];
    }

    v11 = [_desiredTypes containsObject:&unk_1F16C7B38];
    isAppClipCodeMetadataSupported = [currentMetadataOutput isAppClipCodeMetadataSupported];
    if (v11 && isAppClipCodeMetadataSupported)
    {
      [currentMetadataOutput setAppClipCodeMetadataObjectTypeAvailable:1];
    }

    v13 = [_desiredTypes containsObject:&unk_1F16C7B50];
    isTextRegionMetadataSupported = [currentMetadataOutput isTextRegionMetadataSupported];
    if (v13 && isTextRegionMetadataSupported)
    {
      [currentMetadataOutput setTextRegionMetadataObjectTypeAvailable:1];
    }

    else if (v13)
    {
      v16 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CAMRealtimeMetadataCommand executeWithContext:v16];
      }
    }

    if ([_desiredTypes containsObject:&unk_1F16C7B68] & 1) != 0 || (objc_msgSend(_desiredTypes, "containsObject:", &unk_1F16C7B80))
    {
      v17 = 1;
    }

    else
    {
      v17 = [_desiredTypes containsObject:&unk_1F16C7B98];
    }

    isHeadMetadataSupported = [currentMetadataOutput isHeadMetadataSupported];
    if (v17 && isHeadMetadataSupported)
    {
      [currentMetadataOutput setHeadMetadataObjectTypesAvailable:1];
    }

    availableMetadataObjectTypes = [currentMetadataOutput availableMetadataObjectTypes];
    v19 = [(CAMRealtimeMetadataCommand *)self _metadataObjectTypesForRealtimeMetadataTypes:_desiredTypes withAvailableMetadataTypes:?];
    metadataObjectTypes = [currentMetadataOutput metadataObjectTypes];
    v21 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v19];
    v22 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:metadataObjectTypes];
    v23 = [v21 isEqual:v22];
    isBeingConfigured = [currentCaptureSession isBeingConfigured];
    v28 = currentCaptureSession;
    if (v23 & 1) != 0 || (isBeingConfigured)
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
      v26 = [currentMetadataOutput connectionWithMediaType:*MEMORY[0x1E69875D0]];
      if ((v25 != 0) != [v26 isEnabled])
      {
        [v26 setEnabled:v25 != 0];
      }

      v15 = v28;
      currentVideoDevice = v29;
      goto LABEL_31;
    }

    [currentMetadataOutput setMetadataObjectTypes:v19];
    goto LABEL_28;
  }

  v15 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [CAMFaceDrivenImageProcessingCommand executeWithContext:v15];
  }

LABEL_31:
}

- (id)_metadataObjectTypesForRealtimeMetadataTypes:(id)types withAvailableMetadataTypes:(id)metadataTypes
{
  v30 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  metadataTypesCopy = metadataTypes;
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = typesCopy;
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
          if ([metadataTypesCopy containsObject:v15])
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

- (id)_metadataObjectTypeForRealtimeMetadataType:(int64_t)type
{
  if (type > 0xB)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_1E76FACA8 + type);
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