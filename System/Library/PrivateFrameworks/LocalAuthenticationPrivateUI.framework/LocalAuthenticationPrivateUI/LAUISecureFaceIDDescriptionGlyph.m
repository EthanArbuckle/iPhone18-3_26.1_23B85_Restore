@interface LAUISecureFaceIDDescriptionGlyph
+ (id)_stateMap;
+ (id)_transitions;
- (BOOL)isSequenceFrom:(id)a3 to:(id)a4 supportedConcurrentlyWithContainerSequence:(id)a5 toContainerState:(id)a6;
- (BOOL)isSequenceSecure:(id)a3 toState:(id)a4;
- (CGRect)captureBounds;
- (LAUISecureFaceIDDescriptionGlyph)initWithContainerView:(id)a3 type:(int64_t)a4;
- (NSArray)states;
- (NSString)flipBookName;
- (double)maximumLatencyToExitLoopingState:(id)a3;
- (id)_createGlyphWithType:(int64_t)a3;
- (id)allowedNextStatesForState:(id)a3;
- (unint64_t)_resetSettleFramesForState:(int64_t)a3;
- (void)flipBookName;
- (void)resetToState:(id)a3 completion:(id)a4;
- (void)transitionToState:(id)a3 completion:(id)a4;
@end

@implementation LAUISecureFaceIDDescriptionGlyph

- (LAUISecureFaceIDDescriptionGlyph)initWithContainerView:(id)a3 type:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = LAUISecureFaceIDDescriptionGlyph;
  v5 = [(LAUISecureFaceIDDescription *)&v10 initWithContainerView:a3];
  v6 = v5;
  if (v5)
  {
    v5->_type = a4;
    v7 = [(LAUISecureFaceIDDescriptionGlyph *)v5 _createGlyphWithType:a4];
    glyphView = v6->_glyphView;
    v6->_glyphView = v7;
  }

  return v6;
}

- (id)_createGlyphWithType:(int64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = +[LAUIPearlGlyphStaticConfiguration createDefaultConfiguration];
    [v5 setRecording:1];
    if (a3 == 2)
    {
      [v5 setInitialStyle:0];
      v6 = 40.0;
    }

    else
    {
      v6 = 0.0;
      if (a3 == 1)
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
    v11 = self;
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
  v3 = [(LAUISecureFaceIDDescriptionGlyph *)self type];
  if (v3 < 3)
  {
    return &off_2798218B0[v3]->isa;
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
  v2 = [objc_opt_class() _stateMap];
  v3 = [v2 allValues];

  return v3;
}

- (id)allowedNextStatesForState:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = CaptureStateFromNSString_0(v3);
  v6 = [objc_opt_class() _transitions];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v8 = [v6 objectForKeyedSubscript:v7];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v8 allKeys];
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

        v14 = NSStringFromCaptureState_0([*(*(&v17 + 1) + 8 * i) integerValue]);
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
  v6 = CaptureStateFromNSString_0(a3);
  v7 = CaptureStateFromNSString_0(v5);

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

- (double)maximumLatencyToExitLoopingState:(id)a3
{
  v3 = CaptureStateFromNSString_0(a3);
  result = 1.79769313e308;
  if ((v3 - 2) < 3)
  {
    return 0.25;
  }

  return result;
}

- (CGRect)captureBounds
{
  v3 = [(LAUISecureFaceIDDescription *)self containerView];
  [v3 layoutIfNeeded];

  [(LAUIPearlGlyphView *)self->_glyphView bounds];
  v5 = v4;
  v7 = v6;
  v8 = [(LAUISecureFaceIDDescription *)self containerView];
  [(LAUIPearlGlyphView *)self->_glyphView frame];
  [v8 convertPoint:self->_glyphView fromView:?];
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
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = LACLogFaceIDUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = self;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&dword_2560E6000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ resetToState: %{public}@", buf, 0x16u);
  }

  v9 = GlyphStateFromNSString(v6);
  v10 = [(LAUISecureFaceIDDescription *)self observer];
  v11 = [(LAUISecureFaceIDDescriptionGlyph *)self flipBookName];
  [v10 recordingResettingToDescriptionOfFlipbook:v11];

  v12 = [(LAUISecureFaceIDDescription *)self observer];
  [v12 recordingUpdatedGlyphState:v9];

  v13 = CaptureStateFromNSString_0(v6);
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
    [(LAUISecureFaceIDDescription *)self dispatchAfterFrames:v17 block:v7];
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __60__LAUISecureFaceIDDescriptionGlyph_resetToState_completion___block_invoke;
    v18[3] = &unk_279821610;
    v19 = v7;
    [(LAUIPearlGlyphView *)glyphView setState:v9 animated:0 withCompletion:v18];
  }
}

- (unint64_t)_resetSettleFramesForState:(int64_t)a3
{
  v3 = 100;
  if (a3 != 5)
  {
    v3 = 0;
  }

  if (a3 == 3)
  {
    return 24;
  }

  else
  {
    return v3;
  }
}

- (void)transitionToState:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = LACLogFaceIDUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543618;
    v23 = self;
    v24 = 2114;
    v25 = v6;
    _os_log_impl(&dword_2560E6000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ transitionToState: %{public}@", &v22, 0x16u);
  }

  v9 = GlyphStateFromNSString(v6);
  if (!v9)
  {
    v9 = 4 * (self->_resetState != 1);
  }

  [(LAUIPearlGlyphView *)self->_glyphView setState:v9 animated:1 withCompletion:&__block_literal_global_75];
  v10 = [objc_opt_class() _transitions];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_resetState];
  v12 = [v10 objectForKeyedSubscript:v11];

  v13 = CaptureStateFromNSString_0(v6);
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
  v15 = [v12 objectForKeyedSubscript:v14];

  if (!v15)
  {
    v16 = LACLogFaceIDUI();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v21 = NSStringFromCaptureState_0(self->_resetState);
      v22 = 138543874;
      v23 = self;
      v24 = 2114;
      v25 = v21;
      v26 = 2114;
      v27 = v6;
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
  -[LAUISecureFaceIDDescription dispatchAfterFrames:block:](self, "dispatchAfterFrames:block:", [v15 unsignedIntegerValue], v7);
}

- (BOOL)isSequenceFrom:(id)a3 to:(id)a4 supportedConcurrentlyWithContainerSequence:(id)a5 toContainerState:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(LAUISecureFaceIDDescriptionGlyph *)self allowedNextStatesForState:v10];
  v15 = [v14 containsObject:v11];

  if (v15)
  {
    v16 = CaptureStateFromNSString_0(v10);
    v17 = CaptureStateFromNSString_0(v11);
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

- (void)flipBookName
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 1024;
  v6 = [a1 type];
  _os_log_fault_impl(&dword_2560E6000, a2, OS_LOG_TYPE_FAULT, "%{public}@ has invalid type: %d", &v3, 0x12u);
}

@end