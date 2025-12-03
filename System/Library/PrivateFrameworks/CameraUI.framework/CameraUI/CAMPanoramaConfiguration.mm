@interface CAMPanoramaConfiguration
+ (id)sharedInstance;
- (CAMPanoramaConfiguration)initWithACTConfiguration:(id)configuration;
- (CAMPanoramaConfiguration)initWithCoder:(id)coder;
- (int64_t)maxWidthForDevice:(int64_t)device;
- (void)encodeWithCoder:(id)coder;
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

- (CAMPanoramaConfiguration)initWithACTConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v19.receiver = self;
  v19.super_class = CAMPanoramaConfiguration;
  v5 = [(CAMPanoramaConfiguration *)&v19 init];
  if (v5)
  {
    v6 = [configurationCopy objectForKey:*MEMORY[0x1E6985EC8]];
    v5->_sampleBufferWidth = [v6 integerValue];

    v7 = [configurationCopy objectForKey:*MEMORY[0x1E6985EC0]];
    v5->_sampleBufferHeight = [v7 integerValue];

    v8 = [configurationCopy objectForKey:*MEMORY[0x1E6985EF8]];
    intValue = [v8 intValue];

    CMTimeMake(&v18, 1, intValue);
    v5->_minimumFramerate = v18;
    v10 = [configurationCopy objectForKey:*MEMORY[0x1E6985ED8]];
    intValue2 = [v10 intValue];

    CMTimeMake(&v18, 1, intValue2);
    v5->_maximumFramerate = v18;
    v12 = [configurationCopy objectForKey:*MEMORY[0x1E6985EA0]];
    v5->_ringBufferSize = [v12 intValue];

    v13 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x1E6985EF0]];
    v5->_maxWidth = [v13 integerValue];

    v14 = [configurationCopy objectForKey:*MEMORY[0x1E6985EE8]];
    maxWidthPerDevice = v5->__maxWidthPerDevice;
    v5->__maxWidthPerDevice = v14;

    v16 = v5;
  }

  return v5;
}

- (int64_t)maxWidthForDevice:(int64_t)device
{
  maxWidth = [(CAMPanoramaConfiguration *)self maxWidth];
  v6 = [CAMCaptureConversions AVCaptureDeviceTypeForCAMCaptureDevice:device];
  _maxWidthPerDevice = [(CAMPanoramaConfiguration *)self _maxWidthPerDevice];

  if (_maxWidthPerDevice && v6)
  {
    _maxWidthPerDevice2 = [(CAMPanoramaConfiguration *)self _maxWidthPerDevice];
    v9 = [_maxWidthPerDevice2 objectForKeyedSubscript:v6];

    if (v9)
    {
      maxWidth = [v9 integerValue];
    }
  }

  return maxWidth;
}

- (CAMPanoramaConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CAMPanoramaConfiguration;
  v5 = [(CAMPanoramaConfiguration *)&v13 init];
  if (v5)
  {
    v5->_ringBufferSize = [coderCopy decodeInt32ForKey:@"CAMPanoramaConfigurationRingBufferSize"];
    v5->_sampleBufferWidth = [coderCopy decodeIntegerForKey:@"CAMPanoramaConfigurationSampleBufferWidth"];
    v5->_sampleBufferHeight = [coderCopy decodeIntegerForKey:@"CAMPanoramaConfigurationSampleBufferHeight"];
    v6 = [coderCopy decodeObjectForKey:@"CAMPanoramaConfigurationMinimumFramerate"];
    CMTimeMakeFromDictionary(&v12, v6);
    v5->_minimumFramerate = v12;
    v7 = [coderCopy decodeObjectForKey:@"CAMPanoramaConfigurationMaximumFramerate"];
    CMTimeMakeFromDictionary(&v12, v7);
    v5->_maximumFramerate = v12;
    v5->_maxWidth = [coderCopy decodeIntegerForKey:@"CAMPanoramaConfigurationMaxWidth"];
    v8 = [coderCopy decodeObjectForKey:@"CAMPanoramaConfigurationMaxWidthPerDevice"];
    maxWidthPerDevice = v5->__maxWidthPerDevice;
    v5->__maxWidthPerDevice = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  ringBufferSize = self->_ringBufferSize;
  coderCopy = coder;
  [coderCopy encodeInt32:ringBufferSize forKey:@"CAMPanoramaConfigurationRingBufferSize"];
  [coderCopy encodeInteger:self->_sampleBufferWidth forKey:@"CAMPanoramaConfigurationSampleBufferWidth"];
  [coderCopy encodeInteger:self->_sampleBufferHeight forKey:@"CAMPanoramaConfigurationSampleBufferHeight"];
  v6 = *MEMORY[0x1E695E480];
  minimumFramerate = self->_minimumFramerate;
  v7 = CMTimeCopyAsDictionary(&minimumFramerate, v6);
  [coderCopy encodeObject:v7 forKey:@"CAMPanoramaConfigurationMinimumFramerate"];
  minimumFramerate = self->_maximumFramerate;
  v8 = CMTimeCopyAsDictionary(&minimumFramerate, v6);
  [coderCopy encodeObject:v8 forKey:@"CAMPanoramaConfigurationMaximumFramerate"];
  [coderCopy encodeInteger:self->_maxWidth forKey:@"CAMPanoramaConfigurationMaxWidth"];
  [coderCopy encodeObject:self->__maxWidthPerDevice forKey:@"CAMPanoramaConfigurationMaxWidthPerDevice"];
}

@end