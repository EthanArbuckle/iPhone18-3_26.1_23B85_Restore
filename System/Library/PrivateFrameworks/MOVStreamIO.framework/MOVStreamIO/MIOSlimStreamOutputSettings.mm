@interface MIOSlimStreamOutputSettings
+ (id)outputSettingsWithConfig:(id)config formatDescription:(opaqueCMFormatDescription *)description defaultFrameRate:(double)rate preferEncoderConfig:(BOOL)encoderConfig enableAVEHighPerformanceProfile:(BOOL)profile;
@end

@implementation MIOSlimStreamOutputSettings

+ (id)outputSettingsWithConfig:(id)config formatDescription:(opaqueCMFormatDescription *)description defaultFrameRate:(double)rate preferEncoderConfig:(BOOL)encoderConfig enableAVEHighPerformanceProfile:(BOOL)profile
{
  encoderConfigCopy = encoderConfig;
  v32[1] = *MEMORY[0x277D85DE8];
  configCopy = config;
  v10 = configCopy;
  if (encoderConfigCopy)
  {
    v11 = [configCopy objectForKey:@"UseSlimXCompression"];
    bOOLValue = [v11 BOOLValue];

    if (bOOLValue)
    {
      v31 = @"InternalCodecType";
      v32[0] = &unk_2868E39C0;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    }

    else
    {
      v13 = MEMORY[0x277CBEC10];
    }

    v24 = [MOVStreamEncoderConfig alloc];
    v25 = [(MOVStreamEncoderConfig *)v24 initWithCodecType:1936484717 encoderSpecification:MEMORY[0x277CBEC10] sessionProperties:v13];
    v23 = [[MOVStreamOutputSettings alloc] initWithConfig:v25];
  }

  else
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(description);
    v15 = *MEMORY[0x277CE62C8];
    v30[0] = @"slim";
    v16 = *MEMORY[0x277CE63C0];
    v29[0] = v15;
    v29[1] = v16;
    v17 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
    v30[1] = v17;
    v29[2] = *MEMORY[0x277CE6360];
    v18 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(*&Dimensions)];
    v30[2] = v18;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];

    v19 = [v10 objectForKey:@"UseSlimXCompression"];
    LODWORD(v18) = [v19 BOOLValue];

    if (v18)
    {
      v20 = [v13 mutableCopy];
      v27 = @"InternalCodecType";
      v28 = &unk_2868E39C0;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      [v20 setObject:v21 forKey:*MEMORY[0x277CE6330]];
      v22 = [v20 copy];

      v13 = v22;
    }

    v23 = [[MOVStreamOutputSettings alloc] initWithSettings:v13];
  }

  return v23;
}

@end