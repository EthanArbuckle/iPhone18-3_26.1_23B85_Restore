@interface CAMPanoramaConfigurationCommand
- (CAMPanoramaConfigurationCommand)initWithCoder:(id)a3;
- (CAMPanoramaConfigurationCommand)initWithConfiguration:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMPanoramaConfigurationCommand

- (CAMPanoramaConfigurationCommand)initWithConfiguration:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CAMPanoramaConfigurationCommand;
  v6 = [(CAMCaptureCommand *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__configuration, a3);
    v8 = v7;
  }

  return v7;
}

- (CAMPanoramaConfigurationCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CAMPanoramaConfigurationCommand;
  v5 = [(CAMCaptureCommand *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"CAMPanoramaConfigurationCommandConfiguration"];
    configuration = v5->__configuration;
    v5->__configuration = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CAMPanoramaConfigurationCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v6 encodeWithCoder:v4];
  v5 = [(CAMPanoramaConfigurationCommand *)self _configuration:v6.receiver];
  [v4 encodeObject:v5 forKey:@"CAMPanoramaConfigurationCommandConfiguration"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CAMPanoramaConfigurationCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:a3];
  v5 = [(CAMPanoramaConfigurationCommand *)self _configuration];
  v6 = v4[3];
  v4[3] = v5;

  return v4;
}

- (void)executeWithContext:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 currentVideoDevice];
  v6 = [v4 currentVideoDeviceFormat];

  v7 = [(CAMPanoramaConfigurationCommand *)self _configuration];
  v8 = v7;
  if (v7)
  {
    [v7 minimumFramerate];
    [v8 maximumFramerate];
    if ([v6 cam_supportsPanoramaConfiguration:v8])
    {
      [v8 minimumFramerate];
      [v5 setActiveVideoMinFrameDuration:buf];
      [v8 maximumFramerate];
LABEL_6:
      [v5 setActiveVideoMaxFrameDuration:buf];
      goto LABEL_10;
    }
  }

  else if ([v6 cam_supportsPanoramaConfiguration:0])
  {
    memset(buf, 0, 24);
    [v5 setActiveVideoMinFrameDuration:buf];
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
    v14 = v6;
    _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring attempt to set invalid panorama framerates (%lld/%d and %lld/%d) for the current format %{public}@", buf, 0x2Cu);
  }

LABEL_10:
}

@end