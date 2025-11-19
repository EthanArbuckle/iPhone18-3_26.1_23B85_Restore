@interface MIOH264StreamOutputSettings
+ (id)outputSettingsMastery:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4 defaultFrameRate:(double)a5 preferEncoderConfig:(BOOL)a6 enableAVEHighPerformanceProfile:(BOOL)a7;
+ (id)outputSettingsWithConfig:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4 defaultFrameRate:(double)a5 preferEncoderConfig:(BOOL)a6 enableAVEHighPerformanceProfile:(BOOL)a7;
@end

@implementation MIOH264StreamOutputSettings

+ (id)outputSettingsWithConfig:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4 defaultFrameRate:(double)a5 preferEncoderConfig:(BOOL)a6 enableAVEHighPerformanceProfile:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v11 = [MIOMastery masteryFromConfig:"masteryFromConfig:formatDescription:frameRate:" formatDescription:a3 frameRate:?];
  v12 = [objc_opt_class() outputSettingsMastery:v11 formatDescription:a4 defaultFrameRate:v8 preferEncoderConfig:v7 enableAVEHighPerformanceProfile:a5];

  return v12;
}

+ (id)outputSettingsMastery:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4 defaultFrameRate:(double)a5 preferEncoderConfig:(BOOL)a6 enableAVEHighPerformanceProfile:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v41[4] = *MEMORY[0x277D85DE8];
  v11 = a3;
  if (v8)
  {
    v12 = *MEMORY[0x277CE25F0];
    v41[0] = MEMORY[0x277CBEC38];
    v13 = *MEMORY[0x277CE2548];
    v40[0] = v12;
    v40[1] = v13;
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
    v40[2] = *MEMORY[0x277CE25A8];
    v41[1] = v14;
    v41[2] = &unk_2868E3B88;
    v15 = [v11 propertyKey];
    v40[3] = v15;
    v16 = [v11 propertyValue];
    v41[3] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:4];
    v18 = [v17 mutableCopy];

    if (v7)
    {
      [MIOHEVCStreamOutputSettings applyHighPerfSettings:v18];
    }

    v19 = [MOVStreamEncoderConfig alloc];
    v20 = +[MIOHEVCStreamOutputSettings encoderSpecification];
    v21 = [(MOVStreamEncoderConfig *)v19 initWithCodecType:1635148593 encoderSpecification:v20 sessionProperties:v18];

    v22 = [[MOVStreamOutputSettings alloc] initWithConfig:v21];
  }

  else
  {
    [MOVStreamIOUtility deriveMaxKeyFrameIntervalFromFps:a5];
    v24 = v23;
    v38[0] = *MEMORY[0x277CE6340];
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
    v39[0] = v25;
    v38[1] = *MEMORY[0x277CE6368];
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
    v39[1] = v26;
    v27 = [v11 propertyKey];
    v38[2] = v27;
    v28 = [v11 propertyValue];
    v39[2] = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
    v18 = [v29 mutableCopy];

    if (v7)
    {
      [MIOHEVCStreamOutputSettings applyHighPerfSettings:v18];
    }

    Dimensions = CMVideoFormatDescriptionGetDimensions(a4);
    v31 = *MEMORY[0x277CE62C8];
    v37[0] = *MEMORY[0x277CE62F8];
    v32 = [MEMORY[0x277CCABB0] numberWithInt:{Dimensions, v31, *MEMORY[0x277CE63C0]}];
    v37[1] = v32;
    v36[2] = *MEMORY[0x277CE6360];
    v33 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(*&Dimensions)];
    v36[3] = *MEMORY[0x277CE6330];
    v37[2] = v33;
    v37[3] = v18;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];

    v22 = [[MOVStreamOutputSettings alloc] initWithSettings:v21];
  }

  v34 = v22;

  return v34;
}

@end