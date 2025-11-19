@interface MIOMiscStreamOutputSettings
+ (id)audioSettingsFromConfig:(id)a3;
+ (id)customEncoderSettingsFromConfig:(id)a3 frameRate:(double)a4 enableAVEHighPerformanceProfile:(BOOL)a5;
+ (id)outputSettingsWithConfig:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4 defaultFrameRate:(double)a5 preferEncoderConfig:(BOOL)a6 enableAVEHighPerformanceProfile:(BOOL)a7;
@end

@implementation MIOMiscStreamOutputSettings

+ (id)outputSettingsWithConfig:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4 defaultFrameRate:(double)a5 preferEncoderConfig:(BOOL)a6 enableAVEHighPerformanceProfile:(BOOL)a7
{
  v7 = a7;
  v9 = a3;
  v10 = [v9 objectForKey:@"StreamEncoderType"];
  v11 = [v10 intValue];

  if (v11 <= 17)
  {
    if (v11 != 16)
    {
      if (v11 == 17)
      {
        v15 = 0;
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    v16 = [objc_opt_class() audioSettingsFromConfig:v9];
  }

  else
  {
    if (v11 != 18)
    {
      if (v11 == 32)
      {
        v13 = [v9 objectForKey:@"CustomOutputSettings"];
        v15 = [[MOVStreamOutputSettings alloc] initWithSettings:v13];
        [(MOVStreamOutputSettings *)v15 applyAdditionalCompressionPropertiesFromRecordingConfig:v9];
        goto LABEL_11;
      }

      if (v11 == 36)
      {
        v12 = [MOVStreamOutputSettings alloc];
        v13 = [v9 objectForKey:@"VCPEncodingEncoderSpec"];
        v14 = [v9 objectForKey:@"AdditionalCompressionProperties"];
        v15 = [(MOVStreamOutputSettings *)v12 initForVCPEncodingWithEncoderSpec:v13 sessopnProperties:v14];

LABEL_11:
        goto LABEL_14;
      }

LABEL_17:
      v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Invalid encoder type." userInfo:0];
      objc_exception_throw(v18);
    }

    v16 = [objc_opt_class() customEncoderSettingsFromConfig:v9 frameRate:v7 enableAVEHighPerformanceProfile:a5];
  }

  v15 = v16;
LABEL_14:

  return v15;
}

+ (id)customEncoderSettingsFromConfig:(id)a3 frameRate:(double)a4 enableAVEHighPerformanceProfile:(BOOL)a5
{
  v6 = [a3 objectForKey:{@"CustomEncoderConfig", a5}];
  if (v6)
  {
    v7 = [[MOVStreamOutputSettings alloc] initWithConfig:v6];
  }

  else
  {
    v7 = [[MOVStreamOutputSettings alloc] initWithFrameRate:1 useCustomEncoderConfig:a4];
  }

  v8 = v7;

  return v8;
}

+ (id)audioSettingsFromConfig:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 objectForKey:@"AudioFormatObject"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 settings];
    [v4 addEntriesFromDictionary:v7];
  }

  v8 = [v3 objectForKey:@"AdditionalAudioSettings"];
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