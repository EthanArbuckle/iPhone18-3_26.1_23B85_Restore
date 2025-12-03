@interface _EMKTextKit2Controller
+ (OS_os_log)log;
- (BOOL)isUsingTextEffectBasedEmojiAnimations;
- (BOOL)touchHasEmojiSignificance:(id)significance;
- (EMKTextView)textView;
- (NSTextLayoutManager)_layoutManager;
- (_EMKTextKit2Controller)initWithTextView:(id)view emojiPreferences:(id)preferences;
- (id)textContentStorage:(id)storage textParagraphWithRange:(_NSRange)range;
- (void)__rippleCoordinatorDidCompleteWithFinished:(BOOL)finished;
- (void)__startAnimation;
- (void)__startLegacyRippleAnimation;
- (void)__startTextEffectBasedAnimation;
- (void)__stopAnimation;
- (void)_startOrStopAnimation;
- (void)_startRippleAnimation;
- (void)_updateEmojiAttributesOfText:(id)text;
- (void)_updateOverlayView;
- (void)dismissOverlayView;
- (void)replaceRange:(_NSRange)range withEmojiToken:(id)token language:(id)language;
- (void)setEmojiConversionActive:(BOOL)active;
- (void)setTextContainerOverlayView:(id)view;
- (void)textTapGestureRecognized:(id)recognized;
- (void)textViewDidLayoutSubviews;
- (void)updateEmojiDisplay:(id)display;
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
  textView = [(_EMKTextKit2Controller *)self textView];
  if (objc_opt_respondsToSelector())
  {
    textView2 = [(_EMKTextKit2Controller *)self textView];
    _containerView = [textView2 _containerView];
    [_containerView bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    textContainerOverlayView = [(_EMKTextKit2Controller *)self textContainerOverlayView];
    [textContainerOverlayView setFrame:{v7, v9, v11, v13}];
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

- (_EMKTextKit2Controller)initWithTextView:(id)view emojiPreferences:(id)preferences
{
  viewCopy = view;
  preferencesCopy = preferences;
  v20.receiver = self;
  v20.super_class = _EMKTextKit2Controller;
  v8 = [(_EMKTextKit2Controller *)&v20 init];
  if (v8)
  {
    v9 = objc_alloc_init(EMKGlyphRippler);
    rippler = v8->_rippler;
    v8->_rippler = v9;

    objc_storeWeak(&v8->_textView, viewCopy);
    objc_storeStrong(&v8->_emojiPreferences, preferences);
    v11 = [[EMKTextEnumerator alloc] initWithEmojiPreferences:preferencesCopy];
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

    textLayoutManager = [viewCopy textLayoutManager];
    textContentManager = [textLayoutManager textContentManager];
    [textContentManager setDelegate:v8];
    if (objc_opt_respondsToSelector())
    {
      [textLayoutManager setRequiresCTLineRef:1];
    }
  }

  return v8;
}

- (NSTextLayoutManager)_layoutManager
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  textLayoutManager = [WeakRetained textLayoutManager];

  return textLayoutManager;
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
  textView = [(_EMKTextKit2Controller *)self textView];
  textStorage = [textView textStorage];
  v5 = [textStorage length];
  emojiAnimationDelegate = [textView emojiAnimationDelegate];
  [emojiAnimationDelegate textViewWillBeginEmojiRippleAnimation:textView];

  v7 = objc_opt_new();
  [textStorage beginEditing];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __57___EMKTextKit2Controller___startTextEffectBasedAnimation__block_invoke;
  v23[3] = &unk_2781C2228;
  v8 = textStorage;
  v24 = v8;
  v25 = v7;
  v9 = v7;
  [v8 _enumerateTokenListsInRange:0 usingBlock_emk:{v5, v23}];
  [v8 endEditing];
  textView2 = [(_EMKTextKit2Controller *)self textView];
  [textView2 setNeedsLayout];

  textView3 = [(_EMKTextKit2Controller *)self textView];
  [textView3 layoutIfNeeded];

  v12 = [objc_opt_class() log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2155E6000, v12, OS_LOG_TYPE_DEFAULT, "creating coordinator", buf, 2u);
  }

  v13 = [EMKRippleAnimationCoordinator alloc];
  textView4 = [(_EMKTextKit2Controller *)self textView];
  v15 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.498039216 blue:0.0 alpha:1.0];
  v16 = [objc_opt_class() log];
  v17 = [(EMKRippleAnimationCoordinator *)v13 initWithTextView:textView4 animations:v9 foregroundColor:v15 log:v16];
  [(_EMKTextKit2Controller *)self setRippleCoordinator:v17];

  rippleCoordinator = [(_EMKTextKit2Controller *)self rippleCoordinator];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57___EMKTextKit2Controller___startTextEffectBasedAnimation__block_invoke_46;
  v20[3] = &unk_2781C2250;
  v20[4] = self;
  v21 = textView;
  v19 = textView;
  [rippleCoordinator startWithCompletionHandler:v20];
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

    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [mainRunLoop addTimer:self->_rippleTimer forMode:*MEMORY[0x277D77228]];
  }
}

- (void)updateEmojiDisplay:(id)display
{
  v4 = 0;
  [(_EMKTextContainerOverlayView *)self->_containerOverlayView updateAnimationAndGetFinished:&v4];
  if (v4 == 1)
  {
    [(_EMKTextKit2Controller *)self setEmojiAnimationActive:0];
    [(_EMKTextKit2Controller *)self __stopAnimation];
  }
}

- (void)_updateEmojiAttributesOfText:(id)text
{
  v25 = *MEMORY[0x277D85DE8];
  textCopy = text;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
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
        string = [textCopy string];
        v13 = [textCopy length];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __55___EMKTextKit2Controller__updateEmojiAttributesOfText___block_invoke;
        v15[3] = &unk_2781C2278;
        v16 = textCopy;
        v17 = v10;
        [(EMKTextEnumerator *)textEnumerator enumerateEmojiSignifiersInString:string touchingRange:0 language:v13 usingBlock:v10, v15];

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
  textView = [(_EMKTextKit2Controller *)self textView];
  isUsingTextEffectBasedEmojiAnimations = [textView isUsingTextEffectBasedEmojiAnimations];

  return isUsingTextEffectBasedEmojiAnimations;
}

- (void)setEmojiConversionActive:(BOOL)active
{
  activeCopy = active;
  v10 = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = activeCopy;
    _os_log_impl(&dword_2155E6000, v5, OS_LOG_TYPE_DEFAULT, "setEmojiConversionActive: %{BOOL}d", v9, 8u);
  }

  if (self->_emojiConversionActive != activeCopy)
  {
    self->_emojiConversionActive = activeCopy;
    if (activeCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_textView);
      textStorage = [WeakRetained textStorage];
      [(_EMKTextKit2Controller *)self _updateEmojiAttributesOfText:textStorage];
    }

    _layoutManager = [(_EMKTextKit2Controller *)self _layoutManager];
    if (_layoutManager)
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
        rippleCoordinator = [(_EMKTextKit2Controller *)self rippleCoordinator];
        v16 = 138412290;
        *v17 = rippleCoordinator;
        _os_log_impl(&dword_2155E6000, v12, OS_LOG_TYPE_DEFAULT, "self.rippleCoordinator: %@", &v16, 0xCu);
      }

      rippleCoordinator2 = [(_EMKTextKit2Controller *)self rippleCoordinator];
      [rippleCoordinator2 cleanupIncludingFilterEffect:1];

      [(_EMKTextKit2Controller *)self setRippleCoordinator:0];
    }

    else
    {
      textView = [(_EMKTextKit2Controller *)self textView];
      [textView _setTokenListsHighlighted_emk:0 rippler:self->_rippler];
    }
  }
}

- (void)setTextContainerOverlayView:(id)view
{
  viewCopy = view;
  textContainerOverlayView = self->_textContainerOverlayView;
  if (textContainerOverlayView != viewCopy)
  {
    [(UIView *)textContainerOverlayView removeFromSuperview];
    objc_storeStrong(&self->_textContainerOverlayView, view);
    textView = [(_EMKTextKit2Controller *)self textView];
    _containerView = [textView _containerView];
    [_containerView frame];
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

- (void)__rippleCoordinatorDidCompleteWithFinished:(BOOL)finished
{
  [(_EMKTextKit2Controller *)self __stopAnimation];
  self->_emojiAnimationActive = 0;
  rippleCoordinator = [(_EMKTextKit2Controller *)self rippleCoordinator];
  [rippleCoordinator cleanupIncludingFilterEffect:!self->_emojiConversionActive];
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
    rippleCoordinator = [(_EMKTextKit2Controller *)self rippleCoordinator];
    [rippleCoordinator stop];
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

    rippleCoordinator = objc_loadWeakRetained(&self->_textView);
    [rippleCoordinator _setTokenListsHighlighted_emk:self->_emojiConversionActive rippler:self->_rippler];
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
    textView = [(_EMKTextKit2Controller *)self textView];
    [textView setNeedsLayout];

    textView2 = [(_EMKTextKit2Controller *)self textView];
    [textView2 layoutIfNeeded];
  }

  else
  {
    [(EMKGlyphRippler *)self->_rippler startWithDarkMode:self->_darkModeEnabled];
    containerOverlayView = self->_containerOverlayView;
    if (!containerOverlayView)
    {
      textView3 = [(_EMKTextKit2Controller *)self textView];
      _containerView = [textView3 _containerView];
      [_containerView frame];
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
    textView2 = objc_loadWeakRetained(&self->_textView);
    [textView2 _setTokenListsHidden_emk:1];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42___EMKTextKit2Controller___startAnimation__block_invoke;
  block[3] = &unk_2781C22A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)touchHasEmojiSignificance:(id)significance
{
  v58 = *MEMORY[0x277D85DE8];
  significanceCopy = significance;
  if ([(_EMKTextKit2Controller *)self isEmojiConversionActive]&& [(_EMKTextKit2Controller *)self isEmojiConversionEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_textView);
    [significanceCopy locationInView:WeakRetained];
    v7 = v6;
    v9 = v8;

    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v59.x = v7;
      v59.y = v9;
      v11 = NSStringFromCGPoint(v59);
      *buf = 134218242;
      *&buf[4] = significanceCopy;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&dword_2155E6000, v10, OS_LOG_TYPE_DEFAULT, "touchHasEmojiSignificance: %p - location: %@", buf, 0x16u);
    }

    v12 = objc_loadWeakRetained(&self->_textView);
    textLayoutManager = [v12 textLayoutManager];
    textContainer = [textLayoutManager textContainer];

    v15 = objc_loadWeakRetained(&self->_textView);
    textLayoutManager2 = [v15 textLayoutManager];

    documentRange = [textLayoutManager2 documentRange];
    [textLayoutManager2 ensureLayoutForRange:documentRange];
    location = [documentRange location];
    v19 = [textLayoutManager2 lineFragmentRangeForPoint:location inContainerAtLocation:{v7, v9}];

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
      location2 = [v19 location];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __52___EMKTextKit2Controller_touchHasEmojiSignificance___block_invoke;
      v41[3] = &unk_2781C22F0;
      v24 = textLayoutManager2;
      v42 = v24;
      selfCopy = self;
      v46 = v7;
      v47 = v9;
      v44 = &v48;
      v45 = buf;
      [v24 enumerateSubstringsFromLocation:location2 options:3 usingBlock:v41];

      v25 = v49[5];
      if (v25)
      {
        v37 = 0;
        v38 = &v37;
        v39 = 0x2020000000;
        v40 = 0;
        location3 = [v25 location];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __52___EMKTextKit2Controller_touchHasEmojiSignificance___block_invoke_57;
        v31[3] = &unk_2781C2340;
        v31[4] = self;
        v32 = v24;
        v33 = documentRange;
        v34 = &v48;
        v35 = &v37;
        v36 = buf;
        v27 = [v32 enumerateTextLayoutFragmentsFromLocation:location3 options:0 usingBlock:v31];

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

- (void)textTapGestureRecognized:(id)recognized
{
  v40 = *MEMORY[0x277D85DE8];
  recognizedCopy = recognized;
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
    v35 = recognizedCopy;
    v36 = 1024;
    v37 = v5;
    v38 = 2112;
    v39 = lastTouchInfo;
    _os_log_impl(&dword_2155E6000, v6, OS_LOG_TYPE_DEFAULT, "textTapGestureRecognized: %@ - shouldProcess: %{BOOL}d - lastTouchInfo: %@", buf, 0x1Cu);
  }

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textView);
    text = [WeakRetained text];

    tokenListRange = [(_EMKTouchInfo *)self->_lastTouchInfo tokenListRange];
    v12 = v11;
    v13 = [text substringWithRange:{tokenListRange, v11}];
    objc_initWeak(buf, self);
    v14 = [EMKOverlayView alloc];
    textView = [(_EMKTextKit2Controller *)self textView];
    [(_EMKTouchInfo *)self->_lastTouchInfo frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    tokenList = [(_EMKTouchInfo *)self->_lastTouchInfo tokenList];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __51___EMKTextKit2Controller_textTapGestureRecognized___block_invoke;
    v29[3] = &unk_2781C2368;
    objc_copyWeak(v33, buf);
    v33[1] = tokenListRange;
    v33[2] = v12;
    v25 = text;
    v30 = v25;
    v26 = v13;
    v31 = v26;
    selfCopy = self;
    v27 = [(EMKOverlayView *)v14 initWithView:textView anchorRect:tokenList emojiTokenList:v29 selectionHandler:v17, v19, v21, v23];
    overlayView = self->_overlayView;
    self->_overlayView = v27;

    objc_destroyWeak(v33);
    objc_destroyWeak(buf);
  }
}

- (void)replaceRange:(_NSRange)range withEmojiToken:(id)token language:(id)language
{
  length = range.length;
  location = range.location;
  v51 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  languageCopy = language;
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

  string = [tokenCopy string];
  v45 = [string length];
  textView = [(_EMKTextKit2Controller *)self textView];
  attributedText = [textView attributedText];
  v15 = [attributedText attributedSubstringFromRange:{location, length}];
  string2 = [v15 string];

  WeakRetained = objc_loadWeakRetained(&self->_textView);
  beginningOfDocument = [WeakRetained beginningOfDocument];

  v19 = objc_loadWeakRetained(&self->_textView);
  v20 = [v19 positionFromPosition:beginningOfDocument offset:location];

  v21 = objc_loadWeakRetained(&self->_textView);
  v22 = [v21 positionFromPosition:beginningOfDocument offset:location + length];

  v23 = objc_loadWeakRetained(&self->_textView);
  v46 = v22;
  v47 = v20;
  v24 = [v23 textRangeFromPosition:v20 toPosition:v22];

  v25 = objc_loadWeakRetained(&self->_textView);
  inputDelegate = [v25 inputDelegate];
  v27 = objc_loadWeakRetained(&self->_textView);
  [inputDelegate textWillChange:v27];

  v28 = objc_loadWeakRetained(&self->_textView);
  [v28 replaceRange:v24 withText:string];

  v29 = objc_loadWeakRetained(&self->_textView);
  inputDelegate2 = [v29 inputDelegate];
  v31 = objc_loadWeakRetained(&self->_textView);
  [inputDelegate2 textDidChange:v31];

  if ([string2 isEqualToString:string])
  {
    v44 = tokenCopy;
    v32 = objc_loadWeakRetained(&self->_textView);
    inputDelegate3 = [v32 inputDelegate];
    v34 = objc_loadWeakRetained(&self->_textView);
    [inputDelegate3 textWillChange:v34];

    v35 = [[EMKEmojiSignifier alloc] initWithString:string2];
    v36 = [objc_opt_class() log];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2155E6000, v36, OS_LOG_TYPE_DEFAULT, "Adding attributes…", buf, 2u);
    }

    textView2 = [(_EMKTextKit2Controller *)self textView];
    attributedText2 = [textView2 attributedText];
    v39 = [attributedText2 mutableCopy];

    [v39 addAttribute:@"EMKEmojiSignifier" value:v35 range:{location, v45}];
    if (languageCopy)
    {
      [v39 addAttribute:@"EMKEmojiConversionLanguage" value:languageCopy range:{location, v45}];
    }

    v40 = objc_loadWeakRetained(&self->_textView);
    [v40 setAttributedText:v39];

    v41 = objc_loadWeakRetained(&self->_textView);
    inputDelegate4 = [v41 inputDelegate];
    v43 = objc_loadWeakRetained(&self->_textView);
    [inputDelegate4 textDidChange:v43];

    tokenCopy = v44;
  }

  [(EMFEmojiPreferences *)self->_emojiPreferences didUseEmoji:tokenCopy usageMode:*MEMORY[0x277D072E0] typingName:0 replacementContext:string2];
}

- (void)_updateOverlayView
{
  overlayView = self->_overlayView;
  if (overlayView)
  {
    textView = [(_EMKTextKit2Controller *)self textView];
    [(_EMKTouchInfo *)self->_lastTouchInfo frame];
    [(EMKOverlayView *)overlayView setView:textView anchorRect:?];
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
      selfCopy = self;
      _os_log_impl(&dword_2155E6000, v3, OS_LOG_TYPE_DEFAULT, "Dismissing overlay view: %p", &v5, 0xCu);
    }

    [(EMKOverlayView *)self->_overlayView dismiss];
    overlayView = self->_overlayView;
    self->_overlayView = 0;
  }
}

- (id)textContentStorage:(id)storage textParagraphWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  v8 = storageCopy;
  if (__PAIR64__(self->_emojiConversionActive, self->_emojiConversionEnabled) == 0x100000001)
  {
    textStorage = [storageCopy textStorage];
    v10 = [textStorage attributedSubstringFromRange:{location, length}];

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