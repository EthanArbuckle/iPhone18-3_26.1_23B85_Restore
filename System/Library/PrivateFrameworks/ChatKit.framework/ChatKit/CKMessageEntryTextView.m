@interface CKMessageEntryTextView
+ (BOOL)shouldUseModernMentionsAndEmojiAnimations;
+ (void)setNeedsDisplayCurrentRenderAttributesForView:(id)a3;
- (BOOL)_canSuggestSupplementalItemsForCurrentSelection;
- (BOOL)_shouldHandleTextFormattingChangeValue:(id)a3;
- (BOOL)allowsMentions;
- (BOOL)isSingleLine;
- (BOOL)resignFirstResponder;
- (BOOL)shouldIncludeDictationPadding;
- (BOOL)shouldUpdateMentionsInRange:(_NSRange *)a3 replacementText:(id)a4;
- (CGRect)caretRectForPosition:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKMessageEntryTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (CKMessageEntryTextViewMentionsDelegate)mentionsDelegate;
- (CKMessageEntryTextViewTextFormattingDelegate)textFormattingDelegate;
- (NSAttributedString)compositionText;
- (NSString)description;
- (NSString)placeholderText;
- (SEL)_sendCurrentLocationAction;
- (id)_supportedAnimationAccessibilityHintsForTextFormatting;
- (id)_supportedAnimationNamesForTextFormatting;
- (id)_supportedAnimationTitlesForTextFormatting;
- (id)initUsingTextLayoutManagerWithFrame:(CGRect)a3;
- (id)initUsingTextLayoutManagerWithFrame:(CGRect)a3 textContainer:(id)a4;
- (id)insertDictationResultPlaceholder;
- (void)_cancelChooseSupplementalItemToInsert;
- (void)_chooseSupplementalItemToInsert:(id)a3 replacementRange:(id)a4 completionHandler:(id)a5;
- (void)_insertSupplementalItem:(id)a3 forString:(id)a4 replacementRange:(id)a5;
- (void)_insertionPointEnteredRange:(id)a3 string:(id)a4 supplementalItems:(id)a5;
- (void)_insertionPointExitedRangeWithSupplementalItems;
- (void)_layoutPlaceholder;
- (void)_localeChanged;
- (void)_setAnimatingMentionsHidden:(BOOL)a3;
- (void)_setupTapOrLongPressGestureRecognizers;
- (void)_showTextFormattingAnimationOptions:(id)a3;
- (void)_stripEmojisIfNecessary;
- (void)_updateAttributedPlaceholder;
- (void)_updateTextContainerInsetUsingFont:(id)a3;
- (void)_updateTextEffectsPickerEditMenuAction;
- (void)_updatedAllowedTypingAttributesWithKeys:(id)a3;
- (void)acceptAutomaticMentionConfirmation;
- (void)checkForMentions;
- (void)dealloc;
- (void)didEndEditing:(id)a3;
- (void)didLongPressMentionForTextView:(id)a3 characterIndex:(unint64_t)a4 isLongPress:(BOOL)a5;
- (void)didTapMentionForTextView:(id)a3 atCharacterIndex:(double)a4;
- (void)handleHoverGesture:(id)a3;
- (void)handleTapOrLongPress:(id)a3;
- (void)hideTextEffectsPickerIfNeeded;
- (void)hideTextEffectsPickerIfNeededAndResetTypingAttributes;
- (void)insertMentionByName:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)layoutManagerDidFinishAnimatingMentionWithAnimationIdentifier:(id)a3;
- (void)layoutSubviews;
- (void)reloadMentionsData;
- (void)removeDictationResultPlaceholder:(id)a3 willInsertResult:(BOOL)a4;
- (void)replaceRange:(id)a3 withAttributedText:(id)a4;
- (void)restoreKeyboardInputMode;
- (void)saveKeyboardInputMode;
- (void)scribbleInteractionDidFinishWriting:(id)a3;
- (void)scribbleInteractionWillBeginWriting:(id)a3;
- (void)setAttributedText:(id)a3 checkForMentions:(BOOL)a4;
- (void)setCompositionText:(id)a3;
- (void)setExpressiveTextEnabled:(BOOL)a3;
- (void)setFont:(id)a3;
- (void)setFontType:(unint64_t)a3;
- (void)setInPencilMode:(BOOL)a3;
- (void)setMentionsDelegate:(id)a3;
- (void)setNeedsDisplayCurrentRenderAttributes;
- (void)setPlaceHolderWidth:(double)a3;
- (void)setPlaceholderColor:(id)a3;
- (void)setPlaceholderText:(id)a3;
- (void)setShouldStripEmojis:(BOOL)a3;
- (void)setupScribbleInteraction;
- (void)setupTextViewFromInitWithTextLayoutManagerWithFrame:(CGRect)a3;
- (void)textViewDidChange:(id)a3;
- (void)updateFontIfNeededAndGetWasUsingBigEmojiStyle:(int64_t *)a3;
- (void)updateMentionAssociationsForInputModeChange:(id)a3;
- (void)updateMentionsAssociations;
- (void)updateTextAttributesWithConversionHandler:(id)a3;
- (void)updateTextViewAndCheckForMentions:(BOOL)a3;
- (void)updateTintColor;
@end

@implementation CKMessageEntryTextView

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = CKMessageEntryTextView;
  v3 = [(CKMessageEntryTextView *)&v5 resignFirstResponder];
  if (v3)
  {
    [(CKMessageEntryTextView *)self setSavedKeyboardInputMode:0];
    [(CKMessageEntryTextView *)self setInPencilMode:0];
    [(CKMessageEntryTextView *)self setPencilWriting:0];
  }

  return v3;
}

- (void)_updateAttributedPlaceholder
{
  placeholderText = self->_placeholderText;
  if (!placeholderText)
  {
    placeholderText = &stru_1F04268F8;
  }

  v11 = placeholderText;
  placeholderColor = self->_placeholderColor;
  if (placeholderColor)
  {
    v5 = placeholderColor;
  }

  else
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 theme];
    v5 = [v7 entryFieldGrayColor];
  }

  v8 = objc_opt_new();
  [v8 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69DB650]];
  v9 = [MEMORY[0x1E69DB878] ck_fontWithMessageEntryTextViewFontType:0];
  if (v9)
  {
    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69DB648]];
  }

  v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11 attributes:v8];
  [(CKMessageEntryTextView *)self setAttributedPlaceholder:v10];

  [(CKMessageEntryTextView *)self setNeedsLayout];
}

- (void)_setupTapOrLongPressGestureRecognizers
{
  v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTapOrLongPress_];
  [v5 setAllowableMovement:10.0];
  [v5 setDelaysTouchesEnded:0];
  [v5 setDelegate:self];
  [(CKMessageEntryTextView *)self addGestureRecognizer:v5];
  [(CKMessageEntryTextView *)self setTapGestureRecognizer:v5];
  v3 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_handleTapOrLongPress_];
  [v3 setDelegate:self];
  [v3 setDelaysTouchesEnded:0];
  [v5 requireGestureRecognizerToFail:v3];
  [(CKMessageEntryTextView *)self addGestureRecognizer:v3];
  [(CKMessageEntryTextView *)self setLongPressGestureRecognizer:v3];
  v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleDoubleTap_];
  [v4 setDelaysTouchesEnded:0];
  [v4 setNumberOfTapsRequired:2];
  [v5 requireGestureRecognizerToFail:v4];
  [(CKMessageEntryTextView *)self setDoubleTapGestureRecognizer:v4];
  [(CKMessageEntryTextView *)self addGestureRecognizer:v4];
}

- (void)setupScribbleInteraction
{
  v4 = [objc_alloc(MEMORY[0x1E69DCEC8]) initWithDelegate:self];
  [(CKMessageEntryTextView *)self setScribbleInteraction:v4];
  [(CKMessageEntryTextView *)self addInteraction:v4];
  v3 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:self action:sel_handleHoverGesture_];
  [v3 setDelegate:self];
  [v3 setAllowedTouchTypes:&unk_1F04E7068];
  [(CKMessageEntryTextView *)self addGestureRecognizer:v3];
  -[CKMessageEntryTextView setInPencilMode:](self, "setInPencilMode:", [MEMORY[0x1E69DCEC8] isPencilInputExpected]);
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:0];
  [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setDelegate:0];
  v4.receiver = self;
  v4.super_class = CKMessageEntryTextView;
  [(EMKTextView *)&v4 dealloc];
}

- (SEL)_sendCurrentLocationAction
{
  if (self->_sendCurrentLocationFromKeyboardEnabled)
  {
    return sel_sendCurrentLocationMessage;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_canSuggestSupplementalItemsForCurrentSelection
{
  v2 = [(CKMessageEntryTextView *)self mentionsDelegate];
  v3 = [v2 canSuggestSupplementalItemsForCurrentSelection];

  return v3;
}

- (CKMessageEntryTextViewMentionsDelegate)mentionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mentionsDelegate);

  return WeakRetained;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = CKMessageEntryTextView;
  [(EMKTextView *)&v8 layoutSubviews];
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 isAccessibilityPreferredContentSizeCategory];

  if (v4)
  {
    v5 = [(CKMessageEntryTextView *)self _placeholderLabel];
    [v5 setAdjustsFontSizeToFitWidth:1];

    v6 = [(CKMessageEntryTextView *)self _placeholderLabel];
    [v6 setBaselineAdjustment:1];

    v7 = [(CKMessageEntryTextView *)self _placeholderLabel];
    [v7 setMinimumScaleFactor:0.01];
  }
}

- (void)_layoutPlaceholder
{
  v19.receiver = self;
  v19.super_class = CKMessageEntryTextView;
  [(CKMessageEntryTextView *)&v19 _layoutPlaceholder];
  if (CKIsRunningInMacCatalyst())
  {
    [(CKMessageEntryTextView *)self bounds];
    [(CKMessageEntryTextView *)self placeHolderWidth];
    v4 = v3;
    v5 = [(CKMessageEntryTextView *)self _placeholderLabel];
    [(CKMessageEntryTextView *)self bounds];
    [v5 sizeThatFits:{v6, v7}];
    v9 = v8;

    v10 = [(CKMessageEntryTextView *)self textContainer];
    [v10 lineFragmentPadding];
    v12 = v11;

    v13 = [(CKMessageEntryTextView *)self effectiveUserInterfaceLayoutDirection];
    [(CKMessageEntryTextView *)self textContainerInset];
    v15 = v14;
    if (v13 == 1)
    {
      v16 = +[CKUIBehavior sharedBehaviors];
      [v16 audioButtonSize];
      v4 = v4 - v17;

      v12 = -2.0 - v12;
    }

    v18 = [(CKMessageEntryTextView *)self _placeholderLabel];
    [v18 setFrame:{v12, v15, v4, v9}];
  }
}

- (void)didEndEditing:(id)a3
{
  if (CKIsRunningInMessagesNotificationExtension())
  {

    [(CKMessageEntryTextView *)self checkForMentions];
  }
}

- (void)_insertSupplementalItem:(id)a3 forString:(id)a4 replacementRange:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CKMessageEntryTextView *)self mentionsDelegate];
  [v11 insertSupplementalItem:v10 forString:v9 replacementRange:v8];
}

- (void)_insertionPointEnteredRange:(id)a3 string:(id)a4 supplementalItems:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CKMessageEntryTextView *)self mentionsDelegate];
  [v11 insertionPointEnteredRange:v10 string:v9 supplementalItems:v8];
}

- (void)_insertionPointExitedRangeWithSupplementalItems
{
  v2 = [(CKMessageEntryTextView *)self mentionsDelegate];
  [v2 insertionPointExitedRangeWithSupplementalItems];
}

- (void)_chooseSupplementalItemToInsert:(id)a3 replacementRange:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CKMessageEntryTextView *)self mentionsDelegate];
  [v11 chooseSupplementalItemToInsert:v10 replacementRange:v9 completionHandler:v8];
}

- (void)_cancelChooseSupplementalItemToInsert
{
  v2 = [(CKMessageEntryTextView *)self mentionsDelegate];
  [v2 cancelChooseSupplementalItemToInsert];
}

- (void)didTapMentionForTextView:(id)a3 atCharacterIndex:(double)a4
{
  v5 = [(CKMessageEntryTextView *)self mentionsDelegate];
  [v5 didTapMentionAtCharacterIndex:a4];
}

- (void)didLongPressMentionForTextView:(id)a3 characterIndex:(unint64_t)a4 isLongPress:(BOOL)a5
{
  v5 = a5;
  v7 = [(CKMessageEntryTextView *)self mentionsDelegate];
  [v7 didLongPressMentionAtCharacterIndex:a4 isLongPress:v5];
}

- (void)updateMentionAssociationsForInputModeChange:(id)a3
{
  v3 = [(CKMessageEntryTextView *)self mentionsDelegate];
  [v3 updateMentionsAssociations];
}

- (void)acceptAutomaticMentionConfirmation
{
  v2 = [(CKMessageEntryTextView *)self mentionsDelegate];
  [v2 acceptAutomaticMentionConfirmation];
}

- (void)updateMentionsAssociations
{
  v2 = [(CKMessageEntryTextView *)self mentionsDelegate];
  [v2 updateMentionsAssociations];
}

- (void)reloadMentionsData
{
  v2 = [(CKMessageEntryTextView *)self mentionsDelegate];
  [v2 reloadMentionsData];
}

- (void)checkForMentions
{
  if ([(CKMessageEntryTextView *)self allowsMentions])
  {
    v3 = [(CKMessageEntryTextView *)self mentionsDelegate];
    [v3 checkForMentions];
  }
}

- (void)insertMentionByName:(id)a3
{
  v4 = a3;
  v5 = [(CKMessageEntryTextView *)self mentionsDelegate];
  [v5 insertMentionByName:v4];
}

- (BOOL)shouldUpdateMentionsInRange:(_NSRange *)a3 replacementText:(id)a4
{
  v6 = a4;
  v7 = [(CKMessageEntryTextView *)self mentionsDelegate];
  [v7 setCurrentTappedCharacterIndex:0x7FFFFFFFFFFFFFFFLL];

  v8 = [(CKMessageEntryTextView *)self mentionsDelegate];
  LOBYTE(a3) = [v8 shouldUpdateMentionsInRange:a3->location withReplacementText:{a3->length, v6}];

  return a3;
}

- (BOOL)allowsMentions
{
  v2 = [(CKMessageEntryTextView *)self mentionsDelegate];
  v3 = [v2 allowsMentions];

  return v3;
}

- (void)_setAnimatingMentionsHidden:(BOOL)a3
{
  v6 = [(CKMessageEntryTextView *)self textLayoutManager];
  if (!v6)
  {
    [(CKMessageEntryTextView(CKMentionsController) *)a2 _setAnimatingMentionsHidden:?];
  }

  v7 = [(CKMessageEntryTextView *)self attributedText];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__CKMessageEntryTextView_CKMentionsController___setAnimatingMentionsHidden___block_invoke;
  v9[3] = &unk_1E72F3240;
  v12 = a3;
  v10 = v6;
  v11 = self;
  v8 = v6;
  [v7 ck_enumerateAllMentionAnimationIdentifiersUsingBlock:v9];

  [objc_opt_class() setNeedsDisplayCurrentRenderAttributesForView:self];
}

void __76__CKMessageEntryTextView_CKMentionsController___setAnimatingMentionsHidden___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) documentRange];
  v8 = *(a1 + 32);
  v18 = v7;
  v9 = [v7 location];
  v10 = [v8 locationFromLocation:v9 withOffset:a3];

  v11 = [*(a1 + 32) locationFromLocation:v10 withOffset:a4];
  v12 = [objc_alloc(MEMORY[0x1E69DB848]) initWithLocation:v10 endLocation:v11];
  v13 = *(a1 + 48);
  v14 = [*(a1 + 40) textLayoutManager];
  v15 = v14;
  v16 = *MEMORY[0x1E69DB650];
  if (v13 == 1)
  {
    v17 = [MEMORY[0x1E69DC888] clearColor];
    [v15 addRenderingAttribute:v16 value:v17 forTextRange:v12];
  }

  else
  {
    [v14 removeRenderingAttribute:*MEMORY[0x1E69DB650] forTextRange:v12];
  }
}

- (void)setNeedsDisplayCurrentRenderAttributes
{
  v3 = objc_opt_class();

  [v3 setNeedsDisplayCurrentRenderAttributesForView:self];
}

+ (void)setNeedsDisplayCurrentRenderAttributesForView:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
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

        [a1 setNeedsDisplayCurrentRenderAttributesForView:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(CKMessageEntryTextView *)self frame];
  v5 = NSStringFromCGRect(v16);
  v6 = [(CKMessageEntryTextView *)self text];
  v7 = [v6 length];
  [(CKMessageEntryTextView *)self contentSize];
  v8 = NSStringFromCGSize(v14);
  [(CKMessageEntryTextView *)self contentOffset];
  v9 = NSStringFromCGPoint(v15);
  [(CKMessageEntryTextView *)self adjustedContentInset];
  v10 = NSStringFromUIEdgeInsets(v17);
  v11 = [v3 stringWithFormat:@"<%@: %p> {frame: %@, text length: %lu, contentSize: %@, contentOffset: %@, adjustedContentInset: %@", v4, self, v5, v7, v8, v9, v10];

  return v11;
}

- (CKMessageEntryTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  v28.receiver = self;
  v28.super_class = CKMessageEntryTextView;
  v4 = [(EMKTextView *)&v28 initWithFrame:a4 textContainer:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel_textViewDidChange_ name:*MEMORY[0x1E69DE750] object:v4];
    [v5 addObserver:v4 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
    v6 = [(CKMessageEntryTextView *)v4 textContainer];
    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 balloonLineFragmentPadding];
    [v6 setLineFragmentPadding:?];

    v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(v7) = [v8 isEntryViewRefreshEnabled];

    if (v7)
    {
      [(CKMessageEntryTextView *)v4 updateTintColor];
      [(CKMessageEntryTextView *)v4 textContainerInset];
      v10 = v9;
      v12 = v11;
      v13 = +[CKUIBehavior sharedBehaviors];
      [v13 entryViewVerticalTextFieldInsets];
      v15 = v14;
      v17 = v16;

      [(CKMessageEntryTextView *)v4 setTextContainerInset:v15, v10, v17, v12];
    }

    else
    {
      v18 = +[CKUIBehavior sharedBehaviors];
      [v18 entryViewVerticalTextFieldInsets];
      [(CKMessageEntryTextView *)v4 setTextContainerInset:?];
    }

    [(CKMessageEntryTextView *)v4 setBackgroundColor:0];
    [(CKMessageEntryTextView *)v4 setOpaque:0];
    [(CKMessageEntryTextView *)v4 setScrollEnabled:0];
    v19 = +[CKUIBehavior sharedBehaviors];
    v20 = [v19 theme];
    v21 = [v20 entryFieldGrayColor];
    [(CKMessageEntryTextView *)v4 setPlaceholderColor:v21];

    v22 = [(CKMessageEntryTextView *)v4 _placeholderLabel];
    [v22 setNumberOfLines:1];

    [(CKMessageEntryTextView *)v4 setupScribbleInteraction];
    v4->_supportsBigEmojiTextStyles = 1;
    [(CKMessageEntryTextView *)v4 _setupTapOrLongPressGestureRecognizers];
    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    v24 = *MEMORY[0x1E69DE6B8];
    [v23 addObserver:v4 selector:sel__localeChanged name:*MEMORY[0x1E69DE6B8] object:0];

    v25 = [MEMORY[0x1E696AD88] defaultCenter];
    [v25 addObserver:v4 selector:sel_updateMentionAssociationsForInputModeChange_ name:v24 object:0];

    [(CKMessageEntryTextView *)v4 _localeChanged];
    v26 = [[CKEntryRichTextViewEffectsPickerAssistant alloc] initWithTextView:v4];
    [(CKMessageEntryTextView *)v4 setEffectsPickerAssistant:v26];

    [(CKMessageEntryTextView *)v4 _updatedAllowedTypingAttributesWithKeys:MEMORY[0x1E695E0F0]];
  }

  return v4;
}

- (void)setupTextViewFromInitWithTextLayoutManagerWithFrame:(CGRect)a3
{
  self->_fontType = 0;
  self->_supportsBigEmojiTextStyles = 1;
  self->_expressiveTextEnabled = 0;
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel_textViewDidChange_ name:*MEMORY[0x1E69DE750] object:self];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

  v6 = [(CKMessageEntryTextView *)self textContainer];
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 balloonLineFragmentPadding];
  [v6 setLineFragmentPadding:?];

  v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v7) = [v8 isEntryViewRefreshEnabled];

  if (v7)
  {
    [(CKMessageEntryTextView *)self updateTintColor];
    [(CKMessageEntryTextView *)self textContainerInset];
    v10 = v9;
    v12 = v11;
    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 entryViewVerticalTextFieldInsets];
    v15 = v14;
    v17 = v16;

    [(CKMessageEntryTextView *)self setTextContainerInset:v15, v10, v17, v12];
  }

  else
  {
    v18 = +[CKUIBehavior sharedBehaviors];
    [v18 entryViewVerticalTextFieldInsets];
    [(CKMessageEntryTextView *)self setTextContainerInset:?];
  }

  [(CKMessageEntryTextView *)self setBackgroundColor:0];
  [(CKMessageEntryTextView *)self setOpaque:0];
  [(CKMessageEntryTextView *)self setScrollEnabled:0];
  v19 = +[CKUIBehavior sharedBehaviors];
  v20 = [v19 theme];
  v21 = [v20 entryFieldGrayColor];
  [(CKMessageEntryTextView *)self setPlaceholderColor:v21];

  v22 = [(CKMessageEntryTextView *)self _placeholderLabel];
  [v22 setNumberOfLines:1];

  v23 = [MEMORY[0x1E696AD88] defaultCenter];
  [v23 addObserver:self selector:sel__localeChanged name:*MEMORY[0x1E69DE6B8] object:0];

  [(CKMessageEntryTextView *)self _setupTapOrLongPressGestureRecognizers];
  [(CKMessageEntryTextView *)self setupScribbleInteraction];
  v24 = [[CKEntryRichTextViewEffectsPickerAssistant alloc] initWithTextView:self];
  [(CKMessageEntryTextView *)self setEffectsPickerAssistant:v24];

  [(CKMessageEntryTextView *)self _updatedAllowedTypingAttributesWithKeys:MEMORY[0x1E695E0F0]];
  if (CKShouldUseModernRippleAnimation() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(EMKTextView *)self setUsingTextEffectBasedEmojiAnimations:1];
  }

  v25 = [(CKMessageEntryTextView *)self layer];
  [v25 setAllowsGroupBlending:0];
}

- (id)initUsingTextLayoutManagerWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = CKMessageEntryTextView;
  v8 = [(EMKTextView *)&v11 initUsingTextLayoutManagerWithFrame:a4 textContainer:?];
  v9 = v8;
  if (v8)
  {
    [v8 setupTextViewFromInitWithTextLayoutManagerWithFrame:{x, y, width, height}];
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
  v10.super_class = CKMessageEntryTextView;
  v7 = [(EMKTextView *)&v10 initUsingTextLayoutManagerWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [v7 setupTextViewFromInitWithTextLayoutManagerWithFrame:{x, y, width, height}];
  }

  return v8;
}

- (void)updateTintColor
{
  v5 = +[CKUIBehavior sharedBehaviors];
  v3 = [v5 theme];
  v4 = [v3 entryViewTextViewSelectionTintColor];
  [(CKMessageEntryTextView *)self setTintColor:v4];
}

- (void)_localeChanged
{
  v2 = [(CKMessageEntryTextView *)self mentionsDelegate];
  [v2 localeChanged];
}

- (void)_updatedAllowedTypingAttributesWithKeys:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69DB688];
  v22 = *MEMORY[0x1E69DB648];
  v23 = v4;
  v5 = *MEMORY[0x1E69DB600];
  v24 = *MEMORY[0x1E69DB650];
  v25 = v5;
  v6 = *MEMORY[0x1E69DB660];
  v26 = *MEMORY[0x1E69DB668];
  v27 = v6;
  v7 = *MEMORY[0x1E69DB758];
  v28 = *MEMORY[0x1E69DB6B8];
  v29 = v7;
  v8 = *MEMORY[0x1E69DB6C8];
  v30 = *MEMORY[0x1E69DB6C0];
  v31 = v8;
  v9 = *MEMORY[0x1E69DB6E0];
  v32 = *MEMORY[0x1E69DB6A8];
  v33 = v9;
  v10 = *MEMORY[0x1E69DB610];
  v34 = *MEMORY[0x1E69DB670];
  v35 = v10;
  v11 = *MEMORY[0x1E69DB6B0];
  v36 = *MEMORY[0x1E69DB750];
  v37 = v11;
  v12 = *MEMORY[0x1E69DB640];
  v38 = *MEMORY[0x1E69DB678];
  v39 = v12;
  v13 = *MEMORY[0x1E69DB760];
  v40 = *MEMORY[0x1E69DB778];
  v41 = v13;
  v14 = *MEMORY[0x1E69A70F8];
  v42 = *MEMORY[0x1E69A70C8];
  v43 = v14;
  v44 = *MEMORY[0x1E69A70D8];
  v15 = MEMORY[0x1E695DEC8];
  v16 = a3;
  v17 = [v15 arrayWithObjects:&v22 count:23];
  v18 = [v17 mutableCopy];

  [v18 addObjectsFromArray:v16];
  v19 = MEMORY[0x1E695DFD8];
  v20 = [v18 copy];
  v21 = [v19 setWithArray:v20];
  [(CKMessageEntryTextView *)self _setAllowedTypingAttributes:v21];
}

- (void)setMentionsDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_mentionsDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_mentionsDelegate, obj);
    [(CKMessageEntryTextView *)self _localeChanged];
    v5 = obj;
  }
}

- (CGRect)caretRectForPosition:(id)a3
{
  v4 = a3;
  if (self->_hideCaret || self->_hideCaretUntilUserTypes)
  {
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = CKMessageEntryTextView;
    [(CKMessageEntryTextView *)&v17 caretRectForPosition:v4];
    v5 = v9;
    v6 = v10;
    v7 = v11;
    v8 = v12;
  }

  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_updateTextContainerInsetUsingFont:(id)a3
{
  v4 = MEMORY[0x1E69A8070];
  v5 = a3;
  v6 = [v4 sharedFeatureFlags];
  v7 = [v6 isEntryViewRefreshEnabled];

  if (v7)
  {
    [(CKMessageEntryTextView *)self textContainerInset];
    v9 = v8;
    v11 = v10;
    v12 = +[CKUIBehavior sharedBehaviors];
    [v12 entryViewVerticalTextFieldInsets];
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v12 = +[CKUIBehavior sharedBehaviors];
    [v12 entryViewVerticalTextFieldInsets];
    v14 = v17;
    v9 = v18;
    v16 = v19;
    v11 = v20;
  }

  v21 = +[CKUIBehavior sharedBehaviors];
  [v21 entryViewCoverMinHeight];
  v23 = v22;

  [v5 lineHeight];
  v25 = v24;

  v26 = v16 + v14 + v25;
  if (v26 >= v23)
  {
    v27 = v16;
  }

  else
  {
    v27 = (v23 - v25) * 0.5;
  }

  if (v26 >= v23)
  {
    v28 = v14;
  }

  else
  {
    v28 = (v23 - v25) * 0.5;
  }

  [(CKMessageEntryTextView *)self setTextContainerInset:v28, v9, v27, v11];
}

- (void)setFontType:(unint64_t)a3
{
  if (self->_fontType != a3)
  {
    self->_fontType = a3;
    [(CKMessageEntryTextView *)self _updateAttributedPlaceholder];
    v4 = [MEMORY[0x1E69DB878] ck_fontWithMessageEntryTextViewFontType:self->_fontType];
    [(CKMessageEntryTextView *)self _updateTextContainerInsetUsingFont:v4];
  }
}

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = [(CKMessageEntryTextView *)self font];
  if ([v5 isEqual:v4])
  {
    v6 = [(CKMessageEntryTextView *)self _placeholderLabel];
    v7 = [v6 font];
    v8 = [v7 isEqual:v4];

    if (v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v12.receiver = self;
  v12.super_class = CKMessageEntryTextView;
  [(CKMessageEntryTextView *)&v12 setFont:v4];
  [(CKMessageEntryTextView *)self _updateAttributedPlaceholder];
  v9 = [(CKMessageEntryTextView *)self font];
  v10 = [v9 isEqual:v4];

  if ((v10 & 1) == 0)
  {
    [(CKMessageEntryTextView *)self setNeedsLayout];
  }

  v11 = [(CKMessageEntryTextView *)self font];
  [(CKMessageEntryTextView *)self _updateTextContainerInsetUsingFont:v11];

LABEL_8:
}

- (void)setAttributedText:(id)a3 checkForMentions:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CKMessageEntryTextView *)self attributedText];
  if (v6 | v7)
  {
    v8 = v7;
    v9 = [(CKMessageEntryTextView *)self attributedText];
    v10 = [v9 isEqualToAttributedString:v6];

    if ((v10 & 1) == 0)
    {
      v11 = [(CKMessageEntryTextView *)self mentionsDelegate];
      [v11 didSetAttributedTextOfTextView];

      v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v13 = [v12 isExpressiveTextEnabled];

      if (v13)
      {
        v14 = [v6 mutableCopy];
        if (self->_supportsBigEmojiTextStyles)
        {
          v15 = +[CKUIBehavior sharedBehaviors];
          v16 = [v15 entryViewSupportsSingleBigEmojiFont];
          v17 = [(CKMessageEntryTextView *)self mediaObjects];
          v18 = [v17 allValues];
          [v14 ck_adjustFontsForBigEmojisIfNeededWithSingleBigEmojiSupported:v16 mediaObjects:v18];
        }

        v21.receiver = self;
        v21.super_class = CKMessageEntryTextView;
        [(CKMessageEntryTextView *)&v21 setAttributedText:v14];
      }

      else
      {
        v20.receiver = self;
        v20.super_class = CKMessageEntryTextView;
        [(CKMessageEntryTextView *)&v20 setAttributedText:v6];
      }

      [(CKMessageEntryTextView *)self updateTextViewAndCheckForMentions:v4];
      v19 = [(CKMessageEntryTextView *)self delegate];
      [v19 textViewDidChange:self];
    }
  }
}

- (void)handleTapOrLongPress:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isExpressiveTextEnabled];

  if (v6)
  {
    [(CKMessageEntryTextView *)self hideTextEffectsPickerIfNeeded];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0 || [v4 state] == 3)
    {
      if ([(CKMessageEntryTextView *)self hideCaret])
      {
        [(CKMessageEntryTextView *)self setAllowCalloutActions:0];
        v8 = dispatch_time(0, 500000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __47__CKMessageEntryTextView_handleTapOrLongPress___block_invoke;
        block[3] = &unk_1E72EBA18;
        block[4] = self;
        dispatch_after(v8, MEMORY[0x1E69E96A0], block);
      }

      [v4 locationInView:self];
      v10 = v9;
      v12 = v11;
      [(CKMessageEntryTextView *)self textContainerInset];
      v14 = v10 - v13;
      [(CKMessageEntryTextView *)self textContainerInset];
      v16 = v12 - v15;
      v17 = [(CKMessageEntryTextView *)self textLayoutManager];
      v18 = [v17 documentRange];
      [v17 ensureLayoutForRange:v18];
      v19 = [v18 location];
      v20 = [v17 lineFragmentRangeForPoint:v19 inContainerAtLocation:{v14, v16}];

      if (v20)
      {
        v45 = 0;
        v46 = &v45;
        v47 = 0x3032000000;
        v48 = __Block_byref_object_copy__58;
        v49 = __Block_byref_object_dispose__58;
        v50 = 0;
        v39 = 0;
        v40 = &v39;
        v41 = 0x4010000000;
        v42 = &unk_190F92BB2;
        v21 = *(MEMORY[0x1E695F058] + 16);
        v43 = *MEMORY[0x1E695F058];
        v44 = v21;
        v22 = [v20 location];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __47__CKMessageEntryTextView_handleTapOrLongPress___block_invoke_278;
        v33[3] = &unk_1E72F65E8;
        v23 = v17;
        v37 = v14;
        v38 = v16;
        v34 = v23;
        v35 = &v45;
        v36 = &v39;
        [v23 enumerateSubstringsFromLocation:v22 options:2 usingBlock:v33];

        if (v46[5])
        {
          v24 = [v18 location];
          v25 = [v46[5] location];
          v26 = [v23 offsetFromLocation:v24 toLocation:v25];

          v27 = [(CKMessageEntryTextView *)self attributedText];
          v28 = [v27 attribute:@"CKFileTransferGUIDAttributeName" atIndex:v26 effectiveRange:0];

          if ([(CKMessageEntryTextView *)self handleTapOrLongPressOnMediaObjectForTransferGUID:v28 characterIndex:v26 location:v14 touchedCharacterFrame:v16, v40[4], v40[5], v40[6], v40[7]])
          {
            if (IMOSLoggingEnabled())
            {
              v29 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                *v32 = 0;
                _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "handleTapOrLongPress didProcessMediaObject", v32, 2u);
              }
            }
          }

          else
          {
            v30 = [(CKMessageEntryTextView *)self attributedText];
            v31 = [v30 attribute:*MEMORY[0x1E69A70C8] atIndex:v26 effectiveRange:0];

            if (v31)
            {
              [(CKMessageEntryTextView *)self didTapMentionForTextView:self atCharacterIndex:v26];
            }
          }

          if (+[CKMentionsUtilities supportsSupplementalLexiconMentions])
          {
            [(CKMessageEntryTextView *)self didLongPressMentionForTextView:self characterIndex:v26 isLongPress:isKindOfClass & 1];
          }
        }

        _Block_object_dispose(&v39, 8);
        _Block_object_dispose(&v45, 8);
      }
    }
  }
}

uint64_t __47__CKMessageEntryTextView_handleTapOrLongPress___block_invoke_278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, BOOL *a5)
{
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__CKMessageEntryTextView_handleTapOrLongPress___block_invoke_2;
  v10[3] = &unk_1E72F65C0;
  v8 = *(a1 + 56);
  v11 = *(a1 + 40);
  v12 = v8;
  result = [v7 enumerateTextSegmentsInRange:a3 type:0 options:0 usingBlock:v10];
  *a5 = *(*(*(a1 + 40) + 8) + 40) != 0;
  return result;
}

BOOL __47__CKMessageEntryTextView_handleTapOrLongPress___block_invoke_2(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = a2;
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  v13 = CGRectContainsPoint(v16, *(a1 + 48));
  if (v13)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v14 = *(*(a1 + 40) + 8);
    v14[4] = a3;
    v14[5] = a4;
    v14[6] = a5;
    v14[7] = a6;
  }

  return !v13;
}

- (void)replaceRange:(id)a3 withAttributedText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v9 = [v8 isExpressiveTextEnabled];

  if (v9)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v18 = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "User accepted a suggested effect.", v18, 2u);
      }
    }

    v11 = [(CKMessageEntryTextView *)self beginningOfDocument];
    v12 = [v6 start];
    v13 = [(CKMessageEntryTextView *)self offsetFromPosition:v11 toPosition:v12];

    v14 = [v6 start];
    v15 = [v6 end];
    v16 = [(CKMessageEntryTextView *)self offsetFromPosition:v14 toPosition:v15];

    v17 = [(CKMessageEntryTextView *)self textFormattingDelegate];
    [v17 messageEntryTextView:self replaceRange:v13 withAttributedText:{v16, v7}];
  }
}

+ (BOOL)shouldUseModernMentionsAndEmojiAnimations
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isModernMentionsAndEmojiAnimationsEnabled];

  return v3 && NSClassFromString(&cfstr_Emkrippleanima.isa) != 0;
}

- (id)insertDictationResultPlaceholder
{
  [(CKMessageEntryTextView *)self setShowingDictationPlaceholder:1];
  [(CKMessageEntryTextView *)self updateTextView];
  v5.receiver = self;
  v5.super_class = CKMessageEntryTextView;
  v3 = [(CKMessageEntryTextView *)&v5 insertDictationResultPlaceholder];

  return v3;
}

- (void)removeDictationResultPlaceholder:(id)a3 willInsertResult:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(CKMessageEntryTextView *)self setShowingDictationPlaceholder:0];
  v7.receiver = self;
  v7.super_class = CKMessageEntryTextView;
  [(CKMessageEntryTextView *)&v7 removeDictationResultPlaceholder:v6 willInsertResult:v4];

  [(CKMessageEntryTextView *)self updateTextView];
}

- (void)setCompositionText:(id)a3
{
  v4 = a3;
  v5 = [(CKMessageEntryTextView *)self undoManager];
  [v5 removeAllActions];

  v8 = [v4 mutableCopy];
  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v5) = [v6 isExpressiveTextEnabled];

  if (!v5 || ![(CKMessageEntryTextView *)self isExpressiveTextEnabled])
  {
    v7 = [(CKMessageEntryTextView *)self typingAttributes];
    [v8 addAttributes:v7 range:{0, objc_msgSend(v8, "length")}];
  }

  [(CKMessageEntryTextView *)self setAttributedText:v8];
}

- (NSAttributedString)compositionText
{
  v3 = [(CKMessageEntryTextView *)self attributedText];
  v4 = [v3 mutableCopy];
  v5 = [v4 length];
  [v4 setAttributes:0 range:{0, v5}];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __41__CKMessageEntryTextView_compositionText__block_invoke;
  v17[3] = &unk_1E72F1708;
  v6 = v4;
  v18 = v6;
  [v3 enumerateAttributesInRange:0 options:v5 usingBlock:{0, v17}];
  v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v8 = [v7 isExpressiveTextEnabled];

  if (v8)
  {
    [v6 ck_addAttribute:*MEMORY[0x1E69A7CF8] from:v3 range:{0, v5}];
    [v6 ck_addAttribute:*MEMORY[0x1E69A7CF0] from:v3 range:{0, v5}];
    [v6 ck_addAttribute:*MEMORY[0x1E69A7D00] from:v3 range:{0, v5}];
    [v6 ck_addAttribute:*MEMORY[0x1E69A7D18] from:v3 range:{0, v5}];
    [v6 ck_addAttribute:*MEMORY[0x1E69A7D08] from:v3 range:{0, v5}];
  }

  if ([(CKMessageEntryTextView *)self shouldPreserveAdaptiveImageGlyphsInCompositionText])
  {
    v9 = [MEMORY[0x1E69A5B80] sharedInstance];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __41__CKMessageEntryTextView_compositionText__block_invoke_2;
    aBlock[3] = &unk_1E72EBF70;
    v16 = v9;
    v10 = v9;
    v11 = _Block_copy(aBlock);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__CKMessageEntryTextView_compositionText__block_invoke_3;
    v13[3] = &unk_1E72F6610;
    v14 = v6;
    [v3 __im_enumerateAdaptiveImageGlyphFileTransfersUsingFileTransferProvider:v11 block:v13];
  }

  return v6;
}

void __41__CKMessageEntryTextView_compositionText__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E69A70F8];
  v8 = [a2 objectForKey:*MEMORY[0x1E69A70F8]];
  v9 = v8;
  if (v8)
  {
    v10 = *(a1 + 32);
    v12 = v7;
    v13[0] = v8;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [v10 setAttributes:v11 range:{a3, a4}];
  }
}

void __41__CKMessageEntryTextView_compositionText__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 guid];
  if (v7)
  {
    v8 = v7;
    [*(a1 + 32) addAttribute:*MEMORY[0x1E69A5F68] value:v7 range:{a3, a4}];
    v7 = v8;
  }
}

- (void)setPlaceholderText:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_placeholderText isEqualToString:?])
  {
    v4 = [v6 copy];
    placeholderText = self->_placeholderText;
    self->_placeholderText = v4;

    [(CKMessageEntryTextView *)self _updateAttributedPlaceholder];
  }
}

- (NSString)placeholderText
{
  v2 = [(NSString *)self->_placeholderText copy];

  return v2;
}

- (void)setPlaceHolderWidth:(double)a3
{
  if (!CKFloatApproximatelyEqualToFloatWithTolerance(self->_placeHolderWidth, a3, 0.00000999999975))
  {
    self->_placeHolderWidth = a3;

    [(CKMessageEntryTextView *)self setNeedsLayout];
  }
}

- (void)setPlaceholderColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_placeholderColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_placeholderColor, a3);
    [(CKMessageEntryTextView *)self _updateAttributedPlaceholder];
  }
}

- (BOOL)isSingleLine
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = [(CKMessageEntryTextView *)self textLayoutManager];
  v4 = [(CKMessageEntryTextView *)self textLayoutManager];
  v5 = [v4 documentRange];
  v6 = [v5 location];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__CKMessageEntryTextView_isSingleLine__block_invoke;
  v9[3] = &unk_1E72EC8C8;
  v9[4] = &v10;
  v7 = [v3 enumerateTextLayoutFragmentsFromLocation:v6 options:4 usingBlock:v9];

  LOBYTE(v3) = v11[3] == 1;
  _Block_object_dispose(&v10, 8);
  return v3;
}

BOOL __38__CKMessageEntryTextView_isSingleLine__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 textLineFragments];
  *(*(*(a1 + 32) + 8) + 24) += [v3 count];

  return *(*(*(a1 + 32) + 8) + 24) < 2uLL;
}

- (BOOL)shouldIncludeDictationPadding
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = [(CKMessageEntryTextView *)self textLayoutManager];
  v4 = [(CKMessageEntryTextView *)self textLayoutManager];
  v5 = [v4 documentRange];
  v6 = [v5 location];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__CKMessageEntryTextView_shouldIncludeDictationPadding__block_invoke;
  v9[3] = &unk_1E72EC8C8;
  v9[4] = &v10;
  v7 = [v3 enumerateTextLayoutFragmentsFromLocation:v6 options:12 usingBlock:v9];

  LOBYTE(v3) = v11[3] > 1;
  _Block_object_dispose(&v10, 8);
  return v3;
}

BOOL __55__CKMessageEntryTextView_shouldIncludeDictationPadding__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 textLineFragments];
  *(*(*(a1 + 32) + 8) + 24) += [v3 count];

  return *(*(*(a1 + 32) + 8) + 24) < 3uLL;
}

- (void)updateFontIfNeededAndGetWasUsingBigEmojiStyle:(int64_t *)a3
{
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 singleBigEmojiFont];
  v7 = [v5 singleBigAssetFont];
  v8 = [v5 multipleBigEmojiFont];
  [v5 balloonTextFont];
  v46 = v44 = a3;
  if (self->_supportsBigEmojiTextStyles)
  {
    v9 = [v5 entryViewSupportsSingleBigEmojiFont];
    v10 = [(CKMessageEntryTextView *)self attributedText];
    v11 = [(CKMessageEntryTextView *)self mediaObjects];
    v12 = [v11 allValues];
    v13 = [v10 __ck_bigEmojiStyleWithSingleBigEmojiSupported:v9 mediaObjects:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v15 = [v14 isExpressiveTextEnabled];

  if (!v15)
  {
    v29 = [(CKMessageEntryTextView *)self font];
    v30 = 0;
    if (v13 > 1)
    {
      v32 = v8;
      v31 = v44;
      if (v13 != 2)
      {
        v32 = v7;
        if (v13 != 3)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v31 = v44;
      if (v13)
      {
        v32 = v6;
        if (v13 != 1)
        {
LABEL_28:
          if (v31 && v29 != v30)
          {
            if ([v29 isEqual:v6])
            {
              v33 = 1;
            }

            else if ([v29 isEqual:v7])
            {
              v33 = 3;
            }

            else
            {
              v34 = [v29 isEqual:v8];
              v33 = 2;
              if (!v34)
              {
                v33 = 0;
              }
            }

            *v31 = v33;
          }

          v45 = v7;
          v35 = [(CKMessageEntryTextView *)self attributedText];
          v36 = [v35 length];

          if (v36)
          {
            v43 = v8;
            v53 = 0;
            v54 = &v53;
            v55 = 0x2020000000;
            v56 = 0;
            v37 = [(CKMessageEntryTextView *)self attributedText];
            v38 = [(CKMessageEntryTextView *)self attributedText];
            v39 = [v38 length];
            v40 = *MEMORY[0x1E69DB648];
            v47[0] = MEMORY[0x1E69E9820];
            v47[1] = 3221225472;
            v47[2] = __72__CKMessageEntryTextView_updateFontIfNeededAndGetWasUsingBigEmojiStyle___block_invoke;
            v47[3] = &unk_1E72F6638;
            v48 = v6;
            v49 = v43;
            v50 = v46;
            v52 = &v53;
            v41 = v30;
            v51 = v41;
            [v37 enumerateAttribute:v40 inRange:0 options:v39 usingBlock:{0, v47}];

            if (*(v54 + 24) == 1)
            {
              [(CKMessageEntryTextView *)self setFont:v41];
            }

            _Block_object_dispose(&v53, 8);
            v8 = v43;
          }

          else
          {
            [(CKMessageEntryTextView *)self setFont:v30];
          }

          v7 = v45;
          goto LABEL_46;
        }
      }

      else
      {
        v32 = v46;
      }
    }

    v30 = v32;
    goto LABEL_28;
  }

  v16 = [(CKMessageEntryTextView *)self fontType];
  if ((v13 - 1) >= 3)
  {
    v17 = 0;
  }

  else
  {
    v17 = v13;
  }

  [(CKMessageEntryTextView *)self setFontType:v17];
  v18 = [(CKMessageEntryTextView *)self attributedText];
  v19 = [v18 length];

  if (!v19)
  {
    v42 = [MEMORY[0x1E69DB878] ck_fontWithMessageEntryTextViewFontType:{-[CKMessageEntryTextView fontType](self, "fontType")}];
    [(CKMessageEntryTextView *)self setFont:v42];
    v20 = [(CKMessageEntryTextView *)self effectsPickerAssistant];
    [v20 removeTypingAttributesAdjustments];

    v21 = [(CKMessageEntryTextView *)self typingAttributes];
    v22 = [v21 mutableCopy];

    [v22 setObject:v42 forKeyedSubscript:*MEMORY[0x1E69DB648]];
    v23 = [v5 theme];
    [v23 entryFieldTextColor];
    v24 = v8;
    v25 = v6;
    v27 = v26 = v7;
    [v22 setObject:v27 forKeyedSubscript:*MEMORY[0x1E69DB650]];

    v7 = v26;
    v6 = v25;
    v8 = v24;

    [v22 removeObjectForKey:*MEMORY[0x1E69A7CF8]];
    [(CKMessageEntryTextView *)self setTypingAttributes:v22];
  }

  if (v44 && v16 != v17)
  {
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v28 = 2;
        goto LABEL_45;
      }

      if (v16 == 3)
      {
        v28 = 3;
        goto LABEL_45;
      }
    }

    else if (v16)
    {
      if (v16 == 1)
      {
        v28 = 1;
LABEL_45:
        *v44 = v28;
      }
    }

    else
    {
      *v44 = 0;
    }
  }

LABEL_46:
}

void __72__CKMessageEntryTextView_updateFontIfNeededAndGetWasUsingBigEmojiStyle___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  if (v7)
  {
    v10 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v10;
    if (isKindOfClass)
    {
      v9 = v10;
      if (([v9 isEqual:a1[4]] & 1) != 0 || (objc_msgSend(v9, "isEqual:", a1[5]) & 1) != 0 || objc_msgSend(v9, "isEqual:", a1[6]))
      {
        *(*(a1[8] + 8) + 24) = [v9 isEqual:a1[7]] ^ 1;
        *a5 = *(*(a1[8] + 8) + 24);
      }

      v7 = v10;
    }
  }
}

- (void)saveKeyboardInputMode
{
  v4 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v3 = [v4 currentInputMode];
  [(CKMessageEntryTextView *)self setSavedKeyboardInputMode:v3];
}

- (void)restoreKeyboardInputMode
{
  v3 = [(CKMessageEntryTextView *)self savedKeyboardInputMode];
  if (v3)
  {
    v5 = v3;
    v4 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
    [v4 setCurrentInputMode:v5];

    [(CKMessageEntryTextView *)self setSavedKeyboardInputMode:0];
    v3 = v5;
  }
}

- (void)setShouldStripEmojis:(BOOL)a3
{
  if (self->_shouldStripEmojis != a3)
  {
    self->_shouldStripEmojis = a3;
  }
}

- (void)setExpressiveTextEnabled:(BOOL)a3
{
  if (self->_expressiveTextEnabled != a3)
  {
    v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v6 = [v5 isExpressiveTextEnabled];

    if (v6)
    {
      self->_expressiveTextEnabled = a3;

      [(CKMessageEntryTextView *)self _updateTextEffectsPickerEditMenuAction];
    }

    else
    {
      self->_expressiveTextEnabled = 0;
    }
  }
}

- (void)_updateTextEffectsPickerEditMenuAction
{
  v18[6] = *MEMORY[0x1E69E9840];
  expressiveTextEnabled = self->_expressiveTextEnabled;
  if (!expressiveTextEnabled || ([MEMORY[0x1E69A8070] sharedFeatureFlags], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isSendingExpressiveTextEnabled"), v4, !v5))
  {
    [(CKMessageEntryTextView *)self _updatedAllowedTypingAttributesWithKeys:MEMORY[0x1E695E0F0]];
    goto LABEL_7;
  }

  v6 = *MEMORY[0x1E69A7CF8];
  v18[0] = *MEMORY[0x1E69DB6D8];
  v18[1] = v6;
  v7 = *MEMORY[0x1E69A7D00];
  v18[2] = *MEMORY[0x1E69A7CF0];
  v18[3] = v7;
  v8 = *MEMORY[0x1E69A7D08];
  v18[4] = *MEMORY[0x1E69A7D18];
  v18[5] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:6];
  [(CKMessageEntryTextView *)self _updatedAllowedTypingAttributesWithKeys:v9];

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v10 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"character.motion"];
  if ([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode])
  {
    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"TEXT_EFFECTS" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  else
  {
    v12 = &stru_1F04268F8;
  }

  objc_initWeak(&location, self);
  v14 = MEMORY[0x1E69DC628];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__CKMessageEntryTextView__updateTextEffectsPickerEditMenuAction__block_invoke;
  v15[3] = &unk_1E72EBCD8;
  objc_copyWeak(&v16, &location);
  v13 = [v14 actionWithTitle:v12 image:v10 identifier:0 handler:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

LABEL_8:
  [(CKMessageEntryTextView *)self setAllowsTextAnimations:expressiveTextEnabled];
  [(CKMessageEntryTextView *)self setShowTextEffectsPickerEditMenuAction:v13];
}

void __64__CKMessageEntryTextView__updateTextEffectsPickerEditMenuAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showTextFormattingAnimationOptions:0];
}

- (void)scribbleInteractionWillBeginWriting:(id)a3
{
  [(CKMessageEntryTextView *)self setPencilWriting:1];
  [(CKMessageEntryTextView *)self setInPencilMode:1];

  [(CKMessageEntryTextView *)self updateTextView];
}

- (void)scribbleInteractionDidFinishWriting:(id)a3
{
  [(CKMessageEntryTextView *)self setPencilWriting:0];
  [(CKMessageEntryTextView *)self setInPencilMode:1];

  [(CKMessageEntryTextView *)self updateTextView];
}

- (void)setInPencilMode:(BOOL)a3
{
  if (self->_inPencilMode != a3)
  {
    self->_inPencilMode = a3;
    v5 = [(CKMessageEntryTextView *)self delegate];
    [v5 messageEntryTextViewDidChangePencilMode:self];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v17.receiver = self;
  v17.super_class = CKMessageEntryTextView;
  [(CKMessageEntryTextView *)&v17 sizeThatFits:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  if ([(CKMessageEntryTextView *)self isInPencilMode])
  {
    [MEMORY[0x1E69DCEC8] _recommendedBlankSpaceHeight];
    v7 = v7 + v8;
  }

  else if ([MEMORY[0x1E69DC940] isRunning] && -[CKMessageEntryTextView shouldIncludeDictationPadding](self, "shouldIncludeDictationPadding"))
  {
    v9 = [(CKMessageEntryTextView *)self font];
    [v9 pointSize];
    v7 = v7 + v10 * 0.65;
  }

  v11 = [(CKMessageEntryTextView *)self traitCollection];
  [v11 displayScale];
  v13 = v12;

  if (v13 == 0.0)
  {
    if (CKMainScreenScale_once_86 != -1)
    {
      [CKMessageEntryTextView sizeThatFits:];
    }

    v14 = *&CKMainScreenScale_sMainScreenScale_86;
    if (*&CKMainScreenScale_sMainScreenScale_86 == 0.0)
    {
      v14 = 1.0;
    }

    v15 = ceil(v5 * v14) / v14;
    if (*&CKMainScreenScale_sMainScreenScale_86 == 0.0)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = *&CKMainScreenScale_sMainScreenScale_86;
    }
  }

  else
  {
    v15 = ceil(v5 * v13) / v13;
  }

  v16 = ceil(v7 * v13) / v13;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)handleHoverGesture:(id)a3
{
  if ([a3 state] == 1)
  {
    [(CKMessageEntryTextView *)self setInPencilMode:1];
    [(CKMessageEntryTextView *)self updateTextView];
    v4 = [(CKMessageEntryTextView *)self delegate];
    [v4 textViewDidChange:self];
  }
}

- (void)_stripEmojisIfNecessary
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 stewieEnabled];

  if (v4 && [(CKMessageEntryTextView *)self shouldStripEmojis])
  {
    v5 = [(CKMessageEntryTextView *)self attributedText];
    v12 = [v5 mutableCopy];

    v6 = MEMORY[0x193AF5ED0]("CEMCreateStringByStrippingEmojiCharacters", @"CoreEmoji");
    v7 = v6([v12 string]);
    v8 = [v12 string];
    v9 = [v7 isEqualToString:v8];

    if ((v9 & 1) == 0)
    {
      v10 = [v12 mutableString];
      [v10 setString:v7];

      v11 = [(CKMessageEntryTextView *)self textStorage];
      [v11 setAttributedString:v12];
    }
  }
}

- (void)updateTextViewAndCheckForMentions:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKMessageEntryTextView *)self textStorage];
  v6 = [v5 length] || -[CKMessageEntryTextView isShowingDictationPlaceholder](self, "isShowingDictationPlaceholder") || -[CKMessageEntryTextView isPencilWriting](self, "isPencilWriting");

  v7 = [(CKMessageEntryTextView *)self _placeholderLabel];
  [v7 setHidden:v6];

  [(CKMessageEntryTextView *)self _stripEmojisIfNecessary];
  v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v9 = [v8 isExpressiveTextEnabled];

  if (v9 && self->_supportsBigEmojiTextStyles)
  {
    v10 = [(CKMessageEntryTextView *)self textStorage];
    [v10 beginEditing];

    v11 = +[CKUIBehavior sharedBehaviors];
    v12 = [v11 entryViewSupportsSingleBigEmojiFont];
    v13 = [(CKMessageEntryTextView *)self textStorage];
    v14 = [(CKMessageEntryTextView *)self mediaObjects];
    v15 = [v14 allValues];
    [v13 ck_adjustFontsForBigEmojisIfNeededWithSingleBigEmojiSupported:v12 mediaObjects:v15];

    v16 = [(CKMessageEntryTextView *)self textStorage];
    [v16 endEditing];
  }

  if (v3)
  {

    [(CKMessageEntryTextView *)self checkForMentions];
  }
}

- (void)textViewDidChange:(id)a3
{
  [(CKMessageEntryTextView *)self updateTextViewAndCheckForMentions:0];

  [(CKMessageEntryTextView *)self setHideCaretUntilUserTypes:0];
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [(CKMessageEntryTextView *)self mentionsDelegate];
  [v4 reloadMentionsDataIfNecessary];

  v5 = [(CKMessageEntryTextView *)self showTextEffectsPickerEditMenuAction];

  if (v5)
  {
    if ([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode])
    {
      v8 = CKFrameworkBundle();
      v6 = [v8 localizedStringForKey:@"TEXT_EFFECTS" value:&stru_1F04268F8 table:@"ChatKit"];
      v7 = [(CKMessageEntryTextView *)self showTextEffectsPickerEditMenuAction];
      [v7 setTitle:v6];
    }

    else
    {
      v8 = [(CKMessageEntryTextView *)self showTextEffectsPickerEditMenuAction];
      [v8 setTitle:&stru_1F04268F8];
    }
  }

  else
  {

    [(CKMessageEntryTextView *)self _updateTextEffectsPickerEditMenuAction];
  }
}

- (void)layoutManagerDidFinishAnimatingMentionWithAnimationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CKMessageEntryTextView *)self mentionsDelegate];
  [v5 didFinishAnimatingMentionWithAnimationIdentifier:v4];
}

- (void)hideTextEffectsPickerIfNeeded
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isExpressiveTextEnabled];

  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      [(CKMessageEntryTextView *)self performSelector:sel__hideTextFormattingOptions_ withObject:self];
      if ([(CKMessageEntryTextView *)self applyDefaultTypingAttributesOnTextEffectPickerDismissal])
      {
        v5 = [(CKMessageEntryTextView *)self effectsPickerAssistant];
        [v5 removeTypingAttributesAdjustments];

        [(CKMessageEntryTextView *)self setApplyDefaultTypingAttributesOnTextEffectPickerDismissal:0];
      }
    }
  }
}

- (void)hideTextEffectsPickerIfNeededAndResetTypingAttributes
{
  [(CKMessageEntryTextView *)self hideTextEffectsPickerIfNeeded];
  v3 = [(CKMessageEntryTextView *)self effectsPickerAssistant];
  [v3 removeTypingAttributesAdjustments];
}

- (void)_showTextFormattingAnimationOptions:(id)a3
{
  v4 = a3;
  v5 = [(CKMessageEntryTextView *)self effectsPickerAssistant];
  [v5 selectSentenceAtCaretIfPossible];

  v6 = [(CKMessageEntryTextView *)self delegate];
  [v6 messageEntryTextViewTextFormattingAnimationsOptionsPresentationInProgress:1];

  v11.receiver = self;
  v11.super_class = CKMessageEntryTextView;
  [(CKMessageEntryTextView *)&v11 _showTextFormattingAnimationOptions:v4];

  objc_initWeak(&location, self);
  v7 = dispatch_time(0, 500000000);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__CKMessageEntryTextView__showTextFormattingAnimationOptions___block_invoke;
  v8[3] = &unk_1E72EC460;
  objc_copyWeak(&v9, &location);
  dispatch_after(v7, MEMORY[0x1E69E96A0], v8);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __62__CKMessageEntryTextView__showTextFormattingAnimationOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 messageEntryTextViewTextFormattingAnimationsOptionsPresentationInProgress:0];
}

- (BOOL)_shouldHandleTextFormattingChangeValue:(id)a3
{
  v4 = a3;
  v5 = [v4 changeType];
  [(CKMessageEntryTextView *)self setApplyDefaultTypingAttributesOnTextEffectPickerDismissal:0];
  v6 = [(CKMessageEntryTextView *)self typingAttributes];
  v7 = [v6 mutableCopy];

  [(CKMessageEntryTextView *)self selectedRange];
  v9 = v8;
  [(CKMessageEntryTextView *)self selectedRange];
  v11 = v10;
  v12 = [v5 isEqualToString:@"UITextFormattingViewControllerRemoveUnderlineChange"];
  v13 = [v5 isEqualToString:@"UITextFormattingViewControllerSetUnderlineChange"];
  v14 = v13;
  if ((v12 & 1) != 0 || v13)
  {
    if (v12)
    {
      [v7 removeObjectForKey:*MEMORY[0x1E69DB758]];
      [v7 removeObjectForKey:*MEMORY[0x1E69A7D18]];
    }

    if (v14)
    {
      [v7 setObject:&unk_1F04E8310 forKey:*MEMORY[0x1E69DB758]];
      [v7 setObject:&unk_1F04E8328 forKey:*MEMORY[0x1E69A7D18]];
      [v7 removeObjectForKey:*MEMORY[0x1E69DB6D8]];
      [v7 removeObjectForKey:*MEMORY[0x1E69A7CF8]];
    }

    v24 = v11 != 0;
    v25 = [(CKMessageEntryTextView *)self effectsPickerAssistant];
    [v25 setShouldSkipNextAdjustingOfTypingAttributes:v9 == 0];

    [(CKMessageEntryTextView *)self setTypingAttributes:v7];
    v26 = [MEMORY[0x1E69A8168] sharedInstance];
    [(CKMessageEntryTextView *)self selectedRange];
    [v26 trackDidSelectTextStyle:4 styleLength:v27];

    v28 = [(CKMessageEntryTextView *)self textFormattingDelegate];
    v30 = [(CKMessageEntryTextView *)self selectedRange];
    v31 = v28;
    v32 = self;
    v33 = 4;
    goto LABEL_36;
  }

  v14 = [v5 isEqualToString:@"UITextFormattingViewControllerSetStrikethroughChange"];
  v15 = [v5 isEqualToString:@"UITextFormattingViewControllerRemoveStrikethroughChange"];
  if ((v14 & 1) != 0 || v15)
  {
    if (v15)
    {
      [v7 removeObjectForKey:*MEMORY[0x1E69DB6B8]];
      [v7 removeObjectForKey:*MEMORY[0x1E69A7D08]];
    }

    if (v14)
    {
      [v7 setObject:&unk_1F04E8310 forKey:*MEMORY[0x1E69DB6B8]];
      [v7 setObject:&unk_1F04E8328 forKey:*MEMORY[0x1E69A7D08]];
      [v7 removeObjectForKey:*MEMORY[0x1E69DB6D8]];
      [v7 removeObjectForKey:*MEMORY[0x1E69A7CF8]];
    }

    v24 = v11 != 0;
    v34 = [(CKMessageEntryTextView *)self effectsPickerAssistant];
    [v34 setShouldSkipNextAdjustingOfTypingAttributes:v9 == 0];

    [(CKMessageEntryTextView *)self setTypingAttributes:v7];
    v35 = [MEMORY[0x1E69A8168] sharedInstance];
    [(CKMessageEntryTextView *)self selectedRange];
    [v35 trackDidSelectTextStyle:8 styleLength:v36];

    v28 = [(CKMessageEntryTextView *)self textFormattingDelegate];
    v30 = [(CKMessageEntryTextView *)self selectedRange];
    v31 = v28;
    v32 = self;
    v33 = 8;
    goto LABEL_36;
  }

  v14 = [v5 isEqualToString:@"UITextFormattingViewControllerSetBoldChange"];
  v16 = [v5 isEqualToString:@"UITextFormattingViewControllerRemoveBoldChange"];
  if ((v14 & 1) != 0 || v16)
  {
    if (v16)
    {
      [v7 ck_removeTypingAttributeFontTrait:2];
      [v7 removeObjectForKey:*MEMORY[0x1E69A7CF0]];
    }

    if (v14)
    {
      [v7 ck_addTypingAttributeFontTrait:2];
      [v7 setObject:&unk_1F04E8328 forKey:*MEMORY[0x1E69A7CF0]];
      [v7 removeObjectForKey:*MEMORY[0x1E69DB6D8]];
      [v7 removeObjectForKey:*MEMORY[0x1E69A7CF8]];
    }

    v24 = v11 != 0;
    v37 = [(CKMessageEntryTextView *)self effectsPickerAssistant];
    [v37 setShouldSkipNextAdjustingOfTypingAttributes:v9 == 0];

    [(CKMessageEntryTextView *)self setTypingAttributes:v7];
    v38 = [MEMORY[0x1E69A8168] sharedInstance];
    [(CKMessageEntryTextView *)self selectedRange];
    [v38 trackDidSelectTextStyle:1 styleLength:v39];

    v28 = [(CKMessageEntryTextView *)self textFormattingDelegate];
    v30 = [(CKMessageEntryTextView *)self selectedRange];
    v31 = v28;
    v32 = self;
    v33 = 1;
    goto LABEL_36;
  }

  v14 = [v5 isEqualToString:@"UITextFormattingViewControllerSetItalicChange"];
  v17 = [v5 isEqualToString:@"UITextFormattingViewControllerRemoveItalicChange"];
  if ((v14 & 1) != 0 || v17)
  {
    if (v17)
    {
      [v7 ck_removeTypingAttributeFontTrait:1];
      [v7 removeObjectForKey:*MEMORY[0x1E69A7D00]];
    }

    if (v14)
    {
      [v7 ck_addTypingAttributeFontTrait:1];
      [v7 setObject:&unk_1F04E8328 forKey:*MEMORY[0x1E69A7D00]];
      [v7 removeObjectForKey:*MEMORY[0x1E69DB6D8]];
      [v7 removeObjectForKey:*MEMORY[0x1E69A7CF8]];
    }

    v24 = v11 != 0;
    v40 = [(CKMessageEntryTextView *)self effectsPickerAssistant];
    [v40 setShouldSkipNextAdjustingOfTypingAttributes:v9 == 0];

    [(CKMessageEntryTextView *)self setTypingAttributes:v7];
    v41 = [MEMORY[0x1E69A8168] sharedInstance];
    [(CKMessageEntryTextView *)self selectedRange];
    [v41 trackDidSelectTextStyle:2 styleLength:v42];

    v28 = [(CKMessageEntryTextView *)self textFormattingDelegate];
    v30 = [(CKMessageEntryTextView *)self selectedRange];
    v31 = v28;
    v32 = self;
    v33 = 2;
LABEL_36:
    [v31 messageEntryTextView:v32 applyStyleChangeOfType:v33 add:v14 forRange:{v30, v29}];

    [(CKMessageEntryTextView *)self setApplyDefaultTypingAttributesOnTextEffectPickerDismissal:v24];
    v19 = 0;
    goto LABEL_37;
  }

  if ([v5 isEqualToString:@"UITextFormattingViewControllerCustomComponentSelectedChange"] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v18 = [v4 performSelector:sel__textAnimationName];
    v19 = v18 == 0;
    if (v18)
    {
      v20 = *MEMORY[0x1E69A7CF8];
      v21 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A7CF8]];

      v52 = v20;
      if (v21)
      {
        v22 = [v7 objectForKeyedSubscript:v20];
        v21 = [v22 unsignedIntegerValue];
      }

      v23 = IMTextEffectTypeFromName();
      if (v21 == v23)
      {
        [v7 removeObjectForKey:*MEMORY[0x1E69DB6D8]];
        [v7 removeObjectForKey:v52];
      }

      else
      {
        v51 = [MEMORY[0x1E69DD7C0] animationWithName:v18];
        [v7 setObject:v51 forKey:*MEMORY[0x1E69DB6D8]];
        v44 = [MEMORY[0x1E696AD98] numberWithInteger:v23];
        [v7 setObject:v44 forKey:v52];

        [v7 ck_removeTypingAttributeFontTrait:2];
        [v7 ck_removeTypingAttributeFontTrait:1];
        [v7 removeObjectForKey:*MEMORY[0x1E69DB758]];
        [v7 removeObjectForKey:*MEMORY[0x1E69DB6B8]];
        [v7 removeObjectForKey:*MEMORY[0x1E69A7CF0]];
        [v7 removeObjectForKey:*MEMORY[0x1E69A7D00]];
        [v7 removeObjectForKey:*MEMORY[0x1E69A7D18]];
        [v7 removeObjectForKey:*MEMORY[0x1E69A7D08]];
      }

      v45 = [(CKMessageEntryTextView *)self effectsPickerAssistant];
      [v45 setShouldSkipNextAdjustingOfTypingAttributes:v9 == 0];

      [(CKMessageEntryTextView *)self setTypingAttributes:v7];
      v46 = [MEMORY[0x1E69A8168] sharedInstance];
      [(CKMessageEntryTextView *)self selectedRange];
      [v46 trackDidSelectTextEffect:v23 effectLength:v47];

      v48 = [(CKMessageEntryTextView *)self textFormattingDelegate];
      v49 = [(CKMessageEntryTextView *)self selectedRange];
      [v48 messageEntryTextView:self didSetAnimationName:v18 forRange:{v49, v50}];

      [(CKMessageEntryTextView *)self setApplyDefaultTypingAttributesOnTextEffectPickerDismissal:v11 != 0];
    }
  }

  else
  {
    v19 = 1;
  }

LABEL_37:

  return v19;
}

- (id)_supportedAnimationNamesForTextFormatting
{
  v2 = IMTextEffectOrderedSupportedNames();
  v3 = [v2 count];
  if (v3 >= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 subarrayWithRange:{0, v4}];

  return v5;
}

- (id)_supportedAnimationTitlesForTextFormatting
{
  v2 = [(CKMessageEntryTextView *)self _supportedAnimationNamesForTextFormatting];
  if (v2)
  {
    v3 = objc_opt_new();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__CKMessageEntryTextView__supportedAnimationTitlesForTextFormatting__block_invoke;
    v6[3] = &unk_1E72F0A10;
    v4 = v3;
    v7 = v4;
    [v2 enumerateObjectsUsingBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __68__CKMessageEntryTextView__supportedAnimationTitlesForTextFormatting__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  IMTextEffectTypeFromName();
  v6 = IMTextEffectLocalizationKeyFromType();
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 __ck_localizedString:v6];

  [*(a1 + 32) setValue:v5 forKey:v3];
}

- (id)_supportedAnimationAccessibilityHintsForTextFormatting
{
  v2 = [(CKMessageEntryTextView *)self _supportedAnimationNamesForTextFormatting];
  if (v2)
  {
    v3 = objc_opt_new();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __80__CKMessageEntryTextView__supportedAnimationAccessibilityHintsForTextFormatting__block_invoke;
    v6[3] = &unk_1E72F0A10;
    v4 = v3;
    v7 = v4;
    [v2 enumerateObjectsUsingBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __80__CKMessageEntryTextView__supportedAnimationAccessibilityHintsForTextFormatting__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  IMTextEffectTypeFromName();
  v6 = IMTextEffectDiscoverabilityTitleLocalizationKeyFromType();
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 __ck_localizedString:v6];

  [*(a1 + 32) setValue:v5 forKey:v3];
}

- (void)updateTextAttributesWithConversionHandler:(id)a3
{
  v8.receiver = self;
  v8.super_class = CKMessageEntryTextView;
  v4 = a3;
  [(CKMessageEntryTextView *)&v8 updateTextAttributesWithConversionHandler:v4];
  v5 = [(CKMessageEntryTextView *)self textFormattingDelegate:v8.receiver];
  v6 = [(CKMessageEntryTextView *)self selectedRange];
  [v5 messageEntryTextView:self didUpdateForRange:v6 conversionHandler:{v7, v4}];

  if (objc_opt_respondsToSelector())
  {
    [(CKMessageEntryTextView *)self performSelector:sel__textFormattingOptionsNeedUpdate_ withObject:self];
  }
}

- (CKMessageEntryTextViewTextFormattingDelegate)textFormattingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_textFormattingDelegate);

  return WeakRetained;
}

@end