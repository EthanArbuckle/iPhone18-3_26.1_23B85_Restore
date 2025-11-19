@interface MIOHEVCStreamOutputSettings
+ (BOOL)supportsEncoderType:(int)a3;
+ (id)AVEEncoderTypeLosslessMasteringLookUp;
+ (id)AVEEncoderTypeProfileLevelLookUp;
+ (id)AVEEncoderTypeRequiresCustomEncodingLookUp;
+ (id)avfEncoderSpecForEncoderType:(int)a3;
+ (id)encoderSpecification;
+ (id)hevcAVFSettingsWithProfileLevel:(id)a3 encoderType:(int)a4 frameRate:(double)a5 dimensions:(id)a6 mastery:(id)a7 enableAVEHighPerformanceProfile:(BOOL)a8;
+ (id)hevcSettingsWithProfileLevel:(id)a3 encoderType:(int)a4 frameRate:(double)a5 mastery:(id)a6 enableAVEHighPerformanceProfile:(BOOL)a7;
+ (id)masteryFromStreamData:(StreamRecordingData *)a3 withFrameRate:(double)a4;
+ (id)outputBitDepthIfRequiredForEncoderType:(int)a3;
+ (id)outputSettings:(int)a3 frameRate:(double)a4 dimensions:(id)a5 mastery:(id)a6 preferEncoderConfig:(BOOL)a7 enableAVEHighPerformanceProfile:(BOOL)a8;
+ (id)outputSettingsWithConfig:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4 defaultFrameRate:(double)a5 preferEncoderConfig:(BOOL)a6 enableAVEHighPerformanceProfile:(BOOL)a7;
+ (void)applyHighPerfSettings:(id)a3;
@end

@implementation MIOHEVCStreamOutputSettings

+ (id)AVEEncoderTypeRequiresCustomEncodingLookUp
{
  if (+[MIOHEVCStreamOutputSettings AVEEncoderTypeRequiresCustomEncodingLookUp]::onceToken != -1)
  {
    +[MIOHEVCStreamOutputSettings AVEEncoderTypeRequiresCustomEncodingLookUp];
  }

  v3 = +[MIOHEVCStreamOutputSettings AVEEncoderTypeRequiresCustomEncodingLookUp]::lookUp;

  return v3;
}

void __73__MIOHEVCStreamOutputSettings_AVEEncoderTypeRequiresCustomEncodingLookUp__block_invoke()
{
  v0 = +[MIOHEVCStreamOutputSettings AVEEncoderTypeRequiresCustomEncodingLookUp]::lookUp;
  +[MIOHEVCStreamOutputSettings AVEEncoderTypeRequiresCustomEncodingLookUp]::lookUp = MEMORY[0x277CBEC10];
}

+ (id)AVEEncoderTypeLosslessMasteringLookUp
{
  if (+[MIOHEVCStreamOutputSettings AVEEncoderTypeLosslessMasteringLookUp]::onceToken != -1)
  {
    +[MIOHEVCStreamOutputSettings AVEEncoderTypeLosslessMasteringLookUp];
  }

  v3 = +[MIOHEVCStreamOutputSettings AVEEncoderTypeLosslessMasteringLookUp]::lookUp;

  return v3;
}

void __68__MIOHEVCStreamOutputSettings_AVEEncoderTypeLosslessMasteringLookUp__block_invoke()
{
  v3[8] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2868E3258;
  v2[1] = &unk_2868E3270;
  v3[0] = MEMORY[0x277CBEC38];
  v3[1] = MEMORY[0x277CBEC38];
  v2[2] = &unk_2868E3288;
  v2[3] = &unk_2868E32A0;
  v3[2] = MEMORY[0x277CBEC38];
  v3[3] = MEMORY[0x277CBEC38];
  v2[4] = &unk_2868E32B8;
  v2[5] = &unk_2868E32D0;
  v3[4] = MEMORY[0x277CBEC38];
  v3[5] = MEMORY[0x277CBEC38];
  v2[6] = &unk_2868E32E8;
  v2[7] = &unk_2868E3300;
  v3[6] = MEMORY[0x277CBEC38];
  v3[7] = MEMORY[0x277CBEC38];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:8];
  v1 = +[MIOHEVCStreamOutputSettings AVEEncoderTypeLosslessMasteringLookUp]::lookUp;
  +[MIOHEVCStreamOutputSettings AVEEncoderTypeLosslessMasteringLookUp]::lookUp = v0;
}

+ (id)AVEEncoderTypeProfileLevelLookUp
{
  if (+[MIOHEVCStreamOutputSettings AVEEncoderTypeProfileLevelLookUp]::onceToken != -1)
  {
    +[MIOHEVCStreamOutputSettings AVEEncoderTypeProfileLevelLookUp];
  }

  v3 = +[MIOHEVCStreamOutputSettings AVEEncoderTypeProfileLevelLookUp]::lookUp;

  return v3;
}

void __63__MIOHEVCStreamOutputSettings_AVEEncoderTypeProfileLevelLookUp__block_invoke()
{
  v3[16] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2868E3258;
  v2[1] = &unk_2868E3318;
  v3[0] = @"HEVC_Monochrome10_AutoLevel";
  v3[1] = @"HEVC_Monochrome10_AutoLevel";
  v2[2] = &unk_2868E3270;
  v2[3] = &unk_2868E3330;
  v3[2] = @"HEVC_Monochrome_AutoLevel";
  v3[3] = @"HEVC_Monochrome_AutoLevel";
  v2[4] = &unk_2868E3288;
  v2[5] = &unk_2868E3348;
  v3[4] = @"HEVC_Main_AutoLevel";
  v3[5] = @"HEVC_Main_AutoLevel";
  v2[6] = &unk_2868E32A0;
  v2[7] = &unk_2868E3360;
  v3[6] = @"HEVC_Main444_AutoLevel";
  v3[7] = @"HEVC_Main444_AutoLevel";
  v2[8] = &unk_2868E32B8;
  v2[9] = &unk_2868E3378;
  v3[8] = @"HEVC_Main10_AutoLevel";
  v3[9] = @"HEVC_Main10_AutoLevel";
  v2[10] = &unk_2868E32D0;
  v2[11] = &unk_2868E3390;
  v3[10] = @"HEVC_Main44410_AutoLevel";
  v3[11] = @"HEVC_Main44410_AutoLevel";
  v2[12] = &unk_2868E32E8;
  v2[13] = &unk_2868E33A8;
  v3[12] = @"HEVC_Main42210_AutoLevel";
  v3[13] = @"HEVC_Main42210_AutoLevel";
  v2[14] = &unk_2868E3300;
  v2[15] = &unk_2868E33C0;
  v3[14] = @"HEVC_Main42210_AutoLevel";
  v3[15] = @"HEVC_Main42210_AutoLevel";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:16];
  v1 = +[MIOHEVCStreamOutputSettings AVEEncoderTypeProfileLevelLookUp]::lookUp;
  +[MIOHEVCStreamOutputSettings AVEEncoderTypeProfileLevelLookUp]::lookUp = v0;
}

+ (id)outputBitDepthIfRequiredForEncoderType:(int)a3
{
  if ((a3 & 0xFFFFFFFE) == 0x22)
  {
    return &unk_2868E33D8;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)supportsEncoderType:(int)a3
{
  v3 = *&a3;
  v4 = +[MIOHEVCStreamOutputSettings AVEEncoderTypeProfileLevelLookUp];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v6 = [v4 objectForKey:v5];
  v7 = v6 != 0;

  return v7;
}

+ (id)outputSettingsWithConfig:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4 defaultFrameRate:(double)a5 preferEncoderConfig:(BOOL)a6 enableAVEHighPerformanceProfile:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v22 = a3;
  v11 = [v22 objectForKey:@"StreamEncoderType"];
  v12 = [v11 intValue];

  Dimensions = CMVideoFormatDescriptionGetDimensions(a4);
  v14 = +[MIOHEVCStreamOutputSettings AVEEncoderTypeLosslessMasteringLookUp];
  v15 = v8;
  v16 = v7;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
  v18 = [v14 objectForKey:v17];
  LODWORD(v7) = [v18 BOOLValue];

  if (v7)
  {
    +[MIOMastery masteryLossless];
  }

  else
  {
    [MIOMastery masteryFromConfig:v22 formatDescription:a4 frameRate:a5];
  }
  v19 = ;
  v20 = [objc_opt_class() outputSettings:v12 frameRate:Dimensions dimensions:v19 mastery:v15 preferEncoderConfig:v16 enableAVEHighPerformanceProfile:a5];
  [v20 applyAdditionalCompressionPropertiesFromRecordingConfig:v22];

  return v20;
}

+ (id)outputSettings:(int)a3 frameRate:(double)a4 dimensions:(id)a5 mastery:(id)a6 preferEncoderConfig:(BOOL)a7 enableAVEHighPerformanceProfile:(BOOL)a8
{
  v8 = a8;
  v11 = *&a3;
  v12 = a6;
  v13 = +[MIOHEVCStreamOutputSettings AVEEncoderTypeProfileLevelLookUp];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
  v15 = [v13 objectForKey:v14];

  if (!v15)
  {
    v23 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CCA5B0] reason:@"HEVC config not available." userInfo:0];
    objc_exception_throw(v23);
  }

  if (a7 || (+[MIOHEVCStreamOutputSettings AVEEncoderTypeRequiresCustomEncodingLookUp](MIOHEVCStreamOutputSettings, "AVEEncoderTypeRequiresCustomEncodingLookUp"), v16 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "objectForKey:", v17), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "BOOLValue"), v18, v17, v16, (v19 & 1) != 0))
  {
    v20 = [objc_opt_class() hevcSettingsWithProfileLevel:v15 encoderType:v11 frameRate:v12 mastery:v8 enableAVEHighPerformanceProfile:a4];
  }

  else
  {
    v20 = [objc_opt_class() hevcAVFSettingsWithProfileLevel:v15 encoderType:v11 frameRate:a5 dimensions:v12 mastery:v8 enableAVEHighPerformanceProfile:a4];
  }

  v21 = v20;
  if (!v20)
  {
    v24 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CCA5B0] reason:@"HEVC config not available." userInfo:0];
    objc_exception_throw(v24);
  }

  return v21;
}

+ (id)hevcAVFSettingsWithProfileLevel:(id)a3 encoderType:(int)a4 frameRate:(double)a5 dimensions:(id)a6 mastery:(id)a7 enableAVEHighPerformanceProfile:(BOOL)a8
{
  v8 = a8;
  v12 = *&a4;
  v34[4] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a7;
  v15 = *MEMORY[0x277CE25D8];
  v30 = v14;
  v34[0] = v13;
  v16 = *MEMORY[0x277CE2548];
  v33[0] = v15;
  v33[1] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v33[2] = *MEMORY[0x277CE25A8];
  v34[1] = v17;
  v34[2] = &unk_2868E3B28;
  v18 = [v14 propertyKey];
  v33[3] = v18;
  v19 = [v14 propertyValue];
  v34[3] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];
  v21 = [v20 mutableCopy];

  v22 = [objc_opt_class() outputBitDepthIfRequiredForEncoderType:v12];
  if (v22)
  {
    [v21 setObject:v22 forKey:@"OutputBitDepth"];
  }

  [objc_opt_class() adjustAVFCompressionProperties:v21 encoderType:v12];
  if (v8)
  {
    [objc_opt_class() applyHighPerfSettings:v21];
  }

  v23 = *MEMORY[0x277CE62C8];
  v32[0] = *MEMORY[0x277CE6300];
  v24 = *MEMORY[0x277CE63C0];
  v31[0] = v23;
  v31[1] = v24;
  v25 = [MEMORY[0x277CCABB0] numberWithInt:a6];
  v32[1] = v25;
  v31[2] = *MEMORY[0x277CE6360];
  v26 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(*&a6)];
  v31[3] = *MEMORY[0x277CE6330];
  v32[2] = v26;
  v32[3] = v21;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];

  v28 = [[MOVStreamOutputSettings alloc] initWithSettings:v27];

  return v28;
}

+ (id)hevcSettingsWithProfileLevel:(id)a3 encoderType:(int)a4 frameRate:(double)a5 mastery:(id)a6 enableAVEHighPerformanceProfile:(BOOL)a7
{
  v7 = a7;
  v10 = *&a4;
  v26[5] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a6;
  v13 = *MEMORY[0x277CE25F0];
  v25[0] = *MEMORY[0x277CE25D8];
  v25[1] = v13;
  v26[0] = v11;
  v26[1] = MEMORY[0x277CBEC38];
  v25[2] = *MEMORY[0x277CE2548];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v25[3] = *MEMORY[0x277CE25A8];
  v26[2] = v14;
  v26[3] = &unk_2868E3B28;
  v15 = [v12 propertyKey];
  v25[4] = v15;
  v16 = [v12 propertyValue];
  v26[4] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];
  v18 = [v17 mutableCopy];

  v19 = [objc_opt_class() outputBitDepthIfRequiredForEncoderType:v10];
  if (v19)
  {
    [v18 setObject:v19 forKey:@"OutputBitDepth"];
  }

  if (v7)
  {
    [objc_opt_class() applyHighPerfSettings:v18];
  }

  v20 = [MOVStreamEncoderConfig alloc];
  v21 = [objc_opt_class() encoderSpecification];
  v22 = [(MOVStreamEncoderConfig *)v20 initWithCodecType:1752589105 encoderSpecification:v21 sessionProperties:v18];

  v23 = [[MOVStreamOutputSettings alloc] initWithConfig:v22];

  return v23;
}

+ (id)encoderSpecification
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CE2BB0];
  v5[0] = MEMORY[0x277CBEC38];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (void)applyHighPerfSettings:(id)a3
{
  v3 = a3;
  [v3 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25F0]];
  [v3 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25B0]];
  [v3 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE2500]];
}

+ (id)masteryFromStreamData:(StreamRecordingData *)a3 withFrameRate:(double)a4
{
  v5 = [MOVStreamOutputSettings getBitsPerSecondForColorStream:a4 frameRate:?];
  [MOVStreamOutputSettings getQualitySetting:a3];
  if (v6 >= 0.0)
  {
    [MIOMastery masteryWithQuality:?];
  }

  else
  {
    [MIOMastery masteryWithBitrate:v5];
  }
  v7 = ;

  return v7;
}

+ (id)avfEncoderSpecForEncoderType:(int)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  if ([objc_opt_class() requiresSWEncoder:*&a3])
  {
    v5 = *MEMORY[0x277CE2BA8];
    v6[0] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEC10];
  }

  return v3;
}

@end