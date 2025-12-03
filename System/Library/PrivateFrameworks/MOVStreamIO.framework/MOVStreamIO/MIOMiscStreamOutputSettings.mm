@interface MIOMiscStreamOutputSettings
+ (id)audioSettingsFromConfig:(id)config;
+ (id)customEncoderSettingsFromConfig:(id)config frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile;
+ (id)outputSettingsWithConfig:(id)config formatDescription:(opaqueCMFormatDescription *)description defaultFrameRate:(double)rate preferEncoderConfig:(BOOL)encoderConfig enableAVEHighPerformanceProfile:(BOOL)profile;
@end

@implementation MIOMiscStreamOutputSettings

+ (id)outputSettingsWithConfig:(id)config formatDescription:(opaqueCMFormatDescription *)description defaultFrameRate:(double)rate preferEncoderConfig:(BOOL)encoderConfig enableAVEHighPerformanceProfile:(BOOL)profile
{
  profileCopy = profile;
  configCopy = config;
  v10 = [configCopy objectForKey:@"StreamEncoderType"];
  intValue = [v10 intValue];

  if (intValue <= 17)
  {
    if (intValue != 16)
    {
      if (intValue == 17)
      {
        v15 = 0;
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    v16 = [objc_opt_class() audioSettingsFromConfig:configCopy];
  }

  else
  {
    if (intValue != 18)
    {
      if (intValue == 32)
      {
        v13 = [configCopy objectForKey:@"CustomOutputSettings"];
        v15 = [[MOVStreamOutputSettings alloc] initWithSettings:v13];
        [(MOVStreamOutputSettings *)v15 applyAdditionalCompressionPropertiesFromRecordingConfig:configCopy];
        goto LABEL_11;
      }

      if (intValue == 36)
      {
        v12 = [MOVStreamOutputSettings alloc];
        v13 = [configCopy objectForKey:@"VCPEncodingEncoderSpec"];
        v14 = [configCopy objectForKey:@"AdditionalCompressionProperties"];
        v15 = [(MOVStreamOutputSettings *)v12 initForVCPEncodingWithEncoderSpec:v13 sessopnProperties:v14];

LABEL_11:
        goto LABEL_14;
      }

LABEL_17:
      v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Invalid encoder type." userInfo:0];
      objc_exception_throw(v18);
    }

    v16 = [objc_opt_class() customEncoderSettingsFromConfig:configCopy frameRate:profileCopy enableAVEHighPerformanceProfile:rate];
  }

  v15 = v16;
LABEL_14:

  return v15;
}

+ (id)customEncoderSettingsFromConfig:(id)config frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile
{
  v6 = [config objectForKey:{@"CustomEncoderConfig", profile}];
  if (v6)
  {
    v7 = [[MOVStreamOutputSettings alloc] initWithConfig:v6];
  }

  else
  {
    v7 = [[MOVStreamOutputSettings alloc] initWithFrameRate:1 useCustomEncoderConfig:rate];
  }

  v8 = v7;

  return v8;
}

+ (id)audioSettingsFromConfig:(id)config
{
  configCopy = config;
  v4 = objc_opt_new();
  v5 = [configCopy objectForKey:@"AudioFormatObject"];
  v6 = v5;
  if (v5)
  {
    settings = [v5 settings];
    [v4 addEntriesFromDictionary:settings];
  }

  v8 = [configCopy objectForKey:@"AdditionalAudioSettings"];
  if ([v8 count])
  {
    [v4 addEntriesFromDictionary:v8];
  }

  if ([v4 count])
  {
    v9 = [MOVStreamOutputSettings alloc];
    v10 = [v4 copy];
    v11 = [(MOVStreamOutputSettings *)v9 initWithSettings:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end