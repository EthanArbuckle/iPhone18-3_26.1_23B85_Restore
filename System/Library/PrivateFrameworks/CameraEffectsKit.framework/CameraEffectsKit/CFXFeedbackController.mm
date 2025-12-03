@interface CFXFeedbackController
- (CFXFeedbackController)init;
- (CFXFeedbackController)initWithShutterButton:(id)button;
- (id)_debugStringForPairedFeedback:(unint64_t)feedback;
- (id)_feedbackGeneratorForPairedFeedback:(unint64_t)feedback;
- (unint64_t)shutterButtonFeedbackForCurrentConfiguration;
- (void)performPressButtonFeedback:(unint64_t)feedback;
- (void)performReleaseButtonFeedback:(unint64_t)feedback;
- (void)prepareButtonFeedback:(unint64_t)feedback;
- (void)shutterButtonDown:(id)down;
- (void)shutterButtonUp:(id)up;
@end

@implementation CFXFeedbackController

- (CFXFeedbackController)initWithShutterButton:(id)button
{
  buttonCopy = button;
  v6 = [(CFXFeedbackController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shutterButton, button);
    [buttonCopy addTarget:v7 action:sel_shutterButtonDown_ forControlEvents:1];
    [buttonCopy addTarget:v7 action:sel_shutterButtonUp_ forControlEvents:64];
    [(CFXFeedbackController *)v7 setFeedbackToPerform:[(CFXFeedbackController *)v7 shutterButtonFeedbackForCurrentConfiguration]];
    [(CFXFeedbackController *)v7 prepareButtonFeedback:[(CFXFeedbackController *)v7 feedbackToPerform]];
  }

  return v7;
}

- (void)shutterButtonDown:(id)down
{
  [(CFXFeedbackController *)self setFeedbackToPerform:[(CFXFeedbackController *)self shutterButtonFeedbackForCurrentConfiguration]];
  feedbackToPerform = [(CFXFeedbackController *)self feedbackToPerform];

  [(CFXFeedbackController *)self performPressButtonFeedback:feedbackToPerform];
}

- (void)shutterButtonUp:(id)up
{
  [(CFXFeedbackController *)self performReleaseButtonFeedback:[(CFXFeedbackController *)self feedbackToPerform]];
  [(CFXFeedbackController *)self setFeedbackToPerform:[(CFXFeedbackController *)self shutterButtonFeedbackForCurrentConfiguration]];
  feedbackToPerform = [(CFXFeedbackController *)self feedbackToPerform];

  [(CFXFeedbackController *)self prepareButtonFeedback:feedbackToPerform];
}

- (unint64_t)shutterButtonFeedbackForCurrentConfiguration
{
  shutterButton = [(CFXFeedbackController *)self shutterButton];
  mode = [shutterButton mode];

  if (mode == 6)
  {
    return 2;
  }

  else
  {
    return mode == 1;
  }
}

- (CFXFeedbackController)init
{
  capabilities = [MEMORY[0x277CF7E78] capabilities];
  allowHaptics = [capabilities allowHaptics];

  if (allowHaptics && (v23.receiver = self, v23.super_class = CFXFeedbackController, (self = [(CFXFeedbackController *)&v23 init]) != 0))
  {
    v5 = [MEMORY[0x277D75EC8] feedbackWithDictionaryRepresentation:&unk_28556DA60];
    v6 = [MEMORY[0x277D75EC8] feedbackWithDictionaryRepresentation:&unk_28556DAB0];
    defaultConfiguration = [MEMORY[0x277D75E28] defaultConfiguration];
    v8 = [defaultConfiguration tweakedConfigurationForCaller:self usage:@"shutterButtonMomentary"];

    [v8 setInteractionStartedFeedback:v5];
    [v8 setInteractionEndedFeedback:v5];
    v9 = [objc_alloc(MEMORY[0x277D75E20]) initWithConfiguration:v8];
    shutterButtonMomentaryFeedbackGenerator = self->__shutterButtonMomentaryFeedbackGenerator;
    self->__shutterButtonMomentaryFeedbackGenerator = v9;

    [(_UIButtonFeedbackGenerator *)self->__shutterButtonMomentaryFeedbackGenerator _setOutputMode:5];
    defaultConfiguration2 = [MEMORY[0x277D75E28] defaultConfiguration];
    v12 = [defaultConfiguration2 tweakedConfigurationForCaller:self usage:@"shutterButtonLatchingOn"];

    [v12 setInteractionStartedFeedback:v5];
    [v12 setInteractionEndedFeedback:v6];
    v13 = [objc_alloc(MEMORY[0x277D75E20]) initWithConfiguration:v12];
    shutterButtonLatchingOnFeedbackGenerator = self->__shutterButtonLatchingOnFeedbackGenerator;
    self->__shutterButtonLatchingOnFeedbackGenerator = v13;

    [(_UIButtonFeedbackGenerator *)self->__shutterButtonLatchingOnFeedbackGenerator _setOutputMode:5];
    defaultConfiguration3 = [MEMORY[0x277D75E28] defaultConfiguration];
    v16 = [defaultConfiguration3 tweakedConfigurationForCaller:self usage:@"shutterButtonLatchingOff"];

    [v16 setInteractionStartedFeedback:v6];
    [v16 setInteractionEndedFeedback:v5];
    v17 = [objc_alloc(MEMORY[0x277D75E20]) initWithConfiguration:v16];
    shutterButtonLatchingOffFeedbackGenerator = self->__shutterButtonLatchingOffFeedbackGenerator;
    self->__shutterButtonLatchingOffFeedbackGenerator = v17;

    [(_UIButtonFeedbackGenerator *)self->__shutterButtonLatchingOffFeedbackGenerator _setOutputMode:5];
    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activePairedFeedbackGenerators = self->__activePairedFeedbackGenerators;
    self->__activePairedFeedbackGenerators = v19;

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)prepareButtonFeedback:(unint64_t)feedback
{
  v3 = [(CFXFeedbackController *)self _feedbackGeneratorForPairedFeedback:feedback];
  [v3 prepare];
}

- (void)performPressButtonFeedback:(unint64_t)feedback
{
  v5 = [(CFXFeedbackController *)self _feedbackGeneratorForPairedFeedback:?];
  _activePairedFeedbackGenerators = [(CFXFeedbackController *)self _activePairedFeedbackGenerators];
  if ([_activePairedFeedbackGenerators containsObject:v5])
  {
    v7 = CFXLog_DebugFeedback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(CFXFeedbackController *)self performPressButtonFeedback:feedback];
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
  v5 = [(CFXFeedbackController *)self _feedbackGeneratorForPairedFeedback:?];
  _activePairedFeedbackGenerators = [(CFXFeedbackController *)self _activePairedFeedbackGenerators];
  if ([_activePairedFeedbackGenerators containsObject:v5])
  {
    [v5 userInteractionEnded];
    [_activePairedFeedbackGenerators removeObject:v5];
  }

  else
  {
    v7 = CFXLog_DebugFeedback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(CFXFeedbackController *)self performReleaseButtonFeedback:feedback];
    }
  }
}

- (id)_feedbackGeneratorForPairedFeedback:(unint64_t)feedback
{
  if (feedback == 2)
  {
    _shutterButtonLatchingOffFeedbackGenerator = [(CFXFeedbackController *)self _shutterButtonLatchingOffFeedbackGenerator];
  }

  else if (feedback == 1)
  {
    _shutterButtonLatchingOffFeedbackGenerator = [(CFXFeedbackController *)self _shutterButtonLatchingOnFeedbackGenerator];
  }

  else if (feedback)
  {
    _shutterButtonLatchingOffFeedbackGenerator = 0;
  }

  else
  {
    _shutterButtonLatchingOffFeedbackGenerator = [(CFXFeedbackController *)self _shutterButtonMomentaryFeedbackGenerator];
  }

  return _shutterButtonLatchingOffFeedbackGenerator;
}

- (id)_debugStringForPairedFeedback:(unint64_t)feedback
{
  if (feedback > 2)
  {
    return &stru_28553D028;
  }

  else
  {
    return off_278D7C5D0[feedback];
  }
}

- (void)performPressButtonFeedback:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v2 = [a1 _debugStringForPairedFeedback:a2];
  OUTLINED_FUNCTION_1_0(&dword_242A3B000, v3, v4, "Mismatched paired pressed feedback calls for %{public}@", v5, v6, v7, v8, 2u);
}

- (void)performReleaseButtonFeedback:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v2 = [a1 _debugStringForPairedFeedback:a2];
  OUTLINED_FUNCTION_1_0(&dword_242A3B000, v3, v4, "Mismatched paired released feedback calls for %{public}@", v5, v6, v7, v8, 2u);
}

@end