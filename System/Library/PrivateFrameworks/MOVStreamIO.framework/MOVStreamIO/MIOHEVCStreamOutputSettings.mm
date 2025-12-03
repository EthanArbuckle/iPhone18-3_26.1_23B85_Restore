@interface MIOHEVCStreamOutputSettings
+ (BOOL)supportsEncoderType:(int)type;
+ (id)AVEEncoderTypeLosslessMasteringLookUp;
+ (id)AVEEncoderTypeProfileLevelLookUp;
+ (id)AVEEncoderTypeRequiresCustomEncodingLookUp;
+ (id)avfEncoderSpecForEncoderType:(int)type;
+ (id)encoderSpecification;
+ (id)hevcAVFSettingsWithProfileLevel:(id)level encoderType:(int)type frameRate:(double)rate dimensions:(id)dimensions mastery:(id)mastery enableAVEHighPerformanceProfile:(BOOL)profile;
+ (id)hevcSettingsWithProfileLevel:(id)level encoderType:(int)type frameRate:(double)rate mastery:(id)mastery enableAVEHighPerformanceProfile:(BOOL)profile;
+ (id)masteryFromStreamData:(StreamRecordingData *)data withFrameRate:(double)rate;
+ (id)outputBitDepthIfRequiredForEncoderType:(int)type;
+ (id)outputSettings:(int)settings frameRate:(double)rate dimensions:(id)dimensions mastery:(id)mastery preferEncoderConfig:(BOOL)config enableAVEHighPerformanceProfile:(BOOL)profile;
+ (id)outputSettingsWithConfig:(id)config formatDescription:(opaqueCMFormatDescription *)description defaultFrameRate:(double)rate preferEncoderConfig:(BOOL)encoderConfig enableAVEHighPerformanceProfile:(BOOL)profile;
+ (void)applyHighPerfSettings:(id)settings;
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

+ (id)outputBitDepthIfRequiredForEncoderType:(int)type
{
  if ((type & 0xFFFFFFFE) == 0x22)
  {
    return &unk_2868E33D8;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)supportsEncoderType:(int)type
{
  v3 = *&type;
  v4 = +[MIOHEVCStreamOutputSettings AVEEncoderTypeProfileLevelLookUp];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v6 = [v4 objectForKey:v5];
  v7 = v6 != 0;

  return v7;
}

+ (id)outputSettingsWithConfig:(id)config formatDescription:(opaqueCMFormatDescription *)description defaultFrameRate:(double)rate preferEncoderConfig:(BOOL)encoderConfig enableAVEHighPerformanceProfile:(BOOL)profile
{
  profileCopy = profile;
  encoderConfigCopy = encoderConfig;
  configCopy = config;
  v11 = [configCopy objectForKey:@"StreamEncoderType"];
  intValue = [v11 intValue];

  Dimensions = CMVideoFormatDescriptionGetDimensions(description);
  v14 = +[MIOHEVCStreamOutputSettings AVEEncoderTypeLosslessMasteringLookUp];
  v15 = encoderConfigCopy;
  v16 = profileCopy;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:intValue];
  v18 = [v14 objectForKey:v17];
  LODWORD(profileCopy) = [v18 BOOLValue];

  if (profileCopy)
  {
    +[MIOMastery masteryLossless];
  }

  else
  {
    [MIOMastery masteryFromConfig:configCopy formatDescription:description frameRate:rate];
  }
  v19 = ;
  v20 = [objc_opt_class() outputSettings:intValue frameRate:Dimensions dimensions:v19 mastery:v15 preferEncoderConfig:v16 enableAVEHighPerformanceProfile:rate];
  [v20 applyAdditionalCompressionPropertiesFromRecordingConfig:configCopy];

  return v20;
}

+ (id)outputSettings:(int)settings frameRate:(double)rate dimensions:(id)dimensions mastery:(id)mastery preferEncoderConfig:(BOOL)config enableAVEHighPerformanceProfile:(BOOL)profile
{
  profileCopy = profile;
  v11 = *&settings;
  masteryCopy = mastery;
  v13 = +[MIOHEVCStreamOutputSettings AVEEncoderTypeProfileLevelLookUp];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
  v15 = [v13 objectForKey:v14];

  if (!v15)
  {
    v23 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CCA5B0] reason:@"HEVC config not available." userInfo:0];
    objc_exception_throw(v23);
  }

  if (config || (+[MIOHEVCStreamOutputSettings AVEEncoderTypeRequiresCustomEncodingLookUp](MIOHEVCStreamOutputSettings, "AVEEncoderTypeRequiresCustomEncodingLookUp"), v16 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "objectForKey:", v17), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "BOOLValue"), v18, v17, v16, (v19 & 1) != 0))
  {
    v20 = [objc_opt_class() hevcSettingsWithProfileLevel:v15 encoderType:v11 frameRate:masteryCopy mastery:profileCopy enableAVEHighPerformanceProfile:rate];
  }

  else
  {
    v20 = [objc_opt_class() hevcAVFSettingsWithProfileLevel:v15 encoderType:v11 frameRate:dimensions dimensions:masteryCopy mastery:profileCopy enableAVEHighPerformanceProfile:rate];
  }

  v21 = v20;
  if (!v20)
  {
    v24 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CCA5B0] reason:@"HEVC config not available." userInfo:0];
    objc_exception_throw(v24);
  }

  return v21;
}

+ (id)hevcAVFSettingsWithProfileLevel:(id)level encoderType:(int)type frameRate:(double)rate dimensions:(id)dimensions mastery:(id)mastery enableAVEHighPerformanceProfile:(BOOL)profile
{
  profileCopy = profile;
  v12 = *&type;
  v34[4] = *MEMORY[0x277D85DE8];
  levelCopy = level;
  masteryCopy = mastery;
  v15 = *MEMORY[0x277CE25D8];
  v30 = masteryCopy;
  v34[0] = levelCopy;
  v16 = *MEMORY[0x277CE2548];
  v33[0] = v15;
  v33[1] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:rate];
  v33[2] = *MEMORY[0x277CE25A8];
  v34[1] = v17;
  v34[2] = &unk_2868E3B28;
  propertyKey = [masteryCopy propertyKey];
  v33[3] = propertyKey;
  propertyValue = [masteryCopy propertyValue];
  v34[3] = propertyValue;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];
  v21 = [v20 mutableCopy];

  v22 = [objc_opt_class() outputBitDepthIfRequiredForEncoderType:v12];
  if (v22)
  {
    [v21 setObject:v22 forKey:@"OutputBitDepth"];
  }

  [objc_opt_class() adjustAVFCompressionProperties:v21 encoderType:v12];
  if (profileCopy)
  {
    [objc_opt_class() applyHighPerfSettings:v21];
  }

  v23 = *MEMORY[0x277CE62C8];
  v32[0] = *MEMORY[0x277CE6300];
  v24 = *MEMORY[0x277CE63C0];
  v31[0] = v23;
  v31[1] = v24;
  v25 = [MEMORY[0x277CCABB0] numberWithInt:dimensions];
  v32[1] = v25;
  v31[2] = *MEMORY[0x277CE6360];
  v26 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(*&dimensions)];
  v31[3] = *MEMORY[0x277CE6330];
  v32[2] = v26;
  v32[3] = v21;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];

  v28 = [[MOVStreamOutputSettings alloc] initWithSettings:v27];

  return v28;
}

+ (id)hevcSettingsWithProfileLevel:(id)level encoderType:(int)type frameRate:(double)rate mastery:(id)mastery enableAVEHighPerformanceProfile:(BOOL)profile
{
  profileCopy = profile;
  v10 = *&type;
  v26[5] = *MEMORY[0x277D85DE8];
  levelCopy = level;
  masteryCopy = mastery;
  v13 = *MEMORY[0x277CE25F0];
  v25[0] = *MEMORY[0x277CE25D8];
  v25[1] = v13;
  v26[0] = levelCopy;
  v26[1] = MEMORY[0x277CBEC38];
  v25[2] = *MEMORY[0x277CE2548];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:rate];
  v25[3] = *MEMORY[0x277CE25A8];
  v26[2] = v14;
  v26[3] = &unk_2868E3B28;
  propertyKey = [masteryCopy propertyKey];
  v25[4] = propertyKey;
  propertyValue = [masteryCopy propertyValue];
  v26[4] = propertyValue;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];
  v18 = [v17 mutableCopy];

  v19 = [objc_opt_class() outputBitDepthIfRequiredForEncoderType:v10];
  if (v19)
  {
    [v18 setObject:v19 forKey:@"OutputBitDepth"];
  }

  if (profileCopy)
  {
    [objc_opt_class() applyHighPerfSettings:v18];
  }

  v20 = [MOVStreamEncoderConfig alloc];
  encoderSpecification = [objc_opt_class() encoderSpecification];
  v22 = [(MOVStreamEncoderConfig *)v20 initWithCodecType:1752589105 encoderSpecification:encoderSpecification sessionProperties:v18];

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

+ (void)applyHighPerfSettings:(id)settings
{
  settingsCopy = settings;
  [settingsCopy setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25F0]];
  [settingsCopy setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25B0]];
  [settingsCopy setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE2500]];
}

+ (id)masteryFromStreamData:(StreamRecordingData *)data withFrameRate:(double)rate
{
  v5 = [MOVStreamOutputSettings getBitsPerSecondForColorStream:rate frameRate:?];
  [MOVStreamOutputSettings getQualitySetting:data];
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

+ (id)avfEncoderSpecForEncoderType:(int)type
{
  v6[1] = *MEMORY[0x277D85DE8];
  if ([objc_opt_class() requiresSWEncoder:*&type])
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