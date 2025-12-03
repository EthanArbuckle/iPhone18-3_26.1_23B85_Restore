@interface LAUISecureFaceIDDescriptionGlyph
+ (id)_stateMap;
+ (id)_transitions;
- (BOOL)isSequenceFrom:(id)from to:(id)to supportedConcurrentlyWithContainerSequence:(id)sequence toContainerState:(id)state;
- (BOOL)isSequenceSecure:(id)secure toState:(id)state;
- (CGRect)captureBounds;
- (LAUISecureFaceIDDescriptionGlyph)initWithContainerView:(id)view type:(int64_t)type;
- (NSArray)states;
- (NSString)flipBookName;
- (double)maximumLatencyToExitLoopingState:(id)state;
- (id)_createGlyphWithType:(int64_t)type;
- (id)allowedNextStatesForState:(id)state;
- (unint64_t)_resetSettleFramesForState:(int64_t)state;
- (void)flipBookName;
- (void)resetToState:(id)state completion:(id)completion;
- (void)transitionToState:(id)state completion:(id)completion;
@end

@implementation LAUISecureFaceIDDescriptionGlyph

- (LAUISecureFaceIDDescriptionGlyph)initWithContainerView:(id)view type:(int64_t)type
{
  v10.receiver = self;
  v10.super_class = LAUISecureFaceIDDescriptionGlyph;
  v5 = [(LAUISecureFaceIDDescription *)&v10 initWithContainerView:view];
  v6 = v5;
  if (v5)
  {
    v5->_type = type;
    v7 = [(LAUISecureFaceIDDescriptionGlyph *)v5 _createGlyphWithType:type];
    glyphView = v6->_glyphView;
    v6->_glyphView = v7;
  }

  return v6;
}

- (id)_createGlyphWithType:(int64_t)type
{
  v14 = *MEMORY[0x277D85DE8];
  if (type)
  {
    v5 = +[LAUIPearlGlyphStaticConfiguration createDefaultConfiguration];
    [v5 setRecording:1];
    if (type == 2)
    {
      [v5 setInitialStyle:0];
      v6 = 40.0;
    }

    else
    {
      v6 = 0.0;
      if (type == 1)
      {
        [v5 setInitialStyle:1];
        v6 = 70.0;
      }
    }
  }

  else
  {
    v5 = +[LAUIPearlGlyphStaticConfiguration createSystemApertureConfiguration];
    [v5 setRecording:1];
    [v5 setInitialStyle:4];
    v6 = 69.0;
  }

  v7 = [[LAUIPearlGlyphView alloc] initWithConfiguration:v5];
  [(LAUIPearlGlyphView *)v7 setFrame:0.0, 0.0, v6, v6];
  v8 = LACLogFaceIDUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_2560E6000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ created %{public}@", &v10, 0x16u);
  }

  return v7;
}

+ (id)_stateMap
{
  v5[6] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_28682F990;
  v4[1] = &unk_28682F9A8;
  v5[0] = @"Empty";
  v5[1] = @"Idle";
  v4[2] = &unk_28682F9C0;
  v4[3] = &unk_28682F9D8;
  v5[2] = @"Acquiring";
  v5[3] = @"Verifying";
  v4[4] = &unk_28682F9F0;
  v4[5] = &unk_28682FA08;
  v5[4] = @"Processing";
  v5[5] = @"Checkmark";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:6];

  return v2;
}

+ (id)_transitions
{
  v23[6] = *MEMORY[0x277D85DE8];
  v20[0] = &unk_28682F990;
  v20[1] = &unk_28682F9C0;
  v21[0] = &unk_28682FA20;
  v21[1] = &unk_28682FA38;
  v22[0] = &unk_28682F990;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v23[0] = v9;
  v22[1] = &unk_28682F9A8;
  v18[0] = &unk_28682F9A8;
  v18[1] = &unk_28682F9C0;
  v19[0] = &unk_28682FA20;
  v19[1] = &unk_28682FA38;
  v18[2] = &unk_28682F990;
  v19[2] = &unk_28682FA38;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v23[1] = v2;
  v22[2] = &unk_28682F9C0;
  v16[0] = &unk_28682F9C0;
  v16[1] = &unk_28682F9D8;
  v17[0] = &unk_28682FA50;
  v17[1] = &unk_28682FA68;
  v16[2] = &unk_28682F9F0;
  v16[3] = &unk_28682F9A8;
  v17[2] = &unk_28682FA80;
  v17[3] = &unk_28682FA98;
  v16[4] = &unk_28682F990;
  v17[4] = &unk_28682FA38;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
  v23[2] = v3;
  v22[3] = &unk_28682F9D8;
  v14[0] = &unk_28682F9D8;
  v14[1] = &unk_28682FA08;
  v15[0] = &unk_28682FAB0;
  v15[1] = &unk_28682FAC8;
  v14[2] = &unk_28682F9A8;
  v14[3] = &unk_28682F990;
  v15[2] = &unk_28682FAE0;
  v15[3] = &unk_28682FA38;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v23[3] = v4;
  v22[4] = &unk_28682F9F0;
  v12[0] = &unk_28682F9F0;
  v12[1] = &unk_28682FA08;
  v13[0] = &unk_28682FAF8;
  v13[1] = &unk_28682FB10;
  v12[2] = &unk_28682F9A8;
  v12[3] = &unk_28682F990;
  v13[2] = &unk_28682FAE0;
  v13[3] = &unk_28682FA38;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];
  v23[4] = v5;
  v22[5] = &unk_28682FA08;
  v10[0] = &unk_28682FA08;
  v10[1] = &unk_28682F990;
  v11[0] = &unk_28682FA20;
  v11[1] = &unk_28682FA38;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v23[5] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:6];

  return v7;
}

- (NSString)flipBookName
{
  type = [(LAUISecureFaceIDDescriptionGlyph *)self type];
  if (type < 3)
  {
    return &off_2798218B0[type]->isa;
  }

  v5 = LACLogFaceIDUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [(LAUISecureFaceIDDescriptionGlyph *)self flipBookName];
  }

  return @"FaceIDGlyphInvalid";
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
  v5 = CaptureStateFromNSString_0(stateCopy);
  _transitions = [objc_opt_class() _transitions];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v8 = [_transitions objectForKeyedSubscript:v7];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [v8 allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v14 = NSStringFromCaptureState_0([*(*(&v17 + 1) + 8 * i) integerValue]);
        [v4 addObject:v14];
      }

      v11 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [MEMORY[0x277CBEA60] arrayWithArray:v4];

  return v15;
}

- (BOOL)isSequenceSecure:(id)secure toState:(id)state
{
  stateCopy = state;
  v6 = CaptureStateFromNSString_0(secure);
  v7 = CaptureStateFromNSString_0(stateCopy);

  v9 = v7 == 4 || (v7 & 0xFFFFFFFFFFFFFFFELL) == 2;
  if (v6 != 2)
  {
    v9 = 0;
  }

  if (v6 - 3 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7 == v6;
  }

  if (v6 >= 2)
  {
    return v10;
  }

  else
  {
    return v7 == 2;
  }
}

- (double)maximumLatencyToExitLoopingState:(id)state
{
  v3 = CaptureStateFromNSString_0(state);
  result = 1.79769313e308;
  if ((v3 - 2) < 3)
  {
    return 0.25;
  }

  return result;
}

- (CGRect)captureBounds
{
  containerView = [(LAUISecureFaceIDDescription *)self containerView];
  [containerView layoutIfNeeded];

  [(LAUIPearlGlyphView *)self->_glyphView bounds];
  v5 = v4;
  v7 = v6;
  containerView2 = [(LAUISecureFaceIDDescription *)self containerView];
  [(LAUIPearlGlyphView *)self->_glyphView frame];
  [containerView2 convertPoint:self->_glyphView fromView:?];
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
  v24 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  completionCopy = completion;
  v8 = LACLogFaceIDUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v22 = 2114;
    v23 = stateCopy;
    _os_log_impl(&dword_2560E6000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ resetToState: %{public}@", buf, 0x16u);
  }

  v9 = GlyphStateFromNSString(stateCopy);
  observer = [(LAUISecureFaceIDDescription *)self observer];
  flipBookName = [(LAUISecureFaceIDDescriptionGlyph *)self flipBookName];
  [observer recordingResettingToDescriptionOfFlipbook:flipBookName];

  observer2 = [(LAUISecureFaceIDDescription *)self observer];
  [observer2 recordingUpdatedGlyphState:v9];

  v13 = CaptureStateFromNSString_0(stateCopy);
  self->_resetState = v13;
  v14 = 1.0;
  if (!v13)
  {
    v14 = 0.0;
  }

  [(LAUIPearlGlyphView *)self->_glyphView setAlpha:v14];
  v15 = [(LAUISecureFaceIDDescriptionGlyph *)self _resetSettleFramesForState:self->_resetState];
  glyphView = self->_glyphView;
  if (v15)
  {
    v17 = v15;
    [(LAUIPearlGlyphView *)self->_glyphView setState:v9 animated:1 withCompletion:&__block_literal_global_6];
    [(LAUISecureFaceIDDescription *)self dispatchAfterFrames:v17 block:completionCopy];
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __60__LAUISecureFaceIDDescriptionGlyph_resetToState_completion___block_invoke;
    v18[3] = &unk_279821610;
    v19 = completionCopy;
    [(LAUIPearlGlyphView *)glyphView setState:v9 animated:0 withCompletion:v18];
  }
}

- (unint64_t)_resetSettleFramesForState:(int64_t)state
{
  v3 = 100;
  if (state != 5)
  {
    v3 = 0;
  }

  if (state == 3)
  {
    return 24;
  }

  else
  {
    return v3;
  }
}

- (void)transitionToState:(id)state completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  completionCopy = completion;
  v8 = LACLogFaceIDUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543618;
    selfCopy2 = self;
    v24 = 2114;
    v25 = stateCopy;
    _os_log_impl(&dword_2560E6000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ transitionToState: %{public}@", &v22, 0x16u);
  }

  v9 = GlyphStateFromNSString(stateCopy);
  if (!v9)
  {
    v9 = 4 * (self->_resetState != 1);
  }

  [(LAUIPearlGlyphView *)self->_glyphView setState:v9 animated:1 withCompletion:&__block_literal_global_75];
  _transitions = [objc_opt_class() _transitions];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_resetState];
  v12 = [_transitions objectForKeyedSubscript:v11];

  v13 = CaptureStateFromNSString_0(stateCopy);
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
  v15 = [v12 objectForKeyedSubscript:v14];

  if (!v15)
  {
    v16 = LACLogFaceIDUI();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v21 = NSStringFromCaptureState_0(self->_resetState);
      v22 = 138543874;
      selfCopy2 = self;
      v24 = 2114;
      v25 = v21;
      v26 = 2114;
      v27 = stateCopy;
      _os_log_fault_impl(&dword_2560E6000, v16, OS_LOG_TYPE_FAULT, "%{public}@ requested to perform invalid transition from '%{public}@' to '%{public}@", &v22, 0x20u);
    }
  }

  resetState = self->_resetState;
  v18 = v13 == 0;
  if (resetState)
  {
    v19 = 0;
  }

  else
  {
    v19 = v13 != 0;
  }

  if (resetState)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  -[LAUISecureFaceIDDescription fadeIn:orOut:view:frames:](self, "fadeIn:orOut:view:frames:", v19, v20, self->_glyphView, [v15 unsignedIntegerValue]);
  -[LAUISecureFaceIDDescription dispatchAfterFrames:block:](self, "dispatchAfterFrames:block:", [v15 unsignedIntegerValue], completionCopy);
}

- (BOOL)isSequenceFrom:(id)from to:(id)to supportedConcurrentlyWithContainerSequence:(id)sequence toContainerState:(id)state
{
  fromCopy = from;
  toCopy = to;
  sequenceCopy = sequence;
  stateCopy = state;
  v14 = [(LAUISecureFaceIDDescriptionGlyph *)self allowedNextStatesForState:fromCopy];
  v15 = [v14 containsObject:toCopy];

  if (v15)
  {
    v16 = CaptureStateFromNSString_0(fromCopy);
    v17 = CaptureStateFromNSString_0(toCopy);
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

- (void)flipBookName
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  selfCopy = self;
  v5 = 1024;
  type = [self type];
  _os_log_fault_impl(&dword_2560E6000, a2, OS_LOG_TYPE_FAULT, "%{public}@ has invalid type: %d", &v3, 0x12u);
}

@end