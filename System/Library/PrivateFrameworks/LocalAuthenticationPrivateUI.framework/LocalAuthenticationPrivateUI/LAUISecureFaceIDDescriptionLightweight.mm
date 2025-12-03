@interface LAUISecureFaceIDDescriptionLightweight
+ (id)_stateMap;
+ (id)_transitions;
- (BOOL)isSequenceFrom:(id)from to:(id)to supportedConcurrentlyWithContainerSequence:(id)sequence toContainerState:(id)state;
- (BOOL)isSequenceSecure:(id)secure toState:(id)state;
- (CGRect)captureBounds;
- (LAUISecureFaceIDDescriptionLightweight)initWithContainerView:(id)view;
- (NSArray)states;
- (double)maximumLatencyToExitLoopingState:(id)state;
- (id)allowedNextStatesForState:(id)state;
- (unint64_t)_resetSettleFramesForState:(int64_t)state;
- (void)resetToState:(id)state completion:(id)completion;
- (void)transitionToState:(id)state completion:(id)completion;
@end

@implementation LAUISecureFaceIDDescriptionLightweight

- (LAUISecureFaceIDDescriptionLightweight)initWithContainerView:(id)view
{
  v7.receiver = self;
  v7.super_class = LAUISecureFaceIDDescriptionLightweight;
  v3 = [(LAUISecureFaceIDDescription *)&v7 initWithContainerView:view];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D241C0]) initWithInitialState:0];
    spinnerView = v3->_spinnerView;
    v3->_spinnerView = v4;
  }

  return v3;
}

+ (id)_stateMap
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_28682F750;
  v4[1] = &unk_28682F768;
  v5[0] = @"Empty";
  v5[1] = @"Verifying";
  v4[2] = &unk_28682F780;
  v5[2] = @"Checkmark";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

+ (id)_transitions
{
  v14[3] = *MEMORY[0x277D85DE8];
  v11[0] = &unk_28682F750;
  v11[1] = &unk_28682F768;
  v12[0] = &unk_28682F798;
  v12[1] = &unk_28682F7B0;
  v13[0] = &unk_28682F750;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v2;
  v13[1] = &unk_28682F768;
  v9[0] = &unk_28682F768;
  v9[1] = &unk_28682F780;
  v10[0] = &unk_28682F7C8;
  v10[1] = &unk_28682F7E0;
  v9[2] = &unk_28682F750;
  v10[2] = &unk_28682F7B0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v14[1] = v3;
  v13[2] = &unk_28682F780;
  v7[0] = &unk_28682F780;
  v7[1] = &unk_28682F750;
  v8[0] = &unk_28682F798;
  v8[1] = &unk_28682F7B0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v14[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  return v5;
}

- (NSArray)states
{
  _stateMap = [objc_opt_class() _stateMap];
  allValues = [_stateMap allValues];

  return allValues;
}

- (id)allowedNextStatesForState:(id)state
{
  v22 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v4 = objc_opt_new();
  v5 = CaptureStateFromNSString(stateCopy);
  _transitions = [objc_opt_class() _transitions];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v8 = [_transitions objectForKeyedSubscript:v7];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = NSStringFromCaptureState([*(*(&v17 + 1) + 8 * i) integerValue]);
        [v4 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [MEMORY[0x277CBEA60] arrayWithArray:v4];

  return v15;
}

- (BOOL)isSequenceSecure:(id)secure toState:(id)state
{
  stateCopy = state;
  v6 = CaptureStateFromNSString(secure);
  v7 = CaptureStateFromNSString(stateCopy);

  return v6 < 2 && v7 == 1;
}

- (double)maximumLatencyToExitLoopingState:(id)state
{
  v3 = CaptureStateFromNSString(state);
  result = 1.79769313e308;
  if (v3 == 1)
  {
    return 0.25;
  }

  return result;
}

- (CGRect)captureBounds
{
  containerView = [(LAUISecureFaceIDDescription *)self containerView];
  [containerView layoutIfNeeded];

  [(LACUIFaceIDSpinnerView *)self->_spinnerView bounds];
  v5 = v4;
  v7 = v6;
  containerView2 = [(LAUISecureFaceIDDescription *)self containerView];
  [(LACUIFaceIDSpinnerView *)self->_spinnerView frame];
  [containerView2 convertPoint:self->_spinnerView fromView:?];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  v15 = v5;
  v16 = v7;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)resetToState:(id)state completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  completionCopy = completion;
  v8 = LACLogFaceIDUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543618;
    selfCopy = self;
    v23 = 2114;
    v24 = stateCopy;
    _os_log_impl(&dword_2560E6000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ resetToState: %{public}@", &v21, 0x16u);
  }

  observer = [(LAUISecureFaceIDDescription *)self observer];
  flipBookName = [(LAUISecureFaceIDDescriptionLightweight *)self flipBookName];
  [observer recordingResettingToDescriptionOfFlipbook:flipBookName];

  observer2 = [(LAUISecureFaceIDDescription *)self observer];
  v12 = CaptureStateFromNSString(stateCopy);
  v13 = 7;
  if (v12 == 1)
  {
    v13 = 2;
  }

  if (v12 == 2)
  {
    v14 = 3;
  }

  else
  {
    v14 = v13;
  }

  [observer2 recordingUpdatedGlyphState:v14];

  v15 = CaptureStateFromNSString(stateCopy);
  self->_resetState = v15;
  v16 = 1.0;
  if (!v15)
  {
    v16 = 0.0;
  }

  [(LACUIFaceIDSpinnerView *)self->_spinnerView setAlpha:v16];
  v17 = [(LAUISecureFaceIDDescriptionLightweight *)self _resetSettleFramesForState:self->_resetState];
  spinnerView = self->_spinnerView;
  v19 = CaptureStateFromNSString(stateCopy);
  if (v19 == 2)
  {
    v20 = 2;
  }

  else
  {
    v20 = v19 == 1;
  }

  if (v17)
  {
    [(LACUIFaceIDSpinnerView *)spinnerView setState:v20 animated:0 completion:&__block_literal_global_3];
    [(LAUISecureFaceIDDescription *)self dispatchAfterFrames:v17 block:completionCopy];
  }

  else
  {
    [(LACUIFaceIDSpinnerView *)spinnerView setState:v20 animated:0 completion:completionCopy];
  }
}

- (unint64_t)_resetSettleFramesForState:(int64_t)state
{
  if (state == 2)
  {
    return 20;
  }

  else
  {
    return 0;
  }
}

- (void)transitionToState:(id)state completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  completionCopy = completion;
  v8 = LACLogFaceIDUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138543618;
    selfCopy2 = self;
    v25 = 2114;
    v26 = stateCopy;
    _os_log_impl(&dword_2560E6000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ transitionToState: %{public}@", &v23, 0x16u);
  }

  v9 = CaptureStateFromNSString(stateCopy);
  _transitions = [objc_opt_class() _transitions];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_resetState];
  v12 = [_transitions objectForKeyedSubscript:v11];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (!v14)
  {
    v15 = LACLogFaceIDUI();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v22 = NSStringFromCaptureState(self->_resetState);
      v23 = 138543874;
      selfCopy2 = self;
      v25 = 2114;
      v26 = v22;
      v27 = 2114;
      v28 = stateCopy;
      _os_log_fault_impl(&dword_2560E6000, v15, OS_LOG_TYPE_FAULT, "%{public}@ requested to perform invalid transition from '%{public}@' to '%{public}@", &v23, 0x20u);
    }
  }

  if (v9)
  {
    spinnerView = self->_spinnerView;
    v17 = CaptureStateFromNSString(stateCopy);
    if (v17 == 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = v17 == 1;
    }

    [(LACUIFaceIDSpinnerView *)spinnerView setState:v18 animated:1 completion:&__block_literal_global_36];
  }

  resetState = self->_resetState;
  if (resetState)
  {
    v20 = 0;
  }

  else
  {
    v20 = v9 != 0;
  }

  if (v9)
  {
    v21 = 0;
  }

  else
  {
    v21 = resetState != 0;
  }

  -[LAUISecureFaceIDDescription fadeIn:orOut:view:frames:](self, "fadeIn:orOut:view:frames:", v20, v21, self->_spinnerView, [v14 unsignedIntegerValue]);
  -[LAUISecureFaceIDDescription dispatchAfterFrames:block:](self, "dispatchAfterFrames:block:", [v14 unsignedIntegerValue], completionCopy);
}

- (BOOL)isSequenceFrom:(id)from to:(id)to supportedConcurrentlyWithContainerSequence:(id)sequence toContainerState:(id)state
{
  fromCopy = from;
  toCopy = to;
  sequenceCopy = sequence;
  stateCopy = state;
  v14 = [(LAUISecureFaceIDDescriptionLightweight *)self allowedNextStatesForState:fromCopy];
  v15 = [v14 containsObject:toCopy];

  if (v15)
  {
    v16 = CaptureStateFromNSString(fromCopy);
    v17 = CaptureStateFromNSString(toCopy);
    v18 = ContainerStateFromTwoStates(sequenceCopy, stateCopy);
    if (v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = (v16 | v17) == 0;
    }

    if (v18 == 1)
    {
      v19 = v16 == 0;
    }

    if (v18 == 3)
    {
      v20 = v17 == 0;
    }

    else
    {
      v20 = v19;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end