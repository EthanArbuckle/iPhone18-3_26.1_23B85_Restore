@interface CAMVideoRecordFaceMetadataCommand
- (CAMVideoRecordFaceMetadataCommand)initWithCoder:(id)a3;
- (CAMVideoRecordFaceMetadataCommand)initWithEnabled:(BOOL)a3;
- (id)_connectionForMovieFileOutput:(id)a3 metadataPortType:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_addMetadataConnectionForPortType:(id)a3 videoDeviceInput:(id)a4 movieFileOutput:(id)a5 captureSession:(id)a6;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMVideoRecordFaceMetadataCommand

- (CAMVideoRecordFaceMetadataCommand)initWithEnabled:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CAMVideoRecordFaceMetadataCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMVideoRecordFaceMetadataCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMVideoRecordFaceMetadataCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__enabled = [v4 decodeBoolForKey:@"CAMVideoRecordFaceMetadataCommandEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMVideoRecordFaceMetadataCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[CAMVideoRecordFaceMetadataCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMVideoRecordFaceMetadataCommandEnabled"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMVideoRecordFaceMetadataCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMVideoRecordFaceMetadataCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  v11 = [v4 currentMovieFileOutput];
  v5 = [v4 currentVideoDeviceInput];
  v6 = [v4 currentCaptureSession];

  if (v11 && v5 && v6)
  {
    v7 = *MEMORY[0x1E69877B0];
    v8 = [(CAMVideoRecordFaceMetadataCommand *)self _connectionForMovieFileOutput:v11 metadataPortType:*MEMORY[0x1E69877B0]];
    v9 = [(CAMVideoRecordFaceMetadataCommand *)self _isEnabled];
    v10 = [v8 isEnabled];
    if (v9 || !v8)
    {
      if (!(v10 & 1 | !v9))
      {
        [(CAMVideoRecordFaceMetadataCommand *)self _addMetadataConnectionForPortType:v7 videoDeviceInput:v5 movieFileOutput:v11 captureSession:v6];
      }
    }

    else
    {
      [v6 removeConnection:v8];
    }
  }
}

- (id)_connectionForMovieFileOutput:(id)a3 metadataPortType:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  [v5 connections];
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
        v10 = [v9 inputPorts];
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v22 + 1) + 8 * j) formatDescription];
              if (v15)
              {
                v16 = v15;
                if (CMFormatDescriptionGetMediaType(v15) == 1835365473)
                {
                  if ([(__CFArray *)CMMetadataFormatDescriptionGetIdentifiers(v16) containsObject:v6])
                  {
                    v17 = v9;

                    v7 = v17;
                  }
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
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

- (void)_addMetadataConnectionForPortType:(id)a3 videoDeviceInput:(id)a4 movieFileOutput:(id)a5 captureSession:(id)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v23 = a6;
  v11 = [a4 ports];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [v16 formatDescription];
        if (v17)
        {
          v18 = v17;
          if (CMFormatDescriptionGetMediaType(v17) == 1835365473)
          {
            if ([(__CFArray *)CMMetadataFormatDescriptionGetIdentifiers(v18) containsObject:v9])
            {
              v19 = MEMORY[0x1E6987070];
              v29 = v16;
              v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
              v21 = [v19 connectionWithInputPorts:v20 output:v10];

              if (v21)
              {
                [v23 addConnection:v21];
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

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v13);
  }
}

@end