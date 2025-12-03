@interface CAMVideoRecordFaceMetadataCommand
- (CAMVideoRecordFaceMetadataCommand)initWithCoder:(id)coder;
- (CAMVideoRecordFaceMetadataCommand)initWithEnabled:(BOOL)enabled;
- (id)_connectionForMovieFileOutput:(id)output metadataPortType:(id)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_addMetadataConnectionForPortType:(id)type videoDeviceInput:(id)input movieFileOutput:(id)output captureSession:(id)session;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMVideoRecordFaceMetadataCommand

- (CAMVideoRecordFaceMetadataCommand)initWithEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMVideoRecordFaceMetadataCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMVideoRecordFaceMetadataCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMVideoRecordFaceMetadataCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__enabled = [coderCopy decodeBoolForKey:@"CAMVideoRecordFaceMetadataCommandEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMVideoRecordFaceMetadataCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMVideoRecordFaceMetadataCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMVideoRecordFaceMetadataCommandEnabled"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMVideoRecordFaceMetadataCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMVideoRecordFaceMetadataCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  currentMovieFileOutput = [contextCopy currentMovieFileOutput];
  currentVideoDeviceInput = [contextCopy currentVideoDeviceInput];
  currentCaptureSession = [contextCopy currentCaptureSession];

  if (currentMovieFileOutput && currentVideoDeviceInput && currentCaptureSession)
  {
    v7 = *MEMORY[0x1E69877B0];
    v8 = [(CAMVideoRecordFaceMetadataCommand *)self _connectionForMovieFileOutput:currentMovieFileOutput metadataPortType:*MEMORY[0x1E69877B0]];
    _isEnabled = [(CAMVideoRecordFaceMetadataCommand *)self _isEnabled];
    isEnabled = [v8 isEnabled];
    if (_isEnabled || !v8)
    {
      if (!(isEnabled & 1 | !_isEnabled))
      {
        [(CAMVideoRecordFaceMetadataCommand *)self _addMetadataConnectionForPortType:v7 videoDeviceInput:currentVideoDeviceInput movieFileOutput:currentMovieFileOutput captureSession:currentCaptureSession];
      }
    }

    else
    {
      [currentCaptureSession removeConnection:v8];
    }
  }
}

- (id)_connectionForMovieFileOutput:(id)output metadataPortType:(id)type
{
  v32 = *MEMORY[0x1E69E9840];
  outputCopy = output;
  typeCopy = type;
  [outputCopy connections];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  v7 = 0;
  if (v21)
  {
    v20 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        inputPorts = [v9 inputPorts];
        v11 = [inputPorts countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(inputPorts);
              }

              formatDescription = [*(*(&v22 + 1) + 8 * j) formatDescription];
              if (formatDescription)
              {
                v16 = formatDescription;
                if (CMFormatDescriptionGetMediaType(formatDescription) == 1835365473)
                {
                  if ([(__CFArray *)CMMetadataFormatDescriptionGetIdentifiers(v16) containsObject:typeCopy])
                  {
                    v17 = v9;

                    v7 = v17;
                  }
                }
              }
            }

            v12 = [inputPorts countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v12);
        }
      }

      v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  return v7;
}

- (void)_addMetadataConnectionForPortType:(id)type videoDeviceInput:(id)input movieFileOutput:(id)output captureSession:(id)session
{
  v31 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  outputCopy = output;
  sessionCopy = session;
  ports = [input ports];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [ports countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(ports);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        formatDescription = [v16 formatDescription];
        if (formatDescription)
        {
          v18 = formatDescription;
          if (CMFormatDescriptionGetMediaType(formatDescription) == 1835365473)
          {
            if ([(__CFArray *)CMMetadataFormatDescriptionGetIdentifiers(v18) containsObject:typeCopy])
            {
              v19 = MEMORY[0x1E6987070];
              v29 = v16;
              v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
              v21 = [v19 connectionWithInputPorts:v20 output:outputCopy];

              if (v21)
              {
                [sessionCopy addConnection:v21];
              }

              else
              {
                v22 = os_log_create("com.apple.camera", "Camera");
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1A3640000, v22, OS_LOG_TYPE_DEFAULT, "Unable to add metadata connection to our capture session, the connection is invalid.", buf, 2u);
                }
              }
            }
          }
        }
      }

      v13 = [ports countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v13);
  }
}

@end