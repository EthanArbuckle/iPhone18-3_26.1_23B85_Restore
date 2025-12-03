@interface JFXExportController
+ (id)presetNameForCGSize:(CGSize)size;
+ (unint64_t)audioDataRateForPreset:(id)preset;
+ (unint64_t)dataRateForPreset:(id)preset size:(CGSize)size;
+ (unint64_t)estimatedFileSizeForDuration:(int)duration frameRate:(double)rate preset:(id)preset size:(CGSize)size;
+ (unint64_t)videoDataRateForPreset:(id)preset size:(CGSize)size;
- (JFXExportController)initWithWithComposition:(id)composition presets:(id)presets toFile:(id)file poster:(id)poster delegate:(id)delegate;
- (id)metadataToAdd;
- (void)analyticsForSessionBegin;
- (void)analyticsForSessionCompleteWithStatus:(int64_t)status;
- (void)beginAsynchronousExport;
- (void)closeSessionWithStatus:(int64_t)status;
- (void)informDelegateOfCompletion;
- (void)nextPreset;
- (void)serviceProgressTimer:(id)timer;
- (void)startProgressTimer;
- (void)stopProgressTimer;
- (void)updateProgressViewWithProgress:(float)progress reduced:(BOOL)reduced;
@end

@implementation JFXExportController

- (JFXExportController)initWithWithComposition:(id)composition presets:(id)presets toFile:(id)file poster:(id)poster delegate:(id)delegate
{
  compositionCopy = composition;
  presetsCopy = presets;
  fileCopy = file;
  posterCopy = poster;
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = JFXExportController;
  v17 = [(JFXExportController *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_composition, composition);
    objc_storeStrong(&v18->_presets, presets);
    v18->_exportingIndexPresets = 0;
    objc_storeStrong(&v18->_exportPath, file);
    currentPreset = v18->_currentPreset;
    v18->_currentPreset = 0;

    v18->_cancel = 0;
    v18->_status = 0;
    objc_storeStrong(&v18->_poster, poster);
    objc_storeStrong(&v18->_delegate, delegate);
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

+ (unint64_t)estimatedFileSizeForDuration:(int)duration frameRate:(double)rate preset:(id)preset size:(CGSize)size
{
  if (!preset)
  {
    return 0;
  }

  rateCopy = rate;
  return duration / vcvtps_u32_f32(rateCopy) * (vcvtd_n_f64_u64([self dataRateForPreset:preset size:{size.width, size.height}], 3uLL) * 1.05);
}

+ (unint64_t)dataRateForPreset:(id)preset size:(CGSize)size
{
  height = size.height;
  width = size.width;
  presetCopy = preset;
  v8 = [self videoDataRateForPreset:presetCopy size:{width, height}];
  v9 = [self audioDataRateForPreset:presetCopy];

  return v9 + v8;
}

+ (unint64_t)videoDataRateForPreset:(id)preset size:(CGSize)size
{
  height = size.height;
  width = size.width;
  presetCopy = preset;
  if (videoDataRateForPreset_size__onceToken != -1)
  {
    +[JFXExportController videoDataRateForPreset:size:];
  }

  v7 = [videoDataRateForPreset_size__presetToDataRateLUT objectForKeyedSubscript:presetCopy];

  if (v7)
  {
    v8 = [videoDataRateForPreset_size__presetToDataRateLUT objectForKeyedSubscript:presetCopy];
    unsignedIntegerValue = [v8 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 10500000;
  }

  v10 = [presetCopy isEqualToString:JFXAssetExportPresetLowQuality];
  v11 = unsignedIntegerValue >> (CGSizeIsSquare(width, height) & (v10 ^ 1));

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

+ (unint64_t)audioDataRateForPreset:(id)preset
{
  v3 = 256000;
  presetCopy = preset;
  if (([presetCopy isEqualToString:*MEMORY[0x277CE5BA8]] & 1) == 0 && !objc_msgSend(presetCopy, "isEqualToString:", *MEMORY[0x277CE5BB0]))
  {
    v3 = 128000;
  }

  return v3;
}

+ (id)presetNameForCGSize:(CGSize)size
{
  v3 = size.width * size.height;
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
  exportingIndexPresets = [(JFXExportController *)self exportingIndexPresets];
  presets = [(JFXExportController *)self presets];
  v5 = [presets count];

  if (exportingIndexPresets >= v5)
  {

    [(JFXExportController *)self setCurrentPreset:0];
  }

  else
  {
    presets2 = [(JFXExportController *)self presets];
    v7 = [presets2 objectAtIndex:self->_exportingIndexPresets];
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

- (void)closeSessionWithStatus:(int64_t)status
{
  [(JFXExportController *)self analyticsForSessionCompleteWithStatus:status];
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

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] setIdleTimerDisabled:0];

  mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128]2 setIdleTimerDisabled:1];
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

- (void)serviceProgressTimer:(id)timer
{
  [(JFXExportController *)self progress];
  [(JFXExportController *)self updateProgressViewWithProgress:1 reduced:?];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] setIdleTimerDisabled:0];

  mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128]2 setIdleTimerDisabled:1];
}

- (void)updateProgressViewWithProgress:(float)progress reduced:(BOOL)reduced
{
  reducedCopy = reduced;
  presets = [(JFXExportController *)self presets];
  v8 = [presets count];

  if (v8 >= 2)
  {
    presets2 = [(JFXExportController *)self presets];
    v10 = 1.0 / [presets2 count];

    progress = (v10 * progress) + v10 * ([(JFXExportController *)self exportingIndexPresets]- 1);
  }

  delegate = [(JFXExportController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    if (reducedCopy)
    {
      v13 = progress * 0.95;
      progress = v13;
    }

    delegate2 = [(JFXExportController *)self delegate];
    *&v14 = progress;
    [delegate2 exportProgressedTo:v14];
  }
}

- (id)metadataToAdd
{
  array = [MEMORY[0x277CBEA60] array];
  poster = [(JFXExportController *)self poster];

  v5 = MEMORY[0x277CE5FA8];
  if (poster)
  {
    poster2 = [(JFXExportController *)self poster];
    v7 = UIImageJPEGRepresentation(poster2, 0.8);

    poster3 = [(JFXExportController *)self poster];
    [poster3 size];
    v10 = v9;

    if (v10 > 0.0 && v7)
    {
      metadataItem = [MEMORY[0x277CE6558] metadataItem];
      [metadataItem setKeySpace:*v5];
      [metadataItem setKey:*MEMORY[0x277CE5FC8]];
      [metadataItem setValue:v7];
      v12 = [array arrayByAddingObject:metadataItem];

      array = v12;
    }

    [(JFXExportController *)self setPoster:0];
  }

  metadataItem2 = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem2 setKeySpace:*v5];
  [metadataItem2 setKey:*MEMORY[0x277CE5FE0]];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  pathExtension = [bundleIdentifier pathExtension];
  [metadataItem2 setValue:pathExtension];

  v17 = [array arrayByAddingObject:metadataItem2];

  return v17;
}

- (void)analyticsForSessionBegin
{
  delegate = [(JFXExportController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(JFXExportController *)self delegate];
    [delegate2 exportAnalyticsForSessionBegin];
  }

  v6 = mach_absolute_time();

  [(JFXExportController *)self setExportStartTime:v6];
}

- (void)analyticsForSessionCompleteWithStatus:(int64_t)status
{
  delegate = [(JFXExportController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(JFXExportController *)self delegate];
    [delegate2 exportAnalyticsForSessionCompleteWithStatus:status exportMachDuration:{-[JFXExportController exportDuration](self, "exportDuration")}];
  }
}

@end