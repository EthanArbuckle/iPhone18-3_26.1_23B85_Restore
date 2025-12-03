@interface MIOProResStreamOutputSettings
+ (id)outputSettingsProResEncoderType:(int)type quality:(int64_t)quality formatDescription:(opaqueCMFormatDescription *)description preferEncoderConfig:(BOOL)config;
+ (id)outputSettingsWithConfig:(id)config formatDescription:(opaqueCMFormatDescription *)description defaultFrameRate:(double)rate preferEncoderConfig:(BOOL)encoderConfig enableAVEHighPerformanceProfile:(BOOL)profile;
+ (unsigned)cmCodecTypeFromAVCodecType:(id)type;
@end

@implementation MIOProResStreamOutputSettings

+ (id)outputSettingsWithConfig:(id)config formatDescription:(opaqueCMFormatDescription *)description defaultFrameRate:(double)rate preferEncoderConfig:(BOOL)encoderConfig enableAVEHighPerformanceProfile:(BOOL)profile
{
  encoderConfigCopy = encoderConfig;
  configCopy = config;
  v10 = [configCopy objectForKey:@"StreamEncoderType"];
  intValue = [v10 intValue];

  if (configCopy && ([configCopy objectForKey:@"ProResEncodingQuality"], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v13 = [configCopy objectForKey:@"ProResEncodingQuality"];
    intValue2 = [v13 intValue];
  }

  else
  {
    intValue2 = 1;
  }

  v15 = [objc_opt_class() outputSettingsProResEncoderType:intValue quality:intValue2 formatDescription:description preferEncoderConfig:encoderConfigCopy];

  return v15;
}

+ (id)outputSettingsProResEncoderType:(int)type quality:(int64_t)quality formatDescription:(opaqueCMFormatDescription *)description preferEncoderConfig:(BOOL)config
{
  configCopy = config;
  v26[3] = *MEMORY[0x277D85DE8];
  if (type == 29)
  {
    v8 = @"aprn";
    goto LABEL_20;
  }

  if (type == 30)
  {
    v8 = @"aprh";
    goto LABEL_20;
  }

  if (quality == 3)
  {
    v10 = MEMORY[0x277CE62E8];
LABEL_13:
    v9 = *v10;
    if (type != 15)
    {
      v9 = 0;
    }

    goto LABEL_19;
  }

  if (quality == 2)
  {
    v10 = MEMORY[0x277CE62E0];
    goto LABEL_13;
  }

  if (quality)
  {
    v11 = MEMORY[0x277CE62D0];
    if (type != 15)
    {
      v11 = MEMORY[0x277CE62F0];
    }

    v9 = *v11;
  }

  else
  {
    v9 = *MEMORY[0x277CE62D8];
    if (type != 15)
    {
      v9 = @"ap4x";
    }
  }

LABEL_19:
  v8 = v9;
  if (!v8)
  {
    v24 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CCA5B0] reason:@"ProRes4444 only supports high and medium quality setting." userInfo:0];
    objc_exception_throw(v24);
  }

LABEL_20:
  if (configCopy)
  {
    v12 = [objc_opt_class() cmCodecTypeFromAVCodecType:v8];
    if (!v12)
    {
      v23 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CCA5B0] reason:@"Unknown Prores Codec." userInfo:0];
      objc_exception_throw(v23);
    }

    v13 = [MOVStreamEncoderConfig alloc];
    v14 = [(MOVStreamEncoderConfig *)v13 initWithCodecType:v12 encoderSpecification:MEMORY[0x277CBEC10] sessionProperties:MEMORY[0x277CBEC10]];
    v15 = [[MOVStreamOutputSettings alloc] initWithConfig:v14];
  }

  else
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(description);
    v17 = *MEMORY[0x277CE62C8];
    v26[0] = v8;
    v18 = *MEMORY[0x277CE63C0];
    v25[0] = v17;
    v25[1] = v18;
    v19 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
    v26[1] = v19;
    v25[2] = *MEMORY[0x277CE6360];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(*&Dimensions)];
    v26[2] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];

    v15 = [[MOVStreamOutputSettings alloc] initWithSettings:v21];
  }

  return v15;
}

+ (unsigned)cmCodecTypeFromAVCodecType:(id)type
{
  typeCopy = type;
  v4 = 1634755432;
  if (([typeCopy isEqualToString:*MEMORY[0x277CE62D8]] & 1) == 0)
  {
    if ([typeCopy isEqualToString:*MEMORY[0x277CE62E0]])
    {
      v4 = 1634755443;
    }

    else if ([typeCopy isEqualToString:*MEMORY[0x277CE62E8]])
    {
      v4 = 1634755439;
    }

    else if ([typeCopy isEqualToString:*MEMORY[0x277CE62D0]])
    {
      v4 = 1634755438;
    }

    else
    {
      v4 = 1634743400;
      if (([typeCopy isEqualToString:*MEMORY[0x277CE62F0]] & 1) == 0)
      {
        if ([typeCopy isEqualToString:@"ap4x"])
        {
          v4 = 1634743416;
        }

        else if ([typeCopy isEqualToString:@"aprn"])
        {
          v4 = 1634759278;
        }

        else if ([typeCopy isEqualToString:@"aprh"])
        {
          v4 = 1634759272;
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

  return v4;
}

@end