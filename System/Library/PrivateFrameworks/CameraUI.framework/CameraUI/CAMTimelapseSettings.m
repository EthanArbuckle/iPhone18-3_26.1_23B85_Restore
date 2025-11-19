@interface CAMTimelapseSettings
+ (id)sharedInstance;
- (CAMTimelapseSettings)init;
- (double)waitTimeBeforeNextWriteForNumberOfPreviousAttempts:(int64_t)a3;
- (id)_outputSettingsPresetForWidth:(int64_t)a3 height:(int64_t)a4;
- (id)outputSettingsForWidth:(int64_t)a3 height:(int64_t)a4 videoFormatDescription:(opaqueCMFormatDescription *)a5 framesPerSecond:(int64_t)a6 frameCount:(int64_t)a7 useHEVC:(BOOL)a8;
- (int64_t)_averageMovieBitrateForWidth:(int64_t)a3 height:(int64_t)a4 useHEVC:(BOOL)a5;
- (int64_t)maxMovieFileLengthForWidth:(int64_t)a3 height:(int64_t)a4 useHEVC:(BOOL)a5;
- (int64_t)maxOutputFrames;
@end

@implementation CAMTimelapseSettings

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[CAMTimelapseSettings sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_0;

  return v3;
}

uint64_t __38__CAMTimelapseSettings_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CAMTimelapseSettings);
  v1 = sharedInstance___sharedInstance_0;
  sharedInstance___sharedInstance_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CAMTimelapseSettings)init
{
  v3.receiver = self;
  v3.super_class = CAMTimelapseSettings;
  result = [(CAMTimelapseSettings *)&v3 init];
  if (result)
  {
    *&result->_initialCaptureTimeInterval = xmmword_1A3A6A4F0;
    result->_maxOutputLength = 40.0;
  }

  return result;
}

- (int64_t)maxOutputFrames
{
  [(CAMTimelapseSettings *)self maxOutputLength];
  v4 = v3;
  [(CAMTimelapseSettings *)self maxOutputFPS];
  return (v4 * v5);
}

- (int64_t)_averageMovieBitrateForWidth:(int64_t)a3 height:(int64_t)a4 useHEVC:(BOOL)a5
{
  if (a5)
  {
    return 15000000;
  }

  v6 = self;
  v7 = [(CAMTimelapseSettings *)self _outputSettingsPresetForWidth:a3 height:a4];
  v8 = [MEMORY[0x1E6988080] outputSettingsAssistantWithPreset:v7];
  LODWORD(v6) = v6->_maxOutputFPS;
  CMTimeMake(&v13, 1, v6);
  [v8 setSourceVideoAverageFrameDuration:&v13];
  CMTimeMake(&v13, 1, v6);
  [v8 setSourceVideoMinFrameDuration:&v13];
  v9 = [v8 videoSettings];
  v10 = [v9 objectForKey:*MEMORY[0x1E6987D30]];
  v11 = [v10 objectForKey:*MEMORY[0x1E6987C60]];
  v5 = ([v11 integerValue] * 1.25);

  return v5;
}

- (int64_t)maxMovieFileLengthForWidth:(int64_t)a3 height:(int64_t)a4 useHEVC:(BOOL)a5
{
  v6 = [(CAMTimelapseSettings *)self _averageMovieBitrateForWidth:a3 height:a4 useHEVC:a5];
  [(CAMTimelapseSettings *)self maxOutputLength];
  return (v7 * v6 * 1.05 * 0.125);
}

- (id)_outputSettingsPresetForWidth:(int64_t)a3 height:(int64_t)a4
{
  v6 = [MEMORY[0x1E6988080] availableOutputSettingsPresets];
  v7 = v6;
  if (a3 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a3;
  }

  if (a3 <= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == 1920 && v8 == 1080)
  {
    v10 = MEMORY[0x1E6987948];
  }

  else if (v9 == 1280 && v8 == 720)
  {
    v10 = MEMORY[0x1E6987940];
  }

  else
  {
    if (v9 != 960 || v8 != 540)
    {
      goto LABEL_17;
    }

    v10 = MEMORY[0x1E6987960];
  }

  v11 = *v10;
  if (([v6 containsObject:*v10] & 1) == 0)
  {
LABEL_17:
    v11 = *MEMORY[0x1E6987958];
  }

  v12 = v11;

  return v11;
}

- (id)outputSettingsForWidth:(int64_t)a3 height:(int64_t)a4 videoFormatDescription:(opaqueCMFormatDescription *)a5 framesPerSecond:(int64_t)a6 frameCount:(int64_t)a7 useHEVC:(BOOL)a8
{
  v28 = a8;
  v13 = a7 / a6;
  v30 = [CAMTimelapseSettings _outputSettingsPresetForWidth:"_outputSettingsPresetForWidth:height:" height:?];
  v14 = [MEMORY[0x1E6988080] outputSettingsAssistantWithPreset:?];
  CMTimeMake(&v31, 1, a6);
  [v14 setSourceVideoAverageFrameDuration:&v31];
  CMTimeMake(&v31, 1, a6);
  [v14 setSourceVideoMinFrameDuration:&v31];
  [v14 setSourceVideoFormat:a5];
  v15 = [v14 videoSettings];
  v16 = [v15 mutableCopy];

  [v16 setObject:*MEMORY[0x1E6987DE0] forKey:*MEMORY[0x1E6987DC8]];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v16 setObject:v17 forKey:*MEMORY[0x1E6987E08]];

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v16 setObject:v18 forKey:*MEMORY[0x1E6987D70]];

  v19 = *MEMORY[0x1E6987D30];
  v20 = [v16 objectForKey:*MEMORY[0x1E6987D30]];
  v21 = [v20 mutableCopy];

  if (!v21)
  {
    v21 = [MEMORY[0x1E695DF90] dictionary];
  }

  v22 = [MEMORY[0x1E696AD98] numberWithInteger:a7];
  [v21 setObject:v22 forKey:*MEMORY[0x1E6983820]];

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
  [v21 setObject:v23 forKey:*MEMORY[0x1E6983638]];

  v24 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  [v21 setObject:v24 forKey:*MEMORY[0x1E6983630]];

  if (v28)
  {
    [v16 setObject:*MEMORY[0x1E6987CF0] forKey:*MEMORY[0x1E6987CB0]];
    [v21 setObject:*MEMORY[0x1E6983FA0] forKey:*MEMORY[0x1E6987DB8]];
    [v21 removeObjectForKey:*MEMORY[0x1E6987D68]];
    [v21 setObject:&unk_1F16C8108 forKey:*MEMORY[0x1E69836F0]];
    [v21 setObject:&unk_1F16C8120 forKey:*MEMORY[0x1E6983710]];
  }

  v25 = [(CAMTimelapseSettings *)self _averageMovieBitrateForWidth:a3 height:a4 useHEVC:v28];
  v26 = [MEMORY[0x1E696AD98] numberWithInteger:v25];
  [v21 setObject:v26 forKey:*MEMORY[0x1E6987C60]];

  [v16 setObject:v21 forKey:v19];

  return v16;
}

- (double)waitTimeBeforeNextWriteForNumberOfPreviousAttempts:(int64_t)a3
{
  if (a3 < 1)
  {
    return 0.0;
  }

  else
  {
    return (10 * (1 << (a3 - 1)));
  }
}

@end