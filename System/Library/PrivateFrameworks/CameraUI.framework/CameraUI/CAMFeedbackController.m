@interface CAMFeedbackController
+ (CAMFeedbackController)sharedController;
- (CAMFeedbackController)init;
- (NSMutableSet)_activePairedFeedbackGenerators;
- (_UIButtonFeedbackGenerator)_shutterButtonLatchingOffFeedbackGenerator;
- (_UIButtonFeedbackGenerator)_shutterButtonLatchingOnFeedbackGenerator;
- (_UIButtonFeedbackGenerator)_shutterButtonMomentaryFeedbackGenerator;
- (_UIDiscreteFeedback)_fullTap270Feedback;
- (_UIDiscreteFeedback)_fullTap300Feedback;
- (id)_debugStringForPairedFeedback:(unint64_t)a3;
- (id)_feedbackGeneratorForDiscreteFeedback:(unint64_t)a3;
- (id)_feedbackGeneratorForPairedFeedback:(unint64_t)a3;
- (id)_newFeedbackGeneratorForDiscreteFeedback:(unint64_t)a3;
- (unint64_t)_configurationForFeedback:(unint64_t)a3;
- (void)performDiscreteFeedback:(unint64_t)a3;
- (void)performPressButtonFeedback:(unint64_t)a3;
- (void)performReleaseButtonFeedback:(unint64_t)a3;
- (void)prepareButtonFeedback:(unint64_t)a3;
- (void)prepareDiscreteFeedback:(unint64_t)a3;
@end

@implementation CAMFeedbackController

+ (CAMFeedbackController)sharedController
{
  WeakRetained = objc_loadWeakRetained(&sharedController_sharedController);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(CAMFeedbackController);
    objc_storeWeak(&sharedController_sharedController, WeakRetained);
  }

  return WeakRetained;
}

- (CAMFeedbackController)init
{
  v7.receiver = self;
  v7.super_class = CAMFeedbackController;
  v2 = [(CAMFeedbackController *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    discreteFeedbackGenerators = v2->__discreteFeedbackGenerators;
    v2->__discreteFeedbackGenerators = v3;

    v5 = v2;
  }

  return v2;
}

- (void)prepareDiscreteFeedback:(unint64_t)a3
{
  v3 = [(CAMFeedbackController *)self _feedbackGeneratorForDiscreteFeedback:a3];
  [v3 prepare];
}

- (void)performDiscreteFeedback:(unint64_t)a3
{
  v3 = [(CAMFeedbackController *)self _feedbackGeneratorForDiscreteFeedback:a3];
  [v3 selectionChanged];
}

- (void)prepareButtonFeedback:(unint64_t)a3
{
  v3 = [(CAMFeedbackController *)self _feedbackGeneratorForPairedFeedback:a3];
  [v3 prepare];
}

- (void)performPressButtonFeedback:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [(CAMFeedbackController *)self _feedbackGeneratorForPairedFeedback:?];
  v6 = [(CAMFeedbackController *)self _activePairedFeedbackGenerators];
  if ([v6 containsObject:v5])
  {
    v7 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(CAMFeedbackController *)self _debugStringForPairedFeedback:a3];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Mismatched paired pressed feedback calls for %{public}@", &v9, 0xCu);
    }
  }

  else
  {
    [v5 userInteractionStarted];
    [v6 addObject:v5];
  }
}

- (void)performReleaseButtonFeedback:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [(CAMFeedbackController *)self _feedbackGeneratorForPairedFeedback:?];
  v6 = [(CAMFeedbackController *)self _activePairedFeedbackGenerators];
  if ([v6 containsObject:v5])
  {
    [v5 userInteractionEnded];
    [v6 removeObject:v5];
  }

  else
  {
    v7 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(CAMFeedbackController *)self _debugStringForPairedFeedback:a3];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Mismatched paired released feedback calls for %{public}@", &v9, 0xCu);
    }
  }
}

- (id)_feedbackGeneratorForDiscreteFeedback:(unint64_t)a3
{
  v4 = [(CAMFeedbackController *)self _configurationForFeedback:a3];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
  v6 = [(CAMFeedbackController *)self _discreteFeedbackGenerators];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (!v7)
  {
    v7 = [(CAMFeedbackController *)self _newFeedbackGeneratorForDiscreteFeedback:v4];
    v8 = [(CAMFeedbackController *)self _discreteFeedbackGenerators];
    [v8 setObject:v7 forKeyedSubscript:v5];
  }

  v9 = v7;

  return v9;
}

- (unint64_t)_configurationForFeedback:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_1A3A64B10[a3 - 1];
  }
}

- (id)_newFeedbackGeneratorForDiscreteFeedback:(unint64_t)a3
{
  v4 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v10 = [MEMORY[0x1E69DD6E8] defaultConfiguration];
      v6 = [v10 tweakedConfigurationForCaller:self usage:@"burstCount"];

      [v6 setMinimumInterval:0.005];
      v7 = MEMORY[0x1E69DD470];
      v8 = &unk_1F16C8ED0;
      goto LABEL_10;
    }

    if (a3 == 3)
    {
      v9 = [MEMORY[0x1E69DD6E8] defaultConfiguration];
      v6 = [v9 tweakedConfigurationForCaller:self usage:@"externalFocusLock"];

      v7 = MEMORY[0x1E69DD470];
      v8 = &unk_1F16C8F20;
      goto LABEL_10;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v5 = [MEMORY[0x1E69DD6E8] defaultConfiguration];
      v6 = [v5 tweakedConfigurationForCaller:self usage:@"modeSelection"];

      [v6 setMinimumInterval:0.01];
      v7 = MEMORY[0x1E69DD470];
      v8 = &unk_1F16C8E80;
LABEL_10:
      v11 = [v7 feedbackWithDictionaryRepresentation:v8];
      [v6 setFeedback:v11];

      v4 = [objc_alloc(MEMORY[0x1E69DCF40]) initWithConfiguration:v6];
    }
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCF40]);
  }

  [v4 _setOutputMode:5];
  return v4;
}

- (id)_feedbackGeneratorForPairedFeedback:(unint64_t)a3
{
  if (a3 == 2)
  {
    v3 = [(CAMFeedbackController *)self _shutterButtonLatchingOffFeedbackGenerator];
  }

  else if (a3 == 1)
  {
    v3 = [(CAMFeedbackController *)self _shutterButtonLatchingOnFeedbackGenerator];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(CAMFeedbackController *)self _shutterButtonMomentaryFeedbackGenerator];
  }

  return v3;
}

- (id)_debugStringForPairedFeedback:(unint64_t)a3
{
  if (a3 > 2)
  {
    return &stru_1F1660A30;
  }

  else
  {
    return off_1E76F7A18[a3];
  }
}

- (_UIDiscreteFeedback)_fullTap300Feedback
{
  fullTap300Feedback = self->__fullTap300Feedback;
  if (!fullTap300Feedback)
  {
    v4 = [MEMORY[0x1E69DD470] feedbackWithDictionaryRepresentation:&unk_1F16C8F70];
    v5 = self->__fullTap300Feedback;
    self->__fullTap300Feedback = v4;

    fullTap300Feedback = self->__fullTap300Feedback;
  }

  return fullTap300Feedback;
}

- (_UIDiscreteFeedback)_fullTap270Feedback
{
  fullTap270Feedback = self->__fullTap270Feedback;
  if (!fullTap270Feedback)
  {
    v4 = [MEMORY[0x1E69DD470] feedbackWithDictionaryRepresentation:&unk_1F16C8FC0];
    v5 = self->__fullTap270Feedback;
    self->__fullTap270Feedback = v4;

    fullTap270Feedback = self->__fullTap270Feedback;
  }

  return fullTap270Feedback;
}

- (_UIButtonFeedbackGenerator)_shutterButtonMomentaryFeedbackGenerator
{
  shutterButtonMomentaryFeedbackGenerator = self->__shutterButtonMomentaryFeedbackGenerator;
  if (!shutterButtonMomentaryFeedbackGenerator)
  {
    v4 = [MEMORY[0x1E69DD3A8] defaultConfiguration];
    v5 = [v4 tweakedConfigurationForCaller:self usage:@"shutterButtonMomentary"];

    v6 = [(CAMFeedbackController *)self _fullTap300Feedback];
    [v5 setInteractionStartedFeedback:v6];

    v7 = [(CAMFeedbackController *)self _fullTap300Feedback];
    [v5 setInteractionEndedFeedback:v7];

    v8 = [objc_alloc(MEMORY[0x1E69DD3A0]) initWithConfiguration:v5];
    v9 = self->__shutterButtonMomentaryFeedbackGenerator;
    self->__shutterButtonMomentaryFeedbackGenerator = v8;

    [(_UIButtonFeedbackGenerator *)self->__shutterButtonMomentaryFeedbackGenerator _setOutputMode:5];
    shutterButtonMomentaryFeedbackGenerator = self->__shutterButtonMomentaryFeedbackGenerator;
  }

  return shutterButtonMomentaryFeedbackGenerator;
}

- (_UIButtonFeedbackGenerator)_shutterButtonLatchingOnFeedbackGenerator
{
  shutterButtonLatchingOnFeedbackGenerator = self->__shutterButtonLatchingOnFeedbackGenerator;
  if (!shutterButtonLatchingOnFeedbackGenerator)
  {
    v4 = [MEMORY[0x1E69DD3A8] defaultConfiguration];
    v5 = [v4 tweakedConfigurationForCaller:self usage:@"shutterButtonLatchingOn"];

    v6 = [(CAMFeedbackController *)self _fullTap300Feedback];
    [v5 setInteractionStartedFeedback:v6];

    v7 = [(CAMFeedbackController *)self _fullTap270Feedback];
    [v5 setInteractionEndedFeedback:v7];

    v8 = [objc_alloc(MEMORY[0x1E69DD3A0]) initWithConfiguration:v5];
    v9 = self->__shutterButtonLatchingOnFeedbackGenerator;
    self->__shutterButtonLatchingOnFeedbackGenerator = v8;

    [(_UIButtonFeedbackGenerator *)self->__shutterButtonLatchingOnFeedbackGenerator _setOutputMode:5];
    shutterButtonLatchingOnFeedbackGenerator = self->__shutterButtonLatchingOnFeedbackGenerator;
  }

  return shutterButtonLatchingOnFeedbackGenerator;
}

- (_UIButtonFeedbackGenerator)_shutterButtonLatchingOffFeedbackGenerator
{
  shutterButtonLatchingOffFeedbackGenerator = self->__shutterButtonLatchingOffFeedbackGenerator;
  if (!shutterButtonLatchingOffFeedbackGenerator)
  {
    v4 = [MEMORY[0x1E69DD3A8] defaultConfiguration];
    v5 = [v4 tweakedConfigurationForCaller:self usage:@"shutterButtonLatchingOff"];

    v6 = [(CAMFeedbackController *)self _fullTap270Feedback];
    [v5 setInteractionStartedFeedback:v6];

    v7 = [(CAMFeedbackController *)self _fullTap300Feedback];
    [v5 setInteractionEndedFeedback:v7];

    v8 = [objc_alloc(MEMORY[0x1E69DD3A0]) initWithConfiguration:v5];
    v9 = self->__shutterButtonLatchingOffFeedbackGenerator;
    self->__shutterButtonLatchingOffFeedbackGenerator = v8;

    [(_UIButtonFeedbackGenerator *)self->__shutterButtonLatchingOffFeedbackGenerator _setOutputMode:5];
    shutterButtonLatchingOffFeedbackGenerator = self->__shutterButtonLatchingOffFeedbackGenerator;
  }

  return shutterButtonLatchingOffFeedbackGenerator;
}

- (NSMutableSet)_activePairedFeedbackGenerators
{
  activePairedFeedbackGenerators = self->__activePairedFeedbackGenerators;
  if (!activePairedFeedbackGenerators)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = self->__activePairedFeedbackGenerators;
    self->__activePairedFeedbackGenerators = v4;

    activePairedFeedbackGenerators = self->__activePairedFeedbackGenerators;
  }

  return activePairedFeedbackGenerators;
}

@end