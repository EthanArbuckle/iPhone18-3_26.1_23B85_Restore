@interface CAMPanoramaConfigurationCommand
- (CAMPanoramaConfigurationCommand)initWithCoder:(id)coder;
- (CAMPanoramaConfigurationCommand)initWithConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMPanoramaConfigurationCommand

- (CAMPanoramaConfigurationCommand)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = CAMPanoramaConfigurationCommand;
  v6 = [(CAMCaptureCommand *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__configuration, configuration);
    v8 = v7;
  }

  return v7;
}

- (CAMPanoramaConfigurationCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CAMPanoramaConfigurationCommand;
  v5 = [(CAMCaptureCommand *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"CAMPanoramaConfigurationCommandConfiguration"];
    configuration = v5->__configuration;
    v5->__configuration = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CAMPanoramaConfigurationCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CAMPanoramaConfigurationCommand *)self _configuration:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"CAMPanoramaConfigurationCommandConfiguration"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CAMPanoramaConfigurationCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:zone];
  _configuration = [(CAMPanoramaConfigurationCommand *)self _configuration];
  v6 = v4[3];
  v4[3] = _configuration;

  return v4;
}

- (void)executeWithContext:(id)context
{
  v15 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  currentVideoDevice = [contextCopy currentVideoDevice];
  currentVideoDeviceFormat = [contextCopy currentVideoDeviceFormat];

  _configuration = [(CAMPanoramaConfigurationCommand *)self _configuration];
  v8 = _configuration;
  if (_configuration)
  {
    [_configuration minimumFramerate];
    [v8 maximumFramerate];
    if ([currentVideoDeviceFormat cam_supportsPanoramaConfiguration:v8])
    {
      [v8 minimumFramerate];
      [currentVideoDevice setActiveVideoMinFrameDuration:buf];
      [v8 maximumFramerate];
LABEL_6:
      [currentVideoDevice setActiveVideoMaxFrameDuration:buf];
      goto LABEL_10;
    }
  }

  else if ([currentVideoDeviceFormat cam_supportsPanoramaConfiguration:0])
  {
    memset(buf, 0, 24);
    [currentVideoDevice setActiveVideoMinFrameDuration:buf];
    memset(buf, 0, 24);
    goto LABEL_6;
  }

  v9 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219010;
    *&buf[4] = 0;
    *&buf[12] = 1024;
    *&buf[14] = 0;
    *&buf[18] = 2048;
    *&buf[20] = 0;
    v11 = 1024;
    v12 = 0;
    v13 = 2114;
    v14 = currentVideoDeviceFormat;
    _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring attempt to set invalid panorama framerates (%lld/%d and %lld/%d) for the current format %{public}@", buf, 0x2Cu);
  }

LABEL_10:
}

@end