@interface UnifiedField
- (BOOL)_canUpdateLayoutDirectionImmediately;
- (BOOL)_hasContent;
- (BOOL)_waitingForTopHitForCurrentText;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)endEditing:(BOOL)editing;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)keyboardInput:(id)input shouldInsertText:(id)text isMarkedText:(BOOL)markedText;
- (BOOL)keyboardInputShouldDelete:(id)delete;
- (BOOL)resignFirstResponder;
- (CGRect)editRect;
- (CGRect)placeholderRectForBounds:(CGRect)bounds;
- (CGRect)rightViewRectForBounds:(CGRect)bounds;
- (UIColor)placeholderColor;
- (UnifiedField)initWithFrame:(CGRect)frame;
- (_NSRange)selectedCharactersRange;
- (id)_reflectedItemCompletionString;
- (id)_textForPasteboard;
- (id)_textWithoutWhitespace;
- (id)_topHitForCurrentText;
- (id)_voiceSearchInputModeForFirstResponder:(BOOL)responder;
- (id)keyCommands;
- (unint64_t)_unifiedFieldInputType;
- (void)_cancelPendingTopHitNavigation;
- (void)_endEditingWithCurrentText;
- (void)_layoutTopHitCompletionView;
- (void)_promoteCompletionToSelectionSelectingSuffix:(BOOL)suffix andMoveForward:(BOOL)forward;
- (void)_removeTopHitCompletionView;
- (void)_restoreUserTypedText;
- (void)_setReflectedItem:(id)item updateUserTypedPrefix:(BOOL)prefix;
- (void)_setTopHit:(id)hit;
- (void)_textDidChangeFromTyping;
- (void)_updateKeyboardInputMode:(id)mode;
- (void)_updateLayoutDirectionIfNeeded;
- (void)_updateReturnKey;
- (void)buildMenuWithBuilder:(id)builder;
- (void)clearUserTypedText;
- (void)completeDictation;
- (void)copy:(id)copy;
- (void)cut:(id)cut;
- (void)focusAndInsertCursorAtEnd;
- (void)focusNextKeyViewKeyPressed;
- (void)focusPreviousKeyViewKeyPressed;
- (void)insertTextSuggestion:(id)suggestion;
- (void)layoutSubviews;
- (void)moveLeftKeyPressed;
- (void)moveRightKeyPressed;
- (void)nextCompletionSelectionByRowKeyPressed;
- (void)nextCompletionSelectionBySectionKeyPressed;
- (void)paste:(id)paste;
- (void)pasteAndGo:(id)go;
- (void)previousCompletionSelectionByRowKeyPressed;
- (void)previousCompletionSelectionBySectionKeyPressed;
- (void)selectAll:(id)all;
- (void)selectCompletionKeyPressed;
- (void)setAttributedText:(id)text;
- (void)setFont:(id)font;
- (void)setPlaceholderColor:(id)color;
- (void)setText:(id)text;
- (void)setVoiceSearchState:(int64_t)state;
- (void)topHitDidBecomeReady;
- (void)willBeginPencilTextInputEditing;
@end

@implementation UnifiedField

- (BOOL)_hasContent
{
  if (self->_topHitCompletionView)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = UnifiedField;
  return [(UnifiedField *)&v5 _hasContent];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = UnifiedField;
  [(UnifiedField *)&v6 layoutSubviews];
  if (!self->_userTypedText)
  {
    text = [(UnifiedField *)self text];
    v4 = [text copy];
    userTypedText = self->_userTypedText;
    self->_userTypedText = v4;
  }

  if (self->_topHitCompletionView)
  {
    [(UnifiedField *)self _layoutTopHitCompletionView];
  }
}

- (BOOL)becomeFirstResponder
{
  v8.receiver = self;
  v8.super_class = UnifiedField;
  becomeFirstResponder = [(UnifiedField *)&v8 becomeFirstResponder];
  if (becomeFirstResponder)
  {
    [(UnifiedField *)self _updateLayoutDirectionIfNeeded];
    [(UnifiedField *)self _updateReturnKey];
    self->_hasSelectedQuerySuggestion = 0;
    self->_usingPencilInput = 0;
    v4 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_INFO, "Becoming first responder; allows reflected Top Hits: YES", v7, 2u);
    }

    delegate = [(UnifiedField *)self delegate];
    [delegate unifiedFieldMakeWindowKey:self];
  }

  return becomeFirstResponder;
}

- (void)_updateLayoutDirectionIfNeeded
{
  keyboardInputModeIsRTL = self->_keyboardInputModeIsRTL;
  if (self->_layoutShouldBeRTL != keyboardInputModeIsRTL || (v4 = [(UnifiedField *)self _sf_usesLeftToRightLayout], keyboardInputModeIsRTL = self->_keyboardInputModeIsRTL, keyboardInputModeIsRTL != (v4 ^ 1)))
  {
    self->_layoutShouldBeRTL = keyboardInputModeIsRTL;
    if (keyboardInputModeIsRTL)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    [(UnifiedField *)self setTextAlignment:v5];
    if (self->_keyboardInputModeIsRTL)
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }

    [(UnifiedField *)self setSemanticContentAttribute:v6];

    [(UnifiedField *)self setNeedsLayout];
  }
}

- (void)_updateReturnKey
{
  if (![(UnifiedField *)self _waitingForTopHitForCurrentText])
  {
    reflectedItem = self->_reflectedItem;
    if (reflectedItem)
    {
      v4 = 1;
    }

    else
    {
      _textWithoutWhitespace = [(UnifiedField *)self _textWithoutWhitespace];
      v4 = [_textWithoutWhitespace length] != 0;
    }

    activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
    [activeKeyboard setReturnKeyEnabled:v4];

    if (!reflectedItem)
    {
    }
  }
}

- (BOOL)_waitingForTopHitForCurrentText
{
  if (self->_lastEditWasADeletion || ![(UnifiedField *)self _allowsReflectedTopHit])
  {
    return 0;
  }

  delegate = [(UnifiedField *)self delegate];
  text = [(UnifiedField *)self text];
  v5 = [delegate unifiedField:self shouldWaitForTopHitForText:text];

  return v5;
}

- (id)_textWithoutWhitespace
{
  text = [(UnifiedField *)self text];
  safari_whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] safari_whitespaceAndNewlineCharacterSet];
  v4 = [text stringByTrimmingCharactersInSet:safari_whitespaceAndNewlineCharacterSet];

  return v4;
}

- (UnifiedField)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = UnifiedField;
  v3 = [(UnifiedField *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UnifiedField *)v3 addTarget:v3 action:sel__endEditingWithCurrentText forControlEvents:0x80000];
    [(UnifiedField *)v4 addTarget:v4 action:sel__textDidChangeFromTyping forControlEvents:0x20000];
    [(UnifiedField *)v4 setTextDragOptions:1];
    isEnabledByDefault = [MEMORY[0x277D75468] isEnabledByDefault];
    textDragInteraction = [(UnifiedField *)v4 textDragInteraction];
    [textDragInteraction setEnabled:isEnabledByDefault];

    [(UnifiedField *)v4 setClipsToBounds:1];
    [(UnifiedField *)v4 setEnablesReturnKeyAutomatically:0];
    [(UnifiedField *)v4 setUseAutomaticEndpointing:1];
    [(UnifiedField *)v4 setWritingToolsBehavior:-1];
    _clearButton = [(UnifiedField *)v4 _clearButton];
    [_clearButton setAccessibilityIdentifier:@"ClearTextButton"];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_dictationDidFinish_ name:*MEMORY[0x277D76888] object:0];

    v9 = objc_alloc_init(MEMORY[0x277D75BA0]);
    textCursorAssertionController = v4->_textCursorAssertionController;
    v4->_textCursorAssertionController = v9;

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v4->_keyboardInputModeIsRTL = [mEMORY[0x277D75128] safari_currentKeyboardInputIsRTL];

    [(UnifiedField *)v4 _updateLayoutDirectionIfNeeded];
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v4 selector:sel__updateKeyboardInputMode_ name:*MEMORY[0x277D77200] object:0];
    [defaultCenter2 addObserver:v4 selector:sel__updateKeyboardInputMode_ name:*MEMORY[0x277D28FF0] object:0];
    v13 = v4;
  }

  return v4;
}

- (void)_updateKeyboardInputMode:(id)mode
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  safari_currentKeyboardInputIsRTL = [mEMORY[0x277D75128] safari_currentKeyboardInputIsRTL];

  if (self->_keyboardInputModeIsRTL != safari_currentKeyboardInputIsRTL)
  {
    self->_keyboardInputModeIsRTL = safari_currentKeyboardInputIsRTL;
    if ([(UnifiedField *)self _canUpdateLayoutDirectionImmediately])
    {

      [(UnifiedField *)self _updateLayoutDirectionIfNeeded];
    }
  }
}

- (BOOL)_canUpdateLayoutDirectionImmediately
{
  text = [(UnifiedField *)self text];
  if ([text length])
  {
    v4 = 0;
  }

  else
  {
    v4 = self->_topHitCompletionView == 0;
  }

  return v4;
}

- (void)paste:(id)paste
{
  self->_pastingText = 1;
  v3.receiver = self;
  v3.super_class = UnifiedField;
  [(UnifiedField *)&v3 paste:paste];
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  v13.receiver = self;
  v13.super_class = UnifiedField;
  [(UnifiedField *)&v13 buildMenuWithBuilder:builderCopy];
  system = [builderCopy system];
  contextSystem = [MEMORY[0x277D75730] contextSystem];

  if (system == contextSystem)
  {
    generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
    safari_pasteAndNavigateCommands = [generalPasteboard safari_pasteAndNavigateCommands];

    v9 = *MEMORY[0x277D76D60];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__UnifiedField_buildMenuWithBuilder___block_invoke;
    v11[3] = &unk_2781D8DE8;
    v12 = safari_pasteAndNavigateCommands;
    v10 = safari_pasteAndNavigateCommands;
    [builderCopy replaceChildrenOfMenuForIdentifier:v9 fromChildrenBlock:v11];
  }
}

id __37__UnifiedField_buildMenuWithBuilder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 indexOfObjectPassingTest:&__block_literal_global_43];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v3 arrayByAddingObjectsFromArray:*(a1 + 32)];
  }

  else
  {
    v6 = v4;
    v5 = [v3 mutableCopy];

    v7 = *(a1 + 32);
    v3 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v6 + 1, objc_msgSend(v7, "count")}];
    [v5 insertObjects:v7 atIndexes:v3];
  }

  return v5;
}

BOOL __37__UnifiedField_buildMenuWithBuilder___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = (objc_opt_isKindOfClass() & 1) != 0 && [v2 action] == sel_paste_;

  return v3;
}

- (void)pasteAndGo:(id)go
{
  goCopy = go;
  text = [(UnifiedField *)self text];
  selectedCharactersRange = [(UnifiedField *)self selectedCharactersRange];
  v8 = v7;
  objc_initWeak(&location, self);
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __27__UnifiedField_pasteAndGo___block_invoke;
  v11[3] = &unk_2781D9168;
  objc_copyWeak(v13, &location);
  v10 = text;
  v12 = v10;
  v13[1] = selectedCharactersRange;
  v13[2] = v8;
  [generalPasteboard safari_bestStringForPastingIntoURLFieldCompletionHandler:v11];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __27__UnifiedField_pasteAndGo___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained delegate];
    if (v8)
    {
      v6 = v8;
    }

    else
    {
      v6 = &stru_2827BF158;
    }

    v7 = [*(a1 + 32) stringByReplacingCharactersInRange:*(a1 + 48) withString:{*(a1 + 56), v6}];
    [v5 unifiedField:v4 pasteAndNavigateWithText:v7];
  }
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
  v8.receiver = self;
  v8.super_class = UnifiedField;
  [(UnifiedField *)&v8 rightViewRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v7 = v6 + -2.5;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v7;
  return result;
}

- (void)setPlaceholderColor:(id)color
{
  colorCopy = color;
  placeholderColor = [(UnifiedField *)self placeholderColor];
  if (placeholderColor != colorCopy)
  {
    _placeholderLabel = [(UnifiedField *)self _placeholderLabel];
    v6 = _placeholderLabel;
    if (colorCopy)
    {
      [_placeholderLabel setTextColor:?];
    }

    else
    {
      _placeholderColor = [(UnifiedField *)self _placeholderColor];
      [v6 setTextColor:_placeholderColor];
    }
  }
}

- (UIColor)placeholderColor
{
  _placeholderLabel = [(UnifiedField *)self _placeholderLabel];
  textColor = [_placeholderLabel textColor];

  return textColor;
}

- (unint64_t)_unifiedFieldInputType
{
  if (self->_topHit)
  {
    objc_opt_class();
    return (objc_opt_isKindOfClass() & 1) == 0;
  }

  else
  {
    text = [(UnifiedField *)self text];
    v4 = WBSUnifiedFieldInputTypeForString();

    return v4;
  }
}

- (void)_endEditingWithCurrentText
{
  delegate = [(UnifiedField *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [delegate unifiedField:self didEndEditingWithParsecTopHit:self->_topHit];
LABEL_3:
    [(UnifiedField *)self setVoiceSearchState:0];
    goto LABEL_18;
  }

  _unifiedFieldInputType = [(UnifiedField *)self _unifiedFieldInputType];
  if (_unifiedFieldInputType > 2)
  {
    if (_unifiedFieldInputType != 3)
    {
      if (_unifiedFieldInputType == 4)
      {
        goto LABEL_3;
      }

      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if ((_unifiedFieldInputType - 1) < 2)
  {
    userVisibleURLString = [(CompletionItem *)self->_topHit userVisibleURLString];
    if (userVisibleURLString)
    {
      [(UnifiedField *)self setText:userVisibleURLString];
      objc_storeStrong(&self->_userTypedText, userVisibleURLString);
    }

    _textWithoutWhitespace = [(UnifiedField *)self _textWithoutWhitespace];
    [delegate unifiedField:self didEndEditingWithAddress:_textWithoutWhitespace];

    [(UnifiedField *)self setVoiceSearchState:0];
    goto LABEL_9;
  }

  if (!_unifiedFieldInputType)
  {
LABEL_14:
    if (self->_voiceSearchState == 2)
    {
      [delegate unifiedFieldVoiceSearchStateDidChange:self];
    }

    else
    {
      if (!self->_performingExternalSearch)
      {
        userVisibleURLString = [(UnifiedField *)self _textWithoutWhitespace];
        [delegate unifiedField:self didEndEditingWithSearch:userVisibleURLString];
LABEL_9:

        goto LABEL_18;
      }

      [delegate unifiedFieldExternalSearchDidEnd:self];
    }
  }

LABEL_18:
}

- (void)_textDidChangeFromTyping
{
  if (!self->_isResigningFirstResponder)
  {
    delegate = [(UnifiedField *)self delegate];
    text = [(UnifiedField *)self text];
    v5 = [text copy];

    if (self->_keyboardInputModeIsRTL != self->_layoutShouldBeRTL)
    {
      text2 = [(UnifiedField *)self text];
      v7 = [text2 length];

      if (v7 == 1)
      {
        [(UnifiedField *)self _updateLayoutDirectionIfNeeded];
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter postNotificationName:*MEMORY[0x277D29188] object:0];
      }
    }

    [delegate unifiedField:self willUpdateUserTypedText:self->_userTypedText toText:v5];
    objc_storeStrong(&self->_userTypedText, v5);
    [(UnifiedField *)self _cancelPendingTopHitNavigation];
    if (self->_reflectedItem == self->_topHit)
    {
      _topHitForCurrentText = [(UnifiedField *)self _topHitForCurrentText];
      [(UnifiedField *)self _setTopHit:_topHitForCurrentText];
    }

    else
    {
      [(UnifiedField *)self setReflectedItem:0];
    }

    [(UnifiedField *)self _updateReturnKey];
    [delegate unifiedFieldDidUpdateUserTypedText:self forQueryString:self->_userTypedText];
    if ([(UnifiedField *)self _canUpdateLayoutDirectionImmediately])
    {
      [(UnifiedField *)self _updateLayoutDirectionIfNeeded];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__UnifiedField__textDidChangeFromTyping__block_invoke;
    block[3] = &unk_2781D4D40;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (id)_topHitForCurrentText
{
  if (self->_lastEditWasADeletion || ![(UnifiedField *)self _allowsReflectedTopHit])
  {
    v5 = 0;
  }

  else
  {
    delegate = [(UnifiedField *)self delegate];
    text = [(UnifiedField *)self text];
    v5 = [delegate unifiedField:self topHitForText:text];
  }

  return v5;
}

- (void)_cancelPendingTopHitNavigation
{
  pendingTopHitNavigationText = self->_pendingTopHitNavigationText;
  self->_pendingTopHitNavigationText = 0;
}

- (BOOL)keyboardInput:(id)input shouldInsertText:(id)text isMarkedText:(BOOL)markedText
{
  markedTextCopy = markedText;
  inputCopy = input;
  textCopy = text;
  self->_lastEditWasADeletion = 0;
  if ([textCopy isEqualToString:@"\n"] && -[UnifiedField _waitingForTopHitForCurrentText](self, "_waitingForTopHitForCurrentText"))
  {
    text = [(UnifiedField *)self text];
    v11 = [text isEqual:self->_pendingTopHitNavigationText];

    if ((v11 & 1) == 0)
    {
      [(UnifiedField *)self sendActionsForControlEvents:0x20000];
      text2 = [(UnifiedField *)self text];
      v13 = [text2 copy];
      pendingTopHitNavigationText = self->_pendingTopHitNavigationText;
      self->_pendingTopHitNavigationText = v13;
    }

    v15 = 0;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = UnifiedField;
    v15 = [(UnifiedField *)&v17 keyboardInput:inputCopy shouldInsertText:textCopy isMarkedText:markedTextCopy];
  }

  return v15;
}

- (BOOL)keyboardInputShouldDelete:(id)delete
{
  v10.receiver = self;
  v10.super_class = UnifiedField;
  if (![(UnifiedField *)&v10 keyboardInputShouldDelete:delete])
  {
    return 0;
  }

  v4 = 1;
  if (!self->_lastEditWasADeletion)
  {
    self->_lastEditWasADeletion = 1;
    topHitCompletionView = self->_topHitCompletionView;
    v4 = topHitCompletionView == 0;
    [(UnifiedField *)self _setTopHit:0];
    if (topHitCompletionView)
    {
      text = [(UnifiedField *)self text];
      v7 = [text copy];
      userTypedText = self->_userTypedText;
      self->_userTypedText = v7;

      if (![(NSString *)self->_userTypedText length])
      {
        [(UnifiedField *)self sendActionsForControlEvents:0x20000];
      }
    }

    [(UnifiedField *)self _updateReturnKey];
  }

  return v4;
}

- (void)setText:(id)text
{
  v4.receiver = self;
  v4.super_class = UnifiedField;
  [(UnifiedField *)&v4 setText:text];
  [(UnifiedField *)self _updateReturnKey];
}

- (void)setAttributedText:(id)text
{
  v4.receiver = self;
  v4.super_class = UnifiedField;
  [(UnifiedField *)&v4 setAttributedText:text];
  [(UnifiedField *)self _updateReturnKey];
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v23.receiver = self;
  v23.super_class = UnifiedField;
  [(UnifiedField *)&v23 placeholderRectForBounds:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v16 = CGRectGetMaxX(v24) + -8.0;
  v25.origin.x = v9;
  v25.origin.y = v11;
  v25.size.width = v13;
  v25.size.height = v15;
  v17 = v13 + v16 - CGRectGetMaxX(v25);
  v18 = v9 + 2.0;
  if (self->_layoutShouldBeRTL)
  {
    _SFFlipRectInCoordinateSpace();
    v11 = v19;
    v15 = v20;
  }

  v21 = v11;
  v22 = v15;
  result.size.height = v22;
  result.size.width = v17;
  result.origin.y = v21;
  result.origin.x = v18;
  return result;
}

- (_NSRange)selectedCharactersRange
{
  selectedTextRange = [(UnifiedField *)self selectedTextRange];
  beginningOfDocument = [(UnifiedField *)self beginningOfDocument];
  start = [selectedTextRange start];
  v6 = [(UnifiedField *)self offsetFromPosition:beginningOfDocument toPosition:start];
  start2 = [selectedTextRange start];
  v8 = [selectedTextRange end];
  v9 = [(UnifiedField *)self offsetFromPosition:start2 toPosition:v8];

  v10 = v6;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (id)_textForPasteboard
{
  selectedText = [(UnifiedField *)self selectedText];
  if (-[UnifiedField selectionRange](self, "selectionRange") || (v5 = v4, -[UnifiedField _unifiedFieldInputType](self, "_unifiedFieldInputType") != 2) || (v6 = MEMORY[0x277CBEBC0], -[UnifiedField text](self, "text"), v7 = objc_claimAutoreleasedReturnValue(), [v6 URLWithString:v7], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "scheme"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, v9))
  {
    v10 = selectedText;
  }

  else
  {
    text = [(UnifiedField *)self text];
    v13 = [@"http://" stringByAppendingString:text];

    _web_rangeOfURLHost = [v13 _web_rangeOfURLHost];
    if (_web_rangeOfURLHost == 0x7FFFFFFFFFFFFFFFLL || v5 + 7 < (_web_rangeOfURLHost + v15))
    {
      v16 = selectedText;
    }

    else
    {
      v16 = [@"http://" stringByAppendingString:selectedText];
    }

    v10 = v16;
  }

  return v10;
}

- (void)copy:(id)copy
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CCAA88]);
  delegate = [(UnifiedField *)self delegate];
  if ([delegate shouldPutMetadataOnPasteboardForUnifiedField:self])
  {
    v6 = [delegate currentMetadataForUnifiedField:self];
    if (v6)
    {
      [v4 safari_registerLinkMetadata:v6];
    }
  }

  _textForPasteboard = [(UnifiedField *)self _textForPasteboard];
  [v4 registerObject:_textForPasteboard visibility:0];

  v10[0] = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  [generalPasteboard setItemProviders:v8];
}

- (void)cut:(id)cut
{
  cutCopy = cut;
  _textForPasteboard = [(UnifiedField *)self _textForPasteboard];
  v7.receiver = self;
  v7.super_class = UnifiedField;
  [(UnifiedField *)&v7 cut:cutCopy];

  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  [generalPasteboard setString:_textForPasteboard];
}

- (void)_removeTopHitCompletionView
{
  [(TopHitCompletionView *)self->_topHitCompletionView removeFromSuperview];
  topHitCompletionView = self->_topHitCompletionView;
  self->_topHitCompletionView = 0;

  if (self->_topHitCompletionPromotionRecognizer)
  {
    [(UnifiedField *)self removeGestureRecognizer:?];
    topHitCompletionPromotionRecognizer = self->_topHitCompletionPromotionRecognizer;
    self->_topHitCompletionPromotionRecognizer = 0;
  }

  _fieldEditor = [(UnifiedField *)self _fieldEditor];
  [_fieldEditor setHidden:0];

  [(UITextCursorAssertion *)self->_textCursorHiddenAssertion invalidate];
  textCursorHiddenAssertion = self->_textCursorHiddenAssertion;
  self->_textCursorHiddenAssertion = 0;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if (self->_topHitCompletionPromotionRecognizer == recognizer)
  {
    [touch locationInView:self];
    v6 = [(UnifiedField *)self hitTest:0 withEvent:?];
    objc_opt_class();
    v4 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  if (self->_topHitCompletionPromotionRecognizer == recognizer)
  {
    gestureRecognizerCopy = gestureRecognizer;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v4 = isKindOfClass ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (id)_reflectedItemCompletionString
{
  v3 = [(CompletionItem *)self->_reflectedItem reflectedStringForUserTypedString:self->_userTypedText];
  if (!v3)
  {
    if (self->_topHitInitiallySelected)
    {
      v3 = self->_userTypedText;
    }

    else
    {
      v3 = 0;
    }
  }

  v4 = [(NSString *)v3 safari_caseAndDiacriticInsensitiveStandardRangeOfString:self->_userTypedText additionalOptions:8];
  v6 = v5;
  if (![(NSString *)self->_userTypedText length])
  {
    v7 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(UnifiedField *)v7 _reflectedItemCompletionString];
    }
  }

  v8 = [(NSString *)v3 length];
  if (v8 < [(NSString *)self->_userTypedText length])
  {
    v9 = v3;
LABEL_15:
    v12 = v9;
    goto LABEL_20;
  }

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(NSString *)v3 substringFromIndex:v6];
    goto LABEL_15;
  }

  attributedText = [(UnifiedField *)self attributedText];
  if (attributedText)
  {
    attributedText2 = [(UnifiedField *)self attributedText];
    if ([attributedText2 length])
    {
      v12 = &stru_2827BF158;
    }

    else
    {
      v12 = v3;
    }
  }

  else
  {
    v12 = v3;
  }

LABEL_20:

  return v12;
}

- (void)_promoteCompletionToSelectionSelectingSuffix:(BOOL)suffix andMoveForward:(BOOL)forward
{
  forwardCopy = forward;
  suffixCopy = suffix;
  v15 = self->_reflectedItem;
  [(UnifiedField *)self _setTopHit:0];
  v7 = [(CompletionItem *)v15 reflectedStringForUserTypedString:self->_userTypedText];
  if (forwardCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![(CompletionItem *)v15 matchLocationIsInURL])
    {
      goto LABEL_14;
    }

    safari_bestURLForUserTypedString = [v7 safari_bestURLForUserTypedString];
    path = [safari_bestURLForUserTypedString path];
    if ([path isEqualToString:@"/"])
    {
      v10 = [v7 hasSuffix:@"/"];

      if (v10)
      {
LABEL_14:
        [(UnifiedField *)self setText:v7];
        goto LABEL_15;
      }

      [v7 stringByAppendingString:@"/"];
      v7 = safari_bestURLForUserTypedString = v7;
    }

    else
    {
    }

    goto LABEL_14;
  }

  [(UnifiedField *)self setText:v7];
  beginningOfDocument = [(UnifiedField *)self beginningOfDocument];
  v12 = [(UnifiedField *)self positionFromPosition:beginningOfDocument inDirection:2 offset:[(NSString *)self->_userTypedText length]];

  endOfDocument = v12;
  if (suffixCopy)
  {
    endOfDocument = [(UnifiedField *)self endOfDocument];
  }

  v14 = [(UnifiedField *)self textRangeFromPosition:v12 toPosition:endOfDocument];
  [(UnifiedField *)self setSelectedTextRange:v14];

  if (suffixCopy)
  {
  }

LABEL_15:
}

- (void)_setTopHit:(id)hit
{
  hitCopy = hit;
  if (([(CompletionItem *)hitCopy isEquivalentTo:self->_topHit]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [(CompletionItem *)hitCopy isEquivalentTo:self->_lastTopHit];
  }

  self->_topHitInitiallySelected = v5;
  objc_storeStrong(&self->_lastTopHit, hit);
  [(UnifiedField *)self _setReflectedItem:hitCopy updateUserTypedPrefix:0];
  v6 = hitCopy;
  if (self->_topHit != hitCopy)
  {
    objc_storeStrong(&self->_topHit, hit);
    [(UnifiedField *)self _cancelPendingTopHitNavigation];
    [(UnifiedField *)self _updateReturnKey];
    v6 = hitCopy;
  }
}

- (void)_restoreUserTypedText
{
  text = [(UnifiedField *)self text];
  v4 = [text isEqualToString:self->_userTypedText];

  if ((v4 & 1) == 0)
  {
    userTypedText = self->_userTypedText;

    [(UnifiedField *)self setText:userTypedText];
  }
}

- (void)_setReflectedItem:(id)item updateUserTypedPrefix:(BOOL)prefix
{
  prefixCopy = prefix;
  itemCopy = item;
  if (self->_reflectedItem != itemCopy)
  {
    if (![(UnifiedField *)self _allowsReflectedTopHit])
    {

      itemCopy = 0;
    }

    objc_storeStrong(&self->_reflectedItem, itemCopy);
    delegate = [(UnifiedField *)self delegate];
    [delegate unifiedFieldReflectedItemDidChange:self];

    if (self->_reflectedItem)
    {
      if (!self->_topHitCompletionView)
      {
        v8 = [TopHitCompletionView alloc];
        v9 = [(TopHitCompletionView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
        topHitCompletionView = self->_topHitCompletionView;
        self->_topHitCompletionView = v9;

        clearColor = [MEMORY[0x277D75348] clearColor];
        [(TopHitCompletionView *)self->_topHitCompletionView setBackgroundColor:clearColor];

        [(TopHitCompletionView *)self->_topHitCompletionView setContentMode:3];
        selectionHighlightColor = [(UnifiedField *)self selectionHighlightColor];
        [(TopHitCompletionView *)self->_topHitCompletionView setHighlightColor:selectionHighlightColor];
      }

      if (!self->_topHitCompletionPromotionRecognizer)
      {
        v13 = [[TopHitCompletionPromotionRecognizer alloc] initWithTarget:self action:sel__promoteCompletionToSelection];
        topHitCompletionPromotionRecognizer = self->_topHitCompletionPromotionRecognizer;
        self->_topHitCompletionPromotionRecognizer = v13;

        [(TopHitCompletionPromotionRecognizer *)self->_topHitCompletionPromotionRecognizer setDelegate:self];
        [(UnifiedField *)self addGestureRecognizer:self->_topHitCompletionPromotionRecognizer];
      }

      v15 = [(CompletionItem *)self->_reflectedItem reflectedStringForUserTypedString:self->_userTypedText];
      v16 = v15;
      if (v15 || self->_topHitInitiallySelected)
      {
        v17 = [v15 safari_caseAndDiacriticInsensitiveStandardRangeOfString:self->_userTypedText additionalOptions:8];
        v19 = v18;
        if (![(NSString *)self->_userTypedText length])
        {
          v20 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [UnifiedField _setReflectedItem:v20 updateUserTypedPrefix:?];
          }
        }

        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (prefixCopy)
          {
            [(UnifiedField *)self setText:&stru_2827BF158];
          }
        }

        else
        {
          v21 = [v16 substringToIndex:v19];
          if (prefixCopy)
          {
            text = [(UnifiedField *)self text];
            v23 = [text isEqualToString:v21];

            if ((v23 & 1) == 0)
            {
              [(UnifiedField *)self setText:v21];
            }
          }

          v24 = [v16 length];
          if (v24 == [(NSString *)self->_userTypedText length])
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [(UnifiedField *)self _removeTopHitCompletionView];

              goto LABEL_27;
            }
          }
        }

        v25 = [(UITextCursorAssertionController *)self->_textCursorAssertionController nonVisibleAssertionWithReason:@"UnifiedField is reflecting a Top Hit completion item"];
        textCursorHiddenAssertion = self->_textCursorHiddenAssertion;
        self->_textCursorHiddenAssertion = v25;

        [(UnifiedField *)self addSubview:self->_topHitCompletionView];
        _fieldEditor = [(UnifiedField *)self _fieldEditor];
        [_fieldEditor setHidden:1];

        [(UnifiedField *)self setNeedsLayout];
      }

      else
      {
        [(UnifiedField *)self _restoreUserTypedText];
        [(UnifiedField *)self _removeTopHitCompletionView];
      }

LABEL_27:

      goto LABEL_28;
    }

    [(UnifiedField *)self _restoreUserTypedText];
    [(UnifiedField *)self _removeTopHitCompletionView];
  }

LABEL_28:
}

- (void)topHitDidBecomeReady
{
  if ([(UnifiedField *)self isFirstResponder]&& [(UnifiedField *)self _allowsReflectedTopHit])
  {
    v6 = self->_pendingTopHitNavigationText;
    _topHitForCurrentText = [(UnifiedField *)self _topHitForCurrentText];
    [(UnifiedField *)self _setTopHit:_topHitForCurrentText];

    if (v6)
    {
      text = [(UnifiedField *)self text];
      if ([(NSString *)v6 isEqualToString:text])
      {
        _waitingForTopHitForCurrentText = [(UnifiedField *)self _waitingForTopHitForCurrentText];

        if (!_waitingForTopHitForCurrentText)
        {
          [(UnifiedField *)self _endEditingWithCurrentText];
        }
      }

      else
      {
      }
    }

    [(UnifiedField *)self _updateReturnKey];
  }
}

- (void)_layoutTopHitCompletionView
{
  v73[1] = *MEMORY[0x277D85DE8];
  _reflectedItemCompletionString = [(UnifiedField *)self _reflectedItemCompletionString];
  if (!_reflectedItemCompletionString)
  {
    [(UnifiedField *)self _removeTopHitCompletionView];
    goto LABEL_29;
  }

  v4 = *MEMORY[0x277D740C0];
  v72 = *MEMORY[0x277D740C0];
  textColor = [(UnifiedField *)self textColor];
  v73[0] = textColor;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:&v72 count:1];

  v68 = v6;
  v7 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:_reflectedItemCompletionString attributes:v6];
  attributedText = [(UnifiedField *)self attributedText];
  [v7 insertAttributedString:? atIndex:?];
  v8 = *MEMORY[0x277D740A8];
  font = [(UnifiedField *)self font];
  [v7 addAttribute:v8 value:font range:{0, objc_msgSend(v7, "length")}];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      safari_titleForReflection = [(CompletionItem *)self->_reflectedItem safari_titleForReflection];
      if (safari_titleForReflection)
      {
        goto LABEL_16;
      }
    }

LABEL_10:
    safari_titleForReflection = 0;
    p_layoutShouldBeRTL = &self->_layoutShouldBeRTL;
LABEL_21:
    v35 = attributedText;
LABEL_22:
    -[TopHitCompletionView setAttributedText:highlightStartIndex:layoutIsRTL:](self->_topHitCompletionView, "setAttributedText:highlightStartIndex:layoutIsRTL:", v7, [v35 length], 0);
    v34 = v7;
    goto LABEL_23;
  }

  v10 = self->_reflectedItem;
  matchLocation = [(CompletionItem *)v10 matchLocation];
  safari_titleForReflection = [(CompletionItem *)v10 title];
  if (!safari_titleForReflection || (matchLocation - 11) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = _reflectedItemCompletionString;
    alternativeDisplayTextForURL = [(CompletionItem *)v10 alternativeDisplayTextForURL];
    v15 = [alternativeDisplayTextForURL length];

    if (v15)
    {
      alternativeDisplayTextForURL2 = [(CompletionItem *)v10 alternativeDisplayTextForURL];
    }

    else
    {
      userVisibleURLString = [(CompletionItem *)v10 userVisibleURLString];
      alternativeDisplayTextForURL2 = [userVisibleURLString safari_simplifiedUserVisibleURLStringWithSimplifications:135 forDisplayOnly:1 simplifiedStringOffset:0];

      safari_titleForReflection = userVisibleURLString;
    }

    safari_titleForReflection = alternativeDisplayTextForURL2;
    _reflectedItemCompletionString = v13;
  }

  v19 = [(CompletionItem *)self->_reflectedItem reflectedStringForUserTypedString:self->_userTypedText];
  if (!v19)
  {
    [(UnifiedField *)self _restoreUserTypedText];
    [(CompletionItem *)v10 userVisibleURLString];
    v21 = v20 = _reflectedItemCompletionString;
    v22 = [v21 safari_simplifiedUserVisibleURLStringWithSimplifications:135 forDisplayOnly:1 simplifiedStringOffset:0];

    _reflectedItemCompletionString = v20;
    safari_titleForReflection = v22;
  }

  if (!safari_titleForReflection)
  {
    goto LABEL_10;
  }

LABEL_16:
  v70[0] = v8;
  font2 = [(UnifiedField *)self font];
  v70[1] = v4;
  v71[0] = font2;
  _inheritedInteractionTintColor = [(UnifiedField *)self _inheritedInteractionTintColor];
  v71[1] = _inheritedInteractionTintColor;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];

  p_layoutShouldBeRTL = &self->_layoutShouldBeRTL;
  layoutShouldBeRTL = self->_layoutShouldBeRTL;
  v27 = objc_alloc(MEMORY[0x277CCA898]);
  if (!layoutShouldBeRTL)
  {
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@" %C %@", 8212, safari_titleForReflection];
    v37 = [v27 initWithString:v36 attributes:v25];

    [v7 appendAttributedString:v37];
    goto LABEL_21;
  }

  v66 = _reflectedItemCompletionString;
  8212 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C%@ %C ", 8206, safari_titleForReflection, 8212];
  v29 = [v27 initWithString:8212 attributes:v25];

  string = [v29 string];
  v65 = [string length];

  v31 = objc_alloc(MEMORY[0x277CCAB48]);
  8206 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 8206];
  v33 = [v31 initWithString:8206];

  [v33 appendAttributedString:v7];
  v34 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:v29];
  [v34 appendAttributedString:v33];

  if (!*p_layoutShouldBeRTL)
  {
    v7 = v34;
    _reflectedItemCompletionString = v66;
    goto LABEL_21;
  }

  _reflectedItemCompletionString = v66;
  v35 = attributedText;
  if (!v65)
  {
    v7 = v34;
    goto LABEL_22;
  }

  [(TopHitCompletionView *)self->_topHitCompletionView setAttributedText:v34 highlightStartIndex:v65 layoutIsRTL:1];
LABEL_23:
  v38 = CTLineCreateWithAttributedString(v34);
  attributedText2 = [(UnifiedField *)self attributedText];
  v40 = round(CTLineGetOffsetForStringIndex(v38, [attributedText2 length], 0));
  _fieldEditor = [(UnifiedField *)self _fieldEditor];
  [_fieldEditor bounds];
  v43 = fmax(v40 - v42, 0.0);

  BoundsWithOptions = CTLineGetBoundsWithOptions(v38, 0);
  width = BoundsWithOptions.size.width;
  CFRelease(v38);
  [(UnifiedField *)self bounds];
  [(UnifiedField *)self editingRectForBounds:?];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  [(UnifiedField *)self paddingLeft];
  v54 = v46 + v53;
  [(UnifiedField *)self paddingLeft];
  v56 = v55;
  [(UnifiedField *)self paddingRight];
  v75.size.width = v50 - (v56 + v57);
  v58 = v54 - v43;
  v59 = width + 3.0;
  v75.origin.x = v54;
  v75.origin.y = v48;
  v75.size.height = v52;
  MaxX = CGRectGetMaxX(v75);
  v76.origin.x = v58;
  v76.origin.y = v48;
  v76.size.width = v59;
  v76.size.height = v52;
  v61 = CGRectGetMaxX(v76);
  v62 = *p_layoutShouldBeRTL;
  v69[0] = MEMORY[0x277D85DD0];
  v63 = MaxX - v58;
  if (v61 <= MaxX)
  {
    v63 = v59;
  }

  v69[1] = 3221225472;
  v69[2] = __43__UnifiedField__layoutTopHitCompletionView__block_invoke;
  v69[3] = &unk_2781D9190;
  v69[4] = self;
  if (v62)
  {
    v64 = 0.0;
  }

  else
  {
    v64 = v58;
  }

  *&v69[5] = v64;
  *&v69[6] = v48;
  *&v69[7] = v63;
  *&v69[8] = v52;
  [MEMORY[0x277D75D18] performWithoutAnimation:v69];

LABEL_29:
}

uint64_t __43__UnifiedField__layoutTopHitCompletionView__block_invoke(uint64_t a1)
{
  [*(a1 + 32) bounds];
  _SFFlipRectInCoordinateSpace();
  v2 = *(*(a1 + 32) + 1080);

  return [v2 setFrame:?];
}

- (CGRect)editRect
{
  v16.receiver = self;
  v16.super_class = UnifiedField;
  [(UnifiedField *)&v16 editRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  superview = [(TopHitCompletionView *)self->_topHitCompletionView superview];

  if (superview)
  {
    v12 = v8 + -30.0;
  }

  else
  {
    v12 = v8;
  }

  v13 = v4;
  v14 = v6;
  v15 = v10;
  result.size.height = v15;
  result.size.width = v12;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BOOL)canBecomeFirstResponder
{
  v6.receiver = self;
  v6.super_class = UnifiedField;
  if (![(UnifiedField *)&v6 canBecomeFirstResponder])
  {
    return 0;
  }

  delegate = [(UnifiedField *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate unifiedFieldCanBecomeFirstResponder:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)resignFirstResponder
{
  self->_isResigningFirstResponder = 1;
  [(UnifiedField *)self _setTopHit:0];
  [(UnifiedField *)self _cancelPendingTopHitNavigation];
  self->_usingPencilInput = 0;
  v3 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_INFO, "Resigning first responder; allows reflected Top Hits: YES", buf, 2u);
  }

  v9.receiver = self;
  v9.super_class = UnifiedField;
  resignFirstResponder = [(UnifiedField *)&v9 resignFirstResponder];
  v5 = resignFirstResponder;
  self->_isResigningFirstResponder = 0;
  if (self->_preserveSelectionOnResignFirstResponder && resignFirstResponder != 0)
  {
    interactionAssistant = [(UnifiedField *)self interactionAssistant];
    [interactionAssistant activateSelection];
  }

  return v5;
}

- (BOOL)endEditing:(BOOL)editing
{
  preserveSelectionOnResignFirstResponder = self->_preserveSelectionOnResignFirstResponder;
  self->_preserveSelectionOnResignFirstResponder = 0;
  v6.receiver = self;
  v6.super_class = UnifiedField;
  result = [(UnifiedField *)&v6 endEditing:editing];
  self->_preserveSelectionOnResignFirstResponder = preserveSelectionOnResignFirstResponder;
  return result;
}

- (void)focusAndInsertCursorAtEnd
{
  [(UnifiedField *)self becomeFirstResponder];
  endOfDocument = [(UnifiedField *)self endOfDocument];
  endOfDocument2 = [(UnifiedField *)self endOfDocument];
  v4 = [(UnifiedField *)self textRangeFromPosition:endOfDocument toPosition:endOfDocument2];
  [(UnifiedField *)self setSelectedTextRange:v4];
}

- (void)clearUserTypedText
{
  delegate = [(UnifiedField *)self delegate];
  [delegate unifiedField:self willUpdateUserTypedText:self->_userTypedText toText:0];

  userTypedText = self->_userTypedText;
  self->_userTypedText = 0;
}

- (id)keyCommands
{
  v42[8] = *MEMORY[0x277D85DE8];
  v2 = keyCommands_commands;
  if (!keyCommands_commands)
  {
    v3 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76B60] modifierFlags:0 action:sel_moveRightKeyPressed];
    v42[0] = v3;
    v4 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76B48] modifierFlags:0 action:sel_moveLeftKeyPressed];
    v42[1] = v4;
    v5 = *MEMORY[0x277D76AC0];
    v6 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76AC0] modifierFlags:0 action:sel_nextCompletionSelectionByRowKeyPressed];
    v42[2] = v6;
    v7 = [MEMORY[0x277D75650] keyCommandWithInput:v5 modifierFlags:0x100000 action:sel_nextCompletionSelectionBySectionKeyPressed];
    v42[3] = v7;
    v8 = *MEMORY[0x277D76B68];
    v9 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76B68] modifierFlags:0 action:sel_previousCompletionSelectionByRowKeyPressed];
    v42[4] = v9;
    v10 = [MEMORY[0x277D75650] keyCommandWithInput:v8 modifierFlags:0x100000 action:sel_previousCompletionSelectionBySectionKeyPressed];
    v42[5] = v10;
    v11 = [MEMORY[0x277D75650] keyCommandWithInput:@"\t" modifierFlags:0 action:sel_focusNextKeyViewKeyPressed];
    v42[6] = v11;
    v12 = [MEMORY[0x277D75650] keyCommandWithInput:@"\t" modifierFlags:0x20000 action:sel_focusPreviousKeyViewKeyPressed];
    v42[7] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:8];
    v14 = keyCommands_commands;
    keyCommands_commands = v13;

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v15 = keyCommands_commands;
    v16 = [v15 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v37;
      do
      {
        v19 = 0;
        do
        {
          if (*v37 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v36 + 1) + 8 * v19++) setWantsPriorityOverSystemBehavior:1];
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v17);
    }

    _allCombinationsOfModifierKeys = [(UnifiedField *)self _allCombinationsOfModifierKeys];
    v21 = [_allCombinationsOfModifierKeys safari_arrayByMappingObjectsUsingBlock:&__block_literal_global_179];

    v22 = [keyCommands_commands arrayByAddingObjectsFromArray:v21];
    v23 = keyCommands_commands;
    keyCommands_commands = v22;

    v2 = keyCommands_commands;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = v2;
  v25 = [v24 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v33;
    do
    {
      v28 = 0;
      do
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [*(*(&v32 + 1) + 8 * v28++) setWantsPriorityOverSystemBehavior:1];
      }

      while (v26 != v28);
      v26 = [v24 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v26);
  }

  v29 = keyCommands_commands;

  return v29;
}

uint64_t __27__UnifiedField_keyCommands__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D75650];
  v3 = [a2 integerValue];

  return [v2 keyCommandWithInput:@"\r" modifierFlags:v3 action:sel_selectCompletionKeyPressed];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (NSSelectorFromString(@"_define:") == action || NSSelectorFromString(@"_share:") == action)
  {
    goto LABEL_22;
  }

  if (sel_pasteAndGo_ == action || sel_pasteAndSearch_ == action)
  {
    generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
    safari_preferredPasteAndNavigateCommand = [generalPasteboard safari_preferredPasteAndNavigateCommand];
    LOBYTE(action) = [safari_preferredPasteAndNavigateCommand action] == action;

    goto LABEL_23;
  }

  if (sel_moveRightKeyPressed == action || sel_moveLeftKeyPressed == action)
  {
    if (([(UnifiedField *)self hasMarkedText]& 1) == 0)
    {
      LOBYTE(action) = self->_topHitCompletionView != 0;
      goto LABEL_23;
    }

LABEL_22:
    LOBYTE(action) = 0;
    goto LABEL_23;
  }

  if (sel_nextCompletionSelectionByRowKeyPressed == action || sel_nextCompletionSelectionBySectionKeyPressed == action || sel_previousCompletionSelectionByRowKeyPressed == action || sel_previousCompletionSelectionBySectionKeyPressed == action)
  {
    if (([(UnifiedField *)self hasMarkedText]& 1) == 0)
    {
      delegate = [(UnifiedField *)self delegate];
      LOBYTE(action) = [delegate unifiedFieldShouldMoveCompletionSelection:self];

      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (sel_focusNextKeyViewKeyPressed == action || sel_focusPreviousKeyViewKeyPressed == action || sel_selectCompletionKeyPressed == action)
  {
    LODWORD(action) = [(UnifiedField *)self hasMarkedText]^ 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UnifiedField;
    LOBYTE(action) = [(UnifiedField *)&v12 canPerformAction:action withSender:senderCopy];
  }

LABEL_23:

  return action;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  traitCollection = [(UnifiedField *)self traitCollection];
  v6 = [fontCopy _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection];

  v7.receiver = self;
  v7.super_class = UnifiedField;
  [(UnifiedField *)&v7 setFont:v6];
}

- (void)moveRightKeyPressed
{
  if (self->_topHitCompletionView)
  {
    [(UnifiedField *)self _promoteCompletionToSelectionSelectingSuffix:0 andMoveForward:1];
  }
}

- (void)moveLeftKeyPressed
{
  if (self->_topHitCompletionView)
  {
    [(UnifiedField *)self _promoteCompletionToSelectionSelectingSuffix:0 andMoveForward:0];
  }
}

- (void)nextCompletionSelectionByRowKeyPressed
{
  delegate = [(UnifiedField *)self delegate];
  [delegate unifiedField:self moveCompletionSelectionByRowOffset:1];
}

- (void)nextCompletionSelectionBySectionKeyPressed
{
  delegate = [(UnifiedField *)self delegate];
  [delegate unifiedField:self moveCompletionSelectionBySectionOffset:1];
}

- (void)previousCompletionSelectionByRowKeyPressed
{
  delegate = [(UnifiedField *)self delegate];
  [delegate unifiedField:self moveCompletionSelectionByRowOffset:-1];
}

- (void)previousCompletionSelectionBySectionKeyPressed
{
  delegate = [(UnifiedField *)self delegate];
  [delegate unifiedField:self moveCompletionSelectionBySectionOffset:-1];
}

- (void)focusNextKeyViewKeyPressed
{
  delegate = [(UnifiedField *)self delegate];
  [delegate unifiedField:self focusNextKeyView:1];
}

- (void)focusPreviousKeyViewKeyPressed
{
  delegate = [(UnifiedField *)self delegate];
  [delegate unifiedField:self focusNextKeyView:0];
}

- (void)selectCompletionKeyPressed
{
  delegate = [(UnifiedField *)self delegate];
  [delegate unifiedFieldSelectCompletionItemIfAvailable:self];
}

- (void)insertTextSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  querySuggestions = self->_querySuggestions;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__UnifiedField_insertTextSuggestion___block_invoke;
  v10[3] = &unk_2781D91D8;
  v11 = suggestionCopy;
  v6 = suggestionCopy;
  v7 = [(NSArray *)querySuggestions safari_firstObjectPassingTest:v10];
  [(CKContextCompleter *)self->_contextCompleter logEngagement:v7 forInput:self->_userTypedText];
  delegate = [(UnifiedField *)self delegate];
  [delegate unifiedField:self didEngageWithQuerySuggestion:v7 forQueryString:self->_userTypedText];

  inputText = [v6 inputText];
  [(UnifiedField *)self setText:inputText];

  self->_lastInputWasQuerySuggestion = 1;
  self->_hasSelectedQuerySuggestion = 1;
  [(UnifiedField *)self sendActionsForControlEvents:0x20000];
  self->_lastInputWasQuerySuggestion = 0;
}

uint64_t __37__UnifiedField_insertTextSuggestion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 title];
  v4 = [*(a1 + 32) inputText];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)selectAll:(id)all
{
  allCopy = all;
  if (self->_reflectedItem)
  {
    [(UnifiedField *)self _promoteCompletionToSelection];
  }

  v5.receiver = self;
  v5.super_class = UnifiedField;
  [(UnifiedField *)&v5 selectAll:allCopy];
}

- (void)setVoiceSearchState:(int64_t)state
{
  if (self->_voiceSearchState != state)
  {
    self->_voiceSearchState = state;
    mEMORY[0x277D75688] = [MEMORY[0x277D75688] sharedInputModeController];
    if (state == 1)
    {
      [(UnifiedField *)self setText:0];
      v6 = [(UnifiedField *)self _voiceSearchInputModeForFirstResponder:[(UnifiedField *)self isFirstResponder]];
      [mEMORY[0x277D75688] toggleDictationForResponder:self withOption:v6 firstResponderSetupCompletion:0];
    }

    else if (!state)
    {
      [mEMORY[0x277D75688] stopDictation];
    }

    delegate = [(UnifiedField *)self delegate];
    [delegate unifiedFieldVoiceSearchStateDidChange:self];
  }
}

- (void)completeDictation
{
  if (self->_voiceSearchState == 1)
  {
    self->_voiceSearchState = 2;
    [(UnifiedField *)self _endEditingWithCurrentText];
  }
}

- (id)_voiceSearchInputModeForFirstResponder:(BOOL)responder
{
  responderCopy = responder;
  v4 = objc_alloc_init(MEMORY[0x277D75430]);
  v5 = v4;
  if (responderCopy)
  {
    v6 = @"UIDictationInputModeInvocationSourceMicButtonInFirstResponderSafariAddressBar";
  }

  else
  {
    v6 = @"UIDictationInputModeInvocationSourceMicButtonInSafariAddressBar";
  }

  [v4 setInvocationSource:v6];
  [v5 setShouldStayInDictationInputModeIfAutoEndpointed:0];
  [v5 setShouldSupressShowingAlternativesAutomatically:1];

  return v5;
}

- (void)willBeginPencilTextInputEditing
{
  self->_usingPencilInput = 1;
  v3 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_INFO, "Beginning Pencil text input; allows reflected Top Hits: NO", v4, 2u);
  }

  [(UnifiedField *)self _removeTopHitCompletionView];
  [(UnifiedField *)self _cancelPendingTopHitNavigation];
}

@end