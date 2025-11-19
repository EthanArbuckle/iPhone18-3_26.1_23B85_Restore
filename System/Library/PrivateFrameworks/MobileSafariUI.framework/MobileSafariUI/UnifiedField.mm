@interface UnifiedField
- (BOOL)_canUpdateLayoutDirectionImmediately;
- (BOOL)_hasContent;
- (BOOL)_waitingForTopHitForCurrentText;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)endEditing:(BOOL)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5;
- (BOOL)keyboardInputShouldDelete:(id)a3;
- (BOOL)resignFirstResponder;
- (CGRect)editRect;
- (CGRect)placeholderRectForBounds:(CGRect)a3;
- (CGRect)rightViewRectForBounds:(CGRect)a3;
- (UIColor)placeholderColor;
- (UnifiedField)initWithFrame:(CGRect)a3;
- (_NSRange)selectedCharactersRange;
- (id)_reflectedItemCompletionString;
- (id)_textForPasteboard;
- (id)_textWithoutWhitespace;
- (id)_topHitForCurrentText;
- (id)_voiceSearchInputModeForFirstResponder:(BOOL)a3;
- (id)keyCommands;
- (unint64_t)_unifiedFieldInputType;
- (void)_cancelPendingTopHitNavigation;
- (void)_endEditingWithCurrentText;
- (void)_layoutTopHitCompletionView;
- (void)_promoteCompletionToSelectionSelectingSuffix:(BOOL)a3 andMoveForward:(BOOL)a4;
- (void)_removeTopHitCompletionView;
- (void)_restoreUserTypedText;
- (void)_setReflectedItem:(id)a3 updateUserTypedPrefix:(BOOL)a4;
- (void)_setTopHit:(id)a3;
- (void)_textDidChangeFromTyping;
- (void)_updateKeyboardInputMode:(id)a3;
- (void)_updateLayoutDirectionIfNeeded;
- (void)_updateReturnKey;
- (void)buildMenuWithBuilder:(id)a3;
- (void)clearUserTypedText;
- (void)completeDictation;
- (void)copy:(id)a3;
- (void)cut:(id)a3;
- (void)focusAndInsertCursorAtEnd;
- (void)focusNextKeyViewKeyPressed;
- (void)focusPreviousKeyViewKeyPressed;
- (void)insertTextSuggestion:(id)a3;
- (void)layoutSubviews;
- (void)moveLeftKeyPressed;
- (void)moveRightKeyPressed;
- (void)nextCompletionSelectionByRowKeyPressed;
- (void)nextCompletionSelectionBySectionKeyPressed;
- (void)paste:(id)a3;
- (void)pasteAndGo:(id)a3;
- (void)previousCompletionSelectionByRowKeyPressed;
- (void)previousCompletionSelectionBySectionKeyPressed;
- (void)selectAll:(id)a3;
- (void)selectCompletionKeyPressed;
- (void)setAttributedText:(id)a3;
- (void)setFont:(id)a3;
- (void)setPlaceholderColor:(id)a3;
- (void)setText:(id)a3;
- (void)setVoiceSearchState:(int64_t)a3;
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
    v3 = [(UnifiedField *)self text];
    v4 = [v3 copy];
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
  v3 = [(UnifiedField *)&v8 becomeFirstResponder];
  if (v3)
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

    v5 = [(UnifiedField *)self delegate];
    [v5 unifiedFieldMakeWindowKey:self];
  }

  return v3;
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
      v6 = [(UnifiedField *)self _textWithoutWhitespace];
      v4 = [v6 length] != 0;
    }

    v5 = [MEMORY[0x277D75658] activeKeyboard];
    [v5 setReturnKeyEnabled:v4];

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

  v3 = [(UnifiedField *)self delegate];
  v4 = [(UnifiedField *)self text];
  v5 = [v3 unifiedField:self shouldWaitForTopHitForText:v4];

  return v5;
}

- (id)_textWithoutWhitespace
{
  v2 = [(UnifiedField *)self text];
  v3 = [MEMORY[0x277CCA900] safari_whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  return v4;
}

- (UnifiedField)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = UnifiedField;
  v3 = [(UnifiedField *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UnifiedField *)v3 addTarget:v3 action:sel__endEditingWithCurrentText forControlEvents:0x80000];
    [(UnifiedField *)v4 addTarget:v4 action:sel__textDidChangeFromTyping forControlEvents:0x20000];
    [(UnifiedField *)v4 setTextDragOptions:1];
    v5 = [MEMORY[0x277D75468] isEnabledByDefault];
    v6 = [(UnifiedField *)v4 textDragInteraction];
    [v6 setEnabled:v5];

    [(UnifiedField *)v4 setClipsToBounds:1];
    [(UnifiedField *)v4 setEnablesReturnKeyAutomatically:0];
    [(UnifiedField *)v4 setUseAutomaticEndpointing:1];
    [(UnifiedField *)v4 setWritingToolsBehavior:-1];
    v7 = [(UnifiedField *)v4 _clearButton];
    [v7 setAccessibilityIdentifier:@"ClearTextButton"];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v4 selector:sel_dictationDidFinish_ name:*MEMORY[0x277D76888] object:0];

    v9 = objc_alloc_init(MEMORY[0x277D75BA0]);
    textCursorAssertionController = v4->_textCursorAssertionController;
    v4->_textCursorAssertionController = v9;

    v11 = [MEMORY[0x277D75128] sharedApplication];
    v4->_keyboardInputModeIsRTL = [v11 safari_currentKeyboardInputIsRTL];

    [(UnifiedField *)v4 _updateLayoutDirectionIfNeeded];
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v4 selector:sel__updateKeyboardInputMode_ name:*MEMORY[0x277D77200] object:0];
    [v12 addObserver:v4 selector:sel__updateKeyboardInputMode_ name:*MEMORY[0x277D28FF0] object:0];
    v13 = v4;
  }

  return v4;
}

- (void)_updateKeyboardInputMode:(id)a3
{
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [v4 safari_currentKeyboardInputIsRTL];

  if (self->_keyboardInputModeIsRTL != v5)
  {
    self->_keyboardInputModeIsRTL = v5;
    if ([(UnifiedField *)self _canUpdateLayoutDirectionImmediately])
    {

      [(UnifiedField *)self _updateLayoutDirectionIfNeeded];
    }
  }
}

- (BOOL)_canUpdateLayoutDirectionImmediately
{
  v3 = [(UnifiedField *)self text];
  if ([v3 length])
  {
    v4 = 0;
  }

  else
  {
    v4 = self->_topHitCompletionView == 0;
  }

  return v4;
}

- (void)paste:(id)a3
{
  self->_pastingText = 1;
  v3.receiver = self;
  v3.super_class = UnifiedField;
  [(UnifiedField *)&v3 paste:a3];
}

- (void)buildMenuWithBuilder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = UnifiedField;
  [(UnifiedField *)&v13 buildMenuWithBuilder:v4];
  v5 = [v4 system];
  v6 = [MEMORY[0x277D75730] contextSystem];

  if (v5 == v6)
  {
    v7 = [MEMORY[0x277D75810] generalPasteboard];
    v8 = [v7 safari_pasteAndNavigateCommands];

    v9 = *MEMORY[0x277D76D60];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__UnifiedField_buildMenuWithBuilder___block_invoke;
    v11[3] = &unk_2781D8DE8;
    v12 = v8;
    v10 = v8;
    [v4 replaceChildrenOfMenuForIdentifier:v9 fromChildrenBlock:v11];
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

- (void)pasteAndGo:(id)a3
{
  v4 = a3;
  v5 = [(UnifiedField *)self text];
  v6 = [(UnifiedField *)self selectedCharactersRange];
  v8 = v7;
  objc_initWeak(&location, self);
  v9 = [MEMORY[0x277D75810] generalPasteboard];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __27__UnifiedField_pasteAndGo___block_invoke;
  v11[3] = &unk_2781D9168;
  objc_copyWeak(v13, &location);
  v10 = v5;
  v12 = v10;
  v13[1] = v6;
  v13[2] = v8;
  [v9 safari_bestStringForPastingIntoURLFieldCompletionHandler:v11];

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

- (CGRect)rightViewRectForBounds:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = UnifiedField;
  [(UnifiedField *)&v8 rightViewRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v7 = v6 + -2.5;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v7;
  return result;
}

- (void)setPlaceholderColor:(id)a3
{
  v8 = a3;
  v4 = [(UnifiedField *)self placeholderColor];
  if (v4 != v8)
  {
    v5 = [(UnifiedField *)self _placeholderLabel];
    v6 = v5;
    if (v8)
    {
      [v5 setTextColor:?];
    }

    else
    {
      v7 = [(UnifiedField *)self _placeholderColor];
      [v6 setTextColor:v7];
    }
  }
}

- (UIColor)placeholderColor
{
  v2 = [(UnifiedField *)self _placeholderLabel];
  v3 = [v2 textColor];

  return v3;
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
    v3 = [(UnifiedField *)self text];
    v4 = WBSUnifiedFieldInputTypeForString();

    return v4;
  }
}

- (void)_endEditingWithCurrentText
{
  v6 = [(UnifiedField *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 unifiedField:self didEndEditingWithParsecTopHit:self->_topHit];
LABEL_3:
    [(UnifiedField *)self setVoiceSearchState:0];
    goto LABEL_18;
  }

  v3 = [(UnifiedField *)self _unifiedFieldInputType];
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      if (v3 == 4)
      {
        goto LABEL_3;
      }

      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if ((v3 - 1) < 2)
  {
    v4 = [(CompletionItem *)self->_topHit userVisibleURLString];
    if (v4)
    {
      [(UnifiedField *)self setText:v4];
      objc_storeStrong(&self->_userTypedText, v4);
    }

    v5 = [(UnifiedField *)self _textWithoutWhitespace];
    [v6 unifiedField:self didEndEditingWithAddress:v5];

    [(UnifiedField *)self setVoiceSearchState:0];
    goto LABEL_9;
  }

  if (!v3)
  {
LABEL_14:
    if (self->_voiceSearchState == 2)
    {
      [v6 unifiedFieldVoiceSearchStateDidChange:self];
    }

    else
    {
      if (!self->_performingExternalSearch)
      {
        v4 = [(UnifiedField *)self _textWithoutWhitespace];
        [v6 unifiedField:self didEndEditingWithSearch:v4];
LABEL_9:

        goto LABEL_18;
      }

      [v6 unifiedFieldExternalSearchDidEnd:self];
    }
  }

LABEL_18:
}

- (void)_textDidChangeFromTyping
{
  if (!self->_isResigningFirstResponder)
  {
    v3 = [(UnifiedField *)self delegate];
    v4 = [(UnifiedField *)self text];
    v5 = [v4 copy];

    if (self->_keyboardInputModeIsRTL != self->_layoutShouldBeRTL)
    {
      v6 = [(UnifiedField *)self text];
      v7 = [v6 length];

      if (v7 == 1)
      {
        [(UnifiedField *)self _updateLayoutDirectionIfNeeded];
        v8 = [MEMORY[0x277CCAB98] defaultCenter];
        [v8 postNotificationName:*MEMORY[0x277D29188] object:0];
      }
    }

    [v3 unifiedField:self willUpdateUserTypedText:self->_userTypedText toText:v5];
    objc_storeStrong(&self->_userTypedText, v5);
    [(UnifiedField *)self _cancelPendingTopHitNavigation];
    if (self->_reflectedItem == self->_topHit)
    {
      v9 = [(UnifiedField *)self _topHitForCurrentText];
      [(UnifiedField *)self _setTopHit:v9];
    }

    else
    {
      [(UnifiedField *)self setReflectedItem:0];
    }

    [(UnifiedField *)self _updateReturnKey];
    [v3 unifiedFieldDidUpdateUserTypedText:self forQueryString:self->_userTypedText];
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
    v3 = [(UnifiedField *)self delegate];
    v4 = [(UnifiedField *)self text];
    v5 = [v3 unifiedField:self topHitForText:v4];
  }

  return v5;
}

- (void)_cancelPendingTopHitNavigation
{
  pendingTopHitNavigationText = self->_pendingTopHitNavigationText;
  self->_pendingTopHitNavigationText = 0;
}

- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  self->_lastEditWasADeletion = 0;
  if ([v9 isEqualToString:@"\n"] && -[UnifiedField _waitingForTopHitForCurrentText](self, "_waitingForTopHitForCurrentText"))
  {
    v10 = [(UnifiedField *)self text];
    v11 = [v10 isEqual:self->_pendingTopHitNavigationText];

    if ((v11 & 1) == 0)
    {
      [(UnifiedField *)self sendActionsForControlEvents:0x20000];
      v12 = [(UnifiedField *)self text];
      v13 = [v12 copy];
      pendingTopHitNavigationText = self->_pendingTopHitNavigationText;
      self->_pendingTopHitNavigationText = v13;
    }

    v15 = 0;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = UnifiedField;
    v15 = [(UnifiedField *)&v17 keyboardInput:v8 shouldInsertText:v9 isMarkedText:v5];
  }

  return v15;
}

- (BOOL)keyboardInputShouldDelete:(id)a3
{
  v10.receiver = self;
  v10.super_class = UnifiedField;
  if (![(UnifiedField *)&v10 keyboardInputShouldDelete:a3])
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
      v6 = [(UnifiedField *)self text];
      v7 = [v6 copy];
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

- (void)setText:(id)a3
{
  v4.receiver = self;
  v4.super_class = UnifiedField;
  [(UnifiedField *)&v4 setText:a3];
  [(UnifiedField *)self _updateReturnKey];
}

- (void)setAttributedText:(id)a3
{
  v4.receiver = self;
  v4.super_class = UnifiedField;
  [(UnifiedField *)&v4 setAttributedText:a3];
  [(UnifiedField *)self _updateReturnKey];
}

- (CGRect)placeholderRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v3 = [(UnifiedField *)self selectedTextRange];
  v4 = [(UnifiedField *)self beginningOfDocument];
  v5 = [v3 start];
  v6 = [(UnifiedField *)self offsetFromPosition:v4 toPosition:v5];
  v7 = [v3 start];
  v8 = [v3 end];
  v9 = [(UnifiedField *)self offsetFromPosition:v7 toPosition:v8];

  v10 = v6;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (id)_textForPasteboard
{
  v3 = [(UnifiedField *)self selectedText];
  if (-[UnifiedField selectionRange](self, "selectionRange") || (v5 = v4, -[UnifiedField _unifiedFieldInputType](self, "_unifiedFieldInputType") != 2) || (v6 = MEMORY[0x277CBEBC0], -[UnifiedField text](self, "text"), v7 = objc_claimAutoreleasedReturnValue(), [v6 URLWithString:v7], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "scheme"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, v9))
  {
    v10 = v3;
  }

  else
  {
    v12 = [(UnifiedField *)self text];
    v13 = [@"http://" stringByAppendingString:v12];

    v14 = [v13 _web_rangeOfURLHost];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL || v5 + 7 < (v14 + v15))
    {
      v16 = v3;
    }

    else
    {
      v16 = [@"http://" stringByAppendingString:v3];
    }

    v10 = v16;
  }

  return v10;
}

- (void)copy:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CCAA88]);
  v5 = [(UnifiedField *)self delegate];
  if ([v5 shouldPutMetadataOnPasteboardForUnifiedField:self])
  {
    v6 = [v5 currentMetadataForUnifiedField:self];
    if (v6)
    {
      [v4 safari_registerLinkMetadata:v6];
    }
  }

  v7 = [(UnifiedField *)self _textForPasteboard];
  [v4 registerObject:v7 visibility:0];

  v10[0] = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v9 = [MEMORY[0x277D75810] generalPasteboard];
  [v9 setItemProviders:v8];
}

- (void)cut:(id)a3
{
  v4 = a3;
  v5 = [(UnifiedField *)self _textForPasteboard];
  v7.receiver = self;
  v7.super_class = UnifiedField;
  [(UnifiedField *)&v7 cut:v4];

  v6 = [MEMORY[0x277D75810] generalPasteboard];
  [v6 setString:v5];
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

  v5 = [(UnifiedField *)self _fieldEditor];
  [v5 setHidden:0];

  [(UITextCursorAssertion *)self->_textCursorHiddenAssertion invalidate];
  textCursorHiddenAssertion = self->_textCursorHiddenAssertion;
  self->_textCursorHiddenAssertion = 0;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  if (self->_topHitCompletionPromotionRecognizer == a3)
  {
    [a4 locationInView:self];
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

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  if (self->_topHitCompletionPromotionRecognizer == a3)
  {
    v5 = a4;
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

  v10 = [(UnifiedField *)self attributedText];
  if (v10)
  {
    v11 = [(UnifiedField *)self attributedText];
    if ([v11 length])
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

- (void)_promoteCompletionToSelectionSelectingSuffix:(BOOL)a3 andMoveForward:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v15 = self->_reflectedItem;
  [(UnifiedField *)self _setTopHit:0];
  v7 = [(CompletionItem *)v15 reflectedStringForUserTypedString:self->_userTypedText];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![(CompletionItem *)v15 matchLocationIsInURL])
    {
      goto LABEL_14;
    }

    v8 = [v7 safari_bestURLForUserTypedString];
    v9 = [v8 path];
    if ([v9 isEqualToString:@"/"])
    {
      v10 = [v7 hasSuffix:@"/"];

      if (v10)
      {
LABEL_14:
        [(UnifiedField *)self setText:v7];
        goto LABEL_15;
      }

      [v7 stringByAppendingString:@"/"];
      v7 = v8 = v7;
    }

    else
    {
    }

    goto LABEL_14;
  }

  [(UnifiedField *)self setText:v7];
  v11 = [(UnifiedField *)self beginningOfDocument];
  v12 = [(UnifiedField *)self positionFromPosition:v11 inDirection:2 offset:[(NSString *)self->_userTypedText length]];

  v13 = v12;
  if (v5)
  {
    v13 = [(UnifiedField *)self endOfDocument];
  }

  v14 = [(UnifiedField *)self textRangeFromPosition:v12 toPosition:v13];
  [(UnifiedField *)self setSelectedTextRange:v14];

  if (v5)
  {
  }

LABEL_15:
}

- (void)_setTopHit:(id)a3
{
  v7 = a3;
  if (([(CompletionItem *)v7 isEquivalentTo:self->_topHit]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [(CompletionItem *)v7 isEquivalentTo:self->_lastTopHit];
  }

  self->_topHitInitiallySelected = v5;
  objc_storeStrong(&self->_lastTopHit, a3);
  [(UnifiedField *)self _setReflectedItem:v7 updateUserTypedPrefix:0];
  v6 = v7;
  if (self->_topHit != v7)
  {
    objc_storeStrong(&self->_topHit, a3);
    [(UnifiedField *)self _cancelPendingTopHitNavigation];
    [(UnifiedField *)self _updateReturnKey];
    v6 = v7;
  }
}

- (void)_restoreUserTypedText
{
  v3 = [(UnifiedField *)self text];
  v4 = [v3 isEqualToString:self->_userTypedText];

  if ((v4 & 1) == 0)
  {
    userTypedText = self->_userTypedText;

    [(UnifiedField *)self setText:userTypedText];
  }
}

- (void)_setReflectedItem:(id)a3 updateUserTypedPrefix:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (self->_reflectedItem != v6)
  {
    if (![(UnifiedField *)self _allowsReflectedTopHit])
    {

      v6 = 0;
    }

    objc_storeStrong(&self->_reflectedItem, v6);
    v7 = [(UnifiedField *)self delegate];
    [v7 unifiedFieldReflectedItemDidChange:self];

    if (self->_reflectedItem)
    {
      if (!self->_topHitCompletionView)
      {
        v8 = [TopHitCompletionView alloc];
        v9 = [(TopHitCompletionView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
        topHitCompletionView = self->_topHitCompletionView;
        self->_topHitCompletionView = v9;

        v11 = [MEMORY[0x277D75348] clearColor];
        [(TopHitCompletionView *)self->_topHitCompletionView setBackgroundColor:v11];

        [(TopHitCompletionView *)self->_topHitCompletionView setContentMode:3];
        v12 = [(UnifiedField *)self selectionHighlightColor];
        [(TopHitCompletionView *)self->_topHitCompletionView setHighlightColor:v12];
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
          if (v4)
          {
            [(UnifiedField *)self setText:&stru_2827BF158];
          }
        }

        else
        {
          v21 = [v16 substringToIndex:v19];
          if (v4)
          {
            v22 = [(UnifiedField *)self text];
            v23 = [v22 isEqualToString:v21];

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
        v27 = [(UnifiedField *)self _fieldEditor];
        [v27 setHidden:1];

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
    v3 = [(UnifiedField *)self _topHitForCurrentText];
    [(UnifiedField *)self _setTopHit:v3];

    if (v6)
    {
      v4 = [(UnifiedField *)self text];
      if ([(NSString *)v6 isEqualToString:v4])
      {
        v5 = [(UnifiedField *)self _waitingForTopHitForCurrentText];

        if (!v5)
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
  v3 = [(UnifiedField *)self _reflectedItemCompletionString];
  if (!v3)
  {
    [(UnifiedField *)self _removeTopHitCompletionView];
    goto LABEL_29;
  }

  v4 = *MEMORY[0x277D740C0];
  v72 = *MEMORY[0x277D740C0];
  v5 = [(UnifiedField *)self textColor];
  v73[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:&v72 count:1];

  v68 = v6;
  v7 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v3 attributes:v6];
  v67 = [(UnifiedField *)self attributedText];
  [v7 insertAttributedString:? atIndex:?];
  v8 = *MEMORY[0x277D740A8];
  v9 = [(UnifiedField *)self font];
  [v7 addAttribute:v8 value:v9 range:{0, objc_msgSend(v7, "length")}];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [(CompletionItem *)self->_reflectedItem safari_titleForReflection];
      if (v12)
      {
        goto LABEL_16;
      }
    }

LABEL_10:
    v12 = 0;
    p_layoutShouldBeRTL = &self->_layoutShouldBeRTL;
LABEL_21:
    v35 = v67;
LABEL_22:
    -[TopHitCompletionView setAttributedText:highlightStartIndex:layoutIsRTL:](self->_topHitCompletionView, "setAttributedText:highlightStartIndex:layoutIsRTL:", v7, [v35 length], 0);
    v34 = v7;
    goto LABEL_23;
  }

  v10 = self->_reflectedItem;
  v11 = [(CompletionItem *)v10 matchLocation];
  v12 = [(CompletionItem *)v10 title];
  if (!v12 || (v11 - 11) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v3;
    v14 = [(CompletionItem *)v10 alternativeDisplayTextForURL];
    v15 = [v14 length];

    if (v15)
    {
      v16 = [(CompletionItem *)v10 alternativeDisplayTextForURL];
    }

    else
    {
      v18 = [(CompletionItem *)v10 userVisibleURLString];
      v16 = [v18 safari_simplifiedUserVisibleURLStringWithSimplifications:135 forDisplayOnly:1 simplifiedStringOffset:0];

      v12 = v18;
    }

    v12 = v16;
    v3 = v13;
  }

  v19 = [(CompletionItem *)self->_reflectedItem reflectedStringForUserTypedString:self->_userTypedText];
  if (!v19)
  {
    [(UnifiedField *)self _restoreUserTypedText];
    [(CompletionItem *)v10 userVisibleURLString];
    v21 = v20 = v3;
    v22 = [v21 safari_simplifiedUserVisibleURLStringWithSimplifications:135 forDisplayOnly:1 simplifiedStringOffset:0];

    v3 = v20;
    v12 = v22;
  }

  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_16:
  v70[0] = v8;
  v23 = [(UnifiedField *)self font];
  v70[1] = v4;
  v71[0] = v23;
  v24 = [(UnifiedField *)self _inheritedInteractionTintColor];
  v71[1] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];

  p_layoutShouldBeRTL = &self->_layoutShouldBeRTL;
  layoutShouldBeRTL = self->_layoutShouldBeRTL;
  v27 = objc_alloc(MEMORY[0x277CCA898]);
  if (!layoutShouldBeRTL)
  {
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@" %C %@", 8212, v12];
    v37 = [v27 initWithString:v36 attributes:v25];

    [v7 appendAttributedString:v37];
    goto LABEL_21;
  }

  v66 = v3;
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C%@ %C ", 8206, v12, 8212];
  v29 = [v27 initWithString:v28 attributes:v25];

  v30 = [v29 string];
  v65 = [v30 length];

  v31 = objc_alloc(MEMORY[0x277CCAB48]);
  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 8206];
  v33 = [v31 initWithString:v32];

  [v33 appendAttributedString:v7];
  v34 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:v29];
  [v34 appendAttributedString:v33];

  if (!*p_layoutShouldBeRTL)
  {
    v7 = v34;
    v3 = v66;
    goto LABEL_21;
  }

  v3 = v66;
  v35 = v67;
  if (!v65)
  {
    v7 = v34;
    goto LABEL_22;
  }

  [(TopHitCompletionView *)self->_topHitCompletionView setAttributedText:v34 highlightStartIndex:v65 layoutIsRTL:1];
LABEL_23:
  v38 = CTLineCreateWithAttributedString(v34);
  v39 = [(UnifiedField *)self attributedText];
  v40 = round(CTLineGetOffsetForStringIndex(v38, [v39 length], 0));
  v41 = [(UnifiedField *)self _fieldEditor];
  [v41 bounds];
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
  v11 = [(TopHitCompletionView *)self->_topHitCompletionView superview];

  if (v11)
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

  v3 = [(UnifiedField *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 unifiedFieldCanBecomeFirstResponder:self];
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
  v4 = [(UnifiedField *)&v9 resignFirstResponder];
  v5 = v4;
  self->_isResigningFirstResponder = 0;
  if (self->_preserveSelectionOnResignFirstResponder && v4 != 0)
  {
    v7 = [(UnifiedField *)self interactionAssistant];
    [v7 activateSelection];
  }

  return v5;
}

- (BOOL)endEditing:(BOOL)a3
{
  preserveSelectionOnResignFirstResponder = self->_preserveSelectionOnResignFirstResponder;
  self->_preserveSelectionOnResignFirstResponder = 0;
  v6.receiver = self;
  v6.super_class = UnifiedField;
  result = [(UnifiedField *)&v6 endEditing:a3];
  self->_preserveSelectionOnResignFirstResponder = preserveSelectionOnResignFirstResponder;
  return result;
}

- (void)focusAndInsertCursorAtEnd
{
  [(UnifiedField *)self becomeFirstResponder];
  v5 = [(UnifiedField *)self endOfDocument];
  v3 = [(UnifiedField *)self endOfDocument];
  v4 = [(UnifiedField *)self textRangeFromPosition:v5 toPosition:v3];
  [(UnifiedField *)self setSelectedTextRange:v4];
}

- (void)clearUserTypedText
{
  v3 = [(UnifiedField *)self delegate];
  [v3 unifiedField:self willUpdateUserTypedText:self->_userTypedText toText:0];

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

    v20 = [(UnifiedField *)self _allCombinationsOfModifierKeys];
    v21 = [v20 safari_arrayByMappingObjectsUsingBlock:&__block_literal_global_179];

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

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (NSSelectorFromString(@"_define:") == a3 || NSSelectorFromString(@"_share:") == a3)
  {
    goto LABEL_22;
  }

  if (sel_pasteAndGo_ == a3 || sel_pasteAndSearch_ == a3)
  {
    v8 = [MEMORY[0x277D75810] generalPasteboard];
    v9 = [v8 safari_preferredPasteAndNavigateCommand];
    LOBYTE(a3) = [v9 action] == a3;

    goto LABEL_23;
  }

  if (sel_moveRightKeyPressed == a3 || sel_moveLeftKeyPressed == a3)
  {
    if (([(UnifiedField *)self hasMarkedText]& 1) == 0)
    {
      LOBYTE(a3) = self->_topHitCompletionView != 0;
      goto LABEL_23;
    }

LABEL_22:
    LOBYTE(a3) = 0;
    goto LABEL_23;
  }

  if (sel_nextCompletionSelectionByRowKeyPressed == a3 || sel_nextCompletionSelectionBySectionKeyPressed == a3 || sel_previousCompletionSelectionByRowKeyPressed == a3 || sel_previousCompletionSelectionBySectionKeyPressed == a3)
  {
    if (([(UnifiedField *)self hasMarkedText]& 1) == 0)
    {
      v11 = [(UnifiedField *)self delegate];
      LOBYTE(a3) = [v11 unifiedFieldShouldMoveCompletionSelection:self];

      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (sel_focusNextKeyViewKeyPressed == a3 || sel_focusPreviousKeyViewKeyPressed == a3 || sel_selectCompletionKeyPressed == a3)
  {
    LODWORD(a3) = [(UnifiedField *)self hasMarkedText]^ 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UnifiedField;
    LOBYTE(a3) = [(UnifiedField *)&v12 canPerformAction:a3 withSender:v6];
  }

LABEL_23:

  return a3;
}

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = [(UnifiedField *)self traitCollection];
  v6 = [v4 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v5];

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
  v3 = [(UnifiedField *)self delegate];
  [v3 unifiedField:self moveCompletionSelectionByRowOffset:1];
}

- (void)nextCompletionSelectionBySectionKeyPressed
{
  v3 = [(UnifiedField *)self delegate];
  [v3 unifiedField:self moveCompletionSelectionBySectionOffset:1];
}

- (void)previousCompletionSelectionByRowKeyPressed
{
  v3 = [(UnifiedField *)self delegate];
  [v3 unifiedField:self moveCompletionSelectionByRowOffset:-1];
}

- (void)previousCompletionSelectionBySectionKeyPressed
{
  v3 = [(UnifiedField *)self delegate];
  [v3 unifiedField:self moveCompletionSelectionBySectionOffset:-1];
}

- (void)focusNextKeyViewKeyPressed
{
  v3 = [(UnifiedField *)self delegate];
  [v3 unifiedField:self focusNextKeyView:1];
}

- (void)focusPreviousKeyViewKeyPressed
{
  v3 = [(UnifiedField *)self delegate];
  [v3 unifiedField:self focusNextKeyView:0];
}

- (void)selectCompletionKeyPressed
{
  v3 = [(UnifiedField *)self delegate];
  [v3 unifiedFieldSelectCompletionItemIfAvailable:self];
}

- (void)insertTextSuggestion:(id)a3
{
  v4 = a3;
  querySuggestions = self->_querySuggestions;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__UnifiedField_insertTextSuggestion___block_invoke;
  v10[3] = &unk_2781D91D8;
  v11 = v4;
  v6 = v4;
  v7 = [(NSArray *)querySuggestions safari_firstObjectPassingTest:v10];
  [(CKContextCompleter *)self->_contextCompleter logEngagement:v7 forInput:self->_userTypedText];
  v8 = [(UnifiedField *)self delegate];
  [v8 unifiedField:self didEngageWithQuerySuggestion:v7 forQueryString:self->_userTypedText];

  v9 = [v6 inputText];
  [(UnifiedField *)self setText:v9];

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

- (void)selectAll:(id)a3
{
  v4 = a3;
  if (self->_reflectedItem)
  {
    [(UnifiedField *)self _promoteCompletionToSelection];
  }

  v5.receiver = self;
  v5.super_class = UnifiedField;
  [(UnifiedField *)&v5 selectAll:v4];
}

- (void)setVoiceSearchState:(int64_t)a3
{
  if (self->_voiceSearchState != a3)
  {
    self->_voiceSearchState = a3;
    v8 = [MEMORY[0x277D75688] sharedInputModeController];
    if (a3 == 1)
    {
      [(UnifiedField *)self setText:0];
      v6 = [(UnifiedField *)self _voiceSearchInputModeForFirstResponder:[(UnifiedField *)self isFirstResponder]];
      [v8 toggleDictationForResponder:self withOption:v6 firstResponderSetupCompletion:0];
    }

    else if (!a3)
    {
      [v8 stopDictation];
    }

    v7 = [(UnifiedField *)self delegate];
    [v7 unifiedFieldVoiceSearchStateDidChange:self];
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

- (id)_voiceSearchInputModeForFirstResponder:(BOOL)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D75430]);
  v5 = v4;
  if (v3)
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