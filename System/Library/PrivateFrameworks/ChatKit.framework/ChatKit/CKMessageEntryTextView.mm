@interface CKMessageEntryTextView
+ (BOOL)shouldUseModernMentionsAndEmojiAnimations;
+ (void)setNeedsDisplayCurrentRenderAttributesForView:(id)view;
- (BOOL)_canSuggestSupplementalItemsForCurrentSelection;
- (BOOL)_shouldHandleTextFormattingChangeValue:(id)value;
- (BOOL)allowsMentions;
- (BOOL)isSingleLine;
- (BOOL)resignFirstResponder;
- (BOOL)shouldIncludeDictationPadding;
- (BOOL)shouldUpdateMentionsInRange:(_NSRange *)range replacementText:(id)text;
- (CGRect)caretRectForPosition:(id)position;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKMessageEntryTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (CKMessageEntryTextViewMentionsDelegate)mentionsDelegate;
- (CKMessageEntryTextViewTextFormattingDelegate)textFormattingDelegate;
- (NSAttributedString)compositionText;
- (NSString)description;
- (NSString)placeholderText;
- (SEL)_sendCurrentLocationAction;
- (id)_supportedAnimationAccessibilityHintsForTextFormatting;
- (id)_supportedAnimationNamesForTextFormatting;
- (id)_supportedAnimationTitlesForTextFormatting;
- (id)initUsingTextLayoutManagerWithFrame:(CGRect)frame;
- (id)initUsingTextLayoutManagerWithFrame:(CGRect)frame textContainer:(id)container;
- (id)insertDictationResultPlaceholder;
- (void)_cancelChooseSupplementalItemToInsert;
- (void)_chooseSupplementalItemToInsert:(id)insert replacementRange:(id)range completionHandler:(id)handler;
- (void)_insertSupplementalItem:(id)item forString:(id)string replacementRange:(id)range;
- (void)_insertionPointEnteredRange:(id)range string:(id)string supplementalItems:(id)items;
- (void)_insertionPointExitedRangeWithSupplementalItems;
- (void)_layoutPlaceholder;
- (void)_localeChanged;
- (void)_setAnimatingMentionsHidden:(BOOL)hidden;
- (void)_setupTapOrLongPressGestureRecognizers;
- (void)_showTextFormattingAnimationOptions:(id)options;
- (void)_stripEmojisIfNecessary;
- (void)_updateAttributedPlaceholder;
- (void)_updateTextContainerInsetUsingFont:(id)font;
- (void)_updateTextEffectsPickerEditMenuAction;
- (void)_updatedAllowedTypingAttributesWithKeys:(id)keys;
- (void)acceptAutomaticMentionConfirmation;
- (void)checkForMentions;
- (void)dealloc;
- (void)didEndEditing:(id)editing;
- (void)didLongPressMentionForTextView:(id)view characterIndex:(unint64_t)index isLongPress:(BOOL)press;
- (void)didTapMentionForTextView:(id)view atCharacterIndex:(double)index;
- (void)handleHoverGesture:(id)gesture;
- (void)handleTapOrLongPress:(id)press;
- (void)hideTextEffectsPickerIfNeeded;
- (void)hideTextEffectsPickerIfNeededAndResetTypingAttributes;
- (void)insertMentionByName:(id)name;
- (void)keyboardWillShow:(id)show;
- (void)layoutManagerDidFinishAnimatingMentionWithAnimationIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)reloadMentionsData;
- (void)removeDictationResultPlaceholder:(id)placeholder willInsertResult:(BOOL)result;
- (void)replaceRange:(id)range withAttributedText:(id)text;
- (void)restoreKeyboardInputMode;
- (void)saveKeyboardInputMode;
- (void)scribbleInteractionDidFinishWriting:(id)writing;
- (void)scribbleInteractionWillBeginWriting:(id)writing;
- (void)setAttributedText:(id)text checkForMentions:(BOOL)mentions;
- (void)setCompositionText:(id)text;
- (void)setExpressiveTextEnabled:(BOOL)enabled;
- (void)setFont:(id)font;
- (void)setFontType:(unint64_t)type;
- (void)setInPencilMode:(BOOL)mode;
- (void)setMentionsDelegate:(id)delegate;
- (void)setNeedsDisplayCurrentRenderAttributes;
- (void)setPlaceHolderWidth:(double)width;
- (void)setPlaceholderColor:(id)color;
- (void)setPlaceholderText:(id)text;
- (void)setShouldStripEmojis:(BOOL)emojis;
- (void)setupScribbleInteraction;
- (void)setupTextViewFromInitWithTextLayoutManagerWithFrame:(CGRect)frame;
- (void)textViewDidChange:(id)change;
- (void)updateFontIfNeededAndGetWasUsingBigEmojiStyle:(int64_t *)style;
- (void)updateMentionAssociationsForInputModeChange:(id)change;
- (void)updateMentionsAssociations;
- (void)updateTextAttributesWithConversionHandler:(id)handler;
- (void)updateTextViewAndCheckForMentions:(BOOL)mentions;
- (void)updateTintColor;
@end

@implementation CKMessageEntryTextView

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = CKMessageEntryTextView;
  resignFirstResponder = [(CKMessageEntryTextView *)&v5 resignFirstResponder];
  if (resignFirstResponder)
  {
    [(CKMessageEntryTextView *)self setSavedKeyboardInputMode:0];
    [(CKMessageEntryTextView *)self setInPencilMode:0];
    [(CKMessageEntryTextView *)self setPencilWriting:0];
  }

  return resignFirstResponder;
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
    entryFieldGrayColor = placeholderColor;
  }

  else
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    theme = [v6 theme];
    entryFieldGrayColor = [theme entryFieldGrayColor];
  }

  v8 = objc_opt_new();
  [v8 setObject:entryFieldGrayColor forKeyedSubscript:*MEMORY[0x1E69DB650]];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

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
  mentionsDelegate = [(CKMessageEntryTextView *)self mentionsDelegate];
  canSuggestSupplementalItemsForCurrentSelection = [mentionsDelegate canSuggestSupplementalItemsForCurrentSelection];

  return canSuggestSupplementalItemsForCurrentSelection;
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
  isAccessibilityPreferredContentSizeCategory = [v3 isAccessibilityPreferredContentSizeCategory];

  if (isAccessibilityPreferredContentSizeCategory)
  {
    _placeholderLabel = [(CKMessageEntryTextView *)self _placeholderLabel];
    [_placeholderLabel setAdjustsFontSizeToFitWidth:1];

    _placeholderLabel2 = [(CKMessageEntryTextView *)self _placeholderLabel];
    [_placeholderLabel2 setBaselineAdjustment:1];

    _placeholderLabel3 = [(CKMessageEntryTextView *)self _placeholderLabel];
    [_placeholderLabel3 setMinimumScaleFactor:0.01];
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
    _placeholderLabel = [(CKMessageEntryTextView *)self _placeholderLabel];
    [(CKMessageEntryTextView *)self bounds];
    [_placeholderLabel sizeThatFits:{v6, v7}];
    v9 = v8;

    textContainer = [(CKMessageEntryTextView *)self textContainer];
    [textContainer lineFragmentPadding];
    v12 = v11;

    effectiveUserInterfaceLayoutDirection = [(CKMessageEntryTextView *)self effectiveUserInterfaceLayoutDirection];
    [(CKMessageEntryTextView *)self textContainerInset];
    v15 = v14;
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v16 = +[CKUIBehavior sharedBehaviors];
      [v16 audioButtonSize];
      v4 = v4 - v17;

      v12 = -2.0 - v12;
    }

    _placeholderLabel2 = [(CKMessageEntryTextView *)self _placeholderLabel];
    [_placeholderLabel2 setFrame:{v12, v15, v4, v9}];
  }
}

- (void)didEndEditing:(id)editing
{
  if (CKIsRunningInMessagesNotificationExtension())
  {

    [(CKMessageEntryTextView *)self checkForMentions];
  }
}

- (void)_insertSupplementalItem:(id)item forString:(id)string replacementRange:(id)range
{
  rangeCopy = range;
  stringCopy = string;
  itemCopy = item;
  mentionsDelegate = [(CKMessageEntryTextView *)self mentionsDelegate];
  [mentionsDelegate insertSupplementalItem:itemCopy forString:stringCopy replacementRange:rangeCopy];
}

- (void)_insertionPointEnteredRange:(id)range string:(id)string supplementalItems:(id)items
{
  itemsCopy = items;
  stringCopy = string;
  rangeCopy = range;
  mentionsDelegate = [(CKMessageEntryTextView *)self mentionsDelegate];
  [mentionsDelegate insertionPointEnteredRange:rangeCopy string:stringCopy supplementalItems:itemsCopy];
}

- (void)_insertionPointExitedRangeWithSupplementalItems
{
  mentionsDelegate = [(CKMessageEntryTextView *)self mentionsDelegate];
  [mentionsDelegate insertionPointExitedRangeWithSupplementalItems];
}

- (void)_chooseSupplementalItemToInsert:(id)insert replacementRange:(id)range completionHandler:(id)handler
{
  handlerCopy = handler;
  rangeCopy = range;
  insertCopy = insert;
  mentionsDelegate = [(CKMessageEntryTextView *)self mentionsDelegate];
  [mentionsDelegate chooseSupplementalItemToInsert:insertCopy replacementRange:rangeCopy completionHandler:handlerCopy];
}

- (void)_cancelChooseSupplementalItemToInsert
{
  mentionsDelegate = [(CKMessageEntryTextView *)self mentionsDelegate];
  [mentionsDelegate cancelChooseSupplementalItemToInsert];
}

- (void)didTapMentionForTextView:(id)view atCharacterIndex:(double)index
{
  mentionsDelegate = [(CKMessageEntryTextView *)self mentionsDelegate];
  [mentionsDelegate didTapMentionAtCharacterIndex:index];
}

- (void)didLongPressMentionForTextView:(id)view characterIndex:(unint64_t)index isLongPress:(BOOL)press
{
  pressCopy = press;
  mentionsDelegate = [(CKMessageEntryTextView *)self mentionsDelegate];
  [mentionsDelegate didLongPressMentionAtCharacterIndex:index isLongPress:pressCopy];
}

- (void)updateMentionAssociationsForInputModeChange:(id)change
{
  mentionsDelegate = [(CKMessageEntryTextView *)self mentionsDelegate];
  [mentionsDelegate updateMentionsAssociations];
}

- (void)acceptAutomaticMentionConfirmation
{
  mentionsDelegate = [(CKMessageEntryTextView *)self mentionsDelegate];
  [mentionsDelegate acceptAutomaticMentionConfirmation];
}

- (void)updateMentionsAssociations
{
  mentionsDelegate = [(CKMessageEntryTextView *)self mentionsDelegate];
  [mentionsDelegate updateMentionsAssociations];
}

- (void)reloadMentionsData
{
  mentionsDelegate = [(CKMessageEntryTextView *)self mentionsDelegate];
  [mentionsDelegate reloadMentionsData];
}

- (void)checkForMentions
{
  if ([(CKMessageEntryTextView *)self allowsMentions])
  {
    mentionsDelegate = [(CKMessageEntryTextView *)self mentionsDelegate];
    [mentionsDelegate checkForMentions];
  }
}

- (void)insertMentionByName:(id)name
{
  nameCopy = name;
  mentionsDelegate = [(CKMessageEntryTextView *)self mentionsDelegate];
  [mentionsDelegate insertMentionByName:nameCopy];
}

- (BOOL)shouldUpdateMentionsInRange:(_NSRange *)range replacementText:(id)text
{
  textCopy = text;
  mentionsDelegate = [(CKMessageEntryTextView *)self mentionsDelegate];
  [mentionsDelegate setCurrentTappedCharacterIndex:0x7FFFFFFFFFFFFFFFLL];

  mentionsDelegate2 = [(CKMessageEntryTextView *)self mentionsDelegate];
  LOBYTE(range) = [mentionsDelegate2 shouldUpdateMentionsInRange:range->location withReplacementText:{range->length, textCopy}];

  return range;
}

- (BOOL)allowsMentions
{
  mentionsDelegate = [(CKMessageEntryTextView *)self mentionsDelegate];
  allowsMentions = [mentionsDelegate allowsMentions];

  return allowsMentions;
}

- (void)_setAnimatingMentionsHidden:(BOOL)hidden
{
  textLayoutManager = [(CKMessageEntryTextView *)self textLayoutManager];
  if (!textLayoutManager)
  {
    [(CKMessageEntryTextView(CKMentionsController) *)a2 _setAnimatingMentionsHidden:?];
  }

  attributedText = [(CKMessageEntryTextView *)self attributedText];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__CKMessageEntryTextView_CKMentionsController___setAnimatingMentionsHidden___block_invoke;
  v9[3] = &unk_1E72F3240;
  hiddenCopy = hidden;
  v10 = textLayoutManager;
  selfCopy = self;
  v8 = textLayoutManager;
  [attributedText ck_enumerateAllMentionAnimationIdentifiersUsingBlock:v9];

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

+ (void)setNeedsDisplayCurrentRenderAttributesForView:(id)view
{
  v15 = *MEMORY[0x1E69E9840];
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

        [self setNeedsDisplayCurrentRenderAttributesForView:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  text = [(CKMessageEntryTextView *)self text];
  v7 = [text length];
  [(CKMessageEntryTextView *)self contentSize];
  v8 = NSStringFromCGSize(v14);
  [(CKMessageEntryTextView *)self contentOffset];
  v9 = NSStringFromCGPoint(v15);
  [(CKMessageEntryTextView *)self adjustedContentInset];
  v10 = NSStringFromUIEdgeInsets(v17);
  v11 = [v3 stringWithFormat:@"<%@: %p> {frame: %@, text length: %lu, contentSize: %@, contentOffset: %@, adjustedContentInset: %@", v4, self, v5, v7, v8, v9, v10];

  return v11;
}

- (CKMessageEntryTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  v28.receiver = self;
  v28.super_class = CKMessageEntryTextView;
  v4 = [(EMKTextView *)&v28 initWithFrame:container textContainer:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v4)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_textViewDidChange_ name:*MEMORY[0x1E69DE750] object:v4];
    [defaultCenter addObserver:v4 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
    textContainer = [(CKMessageEntryTextView *)v4 textContainer];
    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 balloonLineFragmentPadding];
    [textContainer setLineFragmentPadding:?];

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(v7) = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

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
    theme = [v19 theme];
    entryFieldGrayColor = [theme entryFieldGrayColor];
    [(CKMessageEntryTextView *)v4 setPlaceholderColor:entryFieldGrayColor];

    _placeholderLabel = [(CKMessageEntryTextView *)v4 _placeholderLabel];
    [_placeholderLabel setNumberOfLines:1];

    [(CKMessageEntryTextView *)v4 setupScribbleInteraction];
    v4->_supportsBigEmojiTextStyles = 1;
    [(CKMessageEntryTextView *)v4 _setupTapOrLongPressGestureRecognizers];
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v24 = *MEMORY[0x1E69DE6B8];
    [defaultCenter2 addObserver:v4 selector:sel__localeChanged name:*MEMORY[0x1E69DE6B8] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v4 selector:sel_updateMentionAssociationsForInputModeChange_ name:v24 object:0];

    [(CKMessageEntryTextView *)v4 _localeChanged];
    v26 = [[CKEntryRichTextViewEffectsPickerAssistant alloc] initWithTextView:v4];
    [(CKMessageEntryTextView *)v4 setEffectsPickerAssistant:v26];

    [(CKMessageEntryTextView *)v4 _updatedAllowedTypingAttributesWithKeys:MEMORY[0x1E695E0F0]];
  }

  return v4;
}

- (void)setupTextViewFromInitWithTextLayoutManagerWithFrame:(CGRect)frame
{
  self->_fontType = 0;
  self->_supportsBigEmojiTextStyles = 1;
  self->_expressiveTextEnabled = 0;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_textViewDidChange_ name:*MEMORY[0x1E69DE750] object:self];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

  textContainer = [(CKMessageEntryTextView *)self textContainer];
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 balloonLineFragmentPadding];
  [textContainer setLineFragmentPadding:?];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v7) = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

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
  theme = [v19 theme];
  entryFieldGrayColor = [theme entryFieldGrayColor];
  [(CKMessageEntryTextView *)self setPlaceholderColor:entryFieldGrayColor];

  _placeholderLabel = [(CKMessageEntryTextView *)self _placeholderLabel];
  [_placeholderLabel setNumberOfLines:1];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__localeChanged name:*MEMORY[0x1E69DE6B8] object:0];

  [(CKMessageEntryTextView *)self _setupTapOrLongPressGestureRecognizers];
  [(CKMessageEntryTextView *)self setupScribbleInteraction];
  v24 = [[CKEntryRichTextViewEffectsPickerAssistant alloc] initWithTextView:self];
  [(CKMessageEntryTextView *)self setEffectsPickerAssistant:v24];

  [(CKMessageEntryTextView *)self _updatedAllowedTypingAttributesWithKeys:MEMORY[0x1E695E0F0]];
  if (CKShouldUseModernRippleAnimation() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(EMKTextView *)self setUsingTextEffectBasedEmojiAnimations:1];
  }

  layer = [(CKMessageEntryTextView *)self layer];
  [layer setAllowsGroupBlending:0];
}

- (id)initUsingTextLayoutManagerWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = CKMessageEntryTextView;
  v8 = [(EMKTextView *)&v11 initUsingTextLayoutManagerWithFrame:container textContainer:?];
  v9 = v8;
  if (v8)
  {
    [v8 setupTextViewFromInitWithTextLayoutManagerWithFrame:{x, y, width, height}];
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
  theme = [v5 theme];
  entryViewTextViewSelectionTintColor = [theme entryViewTextViewSelectionTintColor];
  [(CKMessageEntryTextView *)self setTintColor:entryViewTextViewSelectionTintColor];
}

- (void)_localeChanged
{
  mentionsDelegate = [(CKMessageEntryTextView *)self mentionsDelegate];
  [mentionsDelegate localeChanged];
}

- (void)_updatedAllowedTypingAttributesWithKeys:(id)keys
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
  keysCopy = keys;
  v17 = [v15 arrayWithObjects:&v22 count:23];
  v18 = [v17 mutableCopy];

  [v18 addObjectsFromArray:keysCopy];
  v19 = MEMORY[0x1E695DFD8];
  v20 = [v18 copy];
  v21 = [v19 setWithArray:v20];
  [(CKMessageEntryTextView *)self _setAllowedTypingAttributes:v21];
}

- (void)setMentionsDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_mentionsDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_mentionsDelegate, obj);
    [(CKMessageEntryTextView *)self _localeChanged];
    v5 = obj;
  }
}

- (CGRect)caretRectForPosition:(id)position
{
  positionCopy = position;
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
    [(CKMessageEntryTextView *)&v17 caretRectForPosition:positionCopy];
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

- (void)_updateTextContainerInsetUsingFont:(id)font
{
  v4 = MEMORY[0x1E69A8070];
  fontCopy = font;
  sharedFeatureFlags = [v4 sharedFeatureFlags];
  isEntryViewRefreshEnabled = [sharedFeatureFlags isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
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

  [fontCopy lineHeight];
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

- (void)setFontType:(unint64_t)type
{
  if (self->_fontType != type)
  {
    self->_fontType = type;
    [(CKMessageEntryTextView *)self _updateAttributedPlaceholder];
    v4 = [MEMORY[0x1E69DB878] ck_fontWithMessageEntryTextViewFontType:self->_fontType];
    [(CKMessageEntryTextView *)self _updateTextContainerInsetUsingFont:v4];
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  font = [(CKMessageEntryTextView *)self font];
  if ([font isEqual:fontCopy])
  {
    _placeholderLabel = [(CKMessageEntryTextView *)self _placeholderLabel];
    font2 = [_placeholderLabel font];
    v8 = [font2 isEqual:fontCopy];

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
  [(CKMessageEntryTextView *)&v12 setFont:fontCopy];
  [(CKMessageEntryTextView *)self _updateAttributedPlaceholder];
  font3 = [(CKMessageEntryTextView *)self font];
  v10 = [font3 isEqual:fontCopy];

  if ((v10 & 1) == 0)
  {
    [(CKMessageEntryTextView *)self setNeedsLayout];
  }

  font4 = [(CKMessageEntryTextView *)self font];
  [(CKMessageEntryTextView *)self _updateTextContainerInsetUsingFont:font4];

LABEL_8:
}

- (void)setAttributedText:(id)text checkForMentions:(BOOL)mentions
{
  mentionsCopy = mentions;
  textCopy = text;
  attributedText = [(CKMessageEntryTextView *)self attributedText];
  if (textCopy | attributedText)
  {
    v8 = attributedText;
    attributedText2 = [(CKMessageEntryTextView *)self attributedText];
    v10 = [attributedText2 isEqualToAttributedString:textCopy];

    if ((v10 & 1) == 0)
    {
      mentionsDelegate = [(CKMessageEntryTextView *)self mentionsDelegate];
      [mentionsDelegate didSetAttributedTextOfTextView];

      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

      if (isExpressiveTextEnabled)
      {
        v14 = [textCopy mutableCopy];
        if (self->_supportsBigEmojiTextStyles)
        {
          v15 = +[CKUIBehavior sharedBehaviors];
          entryViewSupportsSingleBigEmojiFont = [v15 entryViewSupportsSingleBigEmojiFont];
          mediaObjects = [(CKMessageEntryTextView *)self mediaObjects];
          allValues = [mediaObjects allValues];
          [v14 ck_adjustFontsForBigEmojisIfNeededWithSingleBigEmojiSupported:entryViewSupportsSingleBigEmojiFont mediaObjects:allValues];
        }

        v21.receiver = self;
        v21.super_class = CKMessageEntryTextView;
        [(CKMessageEntryTextView *)&v21 setAttributedText:v14];
      }

      else
      {
        v20.receiver = self;
        v20.super_class = CKMessageEntryTextView;
        [(CKMessageEntryTextView *)&v20 setAttributedText:textCopy];
      }

      [(CKMessageEntryTextView *)self updateTextViewAndCheckForMentions:mentionsCopy];
      delegate = [(CKMessageEntryTextView *)self delegate];
      [delegate textViewDidChange:self];
    }
  }
}

- (void)handleTapOrLongPress:(id)press
{
  pressCopy = press;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    [(CKMessageEntryTextView *)self hideTextEffectsPickerIfNeeded];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0 || [pressCopy state] == 3)
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

      [pressCopy locationInView:self];
      v10 = v9;
      v12 = v11;
      [(CKMessageEntryTextView *)self textContainerInset];
      v14 = v10 - v13;
      [(CKMessageEntryTextView *)self textContainerInset];
      v16 = v12 - v15;
      textLayoutManager = [(CKMessageEntryTextView *)self textLayoutManager];
      documentRange = [textLayoutManager documentRange];
      [textLayoutManager ensureLayoutForRange:documentRange];
      location = [documentRange location];
      v20 = [textLayoutManager lineFragmentRangeForPoint:location inContainerAtLocation:{v14, v16}];

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
        location2 = [v20 location];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __47__CKMessageEntryTextView_handleTapOrLongPress___block_invoke_278;
        v33[3] = &unk_1E72F65E8;
        v23 = textLayoutManager;
        v37 = v14;
        v38 = v16;
        v34 = v23;
        v35 = &v45;
        v36 = &v39;
        [v23 enumerateSubstringsFromLocation:location2 options:2 usingBlock:v33];

        if (v46[5])
        {
          location3 = [documentRange location];
          location4 = [v46[5] location];
          v26 = [v23 offsetFromLocation:location3 toLocation:location4];

          attributedText = [(CKMessageEntryTextView *)self attributedText];
          v28 = [attributedText attribute:@"CKFileTransferGUIDAttributeName" atIndex:v26 effectiveRange:0];

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
            attributedText2 = [(CKMessageEntryTextView *)self attributedText];
            v31 = [attributedText2 attribute:*MEMORY[0x1E69A70C8] atIndex:v26 effectiveRange:0];

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

- (void)replaceRange:(id)range withAttributedText:(id)text
{
  rangeCopy = range;
  textCopy = text;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
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

    beginningOfDocument = [(CKMessageEntryTextView *)self beginningOfDocument];
    start = [rangeCopy start];
    v13 = [(CKMessageEntryTextView *)self offsetFromPosition:beginningOfDocument toPosition:start];

    start2 = [rangeCopy start];
    v15 = [rangeCopy end];
    v16 = [(CKMessageEntryTextView *)self offsetFromPosition:start2 toPosition:v15];

    textFormattingDelegate = [(CKMessageEntryTextView *)self textFormattingDelegate];
    [textFormattingDelegate messageEntryTextView:self replaceRange:v13 withAttributedText:{v16, textCopy}];
  }
}

+ (BOOL)shouldUseModernMentionsAndEmojiAnimations
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernMentionsAndEmojiAnimationsEnabled = [mEMORY[0x1E69A8070] isModernMentionsAndEmojiAnimationsEnabled];

  return isModernMentionsAndEmojiAnimationsEnabled && NSClassFromString(&cfstr_Emkrippleanima.isa) != 0;
}

- (id)insertDictationResultPlaceholder
{
  [(CKMessageEntryTextView *)self setShowingDictationPlaceholder:1];
  [(CKMessageEntryTextView *)self updateTextView];
  v5.receiver = self;
  v5.super_class = CKMessageEntryTextView;
  insertDictationResultPlaceholder = [(CKMessageEntryTextView *)&v5 insertDictationResultPlaceholder];

  return insertDictationResultPlaceholder;
}

- (void)removeDictationResultPlaceholder:(id)placeholder willInsertResult:(BOOL)result
{
  resultCopy = result;
  placeholderCopy = placeholder;
  [(CKMessageEntryTextView *)self setShowingDictationPlaceholder:0];
  v7.receiver = self;
  v7.super_class = CKMessageEntryTextView;
  [(CKMessageEntryTextView *)&v7 removeDictationResultPlaceholder:placeholderCopy willInsertResult:resultCopy];

  [(CKMessageEntryTextView *)self updateTextView];
}

- (void)setCompositionText:(id)text
{
  textCopy = text;
  undoManager = [(CKMessageEntryTextView *)self undoManager];
  [undoManager removeAllActions];

  v8 = [textCopy mutableCopy];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(undoManager) = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (!undoManager || ![(CKMessageEntryTextView *)self isExpressiveTextEnabled])
  {
    typingAttributes = [(CKMessageEntryTextView *)self typingAttributes];
    [v8 addAttributes:typingAttributes range:{0, objc_msgSend(v8, "length")}];
  }

  [(CKMessageEntryTextView *)self setAttributedText:v8];
}

- (NSAttributedString)compositionText
{
  attributedText = [(CKMessageEntryTextView *)self attributedText];
  v4 = [attributedText mutableCopy];
  v5 = [v4 length];
  [v4 setAttributes:0 range:{0, v5}];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __41__CKMessageEntryTextView_compositionText__block_invoke;
  v17[3] = &unk_1E72F1708;
  v6 = v4;
  v18 = v6;
  [attributedText enumerateAttributesInRange:0 options:v5 usingBlock:{0, v17}];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    [v6 ck_addAttribute:*MEMORY[0x1E69A7CF8] from:attributedText range:{0, v5}];
    [v6 ck_addAttribute:*MEMORY[0x1E69A7CF0] from:attributedText range:{0, v5}];
    [v6 ck_addAttribute:*MEMORY[0x1E69A7D00] from:attributedText range:{0, v5}];
    [v6 ck_addAttribute:*MEMORY[0x1E69A7D18] from:attributedText range:{0, v5}];
    [v6 ck_addAttribute:*MEMORY[0x1E69A7D08] from:attributedText range:{0, v5}];
  }

  if ([(CKMessageEntryTextView *)self shouldPreserveAdaptiveImageGlyphsInCompositionText])
  {
    mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __41__CKMessageEntryTextView_compositionText__block_invoke_2;
    aBlock[3] = &unk_1E72EBF70;
    v16 = mEMORY[0x1E69A5B80];
    v10 = mEMORY[0x1E69A5B80];
    v11 = _Block_copy(aBlock);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__CKMessageEntryTextView_compositionText__block_invoke_3;
    v13[3] = &unk_1E72F6610;
    v14 = v6;
    [attributedText __im_enumerateAdaptiveImageGlyphFileTransfersUsingFileTransferProvider:v11 block:v13];
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

- (void)setPlaceholderText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_placeholderText isEqualToString:?])
  {
    v4 = [textCopy copy];
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

- (void)setPlaceHolderWidth:(double)width
{
  if (!CKFloatApproximatelyEqualToFloatWithTolerance(self->_placeHolderWidth, width, 0.00000999999975))
  {
    self->_placeHolderWidth = width;

    [(CKMessageEntryTextView *)self setNeedsLayout];
  }
}

- (void)setPlaceholderColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_placeholderColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_placeholderColor, color);
    [(CKMessageEntryTextView *)self _updateAttributedPlaceholder];
  }
}

- (BOOL)isSingleLine
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  textLayoutManager = [(CKMessageEntryTextView *)self textLayoutManager];
  textLayoutManager2 = [(CKMessageEntryTextView *)self textLayoutManager];
  documentRange = [textLayoutManager2 documentRange];
  location = [documentRange location];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__CKMessageEntryTextView_isSingleLine__block_invoke;
  v9[3] = &unk_1E72EC8C8;
  v9[4] = &v10;
  v7 = [textLayoutManager enumerateTextLayoutFragmentsFromLocation:location options:4 usingBlock:v9];

  LOBYTE(textLayoutManager) = v11[3] == 1;
  _Block_object_dispose(&v10, 8);
  return textLayoutManager;
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
  textLayoutManager = [(CKMessageEntryTextView *)self textLayoutManager];
  textLayoutManager2 = [(CKMessageEntryTextView *)self textLayoutManager];
  documentRange = [textLayoutManager2 documentRange];
  location = [documentRange location];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__CKMessageEntryTextView_shouldIncludeDictationPadding__block_invoke;
  v9[3] = &unk_1E72EC8C8;
  v9[4] = &v10;
  v7 = [textLayoutManager enumerateTextLayoutFragmentsFromLocation:location options:12 usingBlock:v9];

  LOBYTE(textLayoutManager) = v11[3] > 1;
  _Block_object_dispose(&v10, 8);
  return textLayoutManager;
}

BOOL __55__CKMessageEntryTextView_shouldIncludeDictationPadding__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 textLineFragments];
  *(*(*(a1 + 32) + 8) + 24) += [v3 count];

  return *(*(*(a1 + 32) + 8) + 24) < 3uLL;
}

- (void)updateFontIfNeededAndGetWasUsingBigEmojiStyle:(int64_t *)style
{
  v5 = +[CKUIBehavior sharedBehaviors];
  singleBigEmojiFont = [v5 singleBigEmojiFont];
  singleBigAssetFont = [v5 singleBigAssetFont];
  multipleBigEmojiFont = [v5 multipleBigEmojiFont];
  [v5 balloonTextFont];
  v46 = v44 = style;
  if (self->_supportsBigEmojiTextStyles)
  {
    entryViewSupportsSingleBigEmojiFont = [v5 entryViewSupportsSingleBigEmojiFont];
    attributedText = [(CKMessageEntryTextView *)self attributedText];
    mediaObjects = [(CKMessageEntryTextView *)self mediaObjects];
    allValues = [mediaObjects allValues];
    v13 = [attributedText __ck_bigEmojiStyleWithSingleBigEmojiSupported:entryViewSupportsSingleBigEmojiFont mediaObjects:allValues];
  }

  else
  {
    v13 = 0;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (!isExpressiveTextEnabled)
  {
    font = [(CKMessageEntryTextView *)self font];
    v30 = 0;
    if (v13 > 1)
    {
      v32 = multipleBigEmojiFont;
      v31 = v44;
      if (v13 != 2)
      {
        v32 = singleBigAssetFont;
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
        v32 = singleBigEmojiFont;
        if (v13 != 1)
        {
LABEL_28:
          if (v31 && font != v30)
          {
            if ([font isEqual:singleBigEmojiFont])
            {
              v33 = 1;
            }

            else if ([font isEqual:singleBigAssetFont])
            {
              v33 = 3;
            }

            else
            {
              v34 = [font isEqual:multipleBigEmojiFont];
              v33 = 2;
              if (!v34)
              {
                v33 = 0;
              }
            }

            *v31 = v33;
          }

          v45 = singleBigAssetFont;
          attributedText2 = [(CKMessageEntryTextView *)self attributedText];
          v36 = [attributedText2 length];

          if (v36)
          {
            v43 = multipleBigEmojiFont;
            v53 = 0;
            v54 = &v53;
            v55 = 0x2020000000;
            v56 = 0;
            attributedText3 = [(CKMessageEntryTextView *)self attributedText];
            attributedText4 = [(CKMessageEntryTextView *)self attributedText];
            v39 = [attributedText4 length];
            v40 = *MEMORY[0x1E69DB648];
            v47[0] = MEMORY[0x1E69E9820];
            v47[1] = 3221225472;
            v47[2] = __72__CKMessageEntryTextView_updateFontIfNeededAndGetWasUsingBigEmojiStyle___block_invoke;
            v47[3] = &unk_1E72F6638;
            v48 = singleBigEmojiFont;
            v49 = v43;
            v50 = v46;
            v52 = &v53;
            v41 = v30;
            v51 = v41;
            [attributedText3 enumerateAttribute:v40 inRange:0 options:v39 usingBlock:{0, v47}];

            if (*(v54 + 24) == 1)
            {
              [(CKMessageEntryTextView *)self setFont:v41];
            }

            _Block_object_dispose(&v53, 8);
            multipleBigEmojiFont = v43;
          }

          else
          {
            [(CKMessageEntryTextView *)self setFont:v30];
          }

          singleBigAssetFont = v45;
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

  fontType = [(CKMessageEntryTextView *)self fontType];
  if ((v13 - 1) >= 3)
  {
    v17 = 0;
  }

  else
  {
    v17 = v13;
  }

  [(CKMessageEntryTextView *)self setFontType:v17];
  attributedText5 = [(CKMessageEntryTextView *)self attributedText];
  v19 = [attributedText5 length];

  if (!v19)
  {
    v42 = [MEMORY[0x1E69DB878] ck_fontWithMessageEntryTextViewFontType:{-[CKMessageEntryTextView fontType](self, "fontType")}];
    [(CKMessageEntryTextView *)self setFont:v42];
    effectsPickerAssistant = [(CKMessageEntryTextView *)self effectsPickerAssistant];
    [effectsPickerAssistant removeTypingAttributesAdjustments];

    typingAttributes = [(CKMessageEntryTextView *)self typingAttributes];
    v22 = [typingAttributes mutableCopy];

    [v22 setObject:v42 forKeyedSubscript:*MEMORY[0x1E69DB648]];
    theme = [v5 theme];
    [theme entryFieldTextColor];
    v24 = multipleBigEmojiFont;
    v25 = singleBigEmojiFont;
    v27 = v26 = singleBigAssetFont;
    [v22 setObject:v27 forKeyedSubscript:*MEMORY[0x1E69DB650]];

    singleBigAssetFont = v26;
    singleBigEmojiFont = v25;
    multipleBigEmojiFont = v24;

    [v22 removeObjectForKey:*MEMORY[0x1E69A7CF8]];
    [(CKMessageEntryTextView *)self setTypingAttributes:v22];
  }

  if (v44 && fontType != v17)
  {
    if (fontType > 1)
    {
      if (fontType == 2)
      {
        v28 = 2;
        goto LABEL_45;
      }

      if (fontType == 3)
      {
        v28 = 3;
        goto LABEL_45;
      }
    }

    else if (fontType)
    {
      if (fontType == 1)
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
  mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  currentInputMode = [mEMORY[0x1E69DCBF0] currentInputMode];
  [(CKMessageEntryTextView *)self setSavedKeyboardInputMode:currentInputMode];
}

- (void)restoreKeyboardInputMode
{
  savedKeyboardInputMode = [(CKMessageEntryTextView *)self savedKeyboardInputMode];
  if (savedKeyboardInputMode)
  {
    v5 = savedKeyboardInputMode;
    mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
    [mEMORY[0x1E69DCBF0] setCurrentInputMode:v5];

    [(CKMessageEntryTextView *)self setSavedKeyboardInputMode:0];
    savedKeyboardInputMode = v5;
  }
}

- (void)setShouldStripEmojis:(BOOL)emojis
{
  if (self->_shouldStripEmojis != emojis)
  {
    self->_shouldStripEmojis = emojis;
  }
}

- (void)setExpressiveTextEnabled:(BOOL)enabled
{
  if (self->_expressiveTextEnabled != enabled)
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

    if (isExpressiveTextEnabled)
    {
      self->_expressiveTextEnabled = enabled;

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

- (void)scribbleInteractionWillBeginWriting:(id)writing
{
  [(CKMessageEntryTextView *)self setPencilWriting:1];
  [(CKMessageEntryTextView *)self setInPencilMode:1];

  [(CKMessageEntryTextView *)self updateTextView];
}

- (void)scribbleInteractionDidFinishWriting:(id)writing
{
  [(CKMessageEntryTextView *)self setPencilWriting:0];
  [(CKMessageEntryTextView *)self setInPencilMode:1];

  [(CKMessageEntryTextView *)self updateTextView];
}

- (void)setInPencilMode:(BOOL)mode
{
  if (self->_inPencilMode != mode)
  {
    self->_inPencilMode = mode;
    delegate = [(CKMessageEntryTextView *)self delegate];
    [delegate messageEntryTextViewDidChangePencilMode:self];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v17.receiver = self;
  v17.super_class = CKMessageEntryTextView;
  [(CKMessageEntryTextView *)&v17 sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  if ([(CKMessageEntryTextView *)self isInPencilMode])
  {
    [MEMORY[0x1E69DCEC8] _recommendedBlankSpaceHeight];
    v7 = v7 + v8;
  }

  else if ([MEMORY[0x1E69DC940] isRunning] && -[CKMessageEntryTextView shouldIncludeDictationPadding](self, "shouldIncludeDictationPadding"))
  {
    font = [(CKMessageEntryTextView *)self font];
    [font pointSize];
    v7 = v7 + v10 * 0.65;
  }

  traitCollection = [(CKMessageEntryTextView *)self traitCollection];
  [traitCollection displayScale];
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

- (void)handleHoverGesture:(id)gesture
{
  if ([gesture state] == 1)
  {
    [(CKMessageEntryTextView *)self setInPencilMode:1];
    [(CKMessageEntryTextView *)self updateTextView];
    delegate = [(CKMessageEntryTextView *)self delegate];
    [delegate textViewDidChange:self];
  }
}

- (void)_stripEmojisIfNecessary
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  stewieEnabled = [mEMORY[0x1E69A8070] stewieEnabled];

  if (stewieEnabled && [(CKMessageEntryTextView *)self shouldStripEmojis])
  {
    attributedText = [(CKMessageEntryTextView *)self attributedText];
    v12 = [attributedText mutableCopy];

    v6 = MEMORY[0x193AF5ED0]("CEMCreateStringByStrippingEmojiCharacters", @"CoreEmoji");
    v7 = v6([v12 string]);
    string = [v12 string];
    v9 = [v7 isEqualToString:string];

    if ((v9 & 1) == 0)
    {
      mutableString = [v12 mutableString];
      [mutableString setString:v7];

      textStorage = [(CKMessageEntryTextView *)self textStorage];
      [textStorage setAttributedString:v12];
    }
  }
}

- (void)updateTextViewAndCheckForMentions:(BOOL)mentions
{
  mentionsCopy = mentions;
  textStorage = [(CKMessageEntryTextView *)self textStorage];
  v6 = [textStorage length] || -[CKMessageEntryTextView isShowingDictationPlaceholder](self, "isShowingDictationPlaceholder") || -[CKMessageEntryTextView isPencilWriting](self, "isPencilWriting");

  _placeholderLabel = [(CKMessageEntryTextView *)self _placeholderLabel];
  [_placeholderLabel setHidden:v6];

  [(CKMessageEntryTextView *)self _stripEmojisIfNecessary];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled && self->_supportsBigEmojiTextStyles)
  {
    textStorage2 = [(CKMessageEntryTextView *)self textStorage];
    [textStorage2 beginEditing];

    v11 = +[CKUIBehavior sharedBehaviors];
    entryViewSupportsSingleBigEmojiFont = [v11 entryViewSupportsSingleBigEmojiFont];
    textStorage3 = [(CKMessageEntryTextView *)self textStorage];
    mediaObjects = [(CKMessageEntryTextView *)self mediaObjects];
    allValues = [mediaObjects allValues];
    [textStorage3 ck_adjustFontsForBigEmojisIfNeededWithSingleBigEmojiSupported:entryViewSupportsSingleBigEmojiFont mediaObjects:allValues];

    textStorage4 = [(CKMessageEntryTextView *)self textStorage];
    [textStorage4 endEditing];
  }

  if (mentionsCopy)
  {

    [(CKMessageEntryTextView *)self checkForMentions];
  }
}

- (void)textViewDidChange:(id)change
{
  [(CKMessageEntryTextView *)self updateTextViewAndCheckForMentions:0];

  [(CKMessageEntryTextView *)self setHideCaretUntilUserTypes:0];
}

- (void)keyboardWillShow:(id)show
{
  mentionsDelegate = [(CKMessageEntryTextView *)self mentionsDelegate];
  [mentionsDelegate reloadMentionsDataIfNecessary];

  showTextEffectsPickerEditMenuAction = [(CKMessageEntryTextView *)self showTextEffectsPickerEditMenuAction];

  if (showTextEffectsPickerEditMenuAction)
  {
    if ([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode])
    {
      showTextEffectsPickerEditMenuAction3 = CKFrameworkBundle();
      v6 = [showTextEffectsPickerEditMenuAction3 localizedStringForKey:@"TEXT_EFFECTS" value:&stru_1F04268F8 table:@"ChatKit"];
      showTextEffectsPickerEditMenuAction2 = [(CKMessageEntryTextView *)self showTextEffectsPickerEditMenuAction];
      [showTextEffectsPickerEditMenuAction2 setTitle:v6];
    }

    else
    {
      showTextEffectsPickerEditMenuAction3 = [(CKMessageEntryTextView *)self showTextEffectsPickerEditMenuAction];
      [showTextEffectsPickerEditMenuAction3 setTitle:&stru_1F04268F8];
    }
  }

  else
  {

    [(CKMessageEntryTextView *)self _updateTextEffectsPickerEditMenuAction];
  }
}

- (void)layoutManagerDidFinishAnimatingMentionWithAnimationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mentionsDelegate = [(CKMessageEntryTextView *)self mentionsDelegate];
  [mentionsDelegate didFinishAnimatingMentionWithAnimationIdentifier:identifierCopy];
}

- (void)hideTextEffectsPickerIfNeeded
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    if (objc_opt_respondsToSelector())
    {
      [(CKMessageEntryTextView *)self performSelector:sel__hideTextFormattingOptions_ withObject:self];
      if ([(CKMessageEntryTextView *)self applyDefaultTypingAttributesOnTextEffectPickerDismissal])
      {
        effectsPickerAssistant = [(CKMessageEntryTextView *)self effectsPickerAssistant];
        [effectsPickerAssistant removeTypingAttributesAdjustments];

        [(CKMessageEntryTextView *)self setApplyDefaultTypingAttributesOnTextEffectPickerDismissal:0];
      }
    }
  }
}

- (void)hideTextEffectsPickerIfNeededAndResetTypingAttributes
{
  [(CKMessageEntryTextView *)self hideTextEffectsPickerIfNeeded];
  effectsPickerAssistant = [(CKMessageEntryTextView *)self effectsPickerAssistant];
  [effectsPickerAssistant removeTypingAttributesAdjustments];
}

- (void)_showTextFormattingAnimationOptions:(id)options
{
  optionsCopy = options;
  effectsPickerAssistant = [(CKMessageEntryTextView *)self effectsPickerAssistant];
  [effectsPickerAssistant selectSentenceAtCaretIfPossible];

  delegate = [(CKMessageEntryTextView *)self delegate];
  [delegate messageEntryTextViewTextFormattingAnimationsOptionsPresentationInProgress:1];

  v11.receiver = self;
  v11.super_class = CKMessageEntryTextView;
  [(CKMessageEntryTextView *)&v11 _showTextFormattingAnimationOptions:optionsCopy];

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

- (BOOL)_shouldHandleTextFormattingChangeValue:(id)value
{
  valueCopy = value;
  changeType = [valueCopy changeType];
  [(CKMessageEntryTextView *)self setApplyDefaultTypingAttributesOnTextEffectPickerDismissal:0];
  typingAttributes = [(CKMessageEntryTextView *)self typingAttributes];
  v7 = [typingAttributes mutableCopy];

  [(CKMessageEntryTextView *)self selectedRange];
  v9 = v8;
  [(CKMessageEntryTextView *)self selectedRange];
  v11 = v10;
  v12 = [changeType isEqualToString:@"UITextFormattingViewControllerRemoveUnderlineChange"];
  v13 = [changeType isEqualToString:@"UITextFormattingViewControllerSetUnderlineChange"];
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
    effectsPickerAssistant = [(CKMessageEntryTextView *)self effectsPickerAssistant];
    [effectsPickerAssistant setShouldSkipNextAdjustingOfTypingAttributes:v9 == 0];

    [(CKMessageEntryTextView *)self setTypingAttributes:v7];
    mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
    [(CKMessageEntryTextView *)self selectedRange];
    [mEMORY[0x1E69A8168] trackDidSelectTextStyle:4 styleLength:v27];

    textFormattingDelegate = [(CKMessageEntryTextView *)self textFormattingDelegate];
    selectedRange = [(CKMessageEntryTextView *)self selectedRange];
    v31 = textFormattingDelegate;
    selfCopy4 = self;
    v33 = 4;
    goto LABEL_36;
  }

  v14 = [changeType isEqualToString:@"UITextFormattingViewControllerSetStrikethroughChange"];
  v15 = [changeType isEqualToString:@"UITextFormattingViewControllerRemoveStrikethroughChange"];
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
    effectsPickerAssistant2 = [(CKMessageEntryTextView *)self effectsPickerAssistant];
    [effectsPickerAssistant2 setShouldSkipNextAdjustingOfTypingAttributes:v9 == 0];

    [(CKMessageEntryTextView *)self setTypingAttributes:v7];
    mEMORY[0x1E69A8168]2 = [MEMORY[0x1E69A8168] sharedInstance];
    [(CKMessageEntryTextView *)self selectedRange];
    [mEMORY[0x1E69A8168]2 trackDidSelectTextStyle:8 styleLength:v36];

    textFormattingDelegate = [(CKMessageEntryTextView *)self textFormattingDelegate];
    selectedRange = [(CKMessageEntryTextView *)self selectedRange];
    v31 = textFormattingDelegate;
    selfCopy4 = self;
    v33 = 8;
    goto LABEL_36;
  }

  v14 = [changeType isEqualToString:@"UITextFormattingViewControllerSetBoldChange"];
  v16 = [changeType isEqualToString:@"UITextFormattingViewControllerRemoveBoldChange"];
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
    effectsPickerAssistant3 = [(CKMessageEntryTextView *)self effectsPickerAssistant];
    [effectsPickerAssistant3 setShouldSkipNextAdjustingOfTypingAttributes:v9 == 0];

    [(CKMessageEntryTextView *)self setTypingAttributes:v7];
    mEMORY[0x1E69A8168]3 = [MEMORY[0x1E69A8168] sharedInstance];
    [(CKMessageEntryTextView *)self selectedRange];
    [mEMORY[0x1E69A8168]3 trackDidSelectTextStyle:1 styleLength:v39];

    textFormattingDelegate = [(CKMessageEntryTextView *)self textFormattingDelegate];
    selectedRange = [(CKMessageEntryTextView *)self selectedRange];
    v31 = textFormattingDelegate;
    selfCopy4 = self;
    v33 = 1;
    goto LABEL_36;
  }

  v14 = [changeType isEqualToString:@"UITextFormattingViewControllerSetItalicChange"];
  v17 = [changeType isEqualToString:@"UITextFormattingViewControllerRemoveItalicChange"];
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
    effectsPickerAssistant4 = [(CKMessageEntryTextView *)self effectsPickerAssistant];
    [effectsPickerAssistant4 setShouldSkipNextAdjustingOfTypingAttributes:v9 == 0];

    [(CKMessageEntryTextView *)self setTypingAttributes:v7];
    mEMORY[0x1E69A8168]4 = [MEMORY[0x1E69A8168] sharedInstance];
    [(CKMessageEntryTextView *)self selectedRange];
    [mEMORY[0x1E69A8168]4 trackDidSelectTextStyle:2 styleLength:v42];

    textFormattingDelegate = [(CKMessageEntryTextView *)self textFormattingDelegate];
    selectedRange = [(CKMessageEntryTextView *)self selectedRange];
    v31 = textFormattingDelegate;
    selfCopy4 = self;
    v33 = 2;
LABEL_36:
    [v31 messageEntryTextView:selfCopy4 applyStyleChangeOfType:v33 add:v14 forRange:{selectedRange, v29}];

    [(CKMessageEntryTextView *)self setApplyDefaultTypingAttributesOnTextEffectPickerDismissal:v24];
    v19 = 0;
    goto LABEL_37;
  }

  if ([changeType isEqualToString:@"UITextFormattingViewControllerCustomComponentSelectedChange"] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v18 = [valueCopy performSelector:sel__textAnimationName];
    v19 = v18 == 0;
    if (v18)
    {
      v20 = *MEMORY[0x1E69A7CF8];
      unsignedIntegerValue = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A7CF8]];

      v52 = v20;
      if (unsignedIntegerValue)
      {
        v22 = [v7 objectForKeyedSubscript:v20];
        unsignedIntegerValue = [v22 unsignedIntegerValue];
      }

      v23 = IMTextEffectTypeFromName();
      if (unsignedIntegerValue == v23)
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

      effectsPickerAssistant5 = [(CKMessageEntryTextView *)self effectsPickerAssistant];
      [effectsPickerAssistant5 setShouldSkipNextAdjustingOfTypingAttributes:v9 == 0];

      [(CKMessageEntryTextView *)self setTypingAttributes:v7];
      mEMORY[0x1E69A8168]5 = [MEMORY[0x1E69A8168] sharedInstance];
      [(CKMessageEntryTextView *)self selectedRange];
      [mEMORY[0x1E69A8168]5 trackDidSelectTextEffect:v23 effectLength:v47];

      textFormattingDelegate2 = [(CKMessageEntryTextView *)self textFormattingDelegate];
      selectedRange2 = [(CKMessageEntryTextView *)self selectedRange];
      [textFormattingDelegate2 messageEntryTextView:self didSetAnimationName:v18 forRange:{selectedRange2, v50}];

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
  _supportedAnimationNamesForTextFormatting = [(CKMessageEntryTextView *)self _supportedAnimationNamesForTextFormatting];
  if (_supportedAnimationNamesForTextFormatting)
  {
    v3 = objc_opt_new();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__CKMessageEntryTextView__supportedAnimationTitlesForTextFormatting__block_invoke;
    v6[3] = &unk_1E72F0A10;
    v4 = v3;
    v7 = v4;
    [_supportedAnimationNamesForTextFormatting enumerateObjectsUsingBlock:v6];
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
  _supportedAnimationNamesForTextFormatting = [(CKMessageEntryTextView *)self _supportedAnimationNamesForTextFormatting];
  if (_supportedAnimationNamesForTextFormatting)
  {
    v3 = objc_opt_new();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __80__CKMessageEntryTextView__supportedAnimationAccessibilityHintsForTextFormatting__block_invoke;
    v6[3] = &unk_1E72F0A10;
    v4 = v3;
    v7 = v4;
    [_supportedAnimationNamesForTextFormatting enumerateObjectsUsingBlock:v6];
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

- (void)updateTextAttributesWithConversionHandler:(id)handler
{
  v8.receiver = self;
  v8.super_class = CKMessageEntryTextView;
  handlerCopy = handler;
  [(CKMessageEntryTextView *)&v8 updateTextAttributesWithConversionHandler:handlerCopy];
  v5 = [(CKMessageEntryTextView *)self textFormattingDelegate:v8.receiver];
  selectedRange = [(CKMessageEntryTextView *)self selectedRange];
  [v5 messageEntryTextView:self didUpdateForRange:selectedRange conversionHandler:{v7, handlerCopy}];

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