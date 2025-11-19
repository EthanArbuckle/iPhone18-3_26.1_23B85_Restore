@interface LAUISecureFaceIDDescriptionLightweight
+ (id)_stateMap;
+ (id)_transitions;
- (BOOL)isSequenceFrom:(id)a3 to:(id)a4 supportedConcurrentlyWithContainerSequence:(id)a5 toContainerState:(id)a6;
- (BOOL)isSequenceSecure:(id)a3 toState:(id)a4;
- (CGRect)captureBounds;
- (LAUISecureFaceIDDescriptionLightweight)initWithContainerView:(id)a3;
- (NSArray)states;
- (double)maximumLatencyToExitLoopingState:(id)a3;
- (id)allowedNextStatesForState:(id)a3;
- (unint64_t)_resetSettleFramesForState:(int64_t)a3;
- (void)resetToState:(id)a3 completion:(id)a4;
- (void)transitionToState:(id)a3 completion:(id)a4;
@end

@implementation LAUISecureFaceIDDescriptionLightweight

- (LAUISecureFaceIDDescriptionLightweight)initWithContainerView:(id)a3
{
  v7.receiver = self;
  v7.super_class = LAUISecureFaceIDDescriptionLightweight;
  v3 = [(LAUISecureFaceIDDescription *)&v7 initWithContainerView:a3];
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
  v2 = [objc_opt_class() _stateMap];
  v3 = [v2 allValues];

  return v3;
}

- (id)allowedNextStatesForState:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = CaptureStateFromNSString(v3);
  v6 = [objc_opt_class() _transitions];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v8 = [v6 objectForKeyedSubscript:v7];

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

- (BOOL)isSequenceSecure:(id)a3 toState:(id)a4
{
  v5 = a4;
  v6 = CaptureStateFromNSString(a3);
  v7 = CaptureStateFromNSString(v5);

  return v6 < 2 && v7 == 1;
}

- (double)maximumLatencyToExitLoopingState:(id)a3
{
  v3 = CaptureStateFromNSString(a3);
  result = 1.79769313e308;
  if (v3 == 1)
  {
    return 0.25;
  }

  return result;
}

- (CGRect)captureBounds
{
  v3 = [(LAUISecureFaceIDDescription *)self containerView];
  [v3 layoutIfNeeded];

  [(LACUIFaceIDSpinnerView *)self->_spinnerView bounds];
  v5 = v4;
  v7 = v6;
  v8 = [(LAUISecureFaceIDDescription *)self containerView];
  [(LACUIFaceIDSpinnerView *)self->_spinnerView frame];
  [v8 convertPoint:self->_spinnerView fromView:?];
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

- (void)resetToState:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = LACLogFaceIDUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543618;
    v22 = self;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_2560E6000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ resetToState: %{public}@", &v21, 0x16u);
  }

  v9 = [(LAUISecureFaceIDDescription *)self observer];
  v10 = [(LAUISecureFaceIDDescriptionLightweight *)self flipBookName];
  [v9 recordingResettingToDescriptionOfFlipbook:v10];

  v11 = [(LAUISecureFaceIDDescription *)self observer];
  v12 = CaptureStateFromNSString(v6);
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

  [v11 recordingUpdatedGlyphState:v14];

  v15 = CaptureStateFromNSString(v6);
  self->_resetState = v15;
  v16 = 1.0;
  if (!v15)
  {
    v16 = 0.0;
  }

  [(LACUIFaceIDSpinnerView *)self->_spinnerView setAlpha:v16];
  v17 = [(LAUISecureFaceIDDescriptionLightweight *)self _resetSettleFramesForState:self->_resetState];
  spinnerView = self->_spinnerView;
  v19 = CaptureStateFromNSString(v6);
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
    [(LAUISecureFaceIDDescription *)self dispatchAfterFrames:v17 block:v7];
  }

  else
  {
    [(LACUIFaceIDSpinnerView *)spinnerView setState:v20 animated:0 completion:v7];
  }
}

- (unint64_t)_resetSettleFramesForState:(int64_t)a3
{
  if (a3 == 2)
  {
    return 20;
  }

  else
  {
    return 0;
  }
}

- (void)transitionToState:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = LACLogFaceIDUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138543618;
    v24 = self;
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&dword_2560E6000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ transitionToState: %{public}@", &v23, 0x16u);
  }

  v9 = CaptureStateFromNSString(v6);
  v10 = [objc_opt_class() _transitions];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_resetState];
  v12 = [v10 objectForKeyedSubscript:v11];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (!v14)
  {
    v15 = LACLogFaceIDUI();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v22 = NSStringFromCaptureState(self->_resetState);
      v23 = 138543874;
      v24 = self;
      v25 = 2114;
      v26 = v22;
      v27 = 2114;
      v28 = v6;
      _os_log_fault_impl(&dword_2560E6000, v15, OS_LOG_TYPE_FAULT, "%{public}@ requested to perform invalid transition from '%{public}@' to '%{public}@", &v23, 0x20u);
    }
  }

  if (v9)
  {
    spinnerView = self->_spinnerView;
    v17 = CaptureStateFromNSString(v6);
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
  -[LAUISecureFaceIDDescription dispatchAfterFrames:block:](self, "dispatchAfterFrames:block:", [v14 unsignedIntegerValue], v7);
}

- (BOOL)isSequenceFrom:(id)a3 to:(id)a4 supportedConcurrentlyWithContainerSequence:(id)a5 toContainerState:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(LAUISecureFaceIDDescriptionLightweight *)self allowedNextStatesForState:v10];
  v15 = [v14 containsObject:v11];

  if (v15)
  {
    v16 = CaptureStateFromNSString(v10);
    v17 = CaptureStateFromNSString(v11);
    v18 = ContainerStateFromTwoStates(v12, v13);
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