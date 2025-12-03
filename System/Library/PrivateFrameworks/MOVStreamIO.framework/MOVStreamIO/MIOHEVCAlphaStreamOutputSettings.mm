@interface MIOHEVCAlphaStreamOutputSettings
+ (id)outputSettingsWithConfig:(id)config formatDescription:(opaqueCMFormatDescription *)description defaultFrameRate:(double)rate preferEncoderConfig:(BOOL)encoderConfig enableAVEHighPerformanceProfile:(BOOL)profile;
@end

@implementation MIOHEVCAlphaStreamOutputSettings

+ (id)outputSettingsWithConfig:(id)config formatDescription:(opaqueCMFormatDescription *)description defaultFrameRate:(double)rate preferEncoderConfig:(BOOL)encoderConfig enableAVEHighPerformanceProfile:(BOOL)profile
{
  profileCopy = profile;
  encoderConfigCopy = encoderConfig;
  v44[4] = *MEMORY[0x277D85DE8];
  configCopy = config;
  v38 = *MEMORY[0x277CE6308];
  v12 = [configCopy objectForKey:@"StreamEncoderType"];
  intValue = [v12 intValue];

  if (intValue == 10)
  {
    +[MIOMastery masteryLossless];
  }

  else
  {
    [MIOMastery masteryFromConfig:configCopy formatDescription:description frameRate:rate];
  }
  v14 = ;
  if (encoderConfigCopy)
  {
    v15 = *MEMORY[0x277CE25F0];
    v44[0] = MEMORY[0x277CBEC38];
    v16 = *MEMORY[0x277CE2548];
    v43[0] = v15;
    v43[1] = v16;
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:rate];
    v43[2] = *MEMORY[0x277CE25A8];
    v44[1] = v17;
    v44[2] = &unk_2868E3B38;
    propertyKey = [v14 propertyKey];
    v43[3] = propertyKey;
    propertyValue = [v14 propertyValue];
    v44[3] = propertyValue;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:4];
    v21 = [v20 mutableCopy];

    if (profileCopy)
    {
      [MIOHEVCStreamOutputSettings applyHighPerfSettings:v21];
    }

    v22 = +[MIOHEVCStreamOutputSettings encoderSpecification];
    v23 = [[MOVStreamEncoderConfig alloc] initWithCodecType:1836415073 encoderSpecification:v22 sessionProperties:v21];
    v24 = [[MOVStreamOutputSettings alloc] initWithConfig:v23];
  }

  else
  {
    [MOVStreamIOUtility deriveMaxKeyFrameIntervalFromFps:rate];
    v26 = v25;
    v41[0] = *MEMORY[0x277CE6340];
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:rate];
    v42[0] = v27;
    v41[1] = *MEMORY[0x277CE6368];
    v28 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
    v42[1] = v28;
    propertyKey2 = [v14 propertyKey];
    v41[2] = propertyKey2;
    propertyValue2 = [v14 propertyValue];
    v42[2] = propertyValue2;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];
    v21 = [v31 mutableCopy];

    if (profileCopy)
    {
      [MIOHEVCStreamOutputSettings applyHighPerfSettings:v21];
    }

    Dimensions = CMVideoFormatDescriptionGetDimensions(description);
    v33 = *MEMORY[0x277CE62C8];
    v40[0] = v38;
    v34 = *MEMORY[0x277CE63C0];
    v39[0] = v33;
    v39[1] = v34;
    v35 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
    v40[1] = v35;
    v39[2] = *MEMORY[0x277CE6360];
    v36 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(*&Dimensions)];
    v39[3] = *MEMORY[0x277CE6330];
    v40[2] = v36;
    v40[3] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];

    v24 = [[MOVStreamOutputSettings alloc] initWithSettings:v22];
  }

  [(MOVStreamOutputSettings *)v24 applyAdditionalCompressionPropertiesFromRecordingConfig:configCopy];

  return v24;
}

@end