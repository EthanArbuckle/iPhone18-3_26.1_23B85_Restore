@interface _EMKTextKit2Controller
+ (OS_os_log)log;
- (BOOL)isUsingTextEffectBasedEmojiAnimations;
- (BOOL)touchHasEmojiSignificance:(id)a3;
- (EMKTextView)textView;
- (NSTextLayoutManager)_layoutManager;
- (_EMKTextKit2Controller)initWithTextView:(id)a3 emojiPreferences:(id)a4;
- (id)textContentStorage:(id)a3 textParagraphWithRange:(_NSRange)a4;
- (void)__rippleCoordinatorDidCompleteWithFinished:(BOOL)a3;
- (void)__startAnimation;
- (void)__startLegacyRippleAnimation;
- (void)__startTextEffectBasedAnimation;
- (void)__stopAnimation;
- (void)_startOrStopAnimation;
- (void)_startRippleAnimation;
- (void)_updateEmojiAttributesOfText:(id)a3;
- (void)_updateOverlayView;
- (void)dismissOverlayView;
- (void)replaceRange:(_NSRange)a3 withEmojiToken:(id)a4 language:(id)a5;
- (void)setEmojiConversionActive:(BOOL)a3;
- (void)setTextContainerOverlayView:(id)a3;
- (void)textTapGestureRecognized:(id)a3;
- (void)textViewDidLayoutSubviews;
- (void)updateEmojiDisplay:(id)a3;
@end

@implementation _EMKTextKit2Controller

+ (OS_os_log)log
{
  if (log_onceToken != -1)
  {
    +[_EMKTextKit2Controller log];
  }

  v3 = log_logger;

  return v3;
}

- (void)textViewDidLayoutSubviews
{
  v3 = [(_EMKTextKit2Controller *)self textView];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(_EMKTextKit2Controller *)self textView];
    v5 = [v4 _containerView];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(_EMKTextKit2Controller *)self textContainerOverlayView];
    [v14 setFrame:{v7, v9, v11, v13}];
  }

  if (self->_overlayView)
  {
    v15 = dispatch_time(0, 10000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51___EMKTextKit2Controller_textViewDidLayoutSubviews__block_invoke;
    block[3] = &unk_2781C22A0;
    block[4] = self;
    dispatch_after(v15, MEMORY[0x277D85CD0], block);
  }
}

- (EMKTextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

- (_EMKTextKit2Controller)initWithTextView:(id)a3 emojiPreferences:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = _EMKTextKit2Controller;
  v8 = [(_EMKTextKit2Controller *)&v20 init];
  if (v8)
  {
    v9 = objc_alloc_init(EMKGlyphRippler);
    rippler = v8->_rippler;
    v8->_rippler = v9;

    objc_storeWeak(&v8->_textView, v6);
    objc_storeStrong(&v8->_emojiPreferences, a4);
    v11 = [[EMKTextEnumerator alloc] initWithEmojiPreferences:v7];
    textEnumerator = v8->_textEnumerator;
    v8->_textEnumerator = v11;

    emojiConversionLanguages = v8->_emojiConversionLanguages;
    v8->_emojiConversionLanguages = &unk_2827849D8;

    *&v8->_darkModeEnabled = 256;
    lastTouchInfo = v8->_lastTouchInfo;
    v8->_lastTouchInfo = 0;

    overlayView = v8->_overlayView;
    v8->_overlayView = 0;

    containerOverlayView = v8->_containerOverlayView;
    v8->_containerOverlayView = 0;

    v17 = [v6 textLayoutManager];
    v18 = [v17 textContentManager];
    [v18 setDelegate:v8];
    if (objc_opt_respondsToSelector())
    {
      [v17 setRequiresCTLineRef:1];
    }
  }

  return v8;
}

- (NSTextLayoutManager)_layoutManager
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v3 = [WeakRetained textLayoutManager];

  return v3;
}

- (void)_startRippleAnimation
{
  if ([(_EMKTextKit2Controller *)self isUsingTextEffectBasedEmojiAnimations])
  {

    [(_EMKTextKit2Controller *)self __startTextEffectBasedAnimation];
  }

  else
  {

    [(_EMKTextKit2Controller *)self __startLegacyRippleAnimation];
  }
}

- (void)__startTextEffectBasedAnimation
{
  v3 = [(_EMKTextKit2Controller *)self textView];
  v4 = [v3 textStorage];
  v5 = [v4 length];
  v6 = [v3 emojiAnimationDelegate];
  [v6 textViewWillBeginEmojiRippleAnimation:v3];

  v7 = objc_opt_new();
  [v4 beginEditing];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __57___EMKTextKit2Controller___startTextEffectBasedAnimation__block_invoke;
  v23[3] = &unk_2781C2228;
  v8 = v4;
  v24 = v8;
  v25 = v7;
  v9 = v7;
  [v8 _enumerateTokenListsInRange:0 usingBlock_emk:{v5, v23}];
  [v8 endEditing];
  v10 = [(_EMKTextKit2Controller *)self textView];
  [v10 setNeedsLayout];

  v11 = [(_EMKTextKit2Controller *)self textView];
  [v11 layoutIfNeeded];

  v12 = [objc_opt_class() log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2155E6000, v12, OS_LOG_TYPE_DEFAULT, "creating coordinator", buf, 2u);
  }

  v13 = [EMKRippleAnimationCoordinator alloc];
  v14 = [(_EMKTextKit2Controller *)self textView];
  v15 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.498039216 blue:0.0 alpha:1.0];
  v16 = [objc_opt_class() log];
  v17 = [(EMKRippleAnimationCoordinator *)v13 initWithTextView:v14 animations:v9 foregroundColor:v15 log:v16];
  [(_EMKTextKit2Controller *)self setRippleCoordinator:v17];

  v18 = [(_EMKTextKit2Controller *)self rippleCoordinator];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57___EMKTextKit2Controller___startTextEffectBasedAnimation__block_invoke_46;
  v20[3] = &unk_2781C2250;
  v20[4] = self;
  v21 = v3;
  v19 = v3;
  [v18 startWithCompletionHandler:v20];
}

- (void)__startLegacyRippleAnimation
{
  rippleTimer = self->_rippleTimer;
  if (rippleTimer)
  {
    [(NSTimer *)rippleTimer invalidate];

    [(_EMKTextKit2Controller *)self setRippleTimer:0];
  }

  else
  {
    v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_updateEmojiDisplay_ selector:0 userInfo:1 repeats:0.0166666667];
    v5 = self->_rippleTimer;
    self->_rippleTimer = v4;

    v6 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v6 addTimer:self->_rippleTimer forMode:*MEMORY[0x277D77228]];
  }
}

- (void)updateEmojiDisplay:(id)a3
{
  v4 = 0;
  [(_EMKTextContainerOverlayView *)self->_containerOverlayView updateAnimationAndGetFinished:&v4];
  if (v4 == 1)
  {
    [(_EMKTextKit2Controller *)self setEmojiAnimationActive:0];
    [(_EMKTextKit2Controller *)self __stopAnimation];
  }
}

- (void)_updateEmojiAttributesOfText:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = self;
    _os_log_impl(&dword_2155E6000, v5, OS_LOG_TYPE_DEFAULT, "%p _updateEmojiAttributesOfText", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_emojiConversionLanguages;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        textEnumerator = self->_textEnumerator;
        v12 = [v4 string];
        v13 = [v4 length];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __55___EMKTextKit2Controller__updateEmojiAttributesOfText___block_invoke;
        v15[3] = &unk_2781C2278;
        v16 = v4;
        v17 = v10;
        [(EMKTextEnumerator *)textEnumerator enumerateEmojiSignifiersInString:v12 touchingRange:0 language:v13 usingBlock:v10, v15];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

- (BOOL)isUsingTextEffectBasedEmojiAnimations
{
  v2 = [(_EMKTextKit2Controller *)self textView];
  v3 = [v2 isUsingTextEffectBasedEmojiAnimations];

  return v3;
}

- (void)setEmojiConversionActive:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v3;
    _os_log_impl(&dword_2155E6000, v5, OS_LOG_TYPE_DEFAULT, "setEmojiConversionActive: %{BOOL}d", v9, 8u);
  }

  if (self->_emojiConversionActive != v3)
  {
    self->_emojiConversionActive = v3;
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_textView);
      v7 = [WeakRetained textStorage];
      [(_EMKTextKit2Controller *)self _updateEmojiAttributesOfText:v7];
    }

    v8 = [(_EMKTextKit2Controller *)self _layoutManager];
    if (v8)
    {
      [(_EMKTextKit2Controller *)self _startOrStopAnimation];
    }
  }
}

- (void)_startOrStopAnimation
{
  v20 = *MEMORY[0x277D85DE8];
  emojiAnimationActive = self->_emojiAnimationActive;
  emojiConversionActive = self->_emojiConversionActive;
  v5 = emojiAnimationActive && !emojiConversionActive;
  v6 = [objc_opt_class() log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = self->_emojiAnimationActive;
    v8 = self->_emojiConversionActive;
    v16 = 67109376;
    *v17 = v7;
    *&v17[4] = 1024;
    *&v17[6] = v8;
    _os_log_impl(&dword_2155E6000, v6, OS_LOG_TYPE_DEFAULT, "_startOrStopAnimation: _emojiAnimationActive: %{BOOL}d - _emojiConversionActive: %{BOOL}d", &v16, 0xEu);
  }

  v9 = !emojiAnimationActive && emojiConversionActive;
  v10 = emojiAnimationActive || emojiConversionActive;

  v11 = [objc_opt_class() log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109632;
    *v17 = v5;
    *&v17[4] = 1024;
    *&v17[6] = v9;
    v18 = 1024;
    v19 = !v10;
    _os_log_impl(&dword_2155E6000, v11, OS_LOG_TYPE_DEFAULT, "_startOrStopAnimation: stopAnimation: %{BOOL}d - startAnimation: %{BOOL}d - hideHighlight: %{BOOL}d", &v16, 0x14u);
  }

  if (v5)
  {
    [(_EMKTextKit2Controller *)self __stopAnimation];
  }

  else if (v9)
  {
    [(_EMKTextKit2Controller *)self __startAnimation];
  }

  else if (!v10)
  {
    if ([(_EMKTextKit2Controller *)self isUsingTextEffectBasedEmojiAnimations])
    {
      v12 = [objc_opt_class() log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(_EMKTextKit2Controller *)self rippleCoordinator];
        v16 = 138412290;
        *v17 = v13;
        _os_log_impl(&dword_2155E6000, v12, OS_LOG_TYPE_DEFAULT, "self.rippleCoordinator: %@", &v16, 0xCu);
      }

      v14 = [(_EMKTextKit2Controller *)self rippleCoordinator];
      [v14 cleanupIncludingFilterEffect:1];

      [(_EMKTextKit2Controller *)self setRippleCoordinator:0];
    }

    else
    {
      v15 = [(_EMKTextKit2Controller *)self textView];
      [v15 _setTokenListsHighlighted_emk:0 rippler:self->_rippler];
    }
  }
}

- (void)setTextContainerOverlayView:(id)a3
{
  v5 = a3;
  textContainerOverlayView = self->_textContainerOverlayView;
  if (textContainerOverlayView != v5)
  {
    [(UIView *)textContainerOverlayView removeFromSuperview];
    objc_storeStrong(&self->_textContainerOverlayView, a3);
    v7 = [(_EMKTextKit2Controller *)self textView];
    v8 = [v7 _containerView];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [(UIView *)self->_textContainerOverlayView setFrame:v10, v12, v14, v16];
    WeakRetained = objc_loadWeakRetained(&self->_textView);
    [WeakRetained addSubview:self->_textContainerOverlayView];
  }

  MEMORY[0x2821F96F8]();
}

- (void)__rippleCoordinatorDidCompleteWithFinished:(BOOL)a3
{
  [(_EMKTextKit2Controller *)self __stopAnimation];
  self->_emojiAnimationActive = 0;
  v4 = [(_EMKTextKit2Controller *)self rippleCoordinator];
  [v4 cleanupIncludingFilterEffect:!self->_emojiConversionActive];
}

- (void)__stopAnimation
{
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2155E6000, v3, OS_LOG_TYPE_DEFAULT, "Stopping animation", v7, 2u);
  }

  self->_emojiAnimationActive = 0;
  if ([(_EMKTextKit2Controller *)self isUsingTextEffectBasedEmojiAnimations])
  {
    v4 = [(_EMKTextKit2Controller *)self rippleCoordinator];
    [v4 stop];
  }

  else
  {
    [(NSTimer *)self->_rippleTimer invalidate];
    [(_EMKTextContainerOverlayView *)self->_containerOverlayView removeFromSuperview];
    containerOverlayView = self->_containerOverlayView;
    self->_containerOverlayView = 0;

    [(_EMKTextKit2Controller *)self setRippleTimer:0];
    WeakRetained = objc_loadWeakRetained(&self->_textView);
    [WeakRetained _setTokenListsHidden_emk:0];

    v4 = objc_loadWeakRetained(&self->_textView);
    [v4 _setTokenListsHighlighted_emk:self->_emojiConversionActive rippler:self->_rippler];
  }
}

- (void)__startAnimation
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    darkModeEnabled = self->_darkModeEnabled;
    *buf = 67109120;
    v25 = darkModeEnabled;
    _os_log_impl(&dword_2155E6000, v3, OS_LOG_TYPE_DEFAULT, "Starting animation with dark mode: %{BOOL}d", buf, 8u);
  }

  self->_emojiAnimationActive = 1;
  if ([(_EMKTextKit2Controller *)self isUsingTextEffectBasedEmojiAnimations])
  {
    v5 = [(_EMKTextKit2Controller *)self textView];
    [v5 setNeedsLayout];

    v6 = [(_EMKTextKit2Controller *)self textView];
    [v6 layoutIfNeeded];
  }

  else
  {
    [(EMKGlyphRippler *)self->_rippler startWithDarkMode:self->_darkModeEnabled];
    containerOverlayView = self->_containerOverlayView;
    if (!containerOverlayView)
    {
      v8 = [(_EMKTextKit2Controller *)self textView];
      v9 = [v8 _containerView];
      [v9 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v18 = [[_EMKTextContainerOverlayView alloc] initWithFrame:self->_rippler rippler:v11, v13, v15, v17];
      v19 = self->_containerOverlayView;
      self->_containerOverlayView = v18;

      WeakRetained = objc_loadWeakRetained(&self->_textView);
      [WeakRetained addSubview:self->_containerOverlayView];

      v21 = self->_containerOverlayView;
      v22 = objc_loadWeakRetained(&self->_textView);
      [(_EMKTextContainerOverlayView *)v21 prepareWithTextView:v22];

      containerOverlayView = self->_containerOverlayView;
    }

    [(_EMKTextContainerOverlayView *)containerOverlayView startAnimation];
    v6 = objc_loadWeakRetained(&self->_textView);
    [v6 _setTokenListsHidden_emk:1];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42___EMKTextKit2Controller___startAnimation__block_invoke;
  block[3] = &unk_2781C22A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)touchHasEmojiSignificance:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(_EMKTextKit2Controller *)self isEmojiConversionActive]&& [(_EMKTextKit2Controller *)self isEmojiConversionEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_textView);
    [v4 locationInView:WeakRetained];
    v7 = v6;
    v9 = v8;

    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v59.x = v7;
      v59.y = v9;
      v11 = NSStringFromCGPoint(v59);
      *buf = 134218242;
      *&buf[4] = v4;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&dword_2155E6000, v10, OS_LOG_TYPE_DEFAULT, "touchHasEmojiSignificance: %p - location: %@", buf, 0x16u);
    }

    v12 = objc_loadWeakRetained(&self->_textView);
    v13 = [v12 textLayoutManager];
    v14 = [v13 textContainer];

    v15 = objc_loadWeakRetained(&self->_textView);
    v16 = [v15 textLayoutManager];

    v17 = [v16 documentRange];
    [v16 ensureLayoutForRange:v17];
    v18 = [v17 location];
    v19 = [v16 lineFragmentRangeForPoint:v18 inContainerAtLocation:{v7, v9}];

    v20 = [objc_opt_class() log];
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (v21)
      {
        *buf = 138412290;
        *&buf[4] = v19;
        _os_log_impl(&dword_2155E6000, v20, OS_LOG_TYPE_DEFAULT, "touchHasEmojiSignificance: => Touched line range: %@", buf, 0xCu);
      }

      v48 = 0;
      v49 = &v48;
      v50 = 0x3032000000;
      v51 = __Block_byref_object_copy_;
      v52 = __Block_byref_object_dispose_;
      v53 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x4010000000;
      v55 = &unk_2155F6472;
      v22 = *(MEMORY[0x277CBF3A0] + 16);
      v56 = *MEMORY[0x277CBF3A0];
      v57 = v22;
      v23 = [v19 location];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __52___EMKTextKit2Controller_touchHasEmojiSignificance___block_invoke;
      v41[3] = &unk_2781C22F0;
      v24 = v16;
      v42 = v24;
      v43 = self;
      v46 = v7;
      v47 = v9;
      v44 = &v48;
      v45 = buf;
      [v24 enumerateSubstringsFromLocation:v23 options:3 usingBlock:v41];

      v25 = v49[5];
      if (v25)
      {
        v37 = 0;
        v38 = &v37;
        v39 = 0x2020000000;
        v40 = 0;
        v26 = [v25 location];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __52___EMKTextKit2Controller_touchHasEmojiSignificance___block_invoke_57;
        v31[3] = &unk_2781C2340;
        v31[4] = self;
        v32 = v24;
        v33 = v17;
        v34 = &v48;
        v35 = &v37;
        v36 = buf;
        v27 = [v32 enumerateTextLayoutFragmentsFromLocation:v26 options:0 usingBlock:v31];

        if (v38[3])
        {
          v28 = 1;
        }

        else
        {
          lastTouchInfo = self->_lastTouchInfo;
          self->_lastTouchInfo = 0;

          v28 = *(v38 + 24);
        }

        _Block_object_dispose(&v37, 8);
      }

      else
      {
        v28 = 0;
      }

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v48, 8);
    }

    else
    {
      if (v21)
      {
        *buf = 0;
        _os_log_impl(&dword_2155E6000, v20, OS_LOG_TYPE_DEFAULT, "touchHasEmojiSignificance: => no line touched.", buf, 2u);
      }

      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28 & 1;
}

- (void)textTapGestureRecognized:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__PAIR64__(self->_emojiConversionActive, self->_emojiConversionEnabled) == 0x100000001)
  {
    v5 = [MEMORY[0x277D75238] sharedCalloutBarIsVisible] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_opt_class() log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    lastTouchInfo = self->_lastTouchInfo;
    *buf = 138412802;
    v35 = v4;
    v36 = 1024;
    v37 = v5;
    v38 = 2112;
    v39 = lastTouchInfo;
    _os_log_impl(&dword_2155E6000, v6, OS_LOG_TYPE_DEFAULT, "textTapGestureRecognized: %@ - shouldProcess: %{BOOL}d - lastTouchInfo: %@", buf, 0x1Cu);
  }

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textView);
    v9 = [WeakRetained text];

    v10 = [(_EMKTouchInfo *)self->_lastTouchInfo tokenListRange];
    v12 = v11;
    v13 = [v9 substringWithRange:{v10, v11}];
    objc_initWeak(buf, self);
    v14 = [EMKOverlayView alloc];
    v15 = [(_EMKTextKit2Controller *)self textView];
    [(_EMKTouchInfo *)self->_lastTouchInfo frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [(_EMKTouchInfo *)self->_lastTouchInfo tokenList];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __51___EMKTextKit2Controller_textTapGestureRecognized___block_invoke;
    v29[3] = &unk_2781C2368;
    objc_copyWeak(v33, buf);
    v33[1] = v10;
    v33[2] = v12;
    v25 = v9;
    v30 = v25;
    v26 = v13;
    v31 = v26;
    v32 = self;
    v27 = [(EMKOverlayView *)v14 initWithView:v15 anchorRect:v24 emojiTokenList:v29 selectionHandler:v17, v19, v21, v23];
    overlayView = self->_overlayView;
    self->_overlayView = v27;

    objc_destroyWeak(v33);
    objc_destroyWeak(buf);
  }
}

- (void)replaceRange:(_NSRange)a3 withEmojiToken:(id)a4 language:(id)a5
{
  length = a3.length;
  location = a3.location;
  v51 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v48 = a5;
  v10 = [objc_opt_class() log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v52.location = location;
    v52.length = length;
    v11 = NSStringFromRange(v52);
    *buf = 138412290;
    v50 = v11;
    _os_log_impl(&dword_2155E6000, v10, OS_LOG_TYPE_DEFAULT, "replaceRange:withEmojiToken:language: - range: %@", buf, 0xCu);
  }

  v12 = [v9 string];
  v45 = [v12 length];
  v13 = [(_EMKTextKit2Controller *)self textView];
  v14 = [v13 attributedText];
  v15 = [v14 attributedSubstringFromRange:{location, length}];
  v16 = [v15 string];

  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v18 = [WeakRetained beginningOfDocument];

  v19 = objc_loadWeakRetained(&self->_textView);
  v20 = [v19 positionFromPosition:v18 offset:location];

  v21 = objc_loadWeakRetained(&self->_textView);
  v22 = [v21 positionFromPosition:v18 offset:location + length];

  v23 = objc_loadWeakRetained(&self->_textView);
  v46 = v22;
  v47 = v20;
  v24 = [v23 textRangeFromPosition:v20 toPosition:v22];

  v25 = objc_loadWeakRetained(&self->_textView);
  v26 = [v25 inputDelegate];
  v27 = objc_loadWeakRetained(&self->_textView);
  [v26 textWillChange:v27];

  v28 = objc_loadWeakRetained(&self->_textView);
  [v28 replaceRange:v24 withText:v12];

  v29 = objc_loadWeakRetained(&self->_textView);
  v30 = [v29 inputDelegate];
  v31 = objc_loadWeakRetained(&self->_textView);
  [v30 textDidChange:v31];

  if ([v16 isEqualToString:v12])
  {
    v44 = v9;
    v32 = objc_loadWeakRetained(&self->_textView);
    v33 = [v32 inputDelegate];
    v34 = objc_loadWeakRetained(&self->_textView);
    [v33 textWillChange:v34];

    v35 = [[EMKEmojiSignifier alloc] initWithString:v16];
    v36 = [objc_opt_class() log];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2155E6000, v36, OS_LOG_TYPE_DEFAULT, "Adding attributes…", buf, 2u);
    }

    v37 = [(_EMKTextKit2Controller *)self textView];
    v38 = [v37 attributedText];
    v39 = [v38 mutableCopy];

    [v39 addAttribute:@"EMKEmojiSignifier" value:v35 range:{location, v45}];
    if (v48)
    {
      [v39 addAttribute:@"EMKEmojiConversionLanguage" value:v48 range:{location, v45}];
    }

    v40 = objc_loadWeakRetained(&self->_textView);
    [v40 setAttributedText:v39];

    v41 = objc_loadWeakRetained(&self->_textView);
    v42 = [v41 inputDelegate];
    v43 = objc_loadWeakRetained(&self->_textView);
    [v42 textDidChange:v43];

    v9 = v44;
  }

  [(EMFEmojiPreferences *)self->_emojiPreferences didUseEmoji:v9 usageMode:*MEMORY[0x277D072E0] typingName:0 replacementContext:v16];
}

- (void)_updateOverlayView
{
  overlayView = self->_overlayView;
  if (overlayView)
  {
    v4 = [(_EMKTextKit2Controller *)self textView];
    [(_EMKTouchInfo *)self->_lastTouchInfo frame];
    [(EMKOverlayView *)overlayView setView:v4 anchorRect:?];
  }
}

- (void)dismissOverlayView
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_overlayView)
  {
    v3 = [objc_opt_class() log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = self;
      _os_log_impl(&dword_2155E6000, v3, OS_LOG_TYPE_DEFAULT, "Dismissing overlay view: %p", &v5, 0xCu);
    }

    [(EMKOverlayView *)self->_overlayView dismiss];
    overlayView = self->_overlayView;
    self->_overlayView = 0;
  }
}

- (id)textContentStorage:(id)a3 textParagraphWithRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = v7;
  if (__PAIR64__(self->_emojiConversionActive, self->_emojiConversionEnabled) == 0x100000001)
  {
    v9 = [v7 textStorage];
    v10 = [v9 attributedSubstringFromRange:{location, length}];

    v11 = [v10 mutableCopy];
    [(_EMKTextKit2Controller *)self _updateEmojiAttributesOfText:v11];
    v12 = [objc_alloc(MEMORY[0x277D742C8]) initWithAttributedString:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end