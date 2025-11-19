@interface ICTableColumnTextView
- (BOOL)atCellBoundaryForDirection:(unint64_t)a3;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)indirectScribbleInteraction:(id)a3 isElementFocused:(id)a4;
- (BOOL)resignFirstResponder;
- (BOOL)scribbleInteraction:(id)a3 shouldBeginAtLocation:(CGPoint)a4;
- (CGRect)_accessibilityBoundsForRange:(_NSRange)a3;
- (CGRect)accessibilityFrame;
- (CGRect)indirectScribbleInteraction:(id)a3 frameForElement:(id)a4;
- (CGRect)selectionRect;
- (ICHashtagController)hashtagController;
- (ICMentionsController)mentionsController;
- (ICNAEventReporter)eventReporter;
- (ICTableColumnTextStorage)columnTextStorage;
- (ICTableColumnTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (ICTableColumnTextViewDelegate)cellDelegate;
- (ICTableSelectionDelegate)selectionDelegate;
- (_NSRange)_accessibilitySelectedTextRange;
- (_NSRange)previousSelectedRange;
- (_NSRange)rangeInSelectedCellFromRangeInTextView:(_NSRange)a3;
- (_NSRange)rangeInTextViewFromRangeInSelectedCell:(_NSRange)a3;
- (id)_accessibilityAttributedValueForRange:(_NSRange *)a3;
- (id)_icaxAccessibilityAttributedStringFromOriginalString:(id)a3;
- (id)baseAttributedStringForAccessibility;
- (id)closestPositionToPoint:(CGPoint)a3;
- (id)inputAssistantItem;
- (id)keyCommands;
- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5;
- (id)textDroppableView:(id)a3 proposalForDrop:(id)a4;
- (id)undoManager;
- (int64_t)returnKeyType;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3;
- (void)addColumnLeft:(id)a3;
- (void)addColumnRight:(id)a3;
- (void)addRowDown:(id)a3;
- (void)addRowUp:(id)a3;
- (void)altMoveDown:(id)a3;
- (void)altMoveUp:(id)a3;
- (void)createLink:(id)a3 title:(id)a4 textSelection:(id)a5 range:(_NSRange)a6 addApproach:(int64_t)a7;
- (void)createNoteLinkAttachment:(id)a3 textSelection:(id)a4 range:(_NSRange)a5 addApproach:(int64_t)a6;
- (void)dealloc;
- (void)deleteBackward;
- (void)didPasteOrDropText:(id)a3 toRange:(id)a4;
- (void)eventReporterLostSession:(id)a3;
- (void)hashtagViewController:(id)a3 insertFutureHashtagWithText:(id)a4;
- (void)hashtagViewController:(id)a3 insertHashtagWithText:(id)a4;
- (void)hashtagViewController:(id)a3 insertUnknownInlineAttachmentWithText:(id)a4;
- (void)indirectScribbleInteraction:(id)a3 focusElementIfNeeded:(id)a4 referencePoint:(CGPoint)a5 completion:(id)a6;
- (void)indirectScribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5;
- (void)indirectScribbleInteraction:(id)a3 willBeginWritingInElement:(id)a4;
- (void)insertInlineAttachment:(id)a3 saveAndResumeEditingForAttachment:(id)a4 inNote:(id)a5;
- (void)insertInlineAttachment:(id)a3 saveAndResumeEditingForAttachment:(id)a4 inNote:(id)a5 forRange:(_NSRange)a6;
- (void)moveDown:(id)a3;
- (void)moveLeft:(id)a3;
- (void)moveLeftCellAfterDelete;
- (void)moveRight:(id)a3;
- (void)moveToBeginningOfCell:(id)a3;
- (void)moveToBeginningOfCellAndModifySelection:(id)a3;
- (void)moveToEndOfCell:(id)a3;
- (void)moveToEndOfCellAndModifySelection:(id)a3;
- (void)moveUp:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)openExperimentalHashtagUI:(id)a3;
- (void)openLinkEditor:(id)a3;
- (void)paste:(id)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)removeLinksFromCurrentSelection;
- (void)removeLinksFromTextSelection:(id)a3 range:(_NSRange)a4;
- (void)select:(id)a3;
- (void)selectAll:(id)a3;
- (void)setEditorController:(id)a3;
- (void)setupMenuController;
- (void)startEditingForTapGesture:(id)a3;
- (void)toggleBoldface:(id)a3;
- (void)toggleItalics:(id)a3;
- (void)toggleUnderline:(id)a3;
@end

@implementation ICTableColumnTextView

- (void)paste:(id)a3
{
  v4 = a3;
  v5 = [(ICTableColumnTextView *)self cellDelegate];
  v6 = [v5 pasteCellRange];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = ICTableColumnTextView;
    [(ICEditingTextView *)&v7 paste:v4];
  }
}

- (ICTableColumnTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  v9.receiver = self;
  v9.super_class = ICTableColumnTextView;
  v4 = [(ICBaseTextView *)&v9 initWithFrame:a4 textContainer:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [(ICTableColumnTextView *)v4 setScrollEnabled:0];
    [(ICTableColumnTextView *)v5 setBackgroundColor:0];
    [(ICTableColumnTextView *)v5 setTextContainerInset:*MEMORY[0x277D365F8], 0.0, *MEMORY[0x277D365E0], 0.0];
    [(ICTableColumnTextView *)v5 setWritingToolsBehavior:-1];
    [(ICEditingTextView *)v5 setupTextViewDragAndDropDelegates];
    v6 = [objc_alloc(MEMORY[0x277D759B0]) initWithDelegate:v5];
    [(ICTableColumnTextView *)v5 addInteraction:v6];
    v7 = [objc_alloc(MEMORY[0x277D755F8]) initWithDelegate:v5];
    [(ICTableColumnTextView *)v5 addInteraction:v7];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(ICEditingTextView *)self editorController];
  [v3 ic_removeObserver:self forKeyPath:@"textView.editable" context:&compoundliteral_5];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = ICTableColumnTextView;
  [(ICEditingTextView *)&v5 dealloc];
}

- (void)setEditorController:(id)a3
{
  v4 = a3;
  v5 = [(ICEditingTextView *)self editorController];
  [v5 ic_removeObserver:self forKeyPath:@"textView.editable" context:&compoundliteral_5];

  v7.receiver = self;
  v7.super_class = ICTableColumnTextView;
  [(ICEditingTextView *)&v7 setEditorController:v4];

  v6 = [(ICEditingTextView *)self editorController];
  [v6 ic_addObserver:self forKeyPath:@"textView.editable" context:&compoundliteral_5 explicitOptions:4];
}

- (ICTableColumnTextStorage)columnTextStorage
{
  objc_opt_class();
  v3 = [(ICTableColumnTextView *)self textStorage];
  v4 = ICDynamicCast();

  return v4;
}

- (CGRect)selectionRect
{
  v3 = [(ICTableColumnTextView *)self selectedTextRange];
  v4 = [v3 isEmpty];

  if (v4)
  {
    v5 = [(ICTableColumnTextView *)self selectedTextRange];
    v6 = [v5 start];
    [(ICEditingTextView *)self caretRectForPosition:v6];
    x = v7;
    y = v9;
    width = v11;
    height = v13;
  }

  else
  {
    v5 = [(ICTableColumnTextView *)self layoutManager];
    v15 = [(ICTableColumnTextView *)self selectedRange];
    v17 = [v5 glyphRangeForCharacterRange:v15 actualCharacterRange:{v16, 0}];
    v19 = v18;
    v20 = [(ICTableColumnTextView *)self textContainer];
    [v5 boundingRectForGlyphRange:v17 inTextContainer:{v19, v20}];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    [(ICTableColumnTextView *)self textContainerInset];
    v30 = v29;
    [(ICTableColumnTextView *)self textContainerInset];
    v32 = v31;
    v37.origin.x = v22;
    v37.origin.y = v24;
    v37.size.width = v26;
    v37.size.height = v28;
    v38 = CGRectOffset(v37, v30, v32);
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
  }

  v33 = x;
  v34 = y;
  v35 = width;
  v36 = height;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (BOOL)becomeFirstResponder
{
  UIAccessibilityPostNotification(*MEMORY[0x277D74050], self);
  v4.receiver = self;
  v4.super_class = ICTableColumnTextView;
  return [(ICEditingTextView *)&v4 becomeFirstResponder];
}

- (BOOL)resignFirstResponder
{
  v3 = 1;
  [(ICTableColumnTextView *)self setIsResigningFirstResponder:1];
  v4 = [(ICTableColumnTextView *)self cellDelegate];
  [v4 setPreventScrolling:1];

  if ([(ICTableColumnTextView *)self isFirstResponder])
  {
    v5 = [(ICEditingTextView *)self editorController];
    v6 = [v5 textView];
    v7 = [v6 shouldAvoidBecomingFirstResponder];

    v8 = [(ICEditingTextView *)self editorController];
    v9 = [v8 textView];
    [v9 setShouldAvoidBecomingFirstResponder:1];

    [(ICTableColumnTextView *)self setSelectedRange:[(ICTableColumnTextView *)self selectedRange], 0];
    v14.receiver = self;
    v14.super_class = ICTableColumnTextView;
    v3 = [(ICTableColumnTextView *)&v14 resignFirstResponder];
    v10 = [(ICEditingTextView *)self editorController];
    v11 = [v10 textView];
    [v11 setShouldAvoidBecomingFirstResponder:v7];
  }

  v12 = [(ICTableColumnTextView *)self cellDelegate];
  [v12 setPreventScrolling:0];

  [(ICTableColumnTextView *)self setIsResigningFirstResponder:0];
  return v3;
}

- (BOOL)canBecomeFirstResponder
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = ICTableColumnTextView;
  if ([(ICEditingTextView *)&v15 canBecomeFirstResponder])
  {
    v3 = [(ICTableColumnTextView *)self cellDelegate];
    v4 = [v3 containedInNoteSelection];

    if (v4)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v5 = [(ICTableColumnTextView *)self gestureRecognizers];
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v6)
      {
        v7 = *v12;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(v5);
            }

            if ([*(*(&v11 + 1) + 8 * i) state] == 3)
            {
              objc_opt_class();
              v9 = ICDynamicCast();

              if (v9)
              {
                LOBYTE(v6) = 1;
                goto LABEL_16;
              }
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v18.receiver = self;
  v18.super_class = ICTableColumnTextView;
  v6 = [(ICEditingTextView *)&v18 canPerformAction:a3 withSender:a4];
  if (sel_selectAll_ != a3 || v6 == 0)
  {
    v12 = v6;
    if (((sel_paste_ == a3) & v6) != 1)
    {
      if (sel_shiftReturn_ == a3)
      {
        return 1;
      }

      if (sel_moveLeft_ == a3)
      {
        v14 = self;
        v15 = 0;
      }

      else
      {
        if (sel_moveRight_ != a3)
        {
          return v12;
        }

        v14 = self;
        v15 = 1;
      }

      return [(ICTableColumnTextView *)v14 atCellBoundaryForDirection:v15];
    }

    v8 = [MEMORY[0x277D75810] generalPasteboard];
    v12 = [v8 hasStrings];
  }

  else
  {
    objc_opt_class();
    v9 = [(ICTableColumnTextView *)self textStorage];
    v10 = ICDynamicCast();

    v17 = 0;
    v11 = [v10 rowAtIndex:-[ICTableColumnTextView selectedRange](self rowRange:{"selectedRange", 0), &v16}];
    v12 = v17 != 0;
  }

  return v12;
}

- (void)select:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(ICTableColumnTextView *)self textStorage];
  v6 = ICDynamicCast();

  v10 = 0;
  v11 = 0;
  v7 = [v6 rowAtIndex:-[ICTableColumnTextView selectedRange](self rowRange:{"selectedRange"), &v10}];
  if (v11)
  {
    v9.receiver = self;
    v9.super_class = ICTableColumnTextView;
    [(ICEditingTextView *)&v9 select:v4];
  }

  else
  {
    v8 = [(ICTableColumnTextView *)self cellDelegate];
    [v8 selectCell];
  }
}

- (void)selectAll:(id)a3
{
  objc_opt_class();
  v4 = [(ICTableColumnTextView *)self textStorage];
  v5 = ICDynamicCast();

  v10 = 0;
  v11 = 0;
  v6 = [v5 rowAtIndex:-[ICTableColumnTextView selectedRange](self rowRange:{"selectedRange"), &v10}];
  [(ICTableColumnTextView *)self selectedRange];
  if (v7 == v11)
  {
    v8 = [(ICTableColumnTextView *)self cellDelegate];
    [v8 selectTable];
  }

  else
  {
    [(ICTableColumnTextView *)self setSelectedRange:v10];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __35__ICTableColumnTextView_selectAll___block_invoke;
    v9[3] = &unk_2781ABCF8;
    v9[4] = self;
    [MEMORY[0x277CD9FF0] setCompletionBlock:v9];
  }
}

void __35__ICTableColumnTextView_selectAll___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D75718] sharedMenuController];
  v2 = *(a1 + 32);
  [v2 selectionRect];
  [v3 showMenuFromView:v2 rect:?];
}

- (id)keyCommands
{
  v47.receiver = self;
  v47.super_class = ICTableColumnTextView;
  v3 = [(ICTableColumnTextView *)&v47 keyCommands];
  v4 = [v3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] array];
  }

  v7 = v6;

  if ([(ICTableColumnTextView *)self isFirstResponder])
  {
    v8 = [(ICTableColumnTextView *)self cellDelegate];
    v9 = [v8 acceptsKeystrokes];

    if (v9)
    {
      [(ICTableColumnTextView *)self selectedRange];
      if (v10)
      {
        v11 = *MEMORY[0x277D76B68];
        v12 = *MEMORY[0x277D76AC0];
        v13 = *MEMORY[0x277D76B48];
        v14 = *MEMORY[0x277D76B60];
      }

      else
      {
        if (![(ICTableColumnTextView *)self selectedRange])
        {
          v15 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76B68] modifierFlags:0 action:sel_moveUp_];
          [v7 addObject:v15];
        }

        v16 = [(ICTableColumnTextView *)self selectedRange];
        v17 = [(ICTableColumnTextView *)self textStorage];
        v18 = [v17 length];

        v12 = *MEMORY[0x277D76AC0];
        if (v16 == v18)
        {
          v19 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76AC0] modifierFlags:0 action:sel_moveDown_];
          [v7 addObject:v19];
        }

        v20 = [MEMORY[0x277D75650] keyCommandWithInput:v12 modifierFlags:0x80000 action:sel_altMoveDown_];
        [v7 addObject:v20];

        v11 = *MEMORY[0x277D76B68];
        v21 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76B68] modifierFlags:0x80000 action:sel_altMoveUp_];
        [v7 addObject:v21];

        objc_opt_class();
        v22 = [(ICTableColumnTextView *)self textStorage];
        v23 = ICDynamicCast();

        v45 = 0;
        v46 = 0;
        v44 = v23;
        v24 = [v23 rowAtIndex:-[ICTableColumnTextView selectedRange](self rowRange:{"selectedRange"), &v45}];
        v13 = *MEMORY[0x277D76B48];
        v25 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76B48] modifierFlags:0 action:sel_moveLeft_];
        v26 = [v25 ic_wantPriorityOverSystemBehavior];
        [v7 addObject:v26];

        v27 = [MEMORY[0x277D75650] keyCommandWithInput:v13 modifierFlags:0x80000 action:sel_moveLeft_];
        v28 = [v27 ic_wantPriorityOverSystemBehavior];
        [v7 addObject:v28];

        v14 = *MEMORY[0x277D76B60];
        v29 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76B60] modifierFlags:0 action:sel_moveRight_];
        v30 = [v29 ic_wantPriorityOverSystemBehavior];
        [v7 addObject:v30];

        v31 = [MEMORY[0x277D75650] keyCommandWithInput:v14 modifierFlags:0x80000 action:sel_moveRight_];
        v32 = [v31 ic_wantPriorityOverSystemBehavior];
        [v7 addObject:v32];

        if (!v46)
        {
          v33 = [MEMORY[0x277D75650] keyCommandWithInput:@"\b" modifierFlags:0 action:sel_moveLeft_];
          [v7 addObject:v33];
        }
      }

      v34 = [MEMORY[0x277D75650] keyCommandWithInput:v11 modifierFlags:0x100000 action:sel_moveToBeginningOfCell_];
      [v7 addObject:v34];

      v35 = [MEMORY[0x277D75650] keyCommandWithInput:v12 modifierFlags:0x100000 action:sel_moveToEndOfCell_];
      [v7 addObject:v35];

      v36 = [MEMORY[0x277D75650] keyCommandWithInput:v11 modifierFlags:1179648 action:sel_moveToBeginningOfCellAndModifySelection_];
      [v7 addObject:v36];

      v37 = [MEMORY[0x277D75650] keyCommandWithInput:v12 modifierFlags:1179648 action:sel_moveToEndOfCellAndModifySelection_];
      [v7 addObject:v37];

      v38 = [MEMORY[0x277D75650] keyCommandWithInput:v11 modifierFlags:1572864 action:sel_addRowUp_];
      [v7 addObject:v38];

      v39 = [MEMORY[0x277D75650] keyCommandWithInput:v12 modifierFlags:1572864 action:sel_addRowDown_];
      [v7 addObject:v39];

      v40 = [MEMORY[0x277D75650] keyCommandWithInput:v13 modifierFlags:1572864 action:sel_addColumnLeft_];
      [v7 addObject:v40];

      v41 = [MEMORY[0x277D75650] keyCommandWithInput:v14 modifierFlags:1572864 action:sel_addColumnRight_];
      [v7 addObject:v41];

      v42 = [MEMORY[0x277D75650] keyCommandWithInput:@"\r" modifierFlags:0x80000 action:sel_shiftReturn_];
      [v7 addObject:v42];
    }
  }

  return v7;
}

- (void)moveUp:(id)a3
{
  v3 = [(ICTableColumnTextView *)self cellDelegate];
  [v3 moveUpCell];
}

- (void)altMoveUp:(id)a3
{
  v4 = a3;
  if ([(ICTableColumnTextView *)self selectedRange])
  {
    if ([(ICTableColumnTextView *)self atCellBoundaryForDirection:0])
    {
      [(ICTableColumnTextView *)self moveUp:v4];
    }

    [(ICTableColumnTextView *)self moveToBeginningOfCell:v4];
  }
}

- (void)moveDown:(id)a3
{
  v3 = [(ICTableColumnTextView *)self cellDelegate];
  [v3 moveDownCell];
}

- (void)altMoveDown:(id)a3
{
  v7 = a3;
  v4 = [(ICTableColumnTextView *)self selectedRange];
  v5 = [(ICTableColumnTextView *)self textStorage];
  v6 = [v5 length];

  if (v4 != v6)
  {
    if ([(ICTableColumnTextView *)self atCellBoundaryForDirection:1])
    {
      [(ICTableColumnTextView *)self moveDown:v7];
    }

    [(ICTableColumnTextView *)self moveToEndOfCell:v7];
  }
}

- (void)moveLeft:(id)a3
{
  v3 = [(ICTableColumnTextView *)self cellDelegate];
  [v3 moveLeftCell];
}

- (void)moveRight:(id)a3
{
  v3 = [(ICTableColumnTextView *)self cellDelegate];
  [v3 moveRightCell];
}

- (void)addRowUp:(id)a3
{
  v4 = [(ICTableColumnTextView *)self cellDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICTableColumnTextView *)self cellDelegate];
    [v6 addRowAboveSelection:self];
  }
}

- (void)addRowDown:(id)a3
{
  v4 = [(ICTableColumnTextView *)self cellDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICTableColumnTextView *)self cellDelegate];
    [v6 addRowBelowSelection:self];
  }
}

- (void)addColumnLeft:(id)a3
{
  v4 = [(ICTableColumnTextView *)self cellDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICTableColumnTextView *)self cellDelegate];
    [v6 addColumnLeftOfSelection:self];
  }
}

- (void)addColumnRight:(id)a3
{
  v4 = [(ICTableColumnTextView *)self cellDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICTableColumnTextView *)self cellDelegate];
    [v6 addColumnRightOfSelection:self];
  }
}

- (void)deleteBackward
{
  objc_opt_class();
  v3 = [(ICTableColumnTextView *)self textStorage];
  v4 = ICDynamicCast();

  v11 = 0;
  v12 = 0;
  v5 = [v4 rowAtIndex:-[ICTableColumnTextView selectedRange](self rowRange:{"selectedRange"), &v11}];
  if (v12 || (-[ICTableColumnTextView cellDelegate](self, "cellDelegate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 acceptsKeystrokes], v6, !v7))
  {
    v8 = [(ICTableColumnTextView *)self selectedRange];
    if (v8 > v11 || ([(ICTableColumnTextView *)self selectedRange], v9))
    {
      v10.receiver = self;
      v10.super_class = ICTableColumnTextView;
      [(ICEditingTextView *)&v10 deleteBackward];
    }
  }

  else if ([(ICTableColumnTextView *)self isProcessingDelete])
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_moveLeftCellAfterDelete object:0];
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_finishProcessingDelete object:0];
    [(ICTableColumnTextView *)self performSelector:sel_finishProcessingDelete withObject:0 afterDelay:0.5];
  }

  else
  {
    [(ICTableColumnTextView *)self performSelector:sel_moveLeftCellAfterDelete withObject:0 afterDelay:0.5];
    [(ICTableColumnTextView *)self setIsProcessingDelete:1];
  }
}

- (void)moveLeftCellAfterDelete
{
  [(ICTableColumnTextView *)self finishProcessingDelete];
  v3 = [(ICTableColumnTextView *)self cellDelegate];
  [v3 moveLeftCell];
}

- (int64_t)returnKeyType
{
  if ([MEMORY[0x277D75418] ic_isLargeiPad])
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v38 = a3;
  v6 = a4;
  v7 = [v6 _modifierFlags];
  v8 = [v6 _modifiedInput];
  v9 = [v6 _unmodifiedInput];
  v10 = 0;
  if ([v8 length] == 1 && v7 == 0x80000)
  {
    v11 = [(ICTableColumnTextView *)self cellDelegate];
    if ([v11 acceptsKeystrokes])
    {
      if ([v8 isEqualToString:@"\t"])
      {

LABEL_9:
        [(ICEditingTextView *)self insertText:v8];
        v10 = 1;
        goto LABEL_10;
      }

      v12 = [v8 isEqualToString:@"\n"];

      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v10 = 0;
  }

LABEL_10:
  if ([v8 length] != 1)
  {
    goto LABEL_32;
  }

  if ((v7 & 0x180000) != 0)
  {
    goto LABEL_32;
  }

  v13 = [(ICTableColumnTextView *)self cellDelegate];
  v14 = [v13 acceptsKeystrokes];

  if (!v14)
  {
    goto LABEL_32;
  }

  v15 = [v8 characterAtIndex:0];
  v16 = v15;
  if (v15 == 13 || v15 == 10)
  {
    v19 = [(ICTableColumnTextView *)self markedTextRange];
    if (v19)
    {
      v18 = v19;
LABEL_31:

      goto LABEL_32;
    }

    if ([MEMORY[0x277D75658] ic_isShiftKeyPressed])
    {
      goto LABEL_32;
    }

    if ((v7 & 0x20000) != 0)
    {
      v18 = [(ICTableColumnTextView *)self cellDelegate];
      [v18 moveShiftReturnCell];
    }

    else
    {
      v20 = [MEMORY[0x277D75658] isInHardwareKeyboardMode];
      if (v16 == 13 && v20)
      {
        v21 = [(ICTableColumnTextView *)self cellDelegate];
        v18 = v21;
LABEL_29:
        [v21 moveReturnCell];
        goto LABEL_30;
      }

      v22 = [(ICTableColumnTextView *)self returnKeyType];
      v21 = [(ICTableColumnTextView *)self cellDelegate];
      v18 = v21;
      if (v22 != 4)
      {
        goto LABEL_29;
      }

      [v21 moveNextCell];
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  if (v15 == 9)
  {
    v17 = [(ICTableColumnTextView *)self cellDelegate];
    v18 = v17;
    if ((v7 & 0x20000) != 0)
    {
      [v17 movePrevCell];
    }

    else
    {
      [v17 moveTabCell];
    }

    goto LABEL_30;
  }

LABEL_32:
  v23 = [v9 isEqualToString:*MEMORY[0x277D76B48]];
  v37 = v9;
  v24 = [v9 isEqualToString:*MEMORY[0x277D76B60]];
  v25 = v24;
  v26 = v23 | v24;
  if ((v7 & 0x20000) != 0 && (v26 & 1) != 0 && [(ICTableColumnTextView *)self atCellBoundaryForDirection:v23 ^ 1u])
  {
    v27 = [(ICTableColumnTextView *)self cellDelegate];
    [v27 extendCellRangeSelectionInDirection:v23 ^ 1u toEnd:(v7 >> 20) & 1];
  }

  if ((v10 & 1) == 0)
  {
    v28 = [(ICTableColumnTextView *)self selectedRange];
    v30 = v29;
    v41.receiver = self;
    v41.super_class = ICTableColumnTextView;
    [(ICTableColumnTextView *)&v41 pressesBegan:v38 withEvent:v6];
    if (([v6 _isKeyDown] & v26) == 1)
    {
      if (v7 == 0x100000)
      {
        if ([(ICTableColumnTextView *)self selectedRange]== v28)
        {
          [(ICTableColumnTextView *)self selectedRange];
          if (v31 == v30)
          {
            if (v23)
            {
              v32 = [(ICTableColumnTextView *)self cellDelegate];
              [v32 moveLeftCell];
              goto LABEL_52;
            }

            if (v25)
            {
              v32 = [(ICTableColumnTextView *)self cellDelegate];
              [v32 moveRightCell];
              goto LABEL_52;
            }
          }
        }
      }

      else if (v7 == 0x80000)
      {
        objc_opt_class();
        v33 = [(ICTableColumnTextView *)self textStorage];
        v32 = ICDynamicCast();

        v40[0] = 0;
        v40[1] = 0;
        v34 = [v32 rowAtIndex:v28 rowRange:v40];
        v39[0] = 0;
        v39[1] = 0;
        v35 = [v32 rowAtIndex:-[ICTableColumnTextView selectedRange](self rowRange:{"selectedRange"), v39}];
        if (v40[0] != v39[0])
        {
          [(ICTableColumnTextView *)self setSelectedRange:v28, v30];
          if (v23)
          {
            v36 = [(ICTableColumnTextView *)self cellDelegate];
            [v36 moveLeftCell];
          }

          else
          {
            if ((v25 & 1) == 0)
            {
              goto LABEL_52;
            }

            v36 = [(ICTableColumnTextView *)self cellDelegate];
            [v36 moveRightCell];
          }
        }

LABEL_52:
      }
    }
  }
}

- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5
{
  v8 = a3;
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v9 = [(ICTableColumnTextView *)self beginningOfDocument];
    v10 = [(ICTableColumnTextView *)self offsetFromPosition:v9 toPosition:v8];

    v43.receiver = self;
    v43.super_class = ICTableColumnTextView;
    v11 = [(ICTableColumnTextView *)&v43 positionFromPosition:v8 inDirection:a4 offset:a5];
    v12 = [(ICTableColumnTextView *)self beginningOfDocument];
    v13 = [(ICTableColumnTextView *)self offsetFromPosition:v12 toPosition:v11];

    if (v13 == v10 && v13 >= 1)
    {
      v13 = v10 - 1;
      v15 = [(ICTableColumnTextView *)self beginningOfDocument];
      v16 = [(ICTableColumnTextView *)self positionFromPosition:v15 offset:v10 - 1];

      v11 = v16;
    }

    objc_opt_class();
    v17 = [(ICTableColumnTextView *)self textStorage];
    v18 = ICDynamicCast();

    v42[0] = 0;
    v42[1] = 0;
    v19 = [v18 rowAtIndex:v10 rowRange:v42];
    v41[0] = 0;
    v41[1] = 0;
    v20 = [v18 rowAtIndex:v13 rowRange:v41];
    if (v42[0] != v41[0])
    {
      [(ICEditingTextView *)self caretRectForPosition:v8];
      MidX = CGRectGetMidX(v45);
      v22 = [(ICTableColumnTextView *)self layoutManager];
      v23 = [v22 glyphIndexForCharacterAtIndex:v13];

      v24 = [(ICTableColumnTextView *)self layoutManager];
      [v24 lineFragmentRectForGlyphAtIndex:v23 effectiveRange:0 withoutAdditionalLayout:1];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v46.origin.x = v26;
      v46.origin.y = v28;
      v46.size.width = v30;
      v46.size.height = v32;
      if (!CGRectIsEmpty(v46))
      {
        v33 = [(ICTableColumnTextView *)self layoutManager];
        v47.origin.x = v26;
        v47.origin.y = v28;
        v47.size.width = v30;
        v47.size.height = v32;
        MidY = CGRectGetMidY(v47);
        v35 = [(ICTableColumnTextView *)self textContainer];
        v36 = [v33 characterIndexForPoint:v35 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{MidX, MidY}];

        if (v13 != v36)
        {
          v37 = [(ICTableColumnTextView *)self beginningOfDocument];
          v38 = [(ICTableColumnTextView *)self positionFromPosition:v37 offset:v36];

          v11 = v38;
        }
      }
    }
  }

  else
  {
    v40.receiver = self;
    v40.super_class = ICTableColumnTextView;
    v11 = [(ICTableColumnTextView *)&v40 positionFromPosition:v8 inDirection:a4 offset:a5];
  }

  return v11;
}

- (id)closestPositionToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v40 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v6 = [(ICTableColumnTextView *)self layoutManager];
  v7 = ICDynamicCast();
  v8 = [v7 tableLayoutManager];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = [(ICTableColumnTextView *)self columnTextStorage];
  v10 = [v9 populatedRows];

  v11 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v36;
    while (2)
    {
      v15 = 0;
      v16 = v13;
      do
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v35 + 1) + 8 * v15);
        v18 = [v8 rowPositions];
        v19 = [v18 objectForKey:v17];
        [v19 doubleValue];
        v21 = v20;

        if (y <= v21)
        {
          v13 = v16;
          goto LABEL_12;
        }

        v13 = v17;

        ++v15;
        v16 = v13;
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_12:

  v34.receiver = self;
  v34.super_class = ICTableColumnTextView;
  v22 = [(ICTableColumnTextView *)&v34 closestPositionToPoint:x, y];
  if (v13)
  {
    v23 = [(ICTableColumnTextView *)self columnTextStorage];
    v24 = [v23 characterRangeForRowID:v13];
    v26 = v25;

    v27 = [(ICTableColumnTextView *)self beginningOfDocument];
    v28 = [(ICTableColumnTextView *)self offsetFromPosition:v27 toPosition:v22];

    v29 = v24 + v26;
    if (v28 < v24 + v26)
    {
      v29 = v28;
    }

    if (v24 <= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = v24;
    }

    if (v28 != v30)
    {
      v31 = [(ICTableColumnTextView *)self beginningOfDocument];
      v32 = [(ICTableColumnTextView *)self positionFromPosition:v31 offset:v30];

      v22 = v32;
    }
  }

  return v22;
}

- (id)undoManager
{
  v2 = [(ICEditingTextView *)self TTTextStorage];
  v3 = [v2 undoManager];

  return v3;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v7.receiver = self;
  v7.super_class = ICTableColumnTextView;
  v3 = a3;
  v4 = [(ICEditingTextView *)&v7 gestureRecognizerShouldBegin:v3];
  NSClassFromString(&cfstr_Uitextselectio.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return v4 & ~isKindOfClass & 1;
}

- (void)startEditingForTapGesture:(id)a3
{
  v4 = a3;
  v5 = [(ICTableColumnTextView *)self superview];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(ICTableColumnTextView *)self cellDelegate];
  [v10 tappedTableAtLocation:{v7, v9}];
}

- (void)didPasteOrDropText:(id)a3 toRange:(id)a4
{
  v5 = [(ICTableColumnTextView *)self cellDelegate:a3];
  [v5 didPasteOrDropTextForTableColumnTextView:self];
}

- (id)textDroppableView:(id)a3 proposalForDrop:(id)a4
{
  v5 = a4;
  v6 = [v5 dropSession];
  v7 = [(ICEditingTextView *)self shouldAcceptDropSession:v6];

  if (v7)
  {
    if ([v5 isSameView])
    {
      v8 = [(ICTableColumnTextView *)self selectedRange];
      v9 = [(ICTableColumnTextView *)self columnTextStorage];
      [v9 logicalRangeForLocation:v8];

      v10 = [(ICTableColumnTextView *)self beginningOfDocument];
      v11 = [v5 dropPosition];
      [(ICTableColumnTextView *)self offsetFromPosition:v10 toPosition:v11];

      v12 = 3;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = 1;
  }

  v13 = [objc_alloc(MEMORY[0x277D75BA8]) initWithDropOperation:v12];

  return v13;
}

- (void)toggleBoldface:(id)a3
{
  v3.receiver = self;
  v3.super_class = ICTableColumnTextView;
  [(ICTableColumnTextView *)&v3 toggleBoldface:a3];
}

- (void)toggleItalics:(id)a3
{
  v3.receiver = self;
  v3.super_class = ICTableColumnTextView;
  [(ICTableColumnTextView *)&v3 toggleItalics:a3];
}

- (void)toggleUnderline:(id)a3
{
  v3.receiver = self;
  v3.super_class = ICTableColumnTextView;
  [(ICTableColumnTextView *)&v3 toggleUnderline:a3];
}

- (id)inputAssistantItem
{
  v2 = [(ICEditingTextView *)self editorController];
  v3 = [v2 textView];
  v4 = [v3 inputAssistantItem];

  return v4;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([(ICTableColumnTextView *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/Common/TextAttachmentUI/ICTableColumnTextView_iOS.m"]& 1) != 0)
  {
    v13 = [(ICTableColumnTextView *)self ic_shouldIgnoreObserveValue:v12 ofObject:v11 forKeyPath:v10];

    if ((v13 & 1) == 0)
    {
      v14 = [(ICEditingTextView *)self editorController];
      v15 = v14;
      if (v14 == v11)
      {
        v16 = [v10 isEqual:@"textView.editable"];

        if (v16)
        {
          v17 = [(ICEditingTextView *)self editorController];
          v18 = [v17 textView];
          v19 = [v18 isEditable];

          if (v19 != [(ICTableColumnTextView *)self isEditable])
          {
            v20 = [(ICTableColumnTextView *)self columnTextStorage];
            [v20 setShouldPreventUndoCommands:1];

            v21 = [(ICTableColumnTextView *)self columnTextStorage];
            [v21 beginPreventEditingUpdates];

            [(ICTableColumnTextView *)self setEditable:v19];
            v22 = [(ICTableColumnTextView *)self columnTextStorage];
            [v22 endPreventEditingUpdates];

            v23 = [(ICTableColumnTextView *)self columnTextStorage];
            [v23 setShouldPreventUndoCommands:0];
          }
        }
      }

      else
      {
      }
    }
  }

  else
  {
    v24.receiver = self;
    v24.super_class = ICTableColumnTextView;
    [(ICTableColumnTextView *)&v24 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (id)baseAttributedStringForAccessibility
{
  objc_opt_class();
  v3 = [(ICTableColumnTextView *)self textStorage];
  v4 = ICDynamicCast();

  v9 = 0;
  v10 = 0;
  v5 = [v4 rowAtIndex:-[ICTableColumnTextView selectedRange](self rowRange:{"selectedRange"), &v9}];
  v6 = [(ICTableColumnTextView *)self textStorage];
  v7 = [v6 attributedSubstringFromRange:{v9, v10}];

  return v7;
}

- (id)_accessibilityAttributedValueForRange:(_NSRange *)a3
{
  location = a3->location;
  length = a3->length;
  v6 = [(ICTableColumnTextView *)self baseAttributedStringForAccessibility];
  v7 = [(ICTableColumnTextView *)self _icaxAccessibilityAttributedStringFromOriginalString:v6];

  if (location <= [v7 length])
  {
    v9 = [v7 length];
    if (v9 - location >= length)
    {
      v10 = length;
    }

    else
    {
      v10 = v9 - location;
    }

    v8 = [v7 attributedSubstringFromRange:{location, v10}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_icaxAccessibilityAttributedStringFromOriginalString:(id)a3
{
  v4 = MEMORY[0x277CCAB48];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 string];
  v8 = [v6 initWithString:v7];

  v9 = *MEMORY[0x277D74060];
  v10 = [v5 length];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __78__ICTableColumnTextView__icaxAccessibilityAttributedStringFromOriginalString___block_invoke;
  v17 = &unk_2781AC8D0;
  v18 = self;
  v19 = v8;
  v11 = v8;
  [v5 enumerateAttribute:v9 inRange:0 options:v10 usingBlock:{0, &v14}];

  v12 = [v11 copy];

  return v12;
}

void __78__ICTableColumnTextView__icaxAccessibilityAttributedStringFromOriginalString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  v10 = ICDynamicCast();

  v8 = [*(a1 + 32) layoutManager];
  v9 = [v10 viewForLayoutManager:v8];

  if (v9)
  {
    [*(a1 + 40) addAttribute:*MEMORY[0x277CE6BD0] value:v9 range:{a3, a4}];
  }
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v4 = [(ICTableColumnTextView *)self selectedRange];

  v5 = [(ICTableColumnTextView *)self rangeInSelectedCellFromRangeInTextView:v4, v3];
  result.length = v6;
  result.location = v5;
  return result;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = a3.location + a3.length;
  v7 = [(ICTableColumnTextView *)self baseAttributedStringForAccessibility];
  v8 = [v7 length];

  if (v6 <= v8)
  {
    v10 = [(ICTableColumnTextView *)self rangeInTextViewFromRangeInSelectedCell:location, length];

    [(ICTableColumnTextView *)self setSelectedRange:v10, v9];
  }
}

- (CGRect)_accessibilityBoundsForRange:(_NSRange)a3
{
  v4 = [(ICTableColumnTextView *)self rangeInTextViewFromRangeInSelectedCell:a3.location, a3.length];
  v10.receiver = self;
  v10.super_class = ICTableColumnTextView;
  [(ICEditingTextView *)&v10 _accessibilityBoundsForRange:v4, v5];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (_NSRange)rangeInSelectedCellFromRangeInTextView:(_NSRange)a3
{
  v14 = 0;
  v15 = 0;
  objc_opt_class();
  v4 = [(ICTableColumnTextView *)self textStorage];
  v5 = ICDynamicCast();

  v6 = [v5 rowAtIndex:-[ICTableColumnTextView selectedRange](self rowRange:{"selectedRange"), &v14}];
  if (v6)
  {
    v7 = [(ICTableColumnTextView *)self selectedRange];
    if (v7 >= v14)
    {
      v8 = v7 - v14;
    }

    else
    {
      v8 = 0;
    }

    v9 = v15 - v8;
    [(ICTableColumnTextView *)self selectedRange];
    if (v9 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }
  }

  else
  {
    v11 = 0;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = v8;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (_NSRange)rangeInTextViewFromRangeInSelectedCell:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v12 = 0;
  v13 = 0;
  objc_opt_class();
  v6 = [(ICTableColumnTextView *)self textStorage];
  v7 = ICDynamicCast();

  v8 = [v7 rowAtIndex:-[ICTableColumnTextView selectedRange](self rowRange:{"selectedRange"), &v12}];
  if (v8)
  {
    v9 = v12 + location;
    if (v13 - location < length)
    {
      length = v13 - location;
    }
  }

  else
  {
    length = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v9;
  v11 = length;
  result.length = v11;
  result.location = v10;
  return result;
}

- (CGRect)accessibilityFrame
{
  objc_opt_class();
  v3 = [(ICTableColumnTextView *)self cellDelegate];
  v4 = ICDynamicCast();

  v5 = [v4 tableAXController];
  v6 = [v5 selectedCells];
  v7 = [v6 firstObject];
  [v7 accessibilityFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (BOOL)scribbleInteraction:(id)a3 shouldBeginAtLocation:(CGPoint)a4
{
  v5 = [(ICTableColumnTextView *)self cellDelegate:a3];
  if ([v5 isNoteEditable])
  {
    v6 = [(ICTableColumnTextView *)self canBecomeFirstResponder];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)indirectScribbleInteraction:(id)a3 willBeginWritingInElement:(id)a4
{
  v5 = [(ICTableColumnTextView *)self cellDelegate:a3];
  [v5 beginEditingSelectedRangeInTextView:self];
}

- (void)indirectScribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5
{
  v10 = a5;
  v6 = [(ICTableColumnTextView *)self columnTextStorage];
  v7 = [v6 populatedRows];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v6 populatedRows];
    v10[2](v10, v9);
  }

  else
  {
    v10[2](v10, MEMORY[0x277CBEBF8]);
  }
}

- (BOOL)indirectScribbleInteraction:(id)a3 isElementFocused:(id)a4
{
  v5 = a4;
  v6 = [(ICTableColumnTextView *)self isFirstResponder];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[elementIdentifier isKindOfClass:[NSUUID class]]" functionName:"-[ICTableColumnTextView indirectScribbleInteraction:isElementFocused:]" simulateCrash:1 showAlert:0 format:@"Expected NSUUID in indirectScribbleInteraction:isElementFocused:"];
  }

  objc_opt_class();
  v7 = ICDynamicCast();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v8 == 1)
  {
    v9 = [(ICTableColumnTextView *)self columnTextStorage];
    v10 = [v9 rowAtIndex:-[ICTableColumnTextView selectedRange](self rowRange:{"selectedRange"), 0}];
    LOBYTE(v6) = [v10 isEqual:v7];
  }

  return v6;
}

- (CGRect)indirectScribbleInteraction:(id)a3 frameForElement:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[elementIdentifier isKindOfClass:[NSUUID class]]" functionName:"-[ICTableColumnTextView indirectScribbleInteraction:frameForElement:]" simulateCrash:1 showAlert:0 format:@"Expected NSUUID in indirectScribbleInteraction:frameForElement:"];
  }

  objc_opt_class();
  v6 = ICDynamicCast();
  if (v6)
  {
    v7 = [(ICTableColumnTextView *)self cellDelegate];
    [v7 frameOfCellForColumnTextView:self row:v6];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v9 = *MEMORY[0x277CBF398];
    v11 = *(MEMORY[0x277CBF398] + 8);
    v13 = *(MEMORY[0x277CBF398] + 16);
    v15 = *(MEMORY[0x277CBF398] + 24);
  }

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)indirectScribbleInteraction:(id)a3 focusElementIfNeeded:(id)a4 referencePoint:(CGPoint)a5 completion:(id)a6
{
  y = a5.y;
  x = a5.x;
  v24 = a4;
  v10 = a6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[elementIdentifier isKindOfClass:[NSUUID class]]" functionName:"-[ICTableColumnTextView indirectScribbleInteraction:focusElementIfNeeded:referencePoint:completion:]" simulateCrash:1 showAlert:0 format:@"Expected NSUUID in indirectScribbleInteraction:focusElementIfNeeded:..."];
  }

  objc_opt_class();
  v11 = ICDynamicCast();
  v12 = [(ICTableColumnTextView *)self columnTextStorage];
  v13 = v12;
  if (v11 && ([v12 populatedRows], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "containsObject:", v11), v14, v15))
  {
    [(ICTableColumnTextView *)self becomeFirstResponder];
    v16 = [v13 characterRangeForRowID:v11];
    v18 = v17;
    v20.location = [(ICTableColumnTextView *)self selectedRange];
    if (v19 <= 1)
    {
      v20.length = 1;
    }

    else
    {
      v20.length = v19;
    }

    v26.length = v18 + 1;
    v26.location = v16;
    if (!NSIntersectionRange(v26, v20).length)
    {
      v21 = [(ICTableColumnTextView *)self closestPositionToPoint:x, y];
      if (v21)
      {
        v22 = [(ICTableColumnTextView *)self beginningOfDocument];
        v23 = [(ICTableColumnTextView *)self offsetFromPosition:v22 toPosition:v21];

        [(ICTableColumnTextView *)self setSelectedRange:v23, 0];
      }
    }
  }

  else
  {
    self = 0;
  }

  v10[2](v10, self);
}

- (void)setupMenuController
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (ICDebugModeEnabled())
  {
    v2 = [MEMORY[0x277D75718] sharedMenuController];
    v3 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:@"Tags" action:sel_openExperimentalHashtagUI_];
    v5[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
    [v2 ic_addMenuItemsIfNecessary:v4];
  }
}

- (void)openExperimentalHashtagUI:(id)a3
{
  if (ICDebugModeEnabled())
  {
    v6 = objc_alloc_init(ICHashtagViewController);
    [(ICHashtagViewController *)v6 setDelegate:self];
    v4 = [(ICTableColumnTextView *)self cellDelegate];
    v5 = [v4 viewController];
    [v5 presentViewController:v6 animated:1 completion:0];
  }
}

- (void)hashtagViewController:(id)a3 insertHashtagWithText:(id)a4
{
  v5 = a4;
  v6 = [(ICTableColumnTextView *)self cellDelegate];
  v15 = [v6 account];

  v7 = [(ICTableColumnTextView *)self cellDelegate];
  v8 = [v7 note];

  v9 = [(ICTableColumnTextView *)self cellDelegate];
  v10 = [v9 attachment];

  v11 = [MEMORY[0x277D35EE0] hashtagWithDisplayText:v5 account:v15 createIfNecessary:1];

  if (!v11)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((hashtag) != nil)" functionName:"-[ICTableColumnTextView hashtagViewController:insertHashtagWithText:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "hashtag"}];
  }

  v12 = MEMORY[0x277D35EF8];
  v13 = [v11 displayText];
  v14 = [v12 createHashtagAttachmentIfApplicableWithHashtagText:v13 forHashtag:v11 note:v8 parentAttachment:v10];

  if (v14)
  {
    [(ICTableColumnTextView *)self insertInlineAttachment:v14 saveAndResumeEditingForAttachment:v10 inNote:v8];
  }
}

- (void)hashtagViewController:(id)a3 insertUnknownInlineAttachmentWithText:(id)a4
{
  v5 = a4;
  v6 = [(ICTableColumnTextView *)self cellDelegate];
  v12 = [v6 note];

  v7 = [(ICTableColumnTextView *)self cellDelegate];
  v8 = [v7 attachment];

  v9 = MEMORY[0x277D35EF8];
  v10 = [*MEMORY[0x277D35D48] stringByAppendingString:@".unknown"];
  v11 = [v9 createInlineAttachmentIfApplicableWithTypeUTI:v10 altText:v5 tokenContentIdentifier:v5 note:v12 parentAttachment:v8];

  if (v11)
  {
    [(ICTableColumnTextView *)self insertInlineAttachment:v11 saveAndResumeEditingForAttachment:v8 inNote:v12];
  }
}

- (void)hashtagViewController:(id)a3 insertFutureHashtagWithText:(id)a4
{
  v5 = a4;
  v6 = [(ICTableColumnTextView *)self cellDelegate];
  v15 = [v6 account];

  v7 = [(ICTableColumnTextView *)self cellDelegate];
  v8 = [v7 note];

  v9 = [(ICTableColumnTextView *)self cellDelegate];
  v10 = [v9 attachment];

  v11 = [MEMORY[0x277D35EE0] hashtagWithDisplayText:v5 account:v15 createIfNecessary:1];

  if (!v11)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((hashtag) != nil)" functionName:"-[ICTableColumnTextView hashtagViewController:insertFutureHashtagWithText:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "hashtag"}];
  }

  v12 = MEMORY[0x277D35EF8];
  v13 = [v11 displayText];
  v14 = [v12 createHashtagAttachmentIfApplicableWithHashtagText:v13 forHashtag:v11 note:v8 parentAttachment:v10];

  if (v14)
  {
    [v14 requireMinimumSupportedVersionAndPropagateToChildObjects:{objc_msgSend(MEMORY[0x277D35E80], "currentNotesVersion") + 1}];
    [(ICTableColumnTextView *)self insertInlineAttachment:v14 saveAndResumeEditingForAttachment:v10 inNote:v8];
  }
}

- (void)insertInlineAttachment:(id)a3 saveAndResumeEditingForAttachment:(id)a4 inNote:(id)a5
{
  v8 = a5;
  v9 = a4;
  v12 = a3;
  v10 = [(ICTableColumnTextView *)self selectedRange];
  [(ICTableColumnTextView *)self insertInlineAttachment:v12 saveAndResumeEditingForAttachment:v9 inNote:v8 forRange:v10, v11];
}

- (void)insertInlineAttachment:(id)a3 saveAndResumeEditingForAttachment:(id)a4 inNote:(id)a5 forRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  objc_opt_class();
  v14 = [(ICTableColumnTextView *)self textStorage];
  v15 = ICCheckedDynamicCast();

  if (v15)
  {
    if (location > [v15 length])
    {
      v16 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v21.location = location;
        v21.length = length;
        [ICTableColumnTextView insertInlineAttachment:v21 saveAndResumeEditingForAttachment:v15 inNote:v16 forRange:?];
      }

      location = [v15 length];
    }

    v17 = [MEMORY[0x277D367F0] textAttachmentWithAttachment:v11];
    v18 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v17];
    v19 = [v18 mutableCopy];

    [v19 addAttribute:*MEMORY[0x277D74060] value:v17 range:{0, objc_msgSend(v19, "length")}];
    [v15 replaceCharactersInRange:location withAttributedString:{length, v19}];
    [(ICTableColumnTextView *)self setSelectedRange:location + length, 0];
    [v15 fixupAfterEditing];
    v20 = [(ICTableColumnTextView *)self cellDelegate];
    [v20 setNeedsSaveAfterUserEdit];

    [v11 updateChangeCountWithReason:@"Inserted inline attachment in table"];
    [v12 updateChangeCountWithReason:@"Inserted inline attachment in table"];
    [v13 updateChangeCountWithReason:@"Inserted inline attachment in table"];
    [v13 save];
  }
}

- (void)openLinkEditor:(id)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D35DF0];
  v5 = [(ICTableColumnTextView *)self textStorage];
  v6 = [(ICTableColumnTextView *)self selectedRange];
  v8 = [v4 URLForAttributedString:v5 range:{v6, v7}];

  v9 = [(ICTableColumnTextView *)self selectedText];
  v10 = [(ICTableColumnTextView *)self textStorage];
  v11 = [v10 attribute:*MEMORY[0x277D74060] atIndex:-[ICTableColumnTextView selectedRange](self effectiveRange:{"selectedRange"), 0}];

  objc_opt_class();
  v30 = v11;
  v29 = ICDynamicCast();
  v12 = [v29 attachment];
  v31 = xmmword_2154BBE70;
  if (v8 && (-[ICTableColumnTextView textStorage](self, "textStorage"), v13 = objc_claimAutoreleasedReturnValue(), v14 = *MEMORY[0x277D740E8], v15 = -[ICTableColumnTextView selectedRange](self, "selectedRange"), -[ICTableColumnTextView textStorage](self, "textStorage"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v13 attribute:v14 atIndex:v15 longestEffectiveRange:&v31 inRange:{0, objc_msgSend(v16, "length")}], v16, v13, v31 != 0x7FFFFFFFFFFFFFFFLL) && *(&v31 + 1))
  {
    v18 = [(ICTableColumnTextView *)self ic_textRangeFromCharacterRange:?];
    v19 = [(ICTableColumnTextView *)self textInRange:v18];

    v9 = v19;
  }

  else
  {
    *&v31 = [(ICTableColumnTextView *)self selectedRange];
    *(&v31 + 1) = v20;
  }

  v21 = [(ICTableColumnTextView *)self cellDelegate];
  v22 = [v21 note];
  v23 = [v22 mergeableString];
  v24 = [MEMORY[0x277CCAE60] valueWithRange:v31];
  v32[0] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  v26 = [v23 selectionForCharacterRanges:v25 selectionAffinity:1];

  v27 = [(ICEditingTextView *)self editorController];
  v28 = [ICLinkEditorControllerHelper presentFromViewController:v27 delegate:self text:v9 url:v8 attachment:v12 stringSelection:v26 range:v31 addApproach:3];
}

- (void)createLink:(id)a3 title:(id)a4 textSelection:(id)a5 range:(_NSRange)a6 addApproach:(int64_t)a7
{
  length = a6.length;
  location = a6.location;
  v12 = a4;
  v13 = a3;
  v14 = [(ICTableColumnTextView *)self textStorage];
  v43 = [v14 attributesAtIndex:location effectiveRange:0];

  v15 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v12];
  v16 = [v15 ic_range];
  [v15 addAttributes:v43 range:{v16, v17}];
  v18 = *MEMORY[0x277D740E8];
  v19 = [v15 ic_range];
  [v15 addAttribute:v18 value:v13 range:{v19, v20}];
  Helper_x8__DDResultAttributeName = gotLoadHelper_x8__DDResultAttributeName(v21);
  v24 = **(v23 + 472);
  v25 = [v15 ic_range];
  [v15 removeAttribute:v24 range:{v25, v26}];
  v27 = [(ICTableColumnTextView *)self textStorage];
  v28 = [v15 copy];
  [v27 replaceCharactersInRange:location withAttributedString:{length, v28}];

  v29 = [(ICTableColumnTextView *)self cellDelegate];
  [v29 setNeedsSaveAfterUserEdit];

  v30 = [(ICTableColumnTextView *)self cellDelegate];
  v31 = [v30 attachment];
  [v31 updateChangeCountWithReason:@"Created link in table"];

  v32 = [(ICTableColumnTextView *)self cellDelegate];
  v33 = [v32 note];
  [v33 updateChangeCountWithReason:@"Created link in table"];

  v34 = [(ICTableColumnTextView *)self cellDelegate];
  v35 = [v34 note];
  [v35 save];

  v36 = [(ICTableColumnTextView *)self eventReporter];
  v37 = [(ICTableColumnTextView *)self cellDelegate];
  v38 = [v37 note];
  [v36 submitAddLinkEvent:v38 addApproach:a7 url:v13];

  v39 = [(ICEditingTextView *)self editorController];
  [v39 startEditing];

  [(ICTableColumnTextView *)self becomeFirstResponder];
  v40 = [v15 length];
  if (length)
  {
    v41 = location;
  }

  else
  {
    v41 = v40 + location;
  }

  if (length)
  {
    v42 = v40;
  }

  else
  {
    v42 = 0;
  }

  [(ICTableColumnTextView *)self setSelectedRange:v41, v42];
}

- (void)createNoteLinkAttachment:(id)a3 textSelection:(id)a4 range:(_NSRange)a5 addApproach:(int64_t)a6
{
  length = a5.length;
  location = a5.location;
  v10 = MEMORY[0x277D35F28];
  v11 = a3;
  v12 = [(ICTableColumnTextView *)self cellDelegate];
  v13 = [v12 note];
  v14 = [v13 managedObjectContext];
  v15 = [v10 noteWithIdentifier:v11 context:v14];

  if (v15)
  {
    v16 = MEMORY[0x277D35EF8];
    v17 = [(ICTableColumnTextView *)self cellDelegate];
    v18 = [v17 note];
    v19 = [v16 newLinkAttachmentToNote:v15 fromNote:v18 parentAttachment:0];

    if (v19)
    {
      v20 = [(ICTableColumnTextView *)self cellDelegate];
      v21 = [v20 attachment];
      v22 = [(ICTableColumnTextView *)self cellDelegate];
      v23 = [v22 note];
      [(ICTableColumnTextView *)self insertInlineAttachment:v19 saveAndResumeEditingForAttachment:v21 inNote:v23 forRange:location, length];

      v24 = [(ICTableColumnTextView *)self eventReporter];
      v25 = [(ICTableColumnTextView *)self cellDelegate];
      v26 = [v25 note];
      [v24 submitAddLinkEvent:v26 addApproach:a6 contentType:1 isTokenized:1];

      v27 = [(ICEditingTextView *)self editorController];
      [v27 startEditing];

      [(ICTableColumnTextView *)self becomeFirstResponder];
      if (length)
      {
        v28 = [v19 displayText];
        -[ICTableColumnTextView setSelectedRange:](self, "setSelectedRange:", location, [v28 length]);
      }

      else
      {
        [(ICTableColumnTextView *)self setSelectedRange:location + 1, 0];
      }
    }
  }

  else
  {
    v29 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&dword_2151A1000, v29, OS_LOG_TYPE_DEFAULT, "Attempted to create Note Link Attachment to nil Note", v30, 2u);
    }
  }
}

- (void)removeLinksFromTextSelection:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [(ICTableColumnTextView *)self textStorage];
  [v7 removeAttribute:*MEMORY[0x277D740E8] range:{location, length}];

  v8 = [(ICTableColumnTextView *)self cellDelegate];
  [v8 setNeedsSaveAfterUserEdit];

  v9 = [(ICTableColumnTextView *)self cellDelegate];
  v10 = [v9 attachment];
  [v10 updateChangeCountWithReason:@"Removed link from table"];

  v11 = [(ICTableColumnTextView *)self cellDelegate];
  v12 = [v11 note];
  [v12 updateChangeCountWithReason:@"Removed link from table"];

  v14 = [(ICTableColumnTextView *)self cellDelegate];
  v13 = [v14 note];
  [v13 save];
}

- (void)removeLinksFromCurrentSelection
{
  v3 = [(ICTableColumnTextView *)self textStorage];
  v4 = [(ICTableColumnTextView *)self selectedRange];
  v6 = v5;
  [v3 removeAttribute:*MEMORY[0x277D740E8] range:{v4, v5}];
  v7 = *MEMORY[0x277D74060];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__ICTableColumnTextView_removeLinksFromCurrentSelection__block_invoke;
  v9[3] = &unk_2781AC5D8;
  v10 = v3;
  v8 = v3;
  [v8 enumerateAttribute:v7 inRange:v4 options:v6 usingBlock:{0, v9}];
}

void __56__ICTableColumnTextView_removeLinksFromCurrentSelection__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  v14 = ICDynamicCast();

  v8 = [v14 attachment];
  v9 = [v8 typeUTI];
  v10 = [v9 isEqualToString:*MEMORY[0x277D35D50]];

  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = [v14 attachment];
    v13 = [v12 displayText];
    [v11 replaceCharactersInRange:a3 withString:{a4, v13}];
  }
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter && [MEMORY[0x277D35978] isOptedInForAnalytics])
  {
    v3 = objc_alloc(MEMORY[0x277D35978]);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 initWithSubTrackerName:v5 view:self];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v6;

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:self selector:sel_eventReporterLostSession_ name:*MEMORY[0x277D35958] object:self->_eventReporter];
  }

  v9 = self->_eventReporter;

  return v9;
}

- (void)eventReporterLostSession:(id)a3
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  v5 = a3;

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D35958];
  v7 = [v5 object];

  [v8 removeObserver:self name:v6 object:v7];
}

- (ICTableColumnTextViewDelegate)cellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cellDelegate);

  return WeakRetained;
}

- (ICTableSelectionDelegate)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

- (_NSRange)previousSelectedRange
{
  p_previousSelectedRange = &self->_previousSelectedRange;
  location = self->_previousSelectedRange.location;
  length = p_previousSelectedRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (ICHashtagController)hashtagController
{
  WeakRetained = objc_loadWeakRetained(&self->_hashtagController);

  return WeakRetained;
}

- (ICMentionsController)mentionsController
{
  WeakRetained = objc_loadWeakRetained(&self->_mentionsController);

  return WeakRetained;
}

- (void)moveToBeginningOfCell:(id)a3
{
  v4 = [(ICTableColumnTextView *)self selectedRange];
  v5 = [(ICEditingTextView *)self TTTextStorage];
  v6 = [v5 logicalRangeForLocation:v4];

  if (v4 == v6)
  {
    v7 = [(ICTableColumnTextView *)self cellDelegate];
    [v7 moveUpCell];
  }

  else
  {

    [(ICTableColumnTextView *)self setSelectedRange:v6, 0];
  }
}

- (void)moveToEndOfCell:(id)a3
{
  v4 = [(ICTableColumnTextView *)self selectedRange];
  v6 = v4 + v5;
  v7 = [(ICEditingTextView *)self TTTextStorage];
  v8 = [v7 logicalRangeForLocation:v6];
  v10 = v9;

  if (v6 == v8 + v10)
  {
    v11 = [(ICTableColumnTextView *)self cellDelegate];
    [v11 moveDownCell];
  }

  else
  {

    [(ICTableColumnTextView *)self setSelectedRange:?];
  }
}

- (void)moveToBeginningOfCellAndModifySelection:(id)a3
{
  v4 = [(ICTableColumnTextView *)self selectedRange];
  v6 = v5;
  v7 = [(ICEditingTextView *)self TTTextStorage];
  v8 = [v7 logicalRangeForLocation:v4];

  v11.location = v8;
  v11.length = 0;
  v12.location = v4;
  v12.length = v6;
  v9 = NSUnionRange(v11, v12);

  [(ICTableColumnTextView *)self setSelectedRange:v9.location, v9.length];
}

- (void)moveToEndOfCellAndModifySelection:(id)a3
{
  v4 = [(ICTableColumnTextView *)self selectedRange];
  v6 = v5;
  v7 = [(ICEditingTextView *)self TTTextStorage];
  v8 = [v7 logicalRangeForLocation:v4];
  v10 = v9;

  v13.location = v8 + v10;
  v13.length = 0;
  v14.location = v4;
  v14.length = v6;
  v11 = NSUnionRange(v13, v14);

  [(ICTableColumnTextView *)self setSelectedRange:v11.location, v11.length];
}

- (BOOL)atCellBoundaryForDirection:(unint64_t)a3
{
  v5 = [(ICTableColumnTextView *)self selectedRange];
  v7 = v6;
  v20 = 0;
  v21 = 0;
  v8 = [(ICTableColumnTextView *)self columnTextStorage];
  v9 = [v8 rowAtIndex:v5 rowRange:&v20];
  v10 = v20;
  v11 = v21;
  if (v21)
  {
    v12 = v5 == v20;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = [(ICTableColumnTextView *)self textStorage];
    v14 = [v13 ic_writingDirectionAtIndex:v5];

    if (!(a3 | v14) || a3 == 1 && v14 == 1)
    {
      goto LABEL_16;
    }

    v10 = v20;
    v11 = v21;
  }

  else if (!v21)
  {
LABEL_16:
    v18 = 1;
    goto LABEL_18;
  }

  v15 = v5 + v7;
  if (v15 != v11 + v10)
  {
    v18 = 0;
    goto LABEL_18;
  }

  v16 = [(ICTableColumnTextView *)self textStorage];
  v17 = [v16 ic_writingDirectionAtIndex:v15 - 1];

  if (!a3 && v17 == 1)
  {
    goto LABEL_16;
  }

  v18 = 0;
  if (a3 == 1 && !v17)
  {
    goto LABEL_16;
  }

LABEL_18:

  return v18;
}

- (void)insertInlineAttachment:(NSObject *)a3 saveAndResumeEditingForAttachment:inNote:forRange:.cold.1(NSRange a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromRange(a1);
  v6 = 138412546;
  v7 = v5;
  v8 = 2048;
  v9 = [a2 length];
  _os_log_error_impl(&dword_2151A1000, a3, OS_LOG_TYPE_ERROR, "Attempted to addInlineAttachment:atTextRange: with an out of bound range: %@. Adding inline attachment to the end of text storage instead, %lu.", &v6, 0x16u);
}

@end