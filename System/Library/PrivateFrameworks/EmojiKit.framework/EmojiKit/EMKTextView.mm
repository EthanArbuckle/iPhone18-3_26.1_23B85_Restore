@interface EMKTextView
+ (void)__emk_setNeedsDisplayCurrentRenderAttributesForView:(id)view;
- (BOOL)isEmojiConversionEnabled;
- (BOOL)touchHasEmojiSignificance:(id)significance;
- (CGRect)anchorRect;
- (EMKTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (EMKTextViewEmojiAnimationDelegate)emojiAnimationDelegate;
- (id)initUsingTextLayoutManagerWithFrame:(CGRect)frame;
- (id)initUsingTextLayoutManagerWithFrame:(CGRect)frame textContainer:(id)container;
- (id)personalizedEmojiTokenListForList:(id)list;
- (void)__legacy_setTokenListsHighlighted_emk:(BOOL)highlighted_emk rippler:(id)rippler;
- (void)__textEffects_setTokenListsHighlighted_emk:(BOOL)highlighted_emk;
- (void)_emk_addRenderingAttribute:(id)attribute value:(id)value forTextRange:(id)range;
- (void)_emk_removeRenderingAttribute:(id)attribute forTextRange:(id)range;
- (void)_emk_setNeedsDisplayCurrentRenderAttributes;
- (void)_emojifyingDisabled:(id)disabled;
- (void)_setTokenListsHidden_emk:(BOOL)hidden_emk;
- (void)_setTokenListsHighlighted_emk:(BOOL)highlighted_emk rippler:(id)rippler;
- (void)_startTextKit1EmojiDisplayUpdateTimer:(id)timer;
- (void)_stopTextKit1EmojiDisplayUpdateTimer:(id)timer;
- (void)calculateDisplayRect;
- (void)dealloc;
- (void)deleteBackward;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)dismissOverlayView;
- (void)layoutSubviews;
- (void)replaceRange:(_NSRange)range withEmojiToken:(id)token language:(id)language;
- (void)setDelayFrames:(unint64_t)frames;
- (void)setEmojiConversionEnabled:(BOOL)enabled;
- (void)setEmojiConversionLanguagesAndActivateConversion:(BOOL)conversion;
- (void)setPostFrames:(unint64_t)frames;
- (void)setPreFrames:(unint64_t)frames;
- (void)setUsingTextEffectBasedEmojiAnimations:(BOOL)animations;
- (void)setupLayoutManagerWithFrame:(CGRect)frame;
- (void)textTapGestureRecognized:(id)recognized;
- (void)updateEmojiDisplay:(id)display;
- (void)updateOverlayView:(id)view;
@end

@implementation EMKTextView

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = EMKTextView;
  [(EMKTextView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = EMKTextView;
  [(EMKTextView *)&v5 layoutSubviews];
  textKit2Controller = self->_textKit2Controller;
  if (textKit2Controller)
  {
    [(_EMKTextKit2Controller *)textKit2Controller textViewDidLayoutSubviews];
  }

  else if (self->_overlayView)
  {
    v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_updateOverlayView_ selector:0 userInfo:0 repeats:0.01];
  }
}

- (void)_emk_removeRenderingAttribute:(id)attribute forTextRange:(id)range
{
  rangeCopy = range;
  attributeCopy = attribute;
  textLayoutManager = [(EMKTextView *)self textLayoutManager];
  [textLayoutManager removeRenderingAttribute:attributeCopy forTextRange:rangeCopy];
}

- (void)_emk_addRenderingAttribute:(id)attribute value:(id)value forTextRange:(id)range
{
  rangeCopy = range;
  valueCopy = value;
  attributeCopy = attribute;
  textLayoutManager = [(EMKTextView *)self textLayoutManager];
  [textLayoutManager addRenderingAttribute:attributeCopy value:valueCopy forTextRange:rangeCopy];
}

+ (void)__emk_setNeedsDisplayCurrentRenderAttributesForView:(id)view
{
  v15 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  [viewCopy setNeedsDisplay];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  subviews = [viewCopy subviews];
  v6 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(subviews);
        }

        [self __emk_setNeedsDisplayCurrentRenderAttributesForView:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_emk_setNeedsDisplayCurrentRenderAttributes
{
  v3 = objc_opt_class();

  [v3 __emk_setNeedsDisplayCurrentRenderAttributesForView:self];
}

- (void)_setTokenListsHidden_emk:(BOOL)hidden_emk
{
  if (![(EMKTextView *)self isUsingTextEffectBasedEmojiAnimations])
  {
    textLayoutManager = [(EMKTextView *)self textLayoutManager];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__EMKTextView_Helper___setTokenListsHidden_emk___block_invoke;
    v6[3] = &unk_2781C21B0;
    hidden_emkCopy = hidden_emk;
    v6[4] = self;
    [textLayoutManager _enumerateAllTokenListsUsingBlock_emk:v6];
    [(EMKTextView *)self _emk_setNeedsDisplayCurrentRenderAttributes];
  }
}

void __48__EMKTextView_Helper___setTokenListsHidden_emk___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x277D740C0];
  if (*(a1 + 40) == 1)
  {
    v5 = MEMORY[0x277D75348];
    v6 = a3;
    v7 = [v5 clearColor];
    [v3 _emk_addRenderingAttribute:v4 value:? forTextRange:?];
  }

  else
  {
    v7 = a3;
    [v3 _emk_removeRenderingAttribute:v4 forTextRange:?];
  }
}

- (void)_setTokenListsHighlighted_emk:(BOOL)highlighted_emk rippler:(id)rippler
{
  highlighted_emkCopy = highlighted_emk;
  ripplerCopy = rippler;
  if ([(EMKTextView *)self isUsingTextEffectBasedEmojiAnimations])
  {
    [(EMKTextView *)self __textEffects_setTokenListsHighlighted_emk:highlighted_emkCopy];
  }

  else
  {
    [(EMKTextView *)self __legacy_setTokenListsHighlighted_emk:highlighted_emkCopy rippler:ripplerCopy];
  }
}

- (void)__legacy_setTokenListsHighlighted_emk:(BOOL)highlighted_emk rippler:(id)rippler
{
  highlighted_emkCopy = highlighted_emk;
  ripplerCopy = rippler;
  textLayoutManager = [(EMKTextView *)self textLayoutManager];
  v8 = textLayoutManager;
  if (highlighted_emkCopy)
  {
    v9 = -[_EMKGlyphRenderingAttributes initWithValuesFromRippler:timeIndex:glyphIndex:numberOfGlyphs:]([_EMKGlyphRenderingAttributes alloc], "initWithValuesFromRippler:timeIndex:glyphIndex:numberOfGlyphs:", ripplerCopy, [ripplerCopy currentTimeIndex], 0, 1);
    color = [(_EMKGlyphRenderingAttributes *)v9 color];
    font = [(EMKTextView *)self font];
    [font pointSize];
    v12 = [(_EMKGlyphRenderingAttributes *)v9 shadowIfNeededForFontPointSize:?];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__EMKTextView_Helper____legacy_setTokenListsHighlighted_emk_rippler___block_invoke;
    v16[3] = &unk_2781C21D8;
    v16[4] = self;
    v17 = color;
    v18 = v12;
    v13 = v12;
    v14 = color;
    [v8 _enumerateAllTokenListsUsingBlock_emk:v16];
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__EMKTextView_Helper____legacy_setTokenListsHighlighted_emk_rippler___block_invoke_2;
    v15[3] = &unk_2781C2200;
    v15[4] = self;
    [textLayoutManager _enumerateAllTokenListsUsingBlock_emk:v15];
  }

  [(EMKTextView *)self _emk_setNeedsDisplayCurrentRenderAttributes];
}

void __69__EMKTextView_Helper____legacy_setTokenListsHighlighted_emk_rippler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) _emk_addRenderingAttribute:*MEMORY[0x277D740C0] value:*(a1 + 40) forTextRange:?];
  v4 = *(a1 + 48);
  if (v4)
  {
    [*(a1 + 32) _emk_addRenderingAttribute:*MEMORY[0x277D74138] value:v4 forTextRange:v5];
  }
}

void __69__EMKTextView_Helper____legacy_setTokenListsHighlighted_emk_rippler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x277D740C0];
  v6 = a3;
  [v4 _emk_removeRenderingAttribute:v5 forTextRange:v6];
  [*(a1 + 32) _emk_removeRenderingAttribute:*MEMORY[0x277D74138] forTextRange:v6];
}

- (void)__textEffects_setTokenListsHighlighted_emk:(BOOL)highlighted_emk
{
  if (highlighted_emk)
  {
    textStorage = [(EMKTextView *)self textStorage];
    [textStorage removeAttribute:*MEMORY[0x277D74178] range:{0, objc_msgSend(textStorage, "length")}];
  }
}

- (void)setUsingTextEffectBasedEmojiAnimations:(BOOL)animations
{
  self->_usingTextEffectBasedEmojiAnimations = animations;
  if (animations && ([(EMKTextView *)self allowsTextAnimations]& 1) == 0)
  {

    [(EMKTextView *)self setAllowsTextAnimations:1];
  }
}

- (void)setEmojiConversionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (self->_textKit2Controller)
  {
    textKit2Controller = self->_textKit2Controller;

    [(_EMKTextKit2Controller *)textKit2Controller setEmojiConversionEnabled:?];
  }

  else
  {
    layoutManager = [(EMKTextView *)self layoutManager];
    [layoutManager setEmojiConversionEnabled:enabledCopy];
  }
}

- (BOOL)isEmojiConversionEnabled
{
  if (self->_textKit2Controller)
  {
    textKit2Controller = self->_textKit2Controller;

    return [(_EMKTextKit2Controller *)textKit2Controller isEmojiConversionEnabled];
  }

  else
  {
    layoutManager = [(EMKTextView *)self layoutManager];
    isEmojiConversionEnabled = [layoutManager isEmojiConversionEnabled];

    return isEmojiConversionEnabled;
  }
}

- (void)dismissOverlayView
{
  textKit2Controller = self->_textKit2Controller;
  if (textKit2Controller)
  {

    [(_EMKTextKit2Controller *)textKit2Controller dismissOverlayView];
  }

  else
  {
    [(EMKOverlayView *)self->_overlayView dismiss];
    overlayView = self->_overlayView;
    self->_overlayView = 0;
  }
}

- (void)calculateDisplayRect
{
  layoutManager = [(EMKTextView *)self layoutManager];
  attributes = [layoutManager attributes];
  textStorage = [(EMKTextView *)self textStorage];
  v6 = [textStorage length];
  v7 = [attributes length];
  textContainer = [(EMKTextView *)self textContainer];
  [(EMKTextView *)self textContainerInset];
  v10 = v9;
  v12 = v11;
  v27 = 0;
  v28 = 0;
  p_displayRect = &self->_displayRect;
  v14 = *(MEMORY[0x277CBF3A0] + 16);
  self->_displayRect.origin = *MEMORY[0x277CBF3A0];
  self->_displayRect.size = v14;
  if (v7)
  {
    v15 = 0;
    do
    {
      v16 = [attributes attribute:@"EMKEmojiTokenList" atIndex:v15 longestEffectiveRange:&v27 inRange:{v15, v7 - v15}];
      if (v16 && v28 + v27 <= v6)
      {
        v17 = [layoutManager glyphRangeForCharacterRange:? actualCharacterRange:?];
        [layoutManager boundingRectForGlyphRange:v17 inTextContainer:{v18, textContainer}];
        width = v19;
        height = v21;
        x = v12 + v23;
        y = v10 + v25;
        v29.origin.x = p_displayRect->origin.x;
        v29.origin.y = self->_displayRect.origin.y;
        v29.size.width = self->_displayRect.size.width;
        v29.size.height = self->_displayRect.size.height;
        if (!CGRectIsEmpty(v29))
        {
          v30.origin.x = p_displayRect->origin.x;
          v30.origin.y = self->_displayRect.origin.y;
          v30.size.width = self->_displayRect.size.width;
          v30.size.height = self->_displayRect.size.height;
          v32.origin.x = x;
          v32.origin.y = y;
          v32.size.width = width;
          v32.size.height = height;
          v31 = CGRectUnion(v30, v32);
          x = v31.origin.x;
          y = v31.origin.y;
          width = v31.size.width;
          height = v31.size.height;
        }

        p_displayRect->origin.x = x;
        self->_displayRect.origin.y = y;
        self->_displayRect.size.width = width;
        self->_displayRect.size.height = height;
      }

      v15 = v28 + v27;
    }

    while (v28 + v27 < v7);
  }
}

- (void)updateEmojiDisplay:(id)display
{
  v18 = *MEMORY[0x277D85DE8];
  layoutManager = [(EMKTextView *)self layoutManager];
  p_displayRect = &self->_displayRect;
  if (CGRectIsNull(self->_displayRect))
  {
    [(EMKTextView *)self calculateDisplayRect];
  }

  v19.origin.x = p_displayRect->origin.x;
  v19.origin.y = self->_displayRect.origin.y;
  v19.size.width = self->_displayRect.size.width;
  v19.size.height = self->_displayRect.size.height;
  if (!CGRectIsEmpty(v19))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    subviews = [(EMKTextView *)self subviews];
    v7 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(subviews);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          [v11 convertRect:self fromView:{p_displayRect->origin.x, self->_displayRect.origin.y, self->_displayRect.size.width, self->_displayRect.size.height}];
          [v11 setNeedsDisplayInRect:?];
        }

        v8 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  if (([layoutManager isEmojiAnimationActive] & 1) == 0)
  {
    [(NSTimer *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;
  }
}

- (void)_startTextKit1EmojiDisplayUpdateTimer:(id)timer
{
  v4 = *(MEMORY[0x277CBF398] + 16);
  self->_displayRect.origin = *MEMORY[0x277CBF398];
  self->_displayRect.size = v4;
  if (!self->_timer)
  {
    v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_updateEmojiDisplay_ selector:0 userInfo:1 repeats:0.0166666667];
    timer = self->_timer;
    self->_timer = v5;
  }

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop addTimer:self->_timer forMode:*MEMORY[0x277D77228]];

  [(EMKTextView *)self dismissOverlayView];
}

- (void)_stopTextKit1EmojiDisplayUpdateTimer:(id)timer
{
  v15 = *MEMORY[0x277D85DE8];
  [(EMKTextView *)self setNeedsDisplay];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  subviews = [(EMKTextView *)self subviews];
  v5 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v10 + 1) + 8 * v8++) setNeedsDisplay];
      }

      while (v6 != v8);
      v6 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(NSTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;

  [(EMKTextView *)self dismissOverlayView];
}

- (void)_emojifyingDisabled:(id)disabled
{
  [(EMKTextView *)self dismissOverlayView];

  [(EMKTextView *)self _stopTextKit1EmojiDisplayUpdateTimer:0];
}

- (void)setEmojiConversionLanguagesAndActivateConversion:(BOOL)conversion
{
  conversionCopy = conversion;
  v31 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D75688] = [MEMORY[0x277D75688] sharedInputModeController];
  currentInputMode = [mEMORY[0x277D75688] currentInputMode];

  primaryLanguage = [currentInputMode primaryLanguage];
  v8 = standardLanguage(primaryLanguage);

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (!v8 || ([v8 hasPrefix:@"emoji"] & 1) != 0)
  {
    self->_emojiConversionActive = !bundleIdentifier || ![bundleIdentifier isEqualToString:@"com.apple.MobileSMS.MessagesNotificationExtension"];
    if (!conversionCopy)
    {
      goto LABEL_27;
    }

LABEL_24:
    traitCollection = [(EMKTextView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    textKit2Controller = self->_textKit2Controller;
    if (textKit2Controller)
    {
      [(_EMKTextKit2Controller *)textKit2Controller setDarkModeEnabled:userInterfaceStyle == 2];
      [(_EMKTextKit2Controller *)self->_textKit2Controller setEmojiConversionActive:self->_emojiConversionActive];
    }

    else
    {
      layoutManager = [(EMKTextView *)self layoutManager];
      [layoutManager setDarkModeEnabled:userInterfaceStyle == 2];
      [layoutManager setEmojiConversionActive:self->_emojiConversionActive];
    }

    goto LABEL_27;
  }

  v24 = conversionCopy;
  v11 = [MEMORY[0x277CBEB18] arrayWithObject:v8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v25 = currentInputMode;
  multilingualLanguages = [currentInputMode multilingualLanguages];
  v13 = [multilingualLanguages countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(multilingualLanguages);
        }

        v17 = standardLanguage(*(*(&v26 + 1) + 8 * i));
        if ([v17 length] && (objc_msgSend(v17, "hasPrefix:", @"emoji") & 1) == 0 && (objc_msgSend(v11, "containsObject:", v17) & 1) == 0)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [multilingualLanguages countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  v18 = self->_textKit2Controller;
  if (v18)
  {
    [(_EMKTextKit2Controller *)v18 setEmojiConversionLanguages:v11];
  }

  else
  {
    layoutManager2 = [(EMKTextView *)self layoutManager];
    [layoutManager2 setEmojiConversionLanguages:v11];
  }

  self->_emojiConversionActive = 0;

  currentInputMode = v25;
  if (v24)
  {
    goto LABEL_24;
  }

LABEL_27:
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = EMKTextView;
  [(EMKTextView *)&v3 didMoveToWindow];
  [(EMKTextView *)self dismissOverlayView];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = EMKTextView;
  [(EMKTextView *)&v3 didMoveToSuperview];
  [(EMKTextView *)self dismissOverlayView];
}

- (void)deleteBackward
{
  v3.receiver = self;
  v3.super_class = EMKTextView;
  [(EMKTextView *)&v3 deleteBackward];
  [(EMKTextView *)self dismissOverlayView];
}

- (void)setupLayoutManagerWithFrame:(CGRect)frame
{
  width = frame.size.width;
  __commonInit(self);
  v5 = [[_EMKTextKit2Controller alloc] initWithTextView:self emojiPreferences:self->_emojiPreferences];
  textKit2Controller = self->_textKit2Controller;
  self->_textKit2Controller = v5;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__showEmojiSuggestionsForInputModeChange_ name:*MEMORY[0x277D77200] object:0];
  [defaultCenter addObserver:self selector:sel__keyboardDidShow_ name:*MEMORY[0x277D76BA8] object:0];
  textContainer = [(EMKTextView *)self textContainer];
  [textContainer setSize:{width, 1.79769313e308}];
  [textContainer setWidthTracksTextView:1];
  if (([(EMKTextView *)self isScrollEnabled]& 1) == 0)
  {
    [textContainer setHeightTracksTextView:1];
  }

  [(EMKTextView *)self setEmojiConversionLanguagesAndActivateConversion:1];
}

- (id)initUsingTextLayoutManagerWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = EMKTextView;
  v8 = [(EMKTextView *)&v11 initWithFrame:container textContainer:?];
  v9 = v8;
  if (v8)
  {
    [(EMKTextView *)v8 setupLayoutManagerWithFrame:x, y, width, height];
  }

  return v9;
}

- (id)initUsingTextLayoutManagerWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = EMKTextView;
  v7 = [(EMKTextView *)&v10 initWithFrame:0 textContainer:?];
  v8 = v7;
  if (v7)
  {
    [(EMKTextView *)v7 setupLayoutManagerWithFrame:x, y, width, height];
  }

  return v8;
}

- (EMKTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  containerCopy = container;
  layoutManager = [containerCopy layoutManager];
  textStorage = [layoutManager textStorage];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  if (containerCopy && layoutManager && textStorage && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = textStorage;
    v14 = containerCopy;
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277D742D8]);

    v14 = objc_alloc_init(MEMORY[0x277D74278]);
    [v14 setSize:{width, 1.79769313e308}];
    [v14 setWidthTracksTextView:1];
    if (([(EMKTextView *)self isScrollEnabled]& 1) == 0)
    {
      [v14 setHeightTracksTextView:1];
    }

    v15 = objc_alloc_init(EMKLayoutManager);

    [(EMKLayoutManager *)v15 setAllowsNonContiguousLayout:1];
    [(EMKLayoutManager *)v15 addTextContainer:v14];
    [v13 addLayoutManager:v15];
    layoutManager = v15;
  }

  v22.receiver = self;
  v22.super_class = EMKTextView;
  height = [(EMKTextView *)&v22 initWithFrame:v14 textContainer:x, y, width, height];
  v17 = height;
  if (height)
  {
    __commonInit(height);
    v17->_tappedGlyphIndex = 0x7FFFFFFFFFFFFFFFLL;
    v17->_tappedGlyphRange = xmmword_2155F5480;
    v18 = *(MEMORY[0x277CBF398] + 16);
    v17->_displayRect.origin = *MEMORY[0x277CBF398];
    v17->_displayRect.size = v18;
    v17->_emojiConversionActive = 0;
    layoutManager2 = [(EMKTextView *)v17 layoutManager];
    [defaultCenter addObserver:v17 selector:sel__startTextKit1EmojiDisplayUpdateTimer_ name:@"EMKStartTimerNotificationName" object:layoutManager2];

    layoutManager3 = [(EMKTextView *)v17 layoutManager];
    [defaultCenter addObserver:v17 selector:sel__stopTextKit1EmojiDisplayUpdateTimer_ name:@"EMKStopTimerNotificationName" object:layoutManager3];

    [defaultCenter addObserver:v17 selector:sel__emojifyingDisabled_ name:@"EMKEmojiConversionDisabledNotificationName" object:0];
    [defaultCenter addObserver:v17 selector:sel__showEmojiSuggestionsForInputModeChange_ name:*MEMORY[0x277D77200] object:0];
    [defaultCenter addObserver:v17 selector:sel__keyboardDidShow_ name:*MEMORY[0x277D76BA8] object:0];
    [(EMKTextView *)v17 setEmojiConversionLanguagesAndActivateConversion:1];
  }

  return v17;
}

- (void)replaceRange:(_NSRange)range withEmojiToken:(id)token language:(id)language
{
  length = range.length;
  location = range.location;
  tokenCopy = token;
  languageCopy = language;
  textStorage = [(EMKTextView *)self textStorage];
  string = [textStorage string];
  string2 = [tokenCopy string];
  layoutManager = [(EMKTextView *)self layoutManager];
  attributes = [layoutManager attributes];
  v11 = [string2 length];
  v12 = [EMKEmojiSignifier alloc];
  v13 = [textStorage attributedSubstringFromRange:{location, length}];
  string3 = [v13 string];
  v29 = [(EMKEmojiSignifier *)v12 initWithString:string3];

  beginningOfDocument = [(EMKTextView *)self beginningOfDocument];
  v16 = [(EMKTextView *)self positionFromPosition:beginningOfDocument offset:location];
  beginningOfDocument2 = [(EMKTextView *)self beginningOfDocument];
  v18 = [(EMKTextView *)self positionFromPosition:beginningOfDocument2 offset:location + length];
  v19 = [(EMKTextView *)self textRangeFromPosition:v16 toPosition:v18];

  inputDelegate = [(EMKTextView *)self inputDelegate];
  [inputDelegate textWillChange:self];

  [(EMKTextView *)self replaceRange:v19 withText:string2];
  inputDelegate2 = [(EMKTextView *)self inputDelegate];
  [inputDelegate2 textDidChange:self];

  v22 = [textStorage length];
  v23 = [attributes length];
  if (v11 + location <= v22 && v11 + location <= v23)
  {
    v24 = [string substringWithRange:{location, v11}];
    v25 = [v24 isEqualToString:string2];

    if (v25)
    {
      [attributes addAttribute:@"EMKEmojiSignifier" value:v29 range:{location, v11}];
      if (languageCopy)
      {
        [attributes addAttribute:@"EMKEmojiConversionLanguage" value:languageCopy range:{location, v11}];
      }
    }
  }

  [(EMFEmojiPreferences *)self->_emojiPreferences didUseEmoji:tokenCopy usageMode:*MEMORY[0x277D072E0]];
}

- (CGRect)anchorRect
{
  if (self->_tappedGlyphIndex == 0x7FFFFFFFFFFFFFFFLL || (p_tappedGlyphRange = &self->_tappedGlyphRange, self->_tappedGlyphRange.location == 0x7FFFFFFFFFFFFFFFLL) || !self->_tappedGlyphRange.length)
  {
    v15 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    [(EMKTextView *)self textContainerInset];
    v5 = v4;
    v7 = v6;
    layoutManager = [(EMKTextView *)self layoutManager];
    textContainer = [(EMKTextView *)self textContainer];
    [layoutManager boundingRectForGlyphRange:self->_tappedGlyphIndex inTextContainer:{1, textContainer}];
    v24 = 0;
    v25 = &v24;
    v26 = 0x4010000000;
    v27 = &unk_2155F6472;
    v28 = v10;
    v29 = v11;
    v30 = v12;
    v31 = v13;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __25__EMKTextView_anchorRect__block_invoke;
    v23[3] = &unk_2781C2488;
    v23[5] = v10;
    v23[6] = v11;
    v23[7] = v12;
    v23[8] = v13;
    v23[4] = &v24;
    [layoutManager enumerateEnclosingRectsForGlyphRange:p_tappedGlyphRange->location withinSelectedGlyphRange:p_tappedGlyphRange->length inTextContainer:0x7FFFFFFFFFFFFFFFLL usingBlock:{0, textContainer, v23}];
    v14 = v25;
    v15 = v7 + v25[4];
    v16 = v5 + v25[5];
    v25[4] = v15;
    v14[5] = v16;
    v17 = v14[6];
    v18 = v14[7];
    _Block_object_dispose(&v24, 8);
  }

  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

BOOL __25__EMKTextView_anchorRect__block_invoke(uint64_t a1, _BYTE *a2, double a3, double a4, double a5, double a6)
{
  result = CGRectIntersectsRect(*&a3, *(a1 + 40));
  if (result)
  {
    v13 = *(*(a1 + 32) + 8);
    v13[4] = a3;
    v13[5] = a4;
    v13[6] = a5;
    v13[7] = a6;
    *a2 = 1;
  }

  return result;
}

- (id)personalizedEmojiTokenListForList:(id)list
{
  v29 = *MEMORY[0x277D85DE8];
  listCopy = list;
  array = [MEMORY[0x277CBEB18] array];
  mEMORY[0x277D75670] = [MEMORY[0x277D75670] sharedInstance];
  if (!personalizedEmojiTokenListForList__fistEmoji)
  {
    v5 = [MEMORY[0x277D07318] emojiTokenWithString:@"✊" localeData:0];
    v6 = personalizedEmojiTokenListForList__fistEmoji;
    personalizedEmojiTokenListForList__fistEmoji = v5;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = listCopy;
  emojiTokenArray = [listCopy emojiTokenArray];
  v8 = [emojiTokenArray countByEnumeratingWithState:&v24 objects:v28 count:16];
  v9 = 0x27CA66000uLL;
  if (v8)
  {
    v10 = v8;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(emojiTokenArray);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if (![v13 skinTone] || (objc_msgSend(v13, "isEqualIgnoringModifiers:", *(v9 + 3992)) & 1) == 0)
        {
          v14 = [(EMFEmojiPreferences *)self->_emojiPreferences lastUsedVariantEmojiForEmoji:v13];

          if (v14 && ![v14 isEqual:v13])
          {
            v13 = v14;
          }

          else
          {
            string = [v13 string];
            v16 = [mEMORY[0x277D75670] lastUsedVariantEmojiForEmojiString:string];

            if (v16)
            {
              v17 = MEMORY[0x277D07318];
              localeData = [v13 localeData];
              v13 = [v17 emojiTokenWithString:v16 localeData:localeData];

              v14 = localeData;
              v9 = 0x27CA66000;
            }

            else
            {
              v13 = v13;
            }
          }
        }

        [array addObject:v13];
      }

      v10 = [emojiTokenArray countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v19 = [[EMKEmojiTokenList alloc] initWithEmojiTokenArray:array];

  return v19;
}

- (void)textTapGestureRecognized:(id)recognized
{
  v74[1] = *MEMORY[0x277D85DE8];
  recognizedCopy = recognized;
  textKit2Controller = self->_textKit2Controller;
  if (!textKit2Controller)
  {
    [recognizedCopy locationInView:self];
    v7 = v6;
    v9 = v8;
    [(EMKTextView *)self textContainerInset];
    v11 = v10;
    v13 = v12;
    textStorage = [(EMKTextView *)self textStorage];
    layoutManager = [(EMKTextView *)self layoutManager];
    attributes = [layoutManager attributes];
    string = [textStorage string];
    v16 = [textStorage length];
    v17 = [attributes length];
    textContainer = [(EMKTextView *)self textContainer];
    v19 = v7 - v13;
    v20 = v9 - v11;
    v21 = [layoutManager characterIndexForPoint:textContainer inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v19, v20}];
    v22 = [layoutManager glyphIndexForCharacterAtIndex:v21];
    [layoutManager boundingRectForGlyphRange:v22 inTextContainer:{1, textContainer}];
    if (!self->_emojiConversionActive)
    {
      goto LABEL_24;
    }

    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = v26;
    if (![layoutManager isEmojiConversionEnabled])
    {
      goto LABEL_24;
    }

    v76.origin.x = v27;
    v76.origin.y = v28;
    v76.size.width = v29;
    v76.size.height = v30;
    v75.x = v19;
    v75.y = v20;
    if (!CGRectContainsPoint(v76, v75) || v21 >= v16 || v21 >= v17 || ([MEMORY[0x277D75238] sharedCalloutBarIsVisible] & 1) != 0)
    {
      goto LABEL_24;
    }

    v63 = [attributes attribute:? atIndex:? effectiveRange:?];
    v60 = [attributes attribute:@"EMKEmojiConversionLanguage" atIndex:v21 effectiveRange:0];
    v61 = [attributes attribute:? atIndex:? effectiveRange:?];
    v73 = 0uLL;
    if ([v63 count])
    {
      v62 = [(EMKTextView *)self personalizedEmojiTokenListForList:v63];

      v31 = [v62 count];
      v32 = [attributes attribute:@"EMKEmojiTokenList" atIndex:v21 longestEffectiveRange:&v73 inRange:{0, v17}];
      if (*(&v73 + 1) + v73 > v16 || !v31)
      {
        goto LABEL_23;
      }

      if (v31 == 1)
      {
        v33 = [v62 emojiTokenAtIndex:0];
        [(EMKTextView *)self replaceRange:v73 withEmojiToken:v33 language:v60];
      }

      else
      {
        v44 = [string substringWithRange:?];
        self->_tappedGlyphIndex = v22;
        self->_tappedGlyphRange.location = [layoutManager glyphRangeForCharacterRange:v73 actualCharacterRange:0];
        self->_tappedGlyphRange.length = v45;
        objc_initWeak(&location, self);
        v46 = [EMKOverlayView alloc];
        [(EMKTextView *)self anchorRect];
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __40__EMKTextView_textTapGestureRecognized___block_invoke;
        v66[3] = &unk_2781C2368;
        objc_copyWeak(&v70, &location);
        v71 = v73;
        v67 = string;
        v33 = v44;
        v68 = v33;
        v69 = v60;
        v55 = [(EMKOverlayView *)v46 initWithView:self anchorRect:v62 emojiTokenList:v66 selectionHandler:v48, v50, v52, v54];
        overlayView = self->_overlayView;
        self->_overlayView = v55;

        objc_destroyWeak(&v70);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      if (!v61 || (v34 = [attributes attribute:@"EMKEmojiSignifier" atIndex:v21 longestEffectiveRange:&v73 inRange:{0, v17}], *(&v73 + 1) + v73 > v16))
      {
        v62 = v63;
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }

      beginningOfDocument = [(EMKTextView *)self beginningOfDocument];
      v36 = [(EMKTextView *)self positionFromPosition:beginningOfDocument offset:v73];
      beginningOfDocument2 = [(EMKTextView *)self beginningOfDocument];
      v38 = [(EMKTextView *)self positionFromPosition:beginningOfDocument2 offset:*(&v73 + 1) + v73];
      v33 = [(EMKTextView *)self textRangeFromPosition:v36 toPosition:v38];

      emojiConversionLanguages = [layoutManager emojiConversionLanguages];
      if (v60)
      {
        v74[0] = v60;
        v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:1];
        [layoutManager setEmojiConversionLanguages:v40];

        inputDelegate = [(EMKTextView *)self inputDelegate];
        [inputDelegate textWillChange:self];

        string2 = [v61 string];
        [(EMKTextView *)self replaceRange:v33 withText:string2];

        inputDelegate2 = [(EMKTextView *)self inputDelegate];
        [inputDelegate2 textDidChange:self];

        [layoutManager setEmojiConversionLanguages:emojiConversionLanguages];
      }

      else
      {
        inputDelegate3 = [(EMKTextView *)self inputDelegate];
        [inputDelegate3 textWillChange:self];

        string3 = [v61 string];
        [(EMKTextView *)self replaceRange:v33 withText:string3];

        inputDelegate4 = [(EMKTextView *)self inputDelegate];
        [inputDelegate4 textDidChange:self];
      }

      v62 = v63;
    }

    goto LABEL_23;
  }

  [(_EMKTextKit2Controller *)textKit2Controller textTapGestureRecognized:recognizedCopy];
LABEL_25:
}

void __40__EMKTextView_textTapGestureRecognized___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[362];
    WeakRetained[362] = 0;

    v4[363] = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v6 = *(a1 + 72) + *(a1 + 64);
    if (v6 <= [*(a1 + 32) length])
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 32) substringWithRange:{*(a1 + 64), *(a1 + 72)}];
      LODWORD(v7) = [v7 isEqualToString:v8];

      if (v7)
      {
        [v4 replaceRange:*(a1 + 64) withEmojiToken:*(a1 + 72) language:{v9, *(a1 + 48)}];
      }
    }
  }
}

- (void)updateOverlayView:(id)view
{
  overlayView = self->_overlayView;
  if (overlayView)
  {
    [(EMKTextView *)self anchorRect];

    [(EMKOverlayView *)overlayView setView:self anchorRect:?];
  }
}

- (BOOL)touchHasEmojiSignificance:(id)significance
{
  textKit2Controller = self->_textKit2Controller;
  if (textKit2Controller)
  {

    return [(_EMKTextKit2Controller *)textKit2Controller touchHasEmojiSignificance:significance];
  }

  else
  {
    [significance locationInView:self];
    v7 = v6;
    v9 = v8;
    [(EMKTextView *)self textContainerInset];
    v11 = v10;
    v13 = v12;
    textStorage = [(EMKTextView *)self textStorage];
    layoutManager = [(EMKTextView *)self layoutManager];
    attributes = [layoutManager attributes];
    v17 = [textStorage length];
    v18 = [attributes length];
    textContainer = [(EMKTextView *)self textContainer];
    v20 = v7 - v13;
    v21 = v9 - v11;
    v22 = [layoutManager characterIndexForPoint:textContainer inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v20, v21}];
    [layoutManager boundingRectForGlyphRange:objc_msgSend(layoutManager inTextContainer:{"glyphIndexForCharacterAtIndex:", v22), 1, textContainer}];
    if (self->_emojiConversionActive && (v27 = v23, v28 = v24, v29 = v25, v30 = v26, [layoutManager isEmojiConversionEnabled]))
    {
      v36.origin.x = v27;
      v36.origin.y = v28;
      v36.size.width = v29;
      v36.size.height = v30;
      v35.x = v20;
      v35.y = v21;
      v31 = 0;
      if (CGRectContainsPoint(v36, v35) && v22 < v17 && v22 < v18)
      {
        v32 = [attributes attribute:@"EMKEmojiTokenList" atIndex:v22 effectiveRange:0];
        v33 = [attributes attribute:@"EMKEmojiSignifier" atIndex:v22 effectiveRange:0];
        v31 = (v32 | v33) != 0;
      }
    }

    else
    {
      v31 = 0;
    }

    return v31;
  }
}

- (void)setPreFrames:(unint64_t)frames
{
  layoutManager = [(EMKTextView *)self layoutManager];
  [layoutManager setPreFrames:frames];
}

- (void)setPostFrames:(unint64_t)frames
{
  layoutManager = [(EMKTextView *)self layoutManager];
  [layoutManager setPostFrames:frames];
}

- (void)setDelayFrames:(unint64_t)frames
{
  layoutManager = [(EMKTextView *)self layoutManager];
  [layoutManager setDelayFrames:frames];
}

- (EMKTextViewEmojiAnimationDelegate)emojiAnimationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_emojiAnimationDelegate);

  return WeakRetained;
}

@end