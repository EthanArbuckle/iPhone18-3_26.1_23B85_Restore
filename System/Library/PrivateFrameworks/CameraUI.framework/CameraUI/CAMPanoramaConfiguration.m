@interface CAMPanoramaConfiguration
+ (id)sharedInstance;
- (CAMPanoramaConfiguration)initWithACTConfiguration:(id)a3;
- (CAMPanoramaConfiguration)initWithCoder:(id)a3;
- (int64_t)maxWidthForDevice:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CAMPanoramaConfiguration

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CAMPanoramaConfiguration sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

void __42__CAMPanoramaConfiguration_sharedInstance__block_invoke()
{
  v2 = ACT_CopyDefaultConfigurationForPanorama();
  v0 = [[CAMPanoramaConfiguration alloc] initWithACTConfiguration:v2];
  v1 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v0;
}

- (CAMPanoramaConfiguration)initWithACTConfiguration:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CAMPanoramaConfiguration;
  v5 = [(CAMPanoramaConfiguration *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKey:*MEMORY[0x1E6985EC8]];
    v5->_sampleBufferWidth = [v6 integerValue];

    v7 = [v4 objectForKey:*MEMORY[0x1E6985EC0]];
    v5->_sampleBufferHeight = [v7 integerValue];

    v8 = [v4 objectForKey:*MEMORY[0x1E6985EF8]];
    v9 = [v8 intValue];

    CMTimeMake(&v18, 1, v9);
    v5->_minimumFramerate = v18;
    v10 = [v4 objectForKey:*MEMORY[0x1E6985ED8]];
    v11 = [v10 intValue];

    CMTimeMake(&v18, 1, v11);
    v5->_maximumFramerate = v18;
    v12 = [v4 objectForKey:*MEMORY[0x1E6985EA0]];
    v5->_ringBufferSize = [v12 intValue];

    v13 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6985EF0]];
    v5->_maxWidth = [v13 integerValue];

    v14 = [v4 objectForKey:*MEMORY[0x1E6985EE8]];
    maxWidthPerDevice = v5->__maxWidthPerDevice;
    v5->__maxWidthPerDevice = v14;

    v16 = v5;
  }

  return v5;
}

- (int64_t)maxWidthForDevice:(int64_t)a3
{
  v5 = [(CAMPanoramaConfiguration *)self maxWidth];
  v6 = [CAMCaptureConversions AVCaptureDeviceTypeForCAMCaptureDevice:a3];
  v7 = [(CAMPanoramaConfiguration *)self _maxWidthPerDevice];

  if (v7 && v6)
  {
    v8 = [(CAMPanoramaConfiguration *)self _maxWidthPerDevice];
    v9 = [v8 objectForKeyedSubscript:v6];

    if (v9)
    {
      v5 = [v9 integerValue];
    }
  }

  return v5;
}

- (CAMPanoramaConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CAMPanoramaConfiguration;
  v5 = [(CAMPanoramaConfiguration *)&v13 init];
  if (v5)
  {
    v5->_ringBufferSize = [v4 decodeInt32ForKey:@"CAMPanoramaConfigurationRingBufferSize"];
    v5->_sampleBufferWidth = [v4 decodeIntegerForKey:@"CAMPanoramaConfigurationSampleBufferWidth"];
    v5->_sampleBufferHeight = [v4 decodeIntegerForKey:@"CAMPanoramaConfigurationSampleBufferHeight"];
    v6 = [v4 decodeObjectForKey:@"CAMPanoramaConfigurationMinimumFramerate"];
    CMTimeMakeFromDictionary(&v12, v6);
    v5->_minimumFramerate = v12;
    v7 = [v4 decodeObjectForKey:@"CAMPanoramaConfigurationMaximumFramerate"];
    CMTimeMakeFromDictionary(&v12, v7);
    v5->_maximumFramerate = v12;
    v5->_maxWidth = [v4 decodeIntegerForKey:@"CAMPanoramaConfigurationMaxWidth"];
    v8 = [v4 decodeObjectForKey:@"CAMPanoramaConfigurationMaxWidthPerDevice"];
    maxWidthPerDevice = v5->__maxWidthPerDevice;
    v5->__maxWidthPerDevice = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  ringBufferSize = self->_ringBufferSize;
  v5 = a3;
  [v5 encodeInt32:ringBufferSize forKey:@"CAMPanoramaConfigurationRingBufferSize"];
  [v5 encodeInteger:self->_sampleBufferWidth forKey:@"CAMPanoramaConfigurationSampleBufferWidth"];
  [v5 encodeInteger:self->_sampleBufferHeight forKey:@"CAMPanoramaConfigurationSampleBufferHeight"];
  v6 = *MEMORY[0x1E695E480];
  minimumFramerate = self->_minimumFramerate;
  v7 = CMTimeCopyAsDictionary(&minimumFramerate, v6);
  [v5 encodeObject:v7 forKey:@"CAMPanoramaConfigurationMinimumFramerate"];
  minimumFramerate = self->_maximumFramerate;
  v8 = CMTimeCopyAsDictionary(&minimumFramerate, v6);
  [v5 encodeObject:v8 forKey:@"CAMPanoramaConfigurationMaximumFramerate"];
  [v5 encodeInteger:self->_maxWidth forKey:@"CAMPanoramaConfigurationMaxWidth"];
  [v5 encodeObject:self->__maxWidthPerDevice forKey:@"CAMPanoramaConfigurationMaxWidthPerDevice"];
}

@end