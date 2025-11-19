@interface MADVideoRemoveBackgroundSettings
+ (BOOL)autoplayTrimEnabled;
+ (BOOL)visionTrimEnabled;
+ (double)photosPreferredThreshold;
+ (double)visionPreferredLowQualityProportionThreshold;
+ (double)visionPreferredVideoQualityThreshold;
+ (double)visionPreferredWorstFrameScoreThreshold;
+ (double)visionTrimMininumDuration;
+ (double)visionTrimThreshold;
+ (id)sharedSettings;
+ (unint64_t)visionTrimWindow;
- (MADVideoRemoveBackgroundSettings)init;
@end

@implementation MADVideoRemoveBackgroundSettings

- (MADVideoRemoveBackgroundSettings)init
{
  v17 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = MADVideoRemoveBackgroundSettings;
  v2 = [(MADVideoRemoveBackgroundSettings *)&v14 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 4) = 256;
    *(v2 + 2) = 5;
    *(v2 + 24) = xmmword_1C9F60AC0;
    *(v2 + 40) = xmmword_1C9F60AD0;
    *(v2 + 56) = xmmword_1C9F60AE0;
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      autoplayTrimEnabled = v3->_autoplayTrimEnabled;
      *buf = 67109120;
      LODWORD(v16) = autoplayTrimEnabled;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] AutoPlay Trim:        %d", buf, 8u);
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      visionTrimEnabled = v3->_visionTrimEnabled;
      *buf = 67109120;
      LODWORD(v16) = visionTrimEnabled;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Vision Trim:          %d", buf, 8u);
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      visionTrimWindow = v3->_visionTrimWindow;
      *buf = 67109120;
      LODWORD(v16) = visionTrimWindow;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Window:               %d", buf, 8u);
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      visionTrimThreshold = v3->_visionTrimThreshold;
      *buf = 134217984;
      v16 = visionTrimThreshold;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Trim Threshold:       %0.2f", buf, 0xCu);
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      visionTrimMininumDuration = v3->_visionTrimMininumDuration;
      *buf = 134217984;
      v16 = visionTrimMininumDuration;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Min Duration:         %0.3f", buf, 0xCu);
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      visionPreferredVideoQualityThreshold = v3->_visionPreferredVideoQualityThreshold;
      *buf = 134217984;
      v16 = visionPreferredVideoQualityThreshold;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Pref Threshold[v]:    %0.2f", buf, 0xCu);
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      visionPreferredLowQualityProportionThreshold = v3->_visionPreferredLowQualityProportionThreshold;
      *buf = 134217984;
      v16 = visionPreferredLowQualityProportionThreshold;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Pref Threshold[prop]: %0.2f", buf, 0xCu);
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      visionPreferredWorstFrameScoreThreshold = v3->_visionPreferredWorstFrameScoreThreshold;
      *buf = 134217984;
      v16 = visionPreferredWorstFrameScoreThreshold;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Pref Threshold[wfs]:  %0.2f", buf, 0xCu);
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      photosPreferredThreshold = v3->_photosPreferredThreshold;
      *buf = 134217984;
      v16 = photosPreferredThreshold;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Pref Threshold[ph]:   %0.2f", buf, 0xCu);
    }
  }

  return v3;
}

+ (id)sharedSettings
{
  if (+[MADVideoRemoveBackgroundSettings sharedSettings]::once != -1)
  {
    +[MADVideoRemoveBackgroundSettings sharedSettings];
  }

  v3 = +[MADVideoRemoveBackgroundSettings sharedSettings]::instance;

  return v3;
}

void __50__MADVideoRemoveBackgroundSettings_sharedSettings__block_invoke()
{
  v0 = objc_alloc_init(MADVideoRemoveBackgroundSettings);
  v1 = +[MADVideoRemoveBackgroundSettings sharedSettings]::instance;
  +[MADVideoRemoveBackgroundSettings sharedSettings]::instance = v0;
}

+ (BOOL)autoplayTrimEnabled
{
  v2 = +[MADVideoRemoveBackgroundSettings sharedSettings];
  v3 = v2[8];

  return v3;
}

+ (BOOL)visionTrimEnabled
{
  v2 = +[MADVideoRemoveBackgroundSettings sharedSettings];
  v3 = v2[9];

  return v3;
}

+ (unint64_t)visionTrimWindow
{
  v2 = +[MADVideoRemoveBackgroundSettings sharedSettings];
  v3 = v2[2];

  return v3;
}

+ (double)visionTrimThreshold
{
  v2 = +[MADVideoRemoveBackgroundSettings sharedSettings];
  v3 = v2[3];

  return v3;
}

+ (double)visionTrimMininumDuration
{
  v2 = +[MADVideoRemoveBackgroundSettings sharedSettings];
  v3 = v2[4];

  return v3;
}

+ (double)visionPreferredVideoQualityThreshold
{
  v2 = +[MADVideoRemoveBackgroundSettings sharedSettings];
  v3 = v2[5];

  return v3;
}

+ (double)visionPreferredLowQualityProportionThreshold
{
  v2 = +[MADVideoRemoveBackgroundSettings sharedSettings];
  v3 = v2[6];

  return v3;
}

+ (double)visionPreferredWorstFrameScoreThreshold
{
  v2 = +[MADVideoRemoveBackgroundSettings sharedSettings];
  v3 = v2[7];

  return v3;
}

+ (double)photosPreferredThreshold
{
  v2 = +[MADVideoRemoveBackgroundSettings sharedSettings];
  v3 = v2[8];

  return v3;
}

@end