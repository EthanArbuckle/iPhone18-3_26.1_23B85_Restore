@interface JFXReaderWriterExportController
- (CGSize)applyCompositionAspectRatioToAVPresetSize:(CGSize)a3 compositionSize:(CGSize)a4;
- (id)JFX_videoCompressionSettingsFromAssistant:(id)a3;
- (id)audioCompressionSettings;
- (id)fileTypeFromExtension;
- (id)videoCompressionSettings:(CGSize)a3;
- (id)videoDecompressionSettingsForVideoCompressionSettings:(id)a3;
- (int64_t)mapAssetReaderStatusToExportStatus:(int64_t)a3;
- (int64_t)mapAssetWriterStatusToExportStatus:(int64_t)a3;
- (void)cancelExportWithStatus:(int64_t)a3;
- (void)continueExportAfterDelay;
- (void)transferSampleBuffers:(id)a3 assetReader:(id)a4 assetWriterInput:(id)a5 assetWriter:(id)a6 timeRangeToExport:(id *)a7 queue:(id)a8 pass:(int64_t)a9 completionBlock:(id)a10;
- (void)updateSessionProgress:(id)a3;
- (void)updateStatusAndErrorFromReader:(id)a3 andWriter:(id)a4;
@end

@implementation JFXReaderWriterExportController

- (id)fileTypeFromExtension
{
  v2 = [(JFXExportController *)self exportPath];
  v3 = [v2 pathExtension];

  if (([v3 isEqualToString:@"mp4"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"MP4"))
  {
    v4 = MEMORY[0x277CE1DF0];
  }

  else
  {
    v4 = MEMORY[0x277CE1E40];
  }

  v5 = [*v4 identifier];

  return v5;
}

- (CGSize)applyCompositionAspectRatioToAVPresetSize:(CGSize)a3 compositionSize:(CGSize)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4.width / a4.height;
  if (a4.width / a4.height == 1.0)
  {
    v7 = a3.height;
  }

  else if (a4.width / a4.height >= 1.0)
  {
    if (v6 <= 1.0)
    {
      v8 = a4.height;
      v9 = a4.width;
      v10 = JFXLog_export();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [JFXReaderWriterExportController applyCompositionAspectRatioToAVPresetSize:v9 compositionSize:v8];
      }
    }

    else
    {
      height = a3.width * (1.0 / v6);
    }

    v7 = width;
  }

  else
  {
    v7 = a3.width * v6;
    height = width;
  }

  v11 = height;
  result.height = v11;
  result.width = v7;
  return result;
}

- (id)JFX_videoCompressionSettingsFromAssistant:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x277CE6010];
  if ([v3 isEqualToString:*MEMORY[0x277CE5BC8]])
  {
    v5 = MEMORY[0x277CE6020];
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CE5BD0]])
  {
    v5 = MEMORY[0x277CE6028];
  }

  else
  {
    if (![v3 isEqualToString:*MEMORY[0x277CE5BB0]])
    {
      goto LABEL_8;
    }

    v5 = MEMORY[0x277CE6018];
  }

  v6 = *v5;

  v4 = v6;
LABEL_8:
  v7 = [MEMORY[0x277CE6580] outputSettingsAssistantWithPreset:v4];
  v8 = [v7 videoSettings];
  v9 = [v8 copy];

  return v9;
}

- (id)videoCompressionSettings:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__JFXReaderWriterExportController_videoCompressionSettings___block_invoke_2;
  block[3] = &unk_278D7A168;
  v53 = &__block_literal_global_64;
  if (videoCompressionSettings__onceToken != -1)
  {
    dispatch_once(&videoCompressionSettings__onceToken, block);
  }

  v6 = [(JFXExportController *)self currentPreset];
  v7 = [videoCompressionSettings__presetToVideoSettingsLUT objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = [videoCompressionSettings__presetToVideoSettingsLUT objectForKeyedSubscript:*MEMORY[0x277CE5BA8]];
  }

  if ([v6 isEqualToString:JFXAssetExportPresetHEVC1280x720HDR] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", JFXAssetExportPresetHEVC1920x1080HDR))
  {
    v49 = 1;
LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  if ([v6 isEqualToString:JFXAssetExportPresetHEVC1280x720])
  {
    v49 = 0;
    goto LABEL_8;
  }

  v8 = [v6 isEqualToString:JFXAssetExportPresetHEVC1920x1080];
  v49 = 0;
LABEL_9:
  v9 = [v7 objectForKeyedSubscript:@"kJFXVideoSettingsSize"];
  [v9 CGSizeValue];
  v11 = v10;
  v13 = v12;

  v14 = [v7 objectForKeyedSubscript:@"kJFXVideoSettingsFrameReordering"];
  v15 = [v14 BOOLValue];

  v16 = [v7 objectForKeyedSubscript:@"kJFXVideoSettingsProfileLevel"];
  v17 = [v7 objectForKeyedSubscript:@"kJFXVideoSettingsEntropyMode"];
  v51 = v6;
  v18 = [objc_opt_class() videoDataRateForPreset:v6 size:{width, height}];
  v19 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
  v48 = self;
  [(JFXReaderWriterExportController *)self applyCompositionAspectRatioToAVPresetSize:v11 compositionSize:v13, width, height];
  v21 = v20;
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
  [v19 setObject:v23 forKeyedSubscript:*MEMORY[0x277CE63C0]];

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:v21];
  [v19 setObject:v24 forKeyedSubscript:*MEMORY[0x277CE6360]];

  v25 = MEMORY[0x277CE6300];
  if ((v8 & 1) == 0)
  {
    v25 = MEMORY[0x277CE62F8];
  }

  v50 = *v25;
  [v19 setObject:? forKeyedSubscript:?];
  v26 = 3;
  if (v17)
  {
    v26 = 4;
  }

  v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v26 + v15];
  [v27 setObject:v16 forKey:*MEMORY[0x277CE6390]];
  if ((v8 & 1) == 0 && v17)
  {
    [v27 setObject:v17 forKey:*MEMORY[0x277CE6358]];
  }

  if (v49)
  {
    [v27 setObject:*MEMORY[0x277CE27F0] forKeyedSubscript:*MEMORY[0x277CE2560]];
    [v27 setObject:*MEMORY[0x277CBED10] forKeyedSubscript:*MEMORY[0x277CE25C8]];
  }

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
  [v27 setObject:v28 forKey:*MEMORY[0x277CE62B0]];

  if (v15)
  {
    v29 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v27 setObject:v29 forKey:*MEMORY[0x277CE6298]];
  }

  v30 = [v27 copy];
  [v19 setObject:v30 forKey:*MEMORY[0x277CE6330]];

  v31 = [MEMORY[0x277D41610] sharedInstance];
  v32 = [v31 preferredExportColorSpace];

  if ((v8 & 1) == 0 && [v32 isHDRSpace])
  {
    v33 = [MEMORY[0x277D415E0] rec709GammaColorSpace];

    v32 = v33;
  }

  v34 = objc_opt_new();
  v35 = [v32 nclcTriplet];
  v36 = [v35 colorPrimary];
  [v34 setObject:v36 forKeyedSubscript:*MEMORY[0x277CE6318]];

  v37 = [v32 nclcTriplet];
  v38 = [v37 transferFunction];
  [v34 setObject:v38 forKeyedSubscript:*MEMORY[0x277CE63B0]];

  v39 = [v32 nclcTriplet];
  v40 = [v39 ycbcrMatrix];
  [v34 setObject:v40 forKeyedSubscript:*MEMORY[0x277CE63C8]];

  [v19 setObject:v34 forKeyedSubscript:*MEMORY[0x277CE6328]];
  v41 = JFXLog_DebugExport();
  v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG);

  if (v42)
  {
    v43 = JFXLog_DebugExport();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      [JFXReaderWriterExportController videoCompressionSettings:];
    }

    v44 = JFXLog_DebugExport();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      [JFXReaderWriterExportController videoCompressionSettings:v48];
    }

    v45 = JFXLog_DebugExport();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [JFXReaderWriterExportController videoCompressionSettings:];
    }
  }

  v46 = [v19 copy];

  return v46;
}

id __60__JFXReaderWriterExportController_videoCompressionSettings___block_invoke(double a1, double a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v19[0] = @"kJFXVideoSettingsSize";
  *v18 = a1;
  *&v18[1] = a2;
  v12 = [MEMORY[0x277CCAE60] valueWithBytes:v18 objCType:"{CGSize=dd}"];
  v20[0] = v12;
  v19[1] = @"kJFXVideoSettingsFrameReordering";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:a4];
  v19[2] = @"kJFXVideoSettingsProfileLevel";
  v20[1] = v13;
  v20[2] = v10;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v15 = [v14 mutableCopy];

  if (v11)
  {
    [v15 setObject:v11 forKeyedSubscript:@"kJFXVideoSettingsEntropyMode"];
  }

  v16 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v15];

  return v16;
}

void __60__JFXReaderWriterExportController_videoCompressionSettings___block_invoke_2(uint64_t a1)
{
  v15[10] = *MEMORY[0x277D85DE8];
  v14[0] = JFXAssetExportPresetLowQuality;
  v13 = (*(*(a1 + 32) + 16))(640.0, 360.0);
  v15[0] = v13;
  v14[1] = *MEMORY[0x277CE5BC8];
  v12 = (*(*(a1 + 32) + 16))(640.0, 480.0);
  v15[1] = v12;
  v14[2] = *MEMORY[0x277CE5BD0];
  v2 = (*(*(a1 + 32) + 16))(960.0, 540.0);
  v15[2] = v2;
  v14[3] = *MEMORY[0x277CE5BA8];
  v3 = (*(*(a1 + 32) + 16))(1280.0, 720.0);
  v15[3] = v3;
  v14[4] = JFXAssetExportPresetHEVC1280x720;
  v4 = (*(*(a1 + 32) + 16))(1280.0, 720.0);
  v15[4] = v4;
  v14[5] = JFXAssetExportPresetHEVC1280x720HDR;
  v5 = (*(*(a1 + 32) + 16))(1280.0, 720.0);
  v15[5] = v5;
  v14[6] = *MEMORY[0x277CE5BB0];
  v6 = (*(*(a1 + 32) + 16))(1920.0, 1080.0);
  v15[6] = v6;
  v14[7] = JFXAssetExportPresetHEVC1920x1080;
  v7 = (*(*(a1 + 32) + 16))(1920.0, 1080.0);
  v15[7] = v7;
  v14[8] = JFXAssetExportPresetHEVC1920x1080HDR;
  v8 = (*(*(a1 + 32) + 16))(1920.0, 1080.0);
  v15[8] = v8;
  v14[9] = *MEMORY[0x277CE5BB8];
  v9 = (*(*(a1 + 32) + 16))(3840.0, 2160.0);
  v15[9] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:10];
  v11 = videoCompressionSettings__presetToVideoSettingsLUT;
  videoCompressionSettings__presetToVideoSettingsLUT = v10;
}

- (id)audioCompressionSettings
{
  v3 = objc_opt_class();
  v4 = [(JFXExportController *)self currentPreset:6619138];
  v5 = [v3 audioDataRateForPreset:v4];

  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1633772320];
  [v6 setObject:v7 forKey:*MEMORY[0x277CB8280]];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
  [v6 setObject:v8 forKey:*MEMORY[0x277CB82B0]];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:44100];
  [v6 setObject:v9 forKey:*MEMORY[0x277CB82E0]];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  [v6 setObject:v10 forKey:*MEMORY[0x277CB8258]];

  v11 = [MEMORY[0x277CBEA90] dataWithBytes:&v14 length:32];
  [v6 setObject:v11 forKey:*MEMORY[0x277CB8250]];

  v12 = [v6 copy];

  return v12;
}

- (id)videoDecompressionSettingsForVideoCompressionSettings:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:*MEMORY[0x277CE63C0]];
  v6 = [v5 unsignedIntValue];

  if (!v6)
  {
    v7 = JFXLog_export();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [JFXReaderWriterExportController videoDecompressionSettingsForVideoCompressionSettings:];
    }
  }

  v8 = [v4 objectForKey:*MEMORY[0x277CE6360]];
  v9 = [v8 unsignedIntValue];

  if (!v9)
  {
    v10 = JFXLog_export();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [JFXReaderWriterExportController videoDecompressionSettingsForVideoCompressionSettings:];
    }
  }

  v30 = v4;
  v11 = v9;
  v12 = v6;
  v13 = [(JFXExportController *)self composition];
  v31 = [v13 compositionOutputColorSpace];

  v14 = [v31 jfx_getCVPixelFormatForExport];
  v15 = ((v9 + 15) & 0x1FFFFFFF0) - v9;
  v29 = MEMORY[0x277CBEB38];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v14];
  v28 = *MEMORY[0x277CC4E30];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
  v18 = *MEMORY[0x277CC4EC8];
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  v20 = *MEMORY[0x277CC4DD8];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:4096];
  v22 = *MEMORY[0x277CC4E38];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
  v24 = *MEMORY[0x277CC4DA0];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:128];
  v26 = [v29 dictionaryWithObjectsAndKeys:{v16, v28, v17, v18, v19, v20, v21, v22, v23, v24, v25, *MEMORY[0x277CC4D60], 0}];

  return v26;
}

- (int64_t)mapAssetReaderStatusToExportStatus:(int64_t)a3
{
  if ((a3 - 1) < 4)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

- (int64_t)mapAssetWriterStatusToExportStatus:(int64_t)a3
{
  if ((a3 - 1) < 4)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

- (void)updateStatusAndErrorFromReader:(id)a3 andWriter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[JFXReaderWriterExportController mapAssetReaderStatusToExportStatus:](self, "mapAssetReaderStatusToExportStatus:", [v6 status]);
  v9 = -[JFXReaderWriterExportController mapAssetWriterStatusToExportStatus:](self, "mapAssetWriterStatusToExportStatus:", [v7 status]);
  v10 = v9;
  if (v8 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  [(JFXExportController *)self setStatus:v11];
  v12 = JFXLog_DebugExport();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(JFXReaderWriterExportController *)v8 updateStatusAndErrorFromReader:v10 andWriter:v12];
  }

  if (v8 == 2 || v10 == 2)
  {
    [(JFXExportController *)self setStatus:2];
  }

  if (v8 == 4 || v10 == 4)
  {
    [(JFXExportController *)self setStatus:4];
  }

  if ([(JFXExportController *)self status]== 4)
  {
    v13 = [v7 error];

    v14 = JFXLog_export();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      if (v15)
      {
        [JFXReaderWriterExportController updateStatusAndErrorFromReader:v7 andWriter:?];
      }
    }

    else if (v15)
    {
      [JFXReaderWriterExportController updateStatusAndErrorFromReader:v6 andWriter:?];
    }
  }
}

- (void)updateSessionProgress:(id)a3
{
  v4 = a3;
  [v4 floatValue];
  v6 = v5;
  v7 = [(JFXExportController *)self composition];
  v8 = v7;
  if (v7)
  {
    [v7 duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v9 = CMTimeGetSeconds(&time) * v6;

  memset(&time, 0, sizeof(time));
  CMTimeMakeWithSeconds(&time, v9, 30);
  v10 = JFXLog_DebugExport();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [JFXReaderWriterExportController updateSessionProgress:v4];
  }

  v11 = [(JFXReaderWriterExportController *)self customCompositor];
  v12 = time;
  [v11 signalScheduling:&v12 playerRate:{COERCE_DOUBLE(__PAIR64__(HIDWORD(time.value), 1.0))}];
}

- (void)transferSampleBuffers:(id)a3 assetReader:(id)a4 assetWriterInput:(id)a5 assetWriter:(id)a6 timeRangeToExport:(id *)a7 queue:(id)a8 pass:(int64_t)a9 completionBlock:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a10;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __143__JFXReaderWriterExportController_transferSampleBuffers_assetReader_assetWriterInput_assetWriter_timeRangeToExport_queue_pass_completionBlock___block_invoke;
  v28[3] = &unk_278D7CC08;
  v35 = v40;
  v22 = v18;
  v29 = v22;
  v23 = v16;
  v30 = v23;
  v31 = self;
  v24 = *&a7->var0.var3;
  v37 = *&a7->var0.var0;
  v38 = v24;
  v39 = *&a7->var1.var1;
  v25 = v17;
  v32 = v25;
  v26 = v19;
  v33 = v26;
  v36 = a9;
  v27 = v21;
  v34 = v27;
  [v22 requestMediaDataWhenReadyOnQueue:v20 usingBlock:v28];

  _Block_object_dispose(v40, 8);
}

uint64_t __143__JFXReaderWriterExportController_transferSampleBuffers_assetReader_assetWriterInput_assetWriter_timeRangeToExport_queue_pass_completionBlock___block_invoke(uint64_t result)
{
  v41 = *MEMORY[0x277D85DE8];
  if (*(*(*(result + 80) + 8) + 24))
  {
    return result;
  }

  v1 = result;
  result = [*(result + 32) isReadyForMoreMediaData];
  if (!result)
  {
    return result;
  }

  v3 = *MEMORY[0x277CE5EA8];
  key = *MEMORY[0x277CC4C00];
  v33 = *MEMORY[0x277CC4CC0];
  v32 = *MEMORY[0x277CC4D10];
  value = *MEMORY[0x277CC4C20];
  v30 = *MEMORY[0x277CC4CD8];
  v29 = *MEMORY[0x277CC4D28];
  *&v2 = 134218240;
  v28 = v2;
  while (1)
  {
    v4 = [*(v1 + 40) mediaType];
    v5 = [v4 isEqualToString:v3];

    v6 = objc_autoreleasePoolPush();
    if ([*(v1 + 48) cancel])
    {
      v25 = JFXLog_DebugExport();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        __143__JFXReaderWriterExportController_transferSampleBuffers_assetReader_assetWriterInput_assetWriter_timeRangeToExport_queue_pass_completionBlock___block_invoke_cold_2();
      }

      goto LABEL_38;
    }

    v7 = [*(v1 + 40) copyNextSampleBuffer];
    v8 = v7;
    if (!v7)
    {
      v25 = JFXLog_DebugExport();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        __143__JFXReaderWriterExportController_transferSampleBuffers_assetReader_assetWriterInput_assetWriter_timeRangeToExport_queue_pass_completionBlock___block_invoke_cold_1(v5, v1, v25);
      }

LABEL_38:

      goto LABEL_39;
    }

    if (v5)
    {
      v9 = *(v1 + 112);
      *buf = *(v1 + 96);
      *&buf[16] = v9;
      *&buf[32] = *(v1 + 128);
      memset(&v37, 0, sizeof(v37));
      CMSampleBufferGetOutputPresentationTimeStamp(&v37, v7);
      memset(&v36, 0, sizeof(v36));
      lhs = v37;
      rhs = *buf;
      CMTimeSubtract(&v36, &lhs, &rhs);
      lhs = v36;
      Seconds = CMTimeGetSeconds(&lhs);
      lhs = *&buf[24];
      v11 = CMTimeGetSeconds(&lhs);
      v12 = JFXLog_DebugExport();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(lhs.value) = v28;
        *(&lhs.value + 4) = v37.value;
        LOWORD(lhs.flags) = 1024;
        *(&lhs.flags + 2) = v37.timescale;
        _os_log_debug_impl(&dword_242A3B000, v12, OS_LOG_TYPE_DEBUG, "sampleTime=%lld scale=%d", &lhs, 0x12u);
      }

      if (v36.flags)
      {
        v13 = Seconds / v11;
        *&v13 = Seconds / v11;
        v14 = fminf(fmaxf(*&v13, 0.0), 1.0);
        *&v13 = v14;
        [*(v1 + 48) setProgress:v13];
        v15 = *(v1 + 48);
        *&v16 = v14;
        v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
        [v15 performSelectorOnMainThread:sel_updateSessionProgress_ withObject:v17 waitUntilDone:1];
      }

      lhs = v37;
      rhs = **&MEMORY[0x277CC08F0];
      if (!CMTimeCompare(&lhs, &rhs))
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(v8);
        v19 = CVBufferCopyAttachment(ImageBuffer, key, 0);
        v20 = CVBufferCopyAttachment(ImageBuffer, v33, 0);
        v21 = CVBufferCopyAttachment(ImageBuffer, v32, 0);
        v22 = JFXLog_DebugExport();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(lhs.value) = 138412802;
          *(&lhs.value + 4) = v19;
          LOWORD(lhs.flags) = 2112;
          *(&lhs.flags + 2) = v20;
          HIWORD(lhs.epoch) = 2112;
          v39 = v21;
          _os_log_impl(&dword_242A3B000, v22, OS_LOG_TYPE_DEFAULT, "originalColorPrimaries=%@ originalTransferFunction=%@ originalYCbCrMatrix=%@", &lhs, 0x20u);
        }

        if (v19 || v20 || v21)
        {
          if (v19)
          {
            CFRelease(v19);
          }

          if (v20)
          {
            CFRelease(v20);
          }

          if (v21)
          {
            CFRelease(v21);
          }
        }

        else
        {
          CVBufferSetAttachment(ImageBuffer, key, value, kCVAttachmentMode_ShouldPropagate);
          CVBufferSetAttachment(ImageBuffer, v33, v30, kCVAttachmentMode_ShouldPropagate);
          CVBufferSetAttachment(ImageBuffer, v32, v29, kCVAttachmentMode_ShouldPropagate);
        }
      }
    }

    memset(&lhs, 0, sizeof(lhs));
    CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v8);
    v23 = JFXLog_DebugExport();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = @"audio";
      if (v5)
      {
        v24 = @"video";
      }

      *buf = 138412802;
      *&buf[4] = v24;
      *&buf[12] = 2048;
      *&buf[14] = lhs.value;
      *&buf[22] = 1024;
      *&buf[24] = lhs.timescale;
      _os_log_impl(&dword_242A3B000, v23, OS_LOG_TYPE_DEFAULT, "Export added %@ sample at time %lld scale=%i", buf, 0x1Cu);
    }

    if (([*(v1 + 32) appendSampleBuffer:v8] & 1) == 0)
    {
      break;
    }

    CFRelease(v8);
    objc_autoreleasePoolPop(v6);
    result = [*(v1 + 32) isReadyForMoreMediaData];
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  [*(v1 + 48) updateStatusAndErrorFromReader:*(v1 + 56) andWriter:*(v1 + 64)];
  v26 = JFXLog_export();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = [*(v1 + 48) status];
    *buf = 67109378;
    *&buf[4] = v27;
    *&buf[8] = 2112;
    *&buf[10] = v8;
    _os_log_error_impl(&dword_242A3B000, v26, OS_LOG_TYPE_ERROR, "appendSampleBuffer failed error=%d %@", buf, 0x12u);
  }

  CFRelease(v8);
LABEL_39:
  objc_autoreleasePoolPop(v6);
  *(*(*(v1 + 80) + 8) + 24) = 1;
  return (*(*(v1 + 72) + 16))();
}

- (void)continueExportAfterDelay
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_242A3B000, log, OS_LOG_TYPE_ERROR, "An error occurred during export: %{public}@", buf, 0xCu);
}

void __59__JFXReaderWriterExportController_continueExportAfterDelay__block_invoke(uint64_t a1)
{
  [*(a1 + 32) markAsFinished];
  [*(a1 + 40) updateStatusAndErrorFromReader:*(a1 + 48) andWriter:*(a1 + 56)];
  if ([*(a1 + 40) status] == 4)
  {
    v2 = JFXLog_export();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __59__JFXReaderWriterExportController_continueExportAfterDelay__block_invoke_cold_1(a1);
    }
  }

  v3 = JFXLog_DebugExport();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __59__JFXReaderWriterExportController_continueExportAfterDelay__block_invoke_cold_2(a1);
  }

  dispatch_group_leave(*(a1 + 80));
}

void __59__JFXReaderWriterExportController_continueExportAfterDelay__block_invoke_53(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  if ([*(a1 + 40) cancel])
  {
    if ([*(a1 + 56) status] == 1)
    {
      [*(a1 + 56) cancelReading];
    }

    if ([*(a1 + 48) status] == 1)
    {
      [*(a1 + 48) cancelWriting];
    }

    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v2 = [*(a1 + 40) exportPath];
    [v4 removeItemAtPath:v2 error:0];
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __59__JFXReaderWriterExportController_continueExportAfterDelay__block_invoke_2;
    v5[3] = &unk_278D7A600;
    v3 = *(a1 + 48);
    v5[4] = *(a1 + 40);
    v6 = *(a1 + 56);
    v7 = *(a1 + 48);
    [v3 finishWritingWithCompletionHandler:v5];
  }
}

uint64_t __59__JFXReaderWriterExportController_continueExportAfterDelay__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) updateStatusAndErrorFromReader:*(a1 + 40) andWriter:*(a1 + 48)];
  if ([*(a1 + 32) status] != 3)
  {
    v2 = [MEMORY[0x277CCAA00] defaultManager];
    v3 = [*(a1 + 32) exportPath];
    [v2 removeItemAtPath:v3 error:0];
  }

  [*(a1 + 32) nextPreset];
  v4 = [*(a1 + 32) currentPreset];

  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 setProgress:0.0];
    v6 = *(a1 + 32);

    return [v6 performSelectorOnMainThread:sel_JFX_continueExportForNextPreset withObject:0 waitUntilDone:0];
  }

  else
  {

    return [v5 closeSessionWithStatus:0];
  }
}

- (void)cancelExportWithStatus:(int64_t)a3
{
  v5 = JFXLog_DebugExport();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [JFXReaderWriterExportController cancelExportWithStatus:];
  }

  [(JFXExportController *)self setCancel:1];
  v6.receiver = self;
  v6.super_class = JFXReaderWriterExportController;
  [(JFXExportController *)&v6 cancelExportWithStatus:a3];
}

- (void)applyCompositionAspectRatioToAVPresetSize:(double)a1 compositionSize:(double)a2 .cold.1(double a1, double a2)
{
  v7 = NSStringFromCGSize(*&a1);
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)videoCompressionSettings:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_242A3B000, v0, OS_LOG_TYPE_DEBUG, "videoSettings: %@", v1, 0xCu);
}

- (void)videoCompressionSettings:(void *)a1 .cold.2(void *a1)
{
  v2 = [a1 currentPreset];
  v3 = [a1 JFX_videoCompressionSettingsFromAssistant:v2];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)videoCompressionSettings:.cold.3()
{
  v0 = [MEMORY[0x277CE6580] availableOutputSettingsPresets];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)updateStatusAndErrorFromReader:(os_log_t)log andWriter:.cold.1(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_debug_impl(&dword_242A3B000, log, OS_LOG_TYPE_DEBUG, "updateStatusAndError: readerStatus=%d writerStatus=%d", v3, 0xEu);
}

- (void)updateStatusAndErrorFromReader:(void *)a1 andWriter:.cold.2(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)updateStatusAndErrorFromReader:(void *)a1 andWriter:.cold.3(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)updateSessionProgress:(void *)a1 .cold.1(void *a1)
{
  [a1 floatValue];
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __143__JFXReaderWriterExportController_transferSampleBuffers_assetReader_assetWriterInput_assetWriter_timeRangeToExport_queue_pass_completionBlock___block_invoke_cold_1(char a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = @"audio";
  v4 = *(a2 + 88);
  if (a1)
  {
    v3 = @"video";
  }

  v5 = 138412546;
  v6 = v3;
  v7 = 2048;
  v8 = v4;
  _os_log_debug_impl(&dword_242A3B000, log, OS_LOG_TYPE_DEBUG, "transferSampleBuffers: allDone for %@ pass=%ld", &v5, 0x16u);
}

void __59__JFXReaderWriterExportController_continueExportAfterDelay__block_invoke_cold_1(uint64_t a1)
{
  dispatch_queue_get_label(*(a1 + 64));
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __59__JFXReaderWriterExportController_continueExportAfterDelay__block_invoke_cold_2(uint64_t a1)
{
  v1 = [*(a1 + 72) mediaType];
  [v1 isEqualToString:*MEMORY[0x277CE5EA8]];
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

@end