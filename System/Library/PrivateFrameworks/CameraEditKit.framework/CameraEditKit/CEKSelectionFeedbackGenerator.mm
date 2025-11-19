@interface CEKSelectionFeedbackGenerator
- (CEKSelectionFeedbackGenerator)init;
- (void)_updateFeedbackGeneratorIfNeeded;
- (void)dealloc;
- (void)performFeedback;
- (void)playEndTickSound;
- (void)playMajorTickSound;
- (void)playMinorTickSound;
- (void)playOverscrollTickSound;
- (void)prepareFeedback;
- (void)setProfile:(int64_t)a3;
@end

@implementation CEKSelectionFeedbackGenerator

- (CEKSelectionFeedbackGenerator)init
{
  if (CEKHapticsAllowed_onceToken != -1)
  {
    CEKHapticsAllowed_cold_1();
  }

  if (CEKHapticsAllowed_allowsHaptics == 1)
  {
    v19.receiver = self;
    v19.super_class = CEKSelectionFeedbackGenerator;
    v3 = [(CEKSelectionFeedbackGenerator *)&v19 init];
    v4 = v3;
    if (v3)
    {
      v3->_profile = 0;
      v5 = CEKFrameworkBundle();
      v6 = [v5 URLForResource:@"CEKEndStopTick" withExtension:@"wav"];

      v7 = CEKFrameworkBundle();
      v8 = [v7 URLForResource:@"CEKFullStopTick" withExtension:@"wav"];

      v9 = CEKFrameworkBundle();
      v10 = [v9 URLForResource:@"CEKThirdStopTick" withExtension:@"wav"];

      v11 = CEKFrameworkBundle();
      v12 = [v11 URLForResource:@"CEKOverscrollStopTick" withExtension:@"wav"];

      SystemSoundID = AudioServicesCreateSystemSoundID(v6, v4 + 2);
      v14 = AudioServicesCreateSystemSoundID(v8, v4 + 3);
      v15 = AudioServicesCreateSystemSoundID(v10, v4 + 4);
      v16 = AudioServicesCreateSystemSoundID(v12, v4 + 5);
      if (SystemSoundID || v14 || v15 || v16)
      {
        AudioServicesDisposeSystemSoundID(v4[2]);
        v4[2] = 0;
        AudioServicesDisposeSystemSoundID(v4[3]);
        v4[3] = 0;
        AudioServicesDisposeSystemSoundID(v4[4]);
        v4[4] = 0;
        AudioServicesDisposeSystemSoundID(v4[5]);
        v4[5] = 0;
      }
    }

    self = v4;
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)dealloc
{
  AudioServicesDisposeSystemSoundID(self->__endStopSoundID);
  self->__endStopSoundID = 0;
  AudioServicesDisposeSystemSoundID(self->__majorTickSoundID);
  self->__majorTickSoundID = 0;
  AudioServicesDisposeSystemSoundID(self->__minorTickSoundID);
  self->__minorTickSoundID = 0;
  AudioServicesDisposeSystemSoundID(self->__overscrollTickSoundID);
  self->__overscrollTickSoundID = 0;
  v3.receiver = self;
  v3.super_class = CEKSelectionFeedbackGenerator;
  [(CEKSelectionFeedbackGenerator *)&v3 dealloc];
}

- (void)prepareFeedback
{
  [(CEKSelectionFeedbackGenerator *)self _updateFeedbackGeneratorIfNeeded];
  v3 = [(CEKSelectionFeedbackGenerator *)self _feedbackGenerator];
  [v3 prepare];
}

- (void)performFeedback
{
  [(CEKSelectionFeedbackGenerator *)self _updateFeedbackGeneratorIfNeeded];
  v3 = [(CEKSelectionFeedbackGenerator *)self _feedbackGenerator];
  [v3 selectionChanged];
}

- (void)setProfile:(int64_t)a3
{
  if (self->_profile != a3)
  {
    self->_profile = a3;
    self->__feedbackGenerator = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)playMinorTickSound
{
  v2 = [(CEKSelectionFeedbackGenerator *)self _minorTickSoundID];

  AudioServicesPlaySystemSoundWithCompletion(v2, 0);
}

- (void)playMajorTickSound
{
  v2 = [(CEKSelectionFeedbackGenerator *)self _majorTickSoundID];

  AudioServicesPlaySystemSoundWithCompletion(v2, 0);
}

- (void)playEndTickSound
{
  v2 = [(CEKSelectionFeedbackGenerator *)self _endStopSoundID];

  AudioServicesPlaySystemSoundWithCompletion(v2, 0);
}

- (void)playOverscrollTickSound
{
  v2 = [(CEKSelectionFeedbackGenerator *)self _overscrollTickSoundID];

  AudioServicesPlaySystemSoundWithCompletion(v2, 0);
}

- (void)_updateFeedbackGeneratorIfNeeded
{
  v18[3] = *MEMORY[0x1E69E9840];
  if (!self->__feedbackGenerator)
  {
    v3 = [(CEKSelectionFeedbackGenerator *)self profile];
    if (v3 >= 2)
    {
      if (v3 == 2)
      {
        v17[0] = @"type";
        v17[1] = @"eventType";
        v18[0] = @"custom";
        v18[1] = &unk_1F2FDFCD0;
        v17[2] = @"hapticParameters";
        v15 = @"volume";
        v6 = MEMORY[0x1E696AD98];
        if (CEKIsRetunedHapticDevice_onceToken != -1)
        {
          CEKIsRetunedHapticDevice_cold_1();
        }

        v7 = 0.35;
        if (CEKIsRetunedHapticDevice_isRetunedDevice)
        {
          v7 = 0.4;
        }

        v8 = [v6 numberWithDouble:v7];
        v16 = v8;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v18[2] = v9;
        v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

        v5 = @"hardwareDrivenSlider";
      }

      else
      {
        v5 = 0;
        v4 = 0;
      }
    }

    else
    {
      v4 = &unk_1F2FE0208;
      v5 = @"cameraEffectSelection";
    }

    v10 = [MEMORY[0x1E69DD6E8] defaultConfiguration];
    v11 = [v10 tweakedConfigurationForCaller:self usage:v5];

    v12 = [MEMORY[0x1E69DD470] feedbackWithDictionaryRepresentation:v4];
    [v11 setFeedback:v12];

    v13 = [objc_alloc(MEMORY[0x1E69DCF40]) initWithConfiguration:v11];
    feedbackGenerator = self->__feedbackGenerator;
    self->__feedbackGenerator = v13;

    [(UISelectionFeedbackGenerator *)self->__feedbackGenerator _setOutputMode:5];
  }
}

@end