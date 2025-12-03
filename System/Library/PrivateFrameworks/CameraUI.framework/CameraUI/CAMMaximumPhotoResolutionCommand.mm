@interface CAMMaximumPhotoResolutionCommand
- (CAMMaximumPhotoResolutionCommand)initWithCoder:(id)coder;
- (CAMMaximumPhotoResolutionCommand)initWithMaximumPhotoResolution:(int64_t)resolution mode:(int64_t)mode devicePosition:(int64_t)position;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMMaximumPhotoResolutionCommand

- (CAMMaximumPhotoResolutionCommand)initWithMaximumPhotoResolution:(int64_t)resolution mode:(int64_t)mode devicePosition:(int64_t)position
{
  v12.receiver = self;
  v12.super_class = CAMMaximumPhotoResolutionCommand;
  v8 = [(CAMCaptureCommand *)&v12 initWithSubcommands:0];
  v9 = v8;
  if (v8)
  {
    v8->__maximumPhotoResolution = resolution;
    v8->__mode = mode;
    v8->__devicePosition = position;
    v10 = v8;
  }

  return v9;
}

- (CAMMaximumPhotoResolutionCommand)initWithCoder:(id)coder
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CAMMaximumPhotoResolutionCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:coder];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMMaximumPhotoResolutionCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[3] = [(CAMMaximumPhotoResolutionCommand *)self _maximumPhotoResolution];
  v4[4] = [(CAMMaximumPhotoResolutionCommand *)self _mode];
  v4[5] = [(CAMMaximumPhotoResolutionCommand *)self _devicePosition];
  return v4;
}

- (void)executeWithContext:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  currentStillImageOutput = [contextCopy currentStillImageOutput];
  if ([(CAMMaximumPhotoResolutionCommand *)self _maximumPhotoResolution])
  {
    currentVideoDeviceFormat = [contextCopy currentVideoDeviceFormat];
    supportedMaxPhotoDimensionsPrivate = [currentVideoDeviceFormat supportedMaxPhotoDimensionsPrivate];

    if ([supportedMaxPhotoDimensionsPrivate count])
    {
      v8 = +[CAMCaptureCapabilities capabilities];
      v9 = [v8 isSmartFramingSupportedForMode:-[CAMMaximumPhotoResolutionCommand _mode](self devicePosition:{"_mode"), -[CAMMaximumPhotoResolutionCommand _devicePosition](self, "_devicePosition")}];

      v12 = [CAMCaptureConversions CMVideoDimensionsForCAMPhotoResolution:[(CAMMaximumPhotoResolutionCommand *)self _maximumPhotoResolution] wantsSquareDimensions:v9];
      v10 = [MEMORY[0x1E696B098] valueWithBytes:&v12 objCType:"{?=ii}"];
      if ([supportedMaxPhotoDimensionsPrivate containsObject:v10])
      {
        [currentStillImageOutput setMaxPhotoDimensions:v12];
      }

      else
      {
        v11 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          var0 = v12.var0;
          v15 = 1024;
          var1 = v12.var1;
          _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "supportedMaxPhotoDimensions did not contain desired max photo dimensions (%d, %d)! Not setting AVCapturePhotoOutput maxPhotoDimensions", buf, 0xEu);
        }
      }
    }

    else
    {
      v10 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "current AVCaptureDeviceFormat has no supportedMaxPhotoDimensions! Not setting AVCapturePhotoOutput maxPhotoDimensions", buf, 2u);
      }
    }
  }
}

@end