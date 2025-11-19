@interface EMKTextView
+ (void)__emk_setNeedsDisplayCurrentRenderAttributesForView:(id)a3;
- (BOOL)isEmojiConversionEnabled;
- (BOOL)touchHasEmojiSignificance:(id)a3;
- (CGRect)anchorRect;
- (EMKTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (EMKTextViewEmojiAnimationDelegate)emojiAnimationDelegate;
- (id)initUsingTextLayoutManagerWithFrame:(CGRect)a3;
- (id)initUsingTextLayoutManagerWithFrame:(CGRect)a3 textContainer:(id)a4;
- (id)personalizedEmojiTokenListForList:(id)a3;
- (void)__legacy_setTokenListsHighlighted_emk:(BOOL)a3 rippler:(id)a4;
- (void)__textEffects_setTokenListsHighlighted_emk:(BOOL)a3;
- (void)_emk_addRenderingAttribute:(id)a3 value:(id)a4 forTextRange:(id)a5;
- (void)_emk_removeRenderingAttribute:(id)a3 forTextRange:(id)a4;
- (void)_emk_setNeedsDisplayCurrentRenderAttributes;
- (void)_emojifyingDisabled:(id)a3;
- (void)_setTokenListsHidden_emk:(BOOL)a3;
- (void)_setTokenListsHighlighted_emk:(BOOL)a3 rippler:(id)a4;
- (void)_startTextKit1EmojiDisplayUpdateTimer:(id)a3;
- (void)_stopTextKit1EmojiDisplayUpdateTimer:(id)a3;
- (void)calculateDisplayRect;
- (void)dealloc;
- (void)deleteBackward;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)dismissOverlayView;
- (void)layoutSubviews;
- (void)replaceRange:(_NSRange)a3 withEmojiToken:(id)a4 language:(id)a5;
- (void)setDelayFrames:(unint64_t)a3;
- (void)setEmojiConversionEnabled:(BOOL)a3;
- (void)setEmojiConversionLanguagesAndActivateConversion:(BOOL)a3;
- (void)setPostFrames:(unint64_t)a3;
- (void)setPreFrames:(unint64_t)a3;
- (void)setUsingTextEffectBasedEmojiAnimations:(BOOL)a3;
- (void)setupLayoutManagerWithFrame:(CGRect)a3;
- (void)textTapGestureRecognized:(id)a3;
- (void)updateEmojiDisplay:(id)a3;
- (void)updateOverlayView:(id)a3;
@end

@implementation EMKTextView

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

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

- (void)_emk_removeRenderingAttribute:(id)a3 forTextRange:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EMKTextView *)self textLayoutManager];
  [v8 removeRenderingAttribute:v7 forTextRange:v6];
}

- (void)_emk_addRenderingAttribute:(id)a3 value:(id)a4 forTextRange:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(EMKTextView *)self textLayoutManager];
  [v11 addRenderingAttribute:v10 value:v9 forTextRange:v8];
}

+ (void)__emk_setNeedsDisplayCurrentRenderAttributesForView:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 setNeedsDisplay];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [v4 subviews];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [a1 __emk_setNeedsDisplayCurrentRenderAttributesForView:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_emk_setNeedsDisplayCurrentRenderAttributes
{
  v3 = objc_opt_class();

  [v3 __emk_setNeedsDisplayCurrentRenderAttributesForView:self];
}

- (void)_setTokenListsHidden_emk:(BOOL)a3
{
  if (![(EMKTextView *)self isUsingTextEffectBasedEmojiAnimations])
  {
    v5 = [(EMKTextView *)self textLayoutManager];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__EMKTextView_Helper___setTokenListsHidden_emk___block_invoke;
    v6[3] = &unk_2781C21B0;
    v7 = a3;
    v6[4] = self;
    [v5 _enumerateAllTokenListsUsingBlock_emk:v6];
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

- (void)_setTokenListsHighlighted_emk:(BOOL)a3 rippler:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(EMKTextView *)self isUsingTextEffectBasedEmojiAnimations])
  {
    [(EMKTextView *)self __textEffects_setTokenListsHighlighted_emk:v4];
  }

  else
  {
    [(EMKTextView *)self __legacy_setTokenListsHighlighted_emk:v4 rippler:v6];
  }
}

- (void)__legacy_setTokenListsHighlighted_emk:(BOOL)a3 rippler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(EMKTextView *)self textLayoutManager];
  v8 = v7;
  if (v4)
  {
    v9 = -[_EMKGlyphRenderingAttributes initWithValuesFromRippler:timeIndex:glyphIndex:numberOfGlyphs:]([_EMKGlyphRenderingAttributes alloc], "initWithValuesFromRippler:timeIndex:glyphIndex:numberOfGlyphs:", v6, [v6 currentTimeIndex], 0, 1);
    v10 = [(_EMKGlyphRenderingAttributes *)v9 color];
    v11 = [(EMKTextView *)self font];
    [v11 pointSize];
    v12 = [(_EMKGlyphRenderingAttributes *)v9 shadowIfNeededForFontPointSize:?];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__EMKTextView_Helper____legacy_setTokenListsHighlighted_emk_rippler___block_invoke;
    v16[3] = &unk_2781C21D8;
    v16[4] = self;
    v17 = v10;
    v18 = v12;
    v13 = v12;
    v14 = v10;
    [v8 _enumerateAllTokenListsUsingBlock_emk:v16];
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__EMKTextView_Helper____legacy_setTokenListsHighlighted_emk_rippler___block_invoke_2;
    v15[3] = &unk_2781C2200;
    v15[4] = self;
    [v7 _enumerateAllTokenListsUsingBlock_emk:v15];
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

- (void)__textEffects_setTokenListsHighlighted_emk:(BOOL)a3
{
  if (a3)
  {
    v3 = [(EMKTextView *)self textStorage];
    [v3 removeAttribute:*MEMORY[0x277D74178] range:{0, objc_msgSend(v3, "length")}];
  }
}

- (void)setUsingTextEffectBasedEmojiAnimations:(BOOL)a3
{
  self->_usingTextEffectBasedEmojiAnimations = a3;
  if (a3 && ([(EMKTextView *)self allowsTextAnimations]& 1) == 0)
  {

    [(EMKTextView *)self setAllowsTextAnimations:1];
  }
}

- (void)setEmojiConversionEnabled:(BOOL)a3
{
  v3 = a3;
  if (self->_textKit2Controller)
  {
    textKit2Controller = self->_textKit2Controller;

    [(_EMKTextKit2Controller *)textKit2Controller setEmojiConversionEnabled:?];
  }

  else
  {
    v5 = [(EMKTextView *)self layoutManager];
    [v5 setEmojiConversionEnabled:v3];
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
    v5 = [(EMKTextView *)self layoutManager];
    v6 = [v5 isEmojiConversionEnabled];

    return v6;
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
  v3 = [(EMKTextView *)self layoutManager];
  v4 = [v3 attributes];
  v5 = [(EMKTextView *)self textStorage];
  v6 = [v5 length];
  v7 = [v4 length];
  v8 = [(EMKTextView *)self textContainer];
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
      v16 = [v4 attribute:@"EMKEmojiTokenList" atIndex:v15 longestEffectiveRange:&v27 inRange:{v15, v7 - v15}];
      if (v16 && v28 + v27 <= v6)
      {
        v17 = [v3 glyphRangeForCharacterRange:? actualCharacterRange:?];
        [v3 boundingRectForGlyphRange:v17 inTextContainer:{v18, v8}];
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

- (void)updateEmojiDisplay:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [(EMKTextView *)self layoutManager];
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
    v6 = [(EMKTextView *)self subviews];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          [v11 convertRect:self fromView:{p_displayRect->origin.x, self->_displayRect.origin.y, self->_displayRect.size.width, self->_displayRect.size.height}];
          [v11 setNeedsDisplayInRect:?];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  if (([v4 isEmojiAnimationActive] & 1) == 0)
  {
    [(NSTimer *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;
  }
}

- (void)_startTextKit1EmojiDisplayUpdateTimer:(id)a3
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

  v7 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v7 addTimer:self->_timer forMode:*MEMORY[0x277D77228]];

  [(EMKTextView *)self dismissOverlayView];
}

- (void)_stopTextKit1EmojiDisplayUpdateTimer:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  [(EMKTextView *)self setNeedsDisplay];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(EMKTextView *)self subviews];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) setNeedsDisplay];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(NSTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;

  [(EMKTextView *)self dismissOverlayView];
}

- (void)_emojifyingDisabled:(id)a3
{
  [(EMKTextView *)self dismissOverlayView];

  [(EMKTextView *)self _stopTextKit1EmojiDisplayUpdateTimer:0];
}

- (void)setEmojiConversionLanguagesAndActivateConversion:(BOOL)a3
{
  v3 = a3;
  v31 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D75688] sharedInputModeController];
  v6 = [v5 currentInputMode];

  v7 = [v6 primaryLanguage];
  v8 = standardLanguage(v7);

  v9 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [v9 bundleIdentifier];

  if (!v8 || ([v8 hasPrefix:@"emoji"] & 1) != 0)
  {
    self->_emojiConversionActive = !v10 || ![v10 isEqualToString:@"com.apple.MobileSMS.MessagesNotificationExtension"];
    if (!v3)
    {
      goto LABEL_27;
    }

LABEL_24:
    v20 = [(EMKTextView *)self traitCollection];
    v21 = [v20 userInterfaceStyle];

    textKit2Controller = self->_textKit2Controller;
    if (textKit2Controller)
    {
      [(_EMKTextKit2Controller *)textKit2Controller setDarkModeEnabled:v21 == 2];
      [(_EMKTextKit2Controller *)self->_textKit2Controller setEmojiConversionActive:self->_emojiConversionActive];
    }

    else
    {
      v23 = [(EMKTextView *)self layoutManager];
      [v23 setDarkModeEnabled:v21 == 2];
      [v23 setEmojiConversionActive:self->_emojiConversionActive];
    }

    goto LABEL_27;
  }

  v24 = v3;
  v11 = [MEMORY[0x277CBEB18] arrayWithObject:v8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v25 = v6;
  v12 = [v6 multilingualLanguages];
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = standardLanguage(*(*(&v26 + 1) + 8 * i));
        if ([v17 length] && (objc_msgSend(v17, "hasPrefix:", @"emoji") & 1) == 0 && (objc_msgSend(v11, "containsObject:", v17) & 1) == 0)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
    v19 = [(EMKTextView *)self layoutManager];
    [v19 setEmojiConversionLanguages:v11];
  }

  self->_emojiConversionActive = 0;

  v6 = v25;
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

- (void)setupLayoutManagerWithFrame:(CGRect)a3
{
  width = a3.size.width;
  __commonInit(self);
  v5 = [[_EMKTextKit2Controller alloc] initWithTextView:self emojiPreferences:self->_emojiPreferences];
  textKit2Controller = self->_textKit2Controller;
  self->_textKit2Controller = v5;

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 addObserver:self selector:sel__showEmojiSuggestionsForInputModeChange_ name:*MEMORY[0x277D77200] object:0];
  [v8 addObserver:self selector:sel__keyboardDidShow_ name:*MEMORY[0x277D76BA8] object:0];
  v7 = [(EMKTextView *)self textContainer];
  [v7 setSize:{width, 1.79769313e308}];
  [v7 setWidthTracksTextView:1];
  if (([(EMKTextView *)self isScrollEnabled]& 1) == 0)
  {
    [v7 setHeightTracksTextView:1];
  }

  [(EMKTextView *)self setEmojiConversionLanguagesAndActivateConversion:1];
}

- (id)initUsingTextLayoutManagerWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = EMKTextView;
  v8 = [(EMKTextView *)&v11 initWithFrame:a4 textContainer:?];
  v9 = v8;
  if (v8)
  {
    [(EMKTextView *)v8 setupLayoutManagerWithFrame:x, y, width, height];
  }

  return v9;
}

- (id)initUsingTextLayoutManagerWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (EMKTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [v9 layoutManager];
  v11 = [v10 textStorage];
  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  if (v9 && v10 && v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = v11;
    v14 = v9;
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
    v10 = v15;
  }

  v22.receiver = self;
  v22.super_class = EMKTextView;
  v16 = [(EMKTextView *)&v22 initWithFrame:v14 textContainer:x, y, width, height];
  v17 = v16;
  if (v16)
  {
    __commonInit(v16);
    v17->_tappedGlyphIndex = 0x7FFFFFFFFFFFFFFFLL;
    v17->_tappedGlyphRange = xmmword_2155F5480;
    v18 = *(MEMORY[0x277CBF398] + 16);
    v17->_displayRect.origin = *MEMORY[0x277CBF398];
    v17->_displayRect.size = v18;
    v17->_emojiConversionActive = 0;
    v19 = [(EMKTextView *)v17 layoutManager];
    [v12 addObserver:v17 selector:sel__startTextKit1EmojiDisplayUpdateTimer_ name:@"EMKStartTimerNotificationName" object:v19];

    v20 = [(EMKTextView *)v17 layoutManager];
    [v12 addObserver:v17 selector:sel__stopTextKit1EmojiDisplayUpdateTimer_ name:@"EMKStopTimerNotificationName" object:v20];

    [v12 addObserver:v17 selector:sel__emojifyingDisabled_ name:@"EMKEmojiConversionDisabledNotificationName" object:0];
    [v12 addObserver:v17 selector:sel__showEmojiSuggestionsForInputModeChange_ name:*MEMORY[0x277D77200] object:0];
    [v12 addObserver:v17 selector:sel__keyboardDidShow_ name:*MEMORY[0x277D76BA8] object:0];
    [(EMKTextView *)v17 setEmojiConversionLanguagesAndActivateConversion:1];
  }

  return v17;
}

- (void)replaceRange:(_NSRange)a3 withEmojiToken:(id)a4 language:(id)a5
{
  length = a3.length;
  location = a3.location;
  v31 = a4;
  v30 = a5;
  v9 = [(EMKTextView *)self textStorage];
  v27 = [v9 string];
  v10 = [v31 string];
  v28 = [(EMKTextView *)self layoutManager];
  v26 = [v28 attributes];
  v11 = [v10 length];
  v12 = [EMKEmojiSignifier alloc];
  v13 = [v9 attributedSubstringFromRange:{location, length}];
  v14 = [v13 string];
  v29 = [(EMKEmojiSignifier *)v12 initWithString:v14];

  v15 = [(EMKTextView *)self beginningOfDocument];
  v16 = [(EMKTextView *)self positionFromPosition:v15 offset:location];
  v17 = [(EMKTextView *)self beginningOfDocument];
  v18 = [(EMKTextView *)self positionFromPosition:v17 offset:location + length];
  v19 = [(EMKTextView *)self textRangeFromPosition:v16 toPosition:v18];

  v20 = [(EMKTextView *)self inputDelegate];
  [v20 textWillChange:self];

  [(EMKTextView *)self replaceRange:v19 withText:v10];
  v21 = [(EMKTextView *)self inputDelegate];
  [v21 textDidChange:self];

  v22 = [v9 length];
  v23 = [v26 length];
  if (v11 + location <= v22 && v11 + location <= v23)
  {
    v24 = [v27 substringWithRange:{location, v11}];
    v25 = [v24 isEqualToString:v10];

    if (v25)
    {
      [v26 addAttribute:@"EMKEmojiSignifier" value:v29 range:{location, v11}];
      if (v30)
      {
        [v26 addAttribute:@"EMKEmojiConversionLanguage" value:v30 range:{location, v11}];
      }
    }
  }

  [(EMFEmojiPreferences *)self->_emojiPreferences didUseEmoji:v31 usageMode:*MEMORY[0x277D072E0]];
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
    v8 = [(EMKTextView *)self layoutManager];
    v9 = [(EMKTextView *)self textContainer];
    [v8 boundingRectForGlyphRange:self->_tappedGlyphIndex inTextContainer:{1, v9}];
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
    [v8 enumerateEnclosingRectsForGlyphRange:p_tappedGlyphRange->location withinSelectedGlyphRange:p_tappedGlyphRange->length inTextContainer:0x7FFFFFFFFFFFFFFFLL usingBlock:{0, v9, v23}];
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

- (id)personalizedEmojiTokenListForList:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v22 = [MEMORY[0x277D75670] sharedInstance];
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
  v21 = v3;
  v7 = [v3 emojiTokenArray];
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v7);
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
            v15 = [v13 string];
            v16 = [v22 lastUsedVariantEmojiForEmojiString:v15];

            if (v16)
            {
              v17 = MEMORY[0x277D07318];
              v18 = [v13 localeData];
              v13 = [v17 emojiTokenWithString:v16 localeData:v18];

              v14 = v18;
              v9 = 0x27CA66000;
            }

            else
            {
              v13 = v13;
            }
          }
        }

        [v4 addObject:v13];
      }

      v10 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v19 = [[EMKEmojiTokenList alloc] initWithEmojiTokenArray:v4];

  return v19;
}

- (void)textTapGestureRecognized:(id)a3
{
  v74[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  textKit2Controller = self->_textKit2Controller;
  if (!textKit2Controller)
  {
    [v4 locationInView:self];
    v7 = v6;
    v9 = v8;
    [(EMKTextView *)self textContainerInset];
    v11 = v10;
    v13 = v12;
    v14 = [(EMKTextView *)self textStorage];
    v15 = [(EMKTextView *)self layoutManager];
    v65 = [v15 attributes];
    v64 = [v14 string];
    v16 = [v14 length];
    v17 = [v65 length];
    v18 = [(EMKTextView *)self textContainer];
    v19 = v7 - v13;
    v20 = v9 - v11;
    v21 = [v15 characterIndexForPoint:v18 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v19, v20}];
    v22 = [v15 glyphIndexForCharacterAtIndex:v21];
    [v15 boundingRectForGlyphRange:v22 inTextContainer:{1, v18}];
    if (!self->_emojiConversionActive)
    {
      goto LABEL_24;
    }

    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = v26;
    if (![v15 isEmojiConversionEnabled])
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

    v63 = [v65 attribute:? atIndex:? effectiveRange:?];
    v60 = [v65 attribute:@"EMKEmojiConversionLanguage" atIndex:v21 effectiveRange:0];
    v61 = [v65 attribute:? atIndex:? effectiveRange:?];
    v73 = 0uLL;
    if ([v63 count])
    {
      v62 = [(EMKTextView *)self personalizedEmojiTokenListForList:v63];

      v31 = [v62 count];
      v32 = [v65 attribute:@"EMKEmojiTokenList" atIndex:v21 longestEffectiveRange:&v73 inRange:{0, v17}];
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
        v44 = [v64 substringWithRange:?];
        self->_tappedGlyphIndex = v22;
        self->_tappedGlyphRange.location = [v15 glyphRangeForCharacterRange:v73 actualCharacterRange:0];
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
        v67 = v64;
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
      if (!v61 || (v34 = [v65 attribute:@"EMKEmojiSignifier" atIndex:v21 longestEffectiveRange:&v73 inRange:{0, v17}], *(&v73 + 1) + v73 > v16))
      {
        v62 = v63;
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }

      v35 = [(EMKTextView *)self beginningOfDocument];
      v36 = [(EMKTextView *)self positionFromPosition:v35 offset:v73];
      v37 = [(EMKTextView *)self beginningOfDocument];
      v38 = [(EMKTextView *)self positionFromPosition:v37 offset:*(&v73 + 1) + v73];
      v33 = [(EMKTextView *)self textRangeFromPosition:v36 toPosition:v38];

      v39 = [v15 emojiConversionLanguages];
      if (v60)
      {
        v74[0] = v60;
        v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:1];
        [v15 setEmojiConversionLanguages:v40];

        v41 = [(EMKTextView *)self inputDelegate];
        [v41 textWillChange:self];

        v42 = [v61 string];
        [(EMKTextView *)self replaceRange:v33 withText:v42];

        v43 = [(EMKTextView *)self inputDelegate];
        [v43 textDidChange:self];

        [v15 setEmojiConversionLanguages:v39];
      }

      else
      {
        v57 = [(EMKTextView *)self inputDelegate];
        [v57 textWillChange:self];

        v58 = [v61 string];
        [(EMKTextView *)self replaceRange:v33 withText:v58];

        v59 = [(EMKTextView *)self inputDelegate];
        [v59 textDidChange:self];
      }

      v62 = v63;
    }

    goto LABEL_23;
  }

  [(_EMKTextKit2Controller *)textKit2Controller textTapGestureRecognized:v4];
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

- (void)updateOverlayView:(id)a3
{
  overlayView = self->_overlayView;
  if (overlayView)
  {
    [(EMKTextView *)self anchorRect];

    [(EMKOverlayView *)overlayView setView:self anchorRect:?];
  }
}

- (BOOL)touchHasEmojiSignificance:(id)a3
{
  textKit2Controller = self->_textKit2Controller;
  if (textKit2Controller)
  {

    return [(_EMKTextKit2Controller *)textKit2Controller touchHasEmojiSignificance:a3];
  }

  else
  {
    [a3 locationInView:self];
    v7 = v6;
    v9 = v8;
    [(EMKTextView *)self textContainerInset];
    v11 = v10;
    v13 = v12;
    v14 = [(EMKTextView *)self textStorage];
    v15 = [(EMKTextView *)self layoutManager];
    v16 = [v15 attributes];
    v17 = [v14 length];
    v18 = [v16 length];
    v19 = [(EMKTextView *)self textContainer];
    v20 = v7 - v13;
    v21 = v9 - v11;
    v22 = [v15 characterIndexForPoint:v19 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v20, v21}];
    [v15 boundingRectForGlyphRange:objc_msgSend(v15 inTextContainer:{"glyphIndexForCharacterAtIndex:", v22), 1, v19}];
    if (self->_emojiConversionActive && (v27 = v23, v28 = v24, v29 = v25, v30 = v26, [v15 isEmojiConversionEnabled]))
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
        v32 = [v16 attribute:@"EMKEmojiTokenList" atIndex:v22 effectiveRange:0];
        v33 = [v16 attribute:@"EMKEmojiSignifier" atIndex:v22 effectiveRange:0];
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

- (void)setPreFrames:(unint64_t)a3
{
  v4 = [(EMKTextView *)self layoutManager];
  [v4 setPreFrames:a3];
}

- (void)setPostFrames:(unint64_t)a3
{
  v4 = [(EMKTextView *)self layoutManager];
  [v4 setPostFrames:a3];
}

- (void)setDelayFrames:(unint64_t)a3
{
  v4 = [(EMKTextView *)self layoutManager];
  [v4 setDelayFrames:a3];
}

- (EMKTextViewEmojiAnimationDelegate)emojiAnimationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_emojiAnimationDelegate);

  return WeakRetained;
}

@end