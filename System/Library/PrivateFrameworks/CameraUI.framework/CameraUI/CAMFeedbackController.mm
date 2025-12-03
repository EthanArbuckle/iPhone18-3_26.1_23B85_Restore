@interface CAMFeedbackController
+ (CAMFeedbackController)sharedController;
- (CAMFeedbackController)init;
- (NSMutableSet)_activePairedFeedbackGenerators;
- (_UIButtonFeedbackGenerator)_shutterButtonLatchingOffFeedbackGenerator;
- (_UIButtonFeedbackGenerator)_shutterButtonLatchingOnFeedbackGenerator;
- (_UIButtonFeedbackGenerator)_shutterButtonMomentaryFeedbackGenerator;
- (_UIDiscreteFeedback)_fullTap270Feedback;
- (_UIDiscreteFeedback)_fullTap300Feedback;
- (id)_debugStringForPairedFeedback:(unint64_t)feedback;
- (id)_feedbackGeneratorForDiscreteFeedback:(unint64_t)feedback;
- (id)_feedbackGeneratorForPairedFeedback:(unint64_t)feedback;
- (id)_newFeedbackGeneratorForDiscreteFeedback:(unint64_t)feedback;
- (unint64_t)_configurationForFeedback:(unint64_t)feedback;
- (void)performDiscreteFeedback:(unint64_t)feedback;
- (void)performPressButtonFeedback:(unint64_t)feedback;
- (void)performReleaseButtonFeedback:(unint64_t)feedback;
- (void)prepareButtonFeedback:(unint64_t)feedback;
- (void)prepareDiscreteFeedback:(unint64_t)feedback;
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

- (void)prepareDiscreteFeedback:(unint64_t)feedback
{
  v3 = [(CAMFeedbackController *)self _feedbackGeneratorForDiscreteFeedback:feedback];
  [v3 prepare];
}

- (void)performDiscreteFeedback:(unint64_t)feedback
{
  v3 = [(CAMFeedbackController *)self _feedbackGeneratorForDiscreteFeedback:feedback];
  [v3 selectionChanged];
}

- (void)prepareButtonFeedback:(unint64_t)feedback
{
  v3 = [(CAMFeedbackController *)self _feedbackGeneratorForPairedFeedback:feedback];
  [v3 prepare];
}

- (void)performPressButtonFeedback:(unint64_t)feedback
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [(CAMFeedbackController *)self _feedbackGeneratorForPairedFeedback:?];
  _activePairedFeedbackGenerators = [(CAMFeedbackController *)self _activePairedFeedbackGenerators];
  if ([_activePairedFeedbackGenerators containsObject:v5])
  {
    v7 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(CAMFeedbackController *)self _debugStringForPairedFeedback:feedback];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Mismatched paired pressed feedback calls for %{public}@", &v9, 0xCu);
    }
  }

  else
  {
    [v5 userInteractionStarted];
    [_activePairedFeedbackGenerators addObject:v5];
  }
}

- (void)performReleaseButtonFeedback:(unint64_t)feedback
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [(CAMFeedbackController *)self _feedbackGeneratorForPairedFeedback:?];
  _activePairedFeedbackGenerators = [(CAMFeedbackController *)self _activePairedFeedbackGenerators];
  if ([_activePairedFeedbackGenerators containsObject:v5])
  {
    [v5 userInteractionEnded];
    [_activePairedFeedbackGenerators removeObject:v5];
  }

  else
  {
    v7 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(CAMFeedbackController *)self _debugStringForPairedFeedback:feedback];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Mismatched paired released feedback calls for %{public}@", &v9, 0xCu);
    }
  }
}

- (id)_feedbackGeneratorForDiscreteFeedback:(unint64_t)feedback
{
  v4 = [(CAMFeedbackController *)self _configurationForFeedback:feedback];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
  _discreteFeedbackGenerators = [(CAMFeedbackController *)self _discreteFeedbackGenerators];
  v7 = [_discreteFeedbackGenerators objectForKeyedSubscript:v5];

  if (!v7)
  {
    v7 = [(CAMFeedbackController *)self _newFeedbackGeneratorForDiscreteFeedback:v4];
    _discreteFeedbackGenerators2 = [(CAMFeedbackController *)self _discreteFeedbackGenerators];
    [_discreteFeedbackGenerators2 setObject:v7 forKeyedSubscript:v5];
  }

  v9 = v7;

  return v9;
}

- (unint64_t)_configurationForFeedback:(unint64_t)feedback
{
  if (feedback - 1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_1A3A64B10[feedback - 1];
  }
}

- (id)_newFeedbackGeneratorForDiscreteFeedback:(unint64_t)feedback
{
  v4 = 0;
  if (feedback > 1)
  {
    if (feedback == 2)
    {
      defaultConfiguration = [MEMORY[0x1E69DD6E8] defaultConfiguration];
      v6 = [defaultConfiguration tweakedConfigurationForCaller:self usage:@"burstCount"];

      [v6 setMinimumInterval:0.005];
      v7 = MEMORY[0x1E69DD470];
      v8 = &unk_1F16C8ED0;
      goto LABEL_10;
    }

    if (feedback == 3)
    {
      defaultConfiguration2 = [MEMORY[0x1E69DD6E8] defaultConfiguration];
      v6 = [defaultConfiguration2 tweakedConfigurationForCaller:self usage:@"externalFocusLock"];

      v7 = MEMORY[0x1E69DD470];
      v8 = &unk_1F16C8F20;
      goto LABEL_10;
    }
  }

  else if (feedback)
  {
    if (feedback == 1)
    {
      defaultConfiguration3 = [MEMORY[0x1E69DD6E8] defaultConfiguration];
      v6 = [defaultConfiguration3 tweakedConfigurationForCaller:self usage:@"modeSelection"];

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

- (id)_feedbackGeneratorForPairedFeedback:(unint64_t)feedback
{
  if (feedback == 2)
  {
    _shutterButtonLatchingOffFeedbackGenerator = [(CAMFeedbackController *)self _shutterButtonLatchingOffFeedbackGenerator];
  }

  else if (feedback == 1)
  {
    _shutterButtonLatchingOffFeedbackGenerator = [(CAMFeedbackController *)self _shutterButtonLatchingOnFeedbackGenerator];
  }

  else if (feedback)
  {
    _shutterButtonLatchingOffFeedbackGenerator = 0;
  }

  else
  {
    _shutterButtonLatchingOffFeedbackGenerator = [(CAMFeedbackController *)self _shutterButtonMomentaryFeedbackGenerator];
  }

  return _shutterButtonLatchingOffFeedbackGenerator;
}

- (id)_debugStringForPairedFeedback:(unint64_t)feedback
{
  if (feedback > 2)
  {
    return &stru_1F1660A30;
  }

  else
  {
    return off_1E76F7A18[feedback];
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
    defaultConfiguration = [MEMORY[0x1E69DD3A8] defaultConfiguration];
    v5 = [defaultConfiguration tweakedConfigurationForCaller:self usage:@"shutterButtonMomentary"];

    _fullTap300Feedback = [(CAMFeedbackController *)self _fullTap300Feedback];
    [v5 setInteractionStartedFeedback:_fullTap300Feedback];

    _fullTap300Feedback2 = [(CAMFeedbackController *)self _fullTap300Feedback];
    [v5 setInteractionEndedFeedback:_fullTap300Feedback2];

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
    defaultConfiguration = [MEMORY[0x1E69DD3A8] defaultConfiguration];
    v5 = [defaultConfiguration tweakedConfigurationForCaller:self usage:@"shutterButtonLatchingOn"];

    _fullTap300Feedback = [(CAMFeedbackController *)self _fullTap300Feedback];
    [v5 setInteractionStartedFeedback:_fullTap300Feedback];

    _fullTap270Feedback = [(CAMFeedbackController *)self _fullTap270Feedback];
    [v5 setInteractionEndedFeedback:_fullTap270Feedback];

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
    defaultConfiguration = [MEMORY[0x1E69DD3A8] defaultConfiguration];
    v5 = [defaultConfiguration tweakedConfigurationForCaller:self usage:@"shutterButtonLatchingOff"];

    _fullTap270Feedback = [(CAMFeedbackController *)self _fullTap270Feedback];
    [v5 setInteractionStartedFeedback:_fullTap270Feedback];

    _fullTap300Feedback = [(CAMFeedbackController *)self _fullTap300Feedback];
    [v5 setInteractionEndedFeedback:_fullTap300Feedback];

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