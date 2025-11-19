@interface JFXExportController
+ (id)presetNameForCGSize:(CGSize)a3;
+ (unint64_t)audioDataRateForPreset:(id)a3;
+ (unint64_t)dataRateForPreset:(id)a3 size:(CGSize)a4;
+ (unint64_t)estimatedFileSizeForDuration:(int)a3 frameRate:(double)a4 preset:(id)a5 size:(CGSize)a6;
+ (unint64_t)videoDataRateForPreset:(id)a3 size:(CGSize)a4;
- (JFXExportController)initWithWithComposition:(id)a3 presets:(id)a4 toFile:(id)a5 poster:(id)a6 delegate:(id)a7;
- (id)metadataToAdd;
- (void)analyticsForSessionBegin;
- (void)analyticsForSessionCompleteWithStatus:(int64_t)a3;
- (void)beginAsynchronousExport;
- (void)closeSessionWithStatus:(int64_t)a3;
- (void)informDelegateOfCompletion;
- (void)nextPreset;
- (void)serviceProgressTimer:(id)a3;
- (void)startProgressTimer;
- (void)stopProgressTimer;
- (void)updateProgressViewWithProgress:(float)a3 reduced:(BOOL)a4;
@end

@implementation JFXExportController

- (JFXExportController)initWithWithComposition:(id)a3 presets:(id)a4 toFile:(id)a5 poster:(id)a6 delegate:(id)a7
{
  v22 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = JFXExportController;
  v17 = [(JFXExportController *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_composition, a3);
    objc_storeStrong(&v18->_presets, a4);
    v18->_exportingIndexPresets = 0;
    objc_storeStrong(&v18->_exportPath, a5);
    currentPreset = v18->_currentPreset;
    v18->_currentPreset = 0;

    v18->_cancel = 0;
    v18->_status = 0;
    objc_storeStrong(&v18->_poster, a6);
    objc_storeStrong(&v18->_delegate, a7);
    if (![(NSArray *)v18->_presets count])
    {
      v20 = JFXLog_export();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [JFXExportController initWithWithComposition:v20 presets:? toFile:? poster:? delegate:?];
      }
    }
  }

  return v18;
}

+ (unint64_t)estimatedFileSizeForDuration:(int)a3 frameRate:(double)a4 preset:(id)a5 size:(CGSize)a6
{
  if (!a5)
  {
    return 0;
  }

  v6 = a4;
  return a3 / vcvtps_u32_f32(v6) * (vcvtd_n_f64_u64([a1 dataRateForPreset:a5 size:{a6.width, a6.height}], 3uLL) * 1.05);
}

+ (unint64_t)dataRateForPreset:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [a1 videoDataRateForPreset:v7 size:{width, height}];
  v9 = [a1 audioDataRateForPreset:v7];

  return v9 + v8;
}

+ (unint64_t)videoDataRateForPreset:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  if (videoDataRateForPreset_size__onceToken != -1)
  {
    +[JFXExportController videoDataRateForPreset:size:];
  }

  v7 = [videoDataRateForPreset_size__presetToDataRateLUT objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [videoDataRateForPreset_size__presetToDataRateLUT objectForKeyedSubscript:v6];
    v9 = [v8 unsignedIntegerValue];
  }

  else
  {
    v9 = 10500000;
  }

  v10 = [v6 isEqualToString:JFXAssetExportPresetLowQuality];
  v11 = v9 >> (CGSizeIsSquare(width, height) & (v10 ^ 1));

  return v11;
}

void __51__JFXExportController_videoDataRateForPreset_size___block_invoke()
{
  v6[10] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CE5BC8];
  v5[0] = JFXAssetExportPresetLowQuality;
  v5[1] = v0;
  v6[0] = &unk_28556D278;
  v6[1] = &unk_28556D290;
  v1 = *MEMORY[0x277CE5BA8];
  v5[2] = *MEMORY[0x277CE5BD0];
  v5[3] = v1;
  v6[2] = &unk_28556D2A8;
  v6[3] = &unk_28556D2C0;
  v5[4] = JFXAssetExportPresetHEVC1280x720;
  v5[5] = JFXAssetExportPresetHEVC1280x720HDR;
  v6[4] = &unk_28556D2C0;
  v6[5] = &unk_28556D2C0;
  v5[6] = *MEMORY[0x277CE5BB0];
  v5[7] = JFXAssetExportPresetHEVC1920x1080;
  v6[6] = &unk_28556D2D8;
  v6[7] = &unk_28556D2D8;
  v2 = *MEMORY[0x277CE5BB8];
  v5[8] = JFXAssetExportPresetHEVC1920x1080HDR;
  v5[9] = v2;
  v6[8] = &unk_28556D2D8;
  v6[9] = &unk_28556D2F0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:10];
  v4 = videoDataRateForPreset_size__presetToDataRateLUT;
  videoDataRateForPreset_size__presetToDataRateLUT = v3;
}

+ (unint64_t)audioDataRateForPreset:(id)a3
{
  v3 = 256000;
  v4 = a3;
  if (([v4 isEqualToString:*MEMORY[0x277CE5BA8]] & 1) == 0 && !objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277CE5BB0]))
  {
    v3 = 128000;
  }

  return v3;
}

+ (id)presetNameForCGSize:(CGSize)a3
{
  v3 = a3.width * a3.height;
  if (v3 >= 8294400.0)
  {
    v4 = MEMORY[0x277CE5BB8];
  }

  else if (v3 >= 2073600.0)
  {
    v4 = MEMORY[0x277CE5BB0];
  }

  else if (v3 >= 921600.0)
  {
    v4 = MEMORY[0x277CE5BA8];
  }

  else
  {
    v4 = MEMORY[0x277CE5BD0];
    if (v3 < 518400.0)
    {
      v4 = MEMORY[0x277CE5BC8];
    }
  }

  return *v4;
}

- (void)nextPreset
{
  v3 = [(JFXExportController *)self exportingIndexPresets];
  v4 = [(JFXExportController *)self presets];
  v5 = [v4 count];

  if (v3 >= v5)
  {

    [(JFXExportController *)self setCurrentPreset:0];
  }

  else
  {
    v6 = [(JFXExportController *)self presets];
    v7 = [v6 objectAtIndex:self->_exportingIndexPresets];
    [(JFXExportController *)self setCurrentPreset:v7];

    v8 = [(JFXExportController *)self exportingIndexPresets]+ 1;

    [(JFXExportController *)self setExportingIndexPresets:v8];
  }
}

- (void)beginAsynchronousExport
{
  [(JFXExportController *)self nextPreset];
  [(JFXExportController *)self analyticsForSessionBegin];
  [(JFXExportController *)self updateProgressViewWithProgress:0 reduced:0.0];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__JFXExportController_beginAsynchronousExport__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)closeSessionWithStatus:(int64_t)a3
{
  [(JFXExportController *)self analyticsForSessionCompleteWithStatus:a3];
  [JFXExportController cancelPreviousPerformRequestsWithTarget:self];
  [(JFXExportController *)self stopProgressTimer];

  [(JFXExportController *)self informDelegateOfCompletion];
}

- (void)informDelegateOfCompletion
{
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if ([(JFXExportController *)self cancel])
    {
      v3 = 3;
    }

    else
    {
      v3 = 2 * ([(JFXExportController *)self status]!= 3);
    }

    delegate = self->_delegate;

    [(JFXExportDelegate *)delegate didFinishExport:v3];
  }
}

- (void)startProgressTimer
{
  [(JFXExportController *)self stopProgressTimer];
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_serviceProgressTimer_ selector:0 userInfo:1 repeats:0.5];
  [(JFXExportController *)self setProgressTimer:v3];

  v4 = [MEMORY[0x277D75128] sharedApplication];
  [v4 setIdleTimerDisabled:0];

  v5 = [MEMORY[0x277D75128] sharedApplication];
  [v5 setIdleTimerDisabled:1];
}

- (void)stopProgressTimer
{
  progressTimer = self->_progressTimer;
  if (progressTimer)
  {
    [(NSTimer *)progressTimer invalidate];
    [(JFXExportController *)self setProgressTimer:0];
    v4 = MEMORY[0x277D85CD0];

    dispatch_async(v4, &__block_literal_global_33_0);
  }
}

void __40__JFXExportController_stopProgressTimer__block_invoke()
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  [v0 setIdleTimerDisabled:1];

  v1 = [MEMORY[0x277D75128] sharedApplication];
  [v1 setIdleTimerDisabled:0];
}

- (void)serviceProgressTimer:(id)a3
{
  [(JFXExportController *)self progress];
  [(JFXExportController *)self updateProgressViewWithProgress:1 reduced:?];
  v4 = [MEMORY[0x277D75128] sharedApplication];
  [v4 setIdleTimerDisabled:0];

  v5 = [MEMORY[0x277D75128] sharedApplication];
  [v5 setIdleTimerDisabled:1];
}

- (void)updateProgressViewWithProgress:(float)a3 reduced:(BOOL)a4
{
  v4 = a4;
  v7 = [(JFXExportController *)self presets];
  v8 = [v7 count];

  if (v8 >= 2)
  {
    v9 = [(JFXExportController *)self presets];
    v10 = 1.0 / [v9 count];

    a3 = (v10 * a3) + v10 * ([(JFXExportController *)self exportingIndexPresets]- 1);
  }

  v11 = [(JFXExportController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    if (v4)
    {
      v13 = a3 * 0.95;
      a3 = v13;
    }

    v15 = [(JFXExportController *)self delegate];
    *&v14 = a3;
    [v15 exportProgressedTo:v14];
  }
}

- (id)metadataToAdd
{
  v3 = [MEMORY[0x277CBEA60] array];
  v4 = [(JFXExportController *)self poster];

  v5 = MEMORY[0x277CE5FA8];
  if (v4)
  {
    v6 = [(JFXExportController *)self poster];
    v7 = UIImageJPEGRepresentation(v6, 0.8);

    v8 = [(JFXExportController *)self poster];
    [v8 size];
    v10 = v9;

    if (v10 > 0.0 && v7)
    {
      v11 = [MEMORY[0x277CE6558] metadataItem];
      [v11 setKeySpace:*v5];
      [v11 setKey:*MEMORY[0x277CE5FC8]];
      [v11 setValue:v7];
      v12 = [v3 arrayByAddingObject:v11];

      v3 = v12;
    }

    [(JFXExportController *)self setPoster:0];
  }

  v13 = [MEMORY[0x277CE6558] metadataItem];
  [v13 setKeySpace:*v5];
  [v13 setKey:*MEMORY[0x277CE5FE0]];
  v14 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [v14 bundleIdentifier];
  v16 = [v15 pathExtension];
  [v13 setValue:v16];

  v17 = [v3 arrayByAddingObject:v13];

  return v17;
}

- (void)analyticsForSessionBegin
{
  v3 = [(JFXExportController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(JFXExportController *)self delegate];
    [v5 exportAnalyticsForSessionBegin];
  }

  v6 = mach_absolute_time();

  [(JFXExportController *)self setExportStartTime:v6];
}

- (void)analyticsForSessionCompleteWithStatus:(int64_t)a3
{
  v5 = [(JFXExportController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(JFXExportController *)self delegate];
    [v7 exportAnalyticsForSessionCompleteWithStatus:a3 exportMachDuration:{-[JFXExportController exportDuration](self, "exportDuration")}];
  }
}

@end