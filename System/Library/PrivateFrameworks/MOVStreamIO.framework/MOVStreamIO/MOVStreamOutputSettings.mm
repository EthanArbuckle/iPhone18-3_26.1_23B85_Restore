@interface MOVStreamOutputSettings
+ (double)getQualitySetting:(StreamRecordingData *)setting;
+ (id)addAdditionalCompressionProperties:(id)properties recordingConfig:(id)config;
+ (id)audioSettings:(StreamRecordingData *)settings;
+ (id)customEncoderSettings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile;
+ (id)generalHEVCColorSettings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile;
+ (id)h264Settings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile;
+ (id)hevc10bitMonochromeLosslessSettings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile;
+ (id)hevc10bitMonochromeSettings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile;
+ (id)hevc8bitMonochromeLosslessSettings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile;
+ (id)hevc8bitMonochromeSettings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile;
+ (id)hevc8bitWithAlphaLosslessSettings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile;
+ (id)hevc8bitWithAlphaSettings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile;
+ (id)hevcColorLosslessSettings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile;
+ (id)hevcColorSettings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile;
+ (id)hevcColorSettingsLossless:(BOOL)lossless quality:(double)quality bitsPerSecond:(unint64_t)second bitDepth10:(BOOL)depth10 chromaSampling:(int64_t)sampling frameRate:(double)rate dimensions:(id)dimensions enableAVEHighPerformanceProfile:(BOOL)self0;
+ (id)jpegSettings:(StreamRecordingData *)settings frameRate:(double)rate;
+ (id)outputSettingsForStream:(StreamRecordingData *)stream defaultFrameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile;
+ (id)prores422Settings:(StreamRecordingData *)settings frameRate:(double)rate;
+ (id)prores4444Settings:(StreamRecordingData *)settings frameRate:(double)rate;
+ (id)proresRAWHQSettings:(StreamRecordingData *)settings frameRate:(double)rate;
+ (id)proresRAWSettings:(StreamRecordingData *)settings frameRate:(double)rate;
+ (id)slimSettings:(StreamRecordingData *)settings frameRate:(double)rate;
+ (int)encoderTypeFromStreamData:(StreamRecordingData *)data;
+ (int)matchDeprecatedType:(int)type;
+ (int64_t)chromaSamplingEncoding:(int)encoding;
+ (unint64_t)applyBitrateModifiersTo:(unint64_t)to;
+ (unint64_t)getBitsPerSecondForColorStream:(StreamRecordingData *)stream frameRate:(double)rate;
- (MOVStreamOutputSettings)init;
- (MOVStreamOutputSettings)initWithConfig:(id)config;
- (MOVStreamOutputSettings)initWithFrameRate:(double)rate;
- (MOVStreamOutputSettings)initWithFrameRate:(double)rate useCustomEncoderConfig:(BOOL)config;
- (MOVStreamOutputSettings)initWithSettings:(id)settings;
- (id)initForVCPEncodingWithEncoderSpec:(id)spec sessopnProperties:(id)properties;
- (void)applyAdditionalCompressionPropertiesFromRecordingConfig:(id)config;
@end

@implementation MOVStreamOutputSettings

- (MOVStreamOutputSettings)init
{
  v7.receiver = self;
  v7.super_class = MOVStreamOutputSettings;
  v2 = [(MOVStreamOutputSettings *)&v7 init];
  v3 = v2;
  if (v2)
  {
    settings = v2->_settings;
    v2->_settings = 0;

    config = v3->_config;
    v3->_config = 0;

    *&v3->_useCustomEncoderConfig = 0;
    v3->_expectedFrameRate = 0.0;
  }

  return v3;
}

- (id)initForVCPEncodingWithEncoderSpec:(id)spec sessopnProperties:(id)properties
{
  specCopy = spec;
  propertiesCopy = properties;
  v9 = [(MOVStreamOutputSettings *)self init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    v9->_useAsVCPConfig = 1;
    objc_storeStrong(&v9->_encoderSpecVCP, spec);
    objc_storeStrong(p_isa + 6, properties);
  }

  return p_isa;
}

- (MOVStreamOutputSettings)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v6 = [(MOVStreamOutputSettings *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
  }

  return v7;
}

- (MOVStreamOutputSettings)initWithConfig:(id)config
{
  configCopy = config;
  v6 = [(MOVStreamOutputSettings *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, config);
    v7->_useCustomEncoderConfig = 1;
  }

  return v7;
}

- (MOVStreamOutputSettings)initWithFrameRate:(double)rate
{
  result = [(MOVStreamOutputSettings *)self init];
  if (result)
  {
    result->_expectedFrameRate = rate;
  }

  return result;
}

- (MOVStreamOutputSettings)initWithFrameRate:(double)rate useCustomEncoderConfig:(BOOL)config
{
  result = [(MOVStreamOutputSettings *)self init];
  if (result)
  {
    result->_useCustomEncoderConfig = config;
    result->_expectedFrameRate = rate;
  }

  return result;
}

+ (int)encoderTypeFromStreamData:(StreamRecordingData *)data
{
  v3 = data->var5;
  v4 = v3;
  if (!v3)
  {
    __assert_rtn("+[MOVStreamOutputSettings encoderTypeFromStreamData:]", "MOVStreamOutputSettings.mm", 121, "configuration");
  }

  v5 = [v3 objectForKey:@"StreamEncoderType"];
  intValue = [v5 intValue];

  v7 = [objc_opt_class() matchDeprecatedType:intValue];
  return v7;
}

+ (id)outputSettingsForStream:(StreamRecordingData *)stream defaultFrameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile
{
  profileCopy = profile;
  v8 = stream->var5;
  if (!v8)
  {
    __assert_rtn("+[MOVStreamOutputSettings outputSettingsForStream:defaultFrameRate:enableAVEHighPerformanceProfile:]", "MOVStreamOutputSettings.mm", 134, "configuration");
  }

  v9 = [objc_opt_class() encoderTypeFromStreamData:stream];
  v10 = [v8 objectForKey:@"ExpectedFrameRateForStream"];
  v11 = v10;
  if (v10)
  {
    [v10 doubleValue];
    rate = v12;
  }

  v13 = v9 - 1;
  v14 = 0;
  switch(v13)
  {
    case 0:
      v16 = [MOVStreamOutputSettings slimSettings:stream frameRate:rate];
      goto LABEL_25;
    case 3:
      v15 = [MOVStreamOutputSettings hevc10bitMonochromeLosslessSettings:stream frameRate:profileCopy enableAVEHighPerformanceProfile:rate];
      goto LABEL_6;
    case 4:
      v15 = [MOVStreamOutputSettings hevc10bitMonochromeSettings:stream frameRate:profileCopy enableAVEHighPerformanceProfile:rate];
      goto LABEL_6;
    case 5:
      v15 = [MOVStreamOutputSettings hevc8bitMonochromeLosslessSettings:stream frameRate:profileCopy enableAVEHighPerformanceProfile:rate];
      goto LABEL_6;
    case 6:
      v15 = [MOVStreamOutputSettings hevc8bitMonochromeSettings:stream frameRate:profileCopy enableAVEHighPerformanceProfile:rate];
      goto LABEL_6;
    case 7:
      v16 = [MOVStreamOutputSettings h264Settings:stream frameRate:profileCopy enableAVEHighPerformanceProfile:rate];
      goto LABEL_25;
    case 8:
      v15 = [MOVStreamOutputSettings hevcColorSettings:stream frameRate:profileCopy enableAVEHighPerformanceProfile:rate];
      goto LABEL_6;
    case 9:
      v15 = [MOVStreamOutputSettings hevc8bitWithAlphaLosslessSettings:stream frameRate:profileCopy enableAVEHighPerformanceProfile:rate];
      goto LABEL_6;
    case 10:
      v15 = [MOVStreamOutputSettings hevc8bitWithAlphaSettings:stream frameRate:profileCopy enableAVEHighPerformanceProfile:rate];
      goto LABEL_6;
    case 11:
      v15 = [MOVStreamOutputSettings hevcColorLosslessSettings:stream frameRate:profileCopy enableAVEHighPerformanceProfile:rate];
      goto LABEL_6;
    case 13:
      v16 = [MOVStreamOutputSettings prores4444Settings:stream frameRate:rate];
      goto LABEL_25;
    case 14:
      v16 = [MOVStreamOutputSettings prores422Settings:stream frameRate:rate];
      goto LABEL_25;
    case 15:
      v16 = [MOVStreamOutputSettings audioSettings:stream];
      goto LABEL_25;
    case 16:
      break;
    case 17:
      v16 = [MOVStreamOutputSettings customEncoderSettings:stream frameRate:profileCopy enableAVEHighPerformanceProfile:rate];
      goto LABEL_25;
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 26:
    case 27:
    case 33:
    case 34:
      v15 = [MOVStreamOutputSettings generalHEVCColorSettings:stream frameRate:profileCopy enableAVEHighPerformanceProfile:rate];
LABEL_6:
      v14 = v15;
      [v15 applyAdditionalCompressionPropertiesFromRecordingConfig:v8];
      break;
    case 28:
      v16 = [MOVStreamOutputSettings proresRAWSettings:stream frameRate:rate];
      goto LABEL_25;
    case 29:
      v16 = [MOVStreamOutputSettings proresRAWHQSettings:stream frameRate:rate];
      goto LABEL_25;
    case 32:
      v16 = [MOVStreamOutputSettings jpegSettings:stream frameRate:rate];
LABEL_25:
      v14 = v16;
      break;
    case 35:
      v17 = [MOVStreamOutputSettings alloc];
      v18 = [v8 objectForKey:@"VCPEncodingEncoderSpec"];
      v19 = [v8 objectForKey:@"AdditionalCompressionProperties"];
      v14 = [(MOVStreamOutputSettings *)v17 initForVCPEncodingWithEncoderSpec:v18 sessopnProperties:v19];

      break;
    default:
      v21 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Invalid encoder type." userInfo:0];
      objc_exception_throw(v21);
  }

  return v14;
}

- (void)applyAdditionalCompressionPropertiesFromRecordingConfig:(id)config
{
  configCopy = config;
  settings = [(MOVStreamOutputSettings *)self settings];
  v5 = [settings count];

  if (v5)
  {
    settings2 = [(MOVStreamOutputSettings *)self settings];
    v7 = *MEMORY[0x277CE6330];
    sessionProperties = [settings2 objectForKey:*MEMORY[0x277CE6330]];

    v9 = [MOVStreamOutputSettings addAdditionalCompressionProperties:sessionProperties recordingConfig:configCopy];
    if (v9)
    {
      settings3 = [(MOVStreamOutputSettings *)self settings];
      config3 = [settings3 mutableCopy];

      [config3 setObject:v9 forKey:v7];
      v12 = [config3 copy];
      [(MOVStreamOutputSettings *)self setSettings:v12];

LABEL_7:
    }
  }

  else
  {
    config = [(MOVStreamOutputSettings *)self config];

    if (!config)
    {
      goto LABEL_9;
    }

    config2 = [(MOVStreamOutputSettings *)self config];
    sessionProperties = [config2 sessionProperties];

    v9 = [MOVStreamOutputSettings addAdditionalCompressionProperties:sessionProperties recordingConfig:configCopy];
    if (v9)
    {
      config3 = [(MOVStreamOutputSettings *)self config];
      [config3 setSessionProperties:v9];
      goto LABEL_7;
    }
  }

LABEL_9:
}

+ (id)customEncoderSettings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile
{
  v6 = [settings->var5 objectForKey:{@"CustomEncoderConfig", profile}];
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

+ (id)audioSettings:(StreamRecordingData *)settings
{
  v4 = objc_opt_new();
  v5 = [settings->var5 objectForKey:@"AudioFormatObject"];
  v6 = v5;
  if (v5)
  {
    settings = [v5 settings];
    [v4 addEntriesFromDictionary:settings];
  }

  v8 = [settings->var5 objectForKey:@"AdditionalAudioSettings"];
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

+ (int64_t)chromaSamplingEncoding:(int)encoding
{
  if ((encoding - 21) > 0xE)
  {
    return 0;
  }

  else
  {
    return qword_25792F7B0[encoding - 21];
  }
}

+ (id)generalHEVCColorSettings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile
{
  profileCopy = profile;
  Dimensions = CMVideoFormatDescriptionGetDimensions(settings->var0);
  v9 = [objc_opt_class() getBitsPerSecondForColorStream:settings frameRate:rate];
  [objc_opt_class() getQualitySetting:settings];
  v11 = v10;
  v12 = [settings->var5 objectForKey:@"StreamEncoderType"];
  intValue = [v12 intValue];

  v14 = [MOVStreamOutputSettings isLosslessColorEncoding:intValue];
  v15 = [MOVStreamOutputSettings chromaSamplingEncoding:intValue];
  v16 = [MOVStreamOutputSettings isBitDepth10Encoding:intValue];

  return [MOVStreamOutputSettings hevcColorSettingsLossless:v14 quality:v9 bitsPerSecond:v16 bitDepth10:v15 chromaSampling:Dimensions frameRate:profileCopy dimensions:v11 enableAVEHighPerformanceProfile:rate];
}

+ (id)hevcColorSettingsLossless:(BOOL)lossless quality:(double)quality bitsPerSecond:(unint64_t)second bitDepth10:(BOOL)depth10 chromaSampling:(int64_t)sampling frameRate:(double)rate dimensions:(id)dimensions enableAVEHighPerformanceProfile:(BOOL)self0
{
  profileCopy = profile;
  depth10Copy = depth10;
  losslessCopy = lossless;
  v39[2] = *MEMORY[0x277D85DE8];
  [MOVStreamIOUtility deriveMaxKeyFrameIntervalFromFps:rate];
  v18 = v17;
  v38[0] = *MEMORY[0x277CE6340];
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:rate];
  v39[0] = v19;
  v38[1] = *MEMORY[0x277CE6368];
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
  v39[1] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v22 = [v21 mutableCopy];

  if (losslessCopy)
  {
    [v22 setObject:&unk_2868E3BA8 forKey:*MEMORY[0x277CE6398]];
  }

  else
  {
    if (quality >= 0.0)
    {
      v23 = [MEMORY[0x277CCABB0] numberWithDouble:quality];
      [v22 setObject:v23 forKey:*MEMORY[0x277CE6398]];
    }

    else
    {
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:second];
      [v22 setObject:v23 forKey:*MEMORY[0x277CE62B0]];
    }
  }

  v24 = +[MOVStreamOptions sharedOptions];
  disableFrameReordering = [v24 disableFrameReordering];

  if (disableFrameReordering)
  {
    [v22 setObject:MEMORY[0x277CBEC28] forKey:@"AllowFrameReordering"];
  }

  if (depth10Copy)
  {
    if (sampling < 3)
    {
      v26 = off_279848418[sampling];
      goto LABEL_18;
    }

    v34 = 482;
LABEL_25:
    __assert_rtn("+[MOVStreamOutputSettings hevcColorSettingsLossless:quality:bitsPerSecond:bitDepth10:chromaSampling:frameRate:dimensions:enableAVEHighPerformanceProfile:]", "MOVStreamOutputSettings.mm", v34, "0");
  }

  if (sampling)
  {
    if (sampling == 2)
    {
      v26 = @"HEVC_Main444_AutoLevel";
    }

    else
    {
      if (sampling != 1)
      {
        v34 = 499;
        goto LABEL_25;
      }

      [v22 setObject:&unk_2868E3A98 forKey:@"OutputBitDepth"];
      v26 = @"HEVC_Main42210_AutoLevel";
    }
  }

  else
  {
    v26 = @"HEVC_Main_AutoLevel";
  }

LABEL_18:
  [v22 setObject:v26 forKey:*MEMORY[0x277CE6390]];
  if (profileCopy)
  {
    [v22 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25F0]];
    [v22 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25B0]];
    [v22 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE2500]];
  }

  v27 = *MEMORY[0x277CE62C8];
  v37[0] = *MEMORY[0x277CE6300];
  v28 = *MEMORY[0x277CE63C0];
  v36[0] = v27;
  v36[1] = v28;
  v29 = [MEMORY[0x277CCABB0] numberWithInt:dimensions];
  v37[1] = v29;
  v36[2] = *MEMORY[0x277CE6360];
  v30 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(*&dimensions)];
  v36[3] = *MEMORY[0x277CE6330];
  v37[2] = v30;
  v37[3] = v22;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];

  v32 = [[MOVStreamOutputSettings alloc] initWithSettings:v31];

  return v32;
}

+ (id)proresRAWSettings:(StreamRecordingData *)settings frameRate:(double)rate
{
  v13[3] = *MEMORY[0x277D85DE8];
  Dimensions = CMVideoFormatDescriptionGetDimensions(settings->var0);
  v5 = *MEMORY[0x277CE62C8];
  v13[0] = @"aprn";
  v6 = *MEMORY[0x277CE63C0];
  v12[0] = v5;
  v12[1] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
  v13[1] = v7;
  v12[2] = *MEMORY[0x277CE6360];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(*&Dimensions)];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v10 = [[MOVStreamOutputSettings alloc] initWithSettings:v9];

  return v10;
}

+ (id)proresRAWHQSettings:(StreamRecordingData *)settings frameRate:(double)rate
{
  v13[3] = *MEMORY[0x277D85DE8];
  Dimensions = CMVideoFormatDescriptionGetDimensions(settings->var0);
  v5 = *MEMORY[0x277CE62C8];
  v13[0] = @"aprh";
  v6 = *MEMORY[0x277CE63C0];
  v12[0] = v5;
  v12[1] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
  v13[1] = v7;
  v12[2] = *MEMORY[0x277CE6360];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(*&Dimensions)];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v10 = [[MOVStreamOutputSettings alloc] initWithSettings:v9];

  return v10;
}

+ (id)prores4444Settings:(StreamRecordingData *)settings frameRate:(double)rate
{
  v21[3] = *MEMORY[0x277D85DE8];
  Dimensions = CMVideoFormatDescriptionGetDimensions(settings->var0);
  var5 = settings->var5;
  if (var5 && ([var5 objectForKey:@"ProResEncodingQuality"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [settings->var5 objectForKey:@"ProResEncodingQuality"];
    intValue = [v8 intValue];

    v10 = *MEMORY[0x277CE62F0];
    v11 = v10;
    if (intValue != 1)
    {
      if (intValue)
      {
        v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CCA5B0] reason:@"ProRes4444 only supports high and medium quality setting." userInfo:0];
        objc_exception_throw(v19);
      }

      v11 = @"ap4x";
    }
  }

  else
  {
    v11 = *MEMORY[0x277CE62F0];
  }

  v12 = *MEMORY[0x277CE62C8];
  v21[0] = v11;
  v13 = *MEMORY[0x277CE63C0];
  v20[0] = v12;
  v20[1] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
  v21[1] = v14;
  v20[2] = *MEMORY[0x277CE6360];
  v15 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(Dimensions)];
  v21[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];

  v17 = [[MOVStreamOutputSettings alloc] initWithSettings:v16];

  return v17;
}

+ (id)prores422Settings:(StreamRecordingData *)settings frameRate:(double)rate
{
  v21[3] = *MEMORY[0x277D85DE8];
  Dimensions = CMVideoFormatDescriptionGetDimensions(settings->var0);
  var5 = settings->var5;
  if (var5 && ([var5 objectForKey:@"ProResEncodingQuality"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [settings->var5 objectForKey:@"ProResEncodingQuality"];
    intValue = [v8 intValue];

    v10 = *MEMORY[0x277CE62D0];
    if (intValue == 3)
    {
      v11 = MEMORY[0x277CE62E8];
    }

    else if (intValue == 2)
    {
      v11 = MEMORY[0x277CE62E0];
    }

    else
    {
      if (intValue)
      {
        goto LABEL_11;
      }

      v11 = MEMORY[0x277CE62D8];
    }

    v12 = *v11;

    v10 = v12;
  }

  else
  {
    v10 = *MEMORY[0x277CE62D0];
  }

LABEL_11:
  v13 = *MEMORY[0x277CE62C8];
  v21[0] = v10;
  v14 = *MEMORY[0x277CE63C0];
  v20[0] = v13;
  v20[1] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
  v21[1] = v15;
  v20[2] = *MEMORY[0x277CE6360];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(Dimensions)];
  v21[2] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];

  v18 = [[MOVStreamOutputSettings alloc] initWithSettings:v17];

  return v18;
}

+ (id)hevc10bitMonochromeLosslessSettings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile
{
  profileCopy = profile;
  v31[2] = *MEMORY[0x277D85DE8];
  v8 = +[MOVStreamOptions sharedOptions];
  force10bitMonoByVT = [v8 force10bitMonoByVT];

  if (force10bitMonoByVT)
  {
    v10 = [[MOVStreamOutputSettings alloc] initWithFrameRate:rate];
  }

  else
  {
    [MOVStreamIOUtility deriveMaxKeyFrameIntervalFromFps:rate];
    v12 = v11;
    Dimensions = CMVideoFormatDescriptionGetDimensions(settings->var0);
    v30[0] = *MEMORY[0x277CE6340];
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:rate];
    v31[0] = v14;
    v30[1] = *MEMORY[0x277CE6368];
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    v31[1] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
    v17 = [v16 mutableCopy];

    v18 = +[MOVStreamIOUtility AVEProfileLevel10BitMonochrome];
    [v17 setObject:v18 forKey:*MEMORY[0x277CE6390]];
    v19 = +[MOVStreamOptions sharedOptions];
    LODWORD(v16) = [v19 disableFrameReordering];

    if (v16)
    {
      [v17 setObject:MEMORY[0x277CBEC28] forKey:@"AllowFrameReordering"];
    }

    if (+[MIOLog debugEnabled])
    {
      v20 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *v27 = 0;
        _os_log_impl(&dword_257883000, v20, OS_LOG_TYPE_DEBUG, "MOVStreamWriter: Disable 'AllowFrameReordering' related to r50244907.", v27, 2u);
      }
    }

    [v17 setObject:MEMORY[0x277CBEC28] forKey:@"AllowFrameReordering"];
    [v17 setObject:&unk_2868E3BA8 forKey:*MEMORY[0x277CE6398]];
    if (profileCopy)
    {
      [v17 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25F0]];
      [v17 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25B0]];
      [v17 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE2500]];
    }

    v21 = *MEMORY[0x277CE62C8];
    v29[0] = *MEMORY[0x277CE6300];
    v22 = *MEMORY[0x277CE63C0];
    v28[0] = v21;
    v28[1] = v22;
    v23 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
    v29[1] = v23;
    v28[2] = *MEMORY[0x277CE6360];
    v24 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(Dimensions)];
    v28[3] = *MEMORY[0x277CE6330];
    v29[2] = v24;
    v29[3] = v17;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];

    v10 = [[MOVStreamOutputSettings alloc] initWithSettings:v25];
  }

  return v10;
}

+ (id)hevc10bitMonochromeSettings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile
{
  profileCopy = profile;
  v7 = [objc_opt_class() getBitsPerSecondForColorStream:settings frameRate:rate];
  [objc_opt_class() getQualitySetting:settings];
  if (v8 >= 0.0)
  {
    [MOVStreamEncoderConfig monochrome10BitEncoderConfigUsingAVEWithQuality:?];
  }

  else
  {
    [MOVStreamEncoderConfig monochrome10BitEncoderConfigUsingAVEWithBitrate:v7];
  }
  v9 = ;
  v10 = v9;
  if (profileCopy)
  {
    [v9 enableAVEHighPerformanceProfile];
  }

  v11 = [[MOVStreamOutputSettings alloc] initWithConfig:v10];

  return v11;
}

+ (id)hevcColorLosslessSettings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile
{
  profileCopy = profile;
  v27[3] = *MEMORY[0x277D85DE8];
  Dimensions = CMVideoFormatDescriptionGetDimensions(settings->var0);
  [MOVStreamIOUtility deriveMaxKeyFrameIntervalFromFps:rate];
  v9 = v8;
  v10 = *MEMORY[0x277CE6398];
  v27[0] = &unk_2868E3BA8;
  v11 = *MEMORY[0x277CE6340];
  v26[0] = v10;
  v26[1] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:rate];
  v27[1] = v12;
  v26[2] = *MEMORY[0x277CE6368];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v27[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v15 = [v14 mutableCopy];

  v16 = +[MOVStreamOptions sharedOptions];
  LODWORD(v13) = [v16 disableFrameReordering];

  if (v13)
  {
    [v15 setObject:MEMORY[0x277CBEC28] forKey:@"AllowFrameReordering"];
  }

  if (profileCopy)
  {
    [v15 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25F0]];
    [v15 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25B0]];
    [v15 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE2500]];
  }

  v17 = *MEMORY[0x277CE62C8];
  v25[0] = *MEMORY[0x277CE6300];
  v18 = *MEMORY[0x277CE63C0];
  v24[0] = v17;
  v24[1] = v18;
  v19 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
  v25[1] = v19;
  v24[2] = *MEMORY[0x277CE6360];
  v20 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(Dimensions)];
  v24[3] = *MEMORY[0x277CE6330];
  v25[2] = v20;
  v25[3] = v15;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  v22 = [[MOVStreamOutputSettings alloc] initWithSettings:v21];

  return v22;
}

+ (id)hevc8bitMonochromeLosslessSettings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile
{
  profileCopy = profile;
  v30[3] = *MEMORY[0x277D85DE8];
  v7 = [settings->var11 createTrackFormatDescriptionFromStreamData:?];
  Dimensions = CMVideoFormatDescriptionGetDimensions(v7);
  if (v7)
  {
    CFRelease(v7);
  }

  v9 = +[MOVStreamOptions sharedOptions];
  forceLossless8bitMonoByVT = [v9 forceLossless8bitMonoByVT];

  if (forceLossless8bitMonoByVT)
  {
    v11 = [[MOVStreamOutputSettings alloc] initWithFrameRate:rate];
  }

  else
  {
    [MOVStreamIOUtility deriveMaxKeyFrameIntervalFromFps:rate];
    v13 = v12;
    v14 = *MEMORY[0x277CE6398];
    v30[0] = &unk_2868E3BA8;
    v15 = *MEMORY[0x277CE6340];
    v29[0] = v14;
    v29[1] = v15;
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:rate];
    v30[1] = v16;
    v29[2] = *MEMORY[0x277CE6368];
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
    v30[2] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
    v19 = [v18 mutableCopy];

    v20 = +[MOVStreamOptions sharedOptions];
    LODWORD(v17) = [v20 disableFrameReordering];

    if (v17)
    {
      [v19 setObject:MEMORY[0x277CBEC28] forKey:@"AllowFrameReordering"];
    }

    [v19 setObject:*MEMORY[0x277CE29C0] forKey:*MEMORY[0x277CE6390]];
    if (profileCopy)
    {
      [v19 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25F0]];
      [v19 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25B0]];
      [v19 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE2500]];
    }

    v21 = *MEMORY[0x277CE62C8];
    v28[0] = *MEMORY[0x277CE6300];
    v22 = *MEMORY[0x277CE63C0];
    v27[0] = v21;
    v27[1] = v22;
    v23 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
    v28[1] = v23;
    v27[2] = *MEMORY[0x277CE6360];
    v24 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(Dimensions)];
    v27[3] = *MEMORY[0x277CE6330];
    v28[2] = v24;
    v28[3] = v19;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];

    v11 = [[MOVStreamOutputSettings alloc] initWithSettings:v25];
  }

  return v11;
}

+ (id)hevc8bitMonochromeSettings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile
{
  profileCopy = profile;
  v32[2] = *MEMORY[0x277D85DE8];
  v8 = [settings->var11 createTrackFormatDescriptionFromStreamData:?];
  Dimensions = CMVideoFormatDescriptionGetDimensions(v8);
  if (v8)
  {
    CFRelease(v8);
  }

  v10 = [objc_opt_class() getBitsPerSecondForColorStream:settings frameRate:rate];
  [objc_opt_class() getQualitySetting:settings];
  v12 = v11;
  [MOVStreamIOUtility deriveMaxKeyFrameIntervalFromFps:rate];
  v14 = v13;
  v31[0] = *MEMORY[0x277CE6340];
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:rate];
  v32[0] = v15;
  v31[1] = *MEMORY[0x277CE6368];
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
  v32[1] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v18 = [v17 mutableCopy];

  if (v12 >= 0.0)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    [v18 setObject:v19 forKey:*MEMORY[0x277CE6398]];
  }

  else
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
    [v18 setObject:v19 forKey:*MEMORY[0x277CE62B0]];
  }

  v20 = +[MOVStreamOptions sharedOptions];
  disableFrameReordering = [v20 disableFrameReordering];

  if (disableFrameReordering)
  {
    [v18 setObject:MEMORY[0x277CBEC28] forKey:@"AllowFrameReordering"];
  }

  if (profileCopy)
  {
    [v18 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25F0]];
    [v18 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25B0]];
    [v18 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE2500]];
  }

  [v18 setObject:*MEMORY[0x277CE29C0] forKey:*MEMORY[0x277CE6390]];
  v22 = *MEMORY[0x277CE62C8];
  v30[0] = *MEMORY[0x277CE6300];
  v23 = *MEMORY[0x277CE63C0];
  v29[0] = v22;
  v29[1] = v23;
  v24 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
  v30[1] = v24;
  v29[2] = *MEMORY[0x277CE6360];
  v25 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(Dimensions)];
  v29[3] = *MEMORY[0x277CE6330];
  v30[2] = v25;
  v30[3] = v18;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];

  v27 = [[MOVStreamOutputSettings alloc] initWithSettings:v26];

  return v27;
}

+ (id)hevcColorSettings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile
{
  profileCopy = profile;
  v31[2] = *MEMORY[0x277D85DE8];
  Dimensions = CMVideoFormatDescriptionGetDimensions(settings->var0);
  v9 = [objc_opt_class() getBitsPerSecondForColorStream:settings frameRate:rate];
  [objc_opt_class() getQualitySetting:settings];
  v11 = v10;
  [MOVStreamIOUtility deriveMaxKeyFrameIntervalFromFps:rate];
  v13 = v12;
  v30[0] = *MEMORY[0x277CE6340];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:rate];
  v31[0] = v14;
  v30[1] = *MEMORY[0x277CE6368];
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  v31[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v17 = [v16 mutableCopy];

  if (v11 >= 0.0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    [v17 setObject:v18 forKey:*MEMORY[0x277CE6398]];
  }

  else
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v9];
    [v17 setObject:v18 forKey:*MEMORY[0x277CE62B0]];
  }

  v19 = +[MOVStreamOptions sharedOptions];
  disableFrameReordering = [v19 disableFrameReordering];

  if (disableFrameReordering)
  {
    [v17 setObject:MEMORY[0x277CBEC28] forKey:@"AllowFrameReordering"];
  }

  if (profileCopy)
  {
    [v17 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25F0]];
    [v17 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25B0]];
    [v17 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE2500]];
  }

  v21 = *MEMORY[0x277CE62C8];
  v29[0] = *MEMORY[0x277CE6300];
  v22 = *MEMORY[0x277CE63C0];
  v28[0] = v21;
  v28[1] = v22;
  v23 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
  v29[1] = v23;
  v28[2] = *MEMORY[0x277CE6360];
  v24 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(Dimensions)];
  v28[3] = *MEMORY[0x277CE6330];
  v29[2] = v24;
  v29[3] = v17;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];

  v26 = [[MOVStreamOutputSettings alloc] initWithSettings:v25];

  return v26;
}

+ (id)hevc8bitWithAlphaLosslessSettings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile
{
  profileCopy = profile;
  v25[4] = *MEMORY[0x277D85DE8];
  Dimensions = CMVideoFormatDescriptionGetDimensions(settings->var0);
  [MOVStreamIOUtility deriveMaxKeyFrameIntervalFromFps:rate];
  v9 = v8;
  v24[0] = *MEMORY[0x277CE6340];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:rate];
  v25[0] = v10;
  v24[1] = *MEMORY[0x277CE6368];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v25[1] = v11;
  v25[2] = &unk_2868E3BA8;
  v24[2] = @"Quality";
  v24[3] = @"AllowFrameReordering";
  v25[3] = MEMORY[0x277CBEC28];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
  v13 = [v12 mutableCopy];

  v14 = +[MOVStreamOptions sharedOptions];
  LODWORD(v11) = [v14 disableFrameReordering];

  if (v11)
  {
    [v13 setObject:MEMORY[0x277CBEC28] forKey:@"AllowFrameReordering"];
  }

  if (profileCopy)
  {
    [v13 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25F0]];
    [v13 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25B0]];
    [v13 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE2500]];
  }

  v15 = *MEMORY[0x277CE62C8];
  v23[0] = *MEMORY[0x277CE6308];
  v16 = *MEMORY[0x277CE63C0];
  v22[0] = v15;
  v22[1] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
  v23[1] = v17;
  v22[2] = *MEMORY[0x277CE6360];
  v18 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(Dimensions)];
  v22[3] = *MEMORY[0x277CE6330];
  v23[2] = v18;
  v23[3] = v13;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];

  v20 = [[MOVStreamOutputSettings alloc] initWithSettings:v19];

  return v20;
}

+ (id)hevc8bitWithAlphaSettings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile
{
  profileCopy = profile;
  v31[3] = *MEMORY[0x277D85DE8];
  Dimensions = CMVideoFormatDescriptionGetDimensions(settings->var0);
  v9 = [objc_opt_class() getBitsPerSecondForColorStream:settings frameRate:rate];
  [objc_opt_class() getQualitySetting:settings];
  v11 = v10;
  [MOVStreamIOUtility deriveMaxKeyFrameIntervalFromFps:rate];
  v13 = v12;
  v30[0] = *MEMORY[0x277CE6340];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:rate];
  v31[0] = v14;
  v30[1] = *MEMORY[0x277CE6368];
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  v30[2] = @"AllowFrameReordering";
  v31[1] = v15;
  v31[2] = MEMORY[0x277CBEC28];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v17 = [v16 mutableCopy];

  if (v11 >= 0.0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    [v17 setObject:v18 forKey:*MEMORY[0x277CE6398]];
  }

  else
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v9];
    [v17 setObject:v18 forKey:*MEMORY[0x277CE62B0]];
  }

  v19 = +[MOVStreamOptions sharedOptions];
  disableFrameReordering = [v19 disableFrameReordering];

  if (disableFrameReordering)
  {
    [v17 setObject:MEMORY[0x277CBEC28] forKey:@"AllowFrameReordering"];
  }

  if (profileCopy)
  {
    [v17 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25F0]];
    [v17 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25B0]];
    [v17 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE2500]];
  }

  v21 = *MEMORY[0x277CE62C8];
  v29[0] = *MEMORY[0x277CE6308];
  v22 = *MEMORY[0x277CE63C0];
  v28[0] = v21;
  v28[1] = v22;
  v23 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
  v29[1] = v23;
  v28[2] = *MEMORY[0x277CE6360];
  v24 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(Dimensions)];
  v28[3] = *MEMORY[0x277CE6330];
  v29[2] = v24;
  v29[3] = v17;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];

  v26 = [[MOVStreamOutputSettings alloc] initWithSettings:v25];

  return v26;
}

+ (id)h264Settings:(StreamRecordingData *)settings frameRate:(double)rate enableAVEHighPerformanceProfile:(BOOL)profile
{
  profileCopy = profile;
  v31[2] = *MEMORY[0x277D85DE8];
  Dimensions = CMVideoFormatDescriptionGetDimensions(settings->var0);
  v9 = [objc_opt_class() getBitsPerSecondForColorStream:settings frameRate:rate];
  [objc_opt_class() getQualitySetting:settings];
  v11 = v10;
  [MOVStreamIOUtility deriveMaxKeyFrameIntervalFromFps:rate];
  v13 = v12;
  v30[0] = *MEMORY[0x277CE6340];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:rate];
  v31[0] = v14;
  v30[1] = *MEMORY[0x277CE6368];
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  v31[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v17 = [v16 mutableCopy];

  if (v11 >= 0.0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    [v17 setObject:v18 forKey:*MEMORY[0x277CE6398]];
  }

  else
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v9];
    [v17 setObject:v18 forKey:*MEMORY[0x277CE62B0]];
  }

  v19 = +[MOVStreamOptions sharedOptions];
  disableFrameReordering = [v19 disableFrameReordering];

  if (disableFrameReordering)
  {
    [v17 setObject:MEMORY[0x277CBEC28] forKey:@"AllowFrameReordering"];
  }

  if (profileCopy)
  {
    [v17 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25F0]];
    [v17 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25B0]];
    [v17 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE2500]];
  }

  v21 = *MEMORY[0x277CE62C8];
  v29[0] = *MEMORY[0x277CE62F8];
  v22 = *MEMORY[0x277CE63C0];
  v28[0] = v21;
  v28[1] = v22;
  v23 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
  v29[1] = v23;
  v28[2] = *MEMORY[0x277CE6360];
  v24 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(Dimensions)];
  v28[3] = *MEMORY[0x277CE6330];
  v29[2] = v24;
  v29[3] = v17;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];

  v26 = [[MOVStreamOutputSettings alloc] initWithSettings:v25];

  return v26;
}

+ (id)slimSettings:(StreamRecordingData *)settings frameRate:(double)rate
{
  v22[3] = *MEMORY[0x277D85DE8];
  Dimensions = CMVideoFormatDescriptionGetDimensions(settings->var0);
  v6 = *MEMORY[0x277CE62C8];
  v22[0] = @"slim";
  v7 = *MEMORY[0x277CE63C0];
  v21[0] = v6;
  v21[1] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
  v22[1] = v8;
  v21[2] = *MEMORY[0x277CE6360];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(*&Dimensions)];
  v22[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  var5 = settings->var5;
  if (var5)
  {
    v12 = [var5 objectForKey:@"UseSlimXCompression"];
    bOOLValue = [v12 BOOLValue];

    if (bOOLValue)
    {
      v14 = [v10 mutableCopy];
      v19 = @"InternalCodecType";
      v20 = &unk_2868E3AB0;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      [v14 setObject:v15 forKey:*MEMORY[0x277CE6330]];
      v16 = [v14 copy];

      v10 = v16;
    }
  }

  v17 = [[MOVStreamOutputSettings alloc] initWithSettings:v10];

  return v17;
}

+ (id)jpegSettings:(StreamRecordingData *)settings frameRate:(double)rate
{
  v25[3] = *MEMORY[0x277D85DE8];
  Dimensions = CMVideoFormatDescriptionGetDimensions(settings->var0);
  v6 = *MEMORY[0x277CE62C8];
  v25[0] = *MEMORY[0x277CE6310];
  v7 = *MEMORY[0x277CE63C0];
  v24[0] = v6;
  v24[1] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
  v25[1] = v8;
  v24[2] = *MEMORY[0x277CE6360];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(*&Dimensions)];
  v25[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];

  var5 = settings->var5;
  if (var5)
  {
    v12 = [var5 objectForKey:@"EncodingQuality"];
    v13 = v12;
    if (v12)
    {
      [v12 doubleValue];
      [MOVStreamIOUtility clampedQuality:?];
      v15 = v14;
      v16 = [v10 mutableCopy];
      v22 = *MEMORY[0x277CE6398];
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
      v23 = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

      [v16 setObject:v18 forKey:*MEMORY[0x277CE6330]];
      v19 = [v16 copy];
    }

    else
    {
      v19 = v10;
    }
  }

  else
  {
    v19 = v10;
  }

  v20 = [[MOVStreamOutputSettings alloc] initWithSettings:v19];

  return v20;
}

+ (unint64_t)getBitsPerSecondForColorStream:(StreamRecordingData *)stream frameRate:(double)rate
{
  v6 = stream->var5;
  v7 = v6;
  if (v6 && ([v6 objectForKey:@"ColorStreamBitrate"], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = [objc_opt_class() applyBitrateModifiersTo:{objc_msgSend(v8, "integerValue")}];
  }

  else
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(stream->var0);
    v11 = [v7 objectForKey:@"StreamEncoderType"];
    intValue = [v11 intValue];

    v9 = [objc_opt_class() applyBitrateModifiersTo:{+[MOVStreamIOUtility getDefaultBitrateForVideoDimension:atExpectedFramerate:forEncoderType:](MOVStreamIOUtility, "getDefaultBitrateForVideoDimension:atExpectedFramerate:forEncoderType:", Dimensions, intValue, rate)}];
  }

  return v9;
}

+ (double)getQualitySetting:(StreamRecordingData *)setting
{
  v3 = setting->var5;
  v4 = v3;
  v5 = -1.0;
  if (v3)
  {
    v6 = [v3 objectForKey:@"EncodingQuality"];
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      [MOVStreamIOUtility clampedQuality:?];
      v5 = v8;
    }
  }

  return v5;
}

+ (unint64_t)applyBitrateModifiersTo:(unint64_t)to
{
  v4 = +[MOVStreamOptions sharedOptions];
  [v4 bitrateMultiplier];
  v6 = v5;

  v7 = +[MOVStreamOptions sharedOptions];
  bitrateOverride = [v7 bitrateOverride];
  v9 = vcvtad_u64_f64(v6 * to);
  if (v6 > 0.0)
  {
    to = v9;
  }

  if (bitrateOverride)
  {
    return bitrateOverride;
  }

  else
  {
    return to;
  }
}

+ (int)matchDeprecatedType:(int)type
{
  if (type == 3)
  {
    typeCopy = 4;
  }

  else
  {
    typeCopy = type;
  }

  if (type == 13)
  {
    typeCopy = 1;
  }

  if (type == 2)
  {
    return 1;
  }

  else
  {
    return typeCopy;
  }
}

+ (id)addAdditionalCompressionProperties:(id)properties recordingConfig:(id)config
{
  propertiesCopy = properties;
  configCopy = config;
  v7 = [configCopy objectForKey:@"AdditionalCompressionProperties"];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  v9 = [propertiesCopy mutableCopy];
  [v9 addEntriesFromDictionary:MEMORY[0x277CBEC10]];
  [v9 addEntriesFromDictionary:v8];
  v10 = [configCopy objectForKey:@"AllowFrameReordering"];
  v11 = v10;
  if (v10)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "BOOLValue")}];
    [v9 setObject:v12 forKey:*MEMORY[0x277CE2500]];
  }

  v13 = [v9 copy];

  return v13;
}

@end