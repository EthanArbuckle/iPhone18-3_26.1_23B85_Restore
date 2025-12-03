@interface CAMTimelapseSettings
+ (id)sharedInstance;
- (CAMTimelapseSettings)init;
- (double)waitTimeBeforeNextWriteForNumberOfPreviousAttempts:(int64_t)attempts;
- (id)_outputSettingsPresetForWidth:(int64_t)width height:(int64_t)height;
- (id)outputSettingsForWidth:(int64_t)width height:(int64_t)height videoFormatDescription:(opaqueCMFormatDescription *)description framesPerSecond:(int64_t)second frameCount:(int64_t)count useHEVC:(BOOL)c;
- (int64_t)_averageMovieBitrateForWidth:(int64_t)width height:(int64_t)height useHEVC:(BOOL)c;
- (int64_t)maxMovieFileLengthForWidth:(int64_t)width height:(int64_t)height useHEVC:(BOOL)c;
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

- (int64_t)_averageMovieBitrateForWidth:(int64_t)width height:(int64_t)height useHEVC:(BOOL)c
{
  if (c)
  {
    return 15000000;
  }

  selfCopy = self;
  v7 = [(CAMTimelapseSettings *)self _outputSettingsPresetForWidth:width height:height];
  v8 = [MEMORY[0x1E6988080] outputSettingsAssistantWithPreset:v7];
  LODWORD(selfCopy) = selfCopy->_maxOutputFPS;
  CMTimeMake(&v13, 1, selfCopy);
  [v8 setSourceVideoAverageFrameDuration:&v13];
  CMTimeMake(&v13, 1, selfCopy);
  [v8 setSourceVideoMinFrameDuration:&v13];
  videoSettings = [v8 videoSettings];
  v10 = [videoSettings objectForKey:*MEMORY[0x1E6987D30]];
  v11 = [v10 objectForKey:*MEMORY[0x1E6987C60]];
  v5 = ([v11 integerValue] * 1.25);

  return v5;
}

- (int64_t)maxMovieFileLengthForWidth:(int64_t)width height:(int64_t)height useHEVC:(BOOL)c
{
  v6 = [(CAMTimelapseSettings *)self _averageMovieBitrateForWidth:width height:height useHEVC:c];
  [(CAMTimelapseSettings *)self maxOutputLength];
  return (v7 * v6 * 1.05 * 0.125);
}

- (id)_outputSettingsPresetForWidth:(int64_t)width height:(int64_t)height
{
  availableOutputSettingsPresets = [MEMORY[0x1E6988080] availableOutputSettingsPresets];
  v7 = availableOutputSettingsPresets;
  if (width >= height)
  {
    widthCopy = height;
  }

  else
  {
    widthCopy = width;
  }

  if (width <= height)
  {
    widthCopy2 = height;
  }

  else
  {
    widthCopy2 = width;
  }

  if (widthCopy2 == 1920 && widthCopy == 1080)
  {
    v10 = MEMORY[0x1E6987948];
  }

  else if (widthCopy2 == 1280 && widthCopy == 720)
  {
    v10 = MEMORY[0x1E6987940];
  }

  else
  {
    if (widthCopy2 != 960 || widthCopy != 540)
    {
      goto LABEL_17;
    }

    v10 = MEMORY[0x1E6987960];
  }

  v11 = *v10;
  if (([availableOutputSettingsPresets containsObject:*v10] & 1) == 0)
  {
LABEL_17:
    v11 = *MEMORY[0x1E6987958];
  }

  v12 = v11;

  return v11;
}

- (id)outputSettingsForWidth:(int64_t)width height:(int64_t)height videoFormatDescription:(opaqueCMFormatDescription *)description framesPerSecond:(int64_t)second frameCount:(int64_t)count useHEVC:(BOOL)c
{
  cCopy = c;
  v13 = count / second;
  v30 = [CAMTimelapseSettings _outputSettingsPresetForWidth:"_outputSettingsPresetForWidth:height:" height:?];
  v14 = [MEMORY[0x1E6988080] outputSettingsAssistantWithPreset:?];
  CMTimeMake(&v31, 1, second);
  [v14 setSourceVideoAverageFrameDuration:&v31];
  CMTimeMake(&v31, 1, second);
  [v14 setSourceVideoMinFrameDuration:&v31];
  [v14 setSourceVideoFormat:description];
  videoSettings = [v14 videoSettings];
  v16 = [videoSettings mutableCopy];

  [v16 setObject:*MEMORY[0x1E6987DE0] forKey:*MEMORY[0x1E6987DC8]];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:width];
  [v16 setObject:v17 forKey:*MEMORY[0x1E6987E08]];

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:height];
  [v16 setObject:v18 forKey:*MEMORY[0x1E6987D70]];

  v19 = *MEMORY[0x1E6987D30];
  v20 = [v16 objectForKey:*MEMORY[0x1E6987D30]];
  dictionary = [v20 mutableCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v22 = [MEMORY[0x1E696AD98] numberWithInteger:count];
  [dictionary setObject:v22 forKey:*MEMORY[0x1E6983820]];

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:second];
  [dictionary setObject:v23 forKey:*MEMORY[0x1E6983638]];

  v24 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  [dictionary setObject:v24 forKey:*MEMORY[0x1E6983630]];

  if (cCopy)
  {
    [v16 setObject:*MEMORY[0x1E6987CF0] forKey:*MEMORY[0x1E6987CB0]];
    [dictionary setObject:*MEMORY[0x1E6983FA0] forKey:*MEMORY[0x1E6987DB8]];
    [dictionary removeObjectForKey:*MEMORY[0x1E6987D68]];
    [dictionary setObject:&unk_1F16C8108 forKey:*MEMORY[0x1E69836F0]];
    [dictionary setObject:&unk_1F16C8120 forKey:*MEMORY[0x1E6983710]];
  }

  v25 = [(CAMTimelapseSettings *)self _averageMovieBitrateForWidth:width height:height useHEVC:cCopy];
  v26 = [MEMORY[0x1E696AD98] numberWithInteger:v25];
  [dictionary setObject:v26 forKey:*MEMORY[0x1E6987C60]];

  [v16 setObject:dictionary forKey:v19];

  return v16;
}

- (double)waitTimeBeforeNextWriteForNumberOfPreviousAttempts:(int64_t)attempts
{
  if (attempts < 1)
  {
    return 0.0;
  }

  else
  {
    return (10 * (1 << (attempts - 1)));
  }
}

@end