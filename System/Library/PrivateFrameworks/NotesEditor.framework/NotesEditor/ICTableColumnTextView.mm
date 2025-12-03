@interface ICTableColumnTextView
- (BOOL)atCellBoundaryForDirection:(unint64_t)direction;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)indirectScribbleInteraction:(id)interaction isElementFocused:(id)focused;
- (BOOL)resignFirstResponder;
- (BOOL)scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location;
- (CGRect)_accessibilityBoundsForRange:(_NSRange)range;
- (CGRect)accessibilityFrame;
- (CGRect)indirectScribbleInteraction:(id)interaction frameForElement:(id)element;
- (CGRect)selectionRect;
- (ICHashtagController)hashtagController;
- (ICMentionsController)mentionsController;
- (ICNAEventReporter)eventReporter;
- (ICTableColumnTextStorage)columnTextStorage;
- (ICTableColumnTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (ICTableColumnTextViewDelegate)cellDelegate;
- (ICTableSelectionDelegate)selectionDelegate;
- (_NSRange)_accessibilitySelectedTextRange;
- (_NSRange)previousSelectedRange;
- (_NSRange)rangeInSelectedCellFromRangeInTextView:(_NSRange)view;
- (_NSRange)rangeInTextViewFromRangeInSelectedCell:(_NSRange)cell;
- (id)_accessibilityAttributedValueForRange:(_NSRange *)range;
- (id)_icaxAccessibilityAttributedStringFromOriginalString:(id)string;
- (id)baseAttributedStringForAccessibility;
- (id)closestPositionToPoint:(CGPoint)point;
- (id)inputAssistantItem;
- (id)keyCommands;
- (id)positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset;
- (id)textDroppableView:(id)view proposalForDrop:(id)drop;
- (id)undoManager;
- (int64_t)returnKeyType;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
- (void)addColumnLeft:(id)left;
- (void)addColumnRight:(id)right;
- (void)addRowDown:(id)down;
- (void)addRowUp:(id)up;
- (void)altMoveDown:(id)down;
- (void)altMoveUp:(id)up;
- (void)createLink:(id)link title:(id)title textSelection:(id)selection range:(_NSRange)range addApproach:(int64_t)approach;
- (void)createNoteLinkAttachment:(id)attachment textSelection:(id)selection range:(_NSRange)range addApproach:(int64_t)approach;
- (void)dealloc;
- (void)deleteBackward;
- (void)didPasteOrDropText:(id)text toRange:(id)range;
- (void)eventReporterLostSession:(id)session;
- (void)hashtagViewController:(id)controller insertFutureHashtagWithText:(id)text;
- (void)hashtagViewController:(id)controller insertHashtagWithText:(id)text;
- (void)hashtagViewController:(id)controller insertUnknownInlineAttachmentWithText:(id)text;
- (void)indirectScribbleInteraction:(id)interaction focusElementIfNeeded:(id)needed referencePoint:(CGPoint)point completion:(id)completion;
- (void)indirectScribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion;
- (void)indirectScribbleInteraction:(id)interaction willBeginWritingInElement:(id)element;
- (void)insertInlineAttachment:(id)attachment saveAndResumeEditingForAttachment:(id)forAttachment inNote:(id)note;
- (void)insertInlineAttachment:(id)attachment saveAndResumeEditingForAttachment:(id)forAttachment inNote:(id)note forRange:(_NSRange)range;
- (void)moveDown:(id)down;
- (void)moveLeft:(id)left;
- (void)moveLeftCellAfterDelete;
- (void)moveRight:(id)right;
- (void)moveToBeginningOfCell:(id)cell;
- (void)moveToBeginningOfCellAndModifySelection:(id)selection;
- (void)moveToEndOfCell:(id)cell;
- (void)moveToEndOfCellAndModifySelection:(id)selection;
- (void)moveUp:(id)up;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)openExperimentalHashtagUI:(id)i;
- (void)openLinkEditor:(id)editor;
- (void)paste:(id)paste;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)removeLinksFromCurrentSelection;
- (void)removeLinksFromTextSelection:(id)selection range:(_NSRange)range;
- (void)select:(id)select;
- (void)selectAll:(id)all;
- (void)setEditorController:(id)controller;
- (void)setupMenuController;
- (void)startEditingForTapGesture:(id)gesture;
- (void)toggleBoldface:(id)boldface;
- (void)toggleItalics:(id)italics;
- (void)toggleUnderline:(id)underline;
@end

@implementation ICTableColumnTextView

- (void)paste:(id)paste
{
  pasteCopy = paste;
  cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
  pasteCellRange = [cellDelegate pasteCellRange];

  if ((pasteCellRange & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = ICTableColumnTextView;
    [(ICEditingTextView *)&v7 paste:pasteCopy];
  }
}

- (ICTableColumnTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  v9.receiver = self;
  v9.super_class = ICTableColumnTextView;
  v4 = [(ICBaseTextView *)&v9 initWithFrame:container textContainer:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  editorController = [(ICEditingTextView *)self editorController];
  [editorController ic_removeObserver:self forKeyPath:@"textView.editable" context:&compoundliteral_5];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = ICTableColumnTextView;
  [(ICEditingTextView *)&v5 dealloc];
}

- (void)setEditorController:(id)controller
{
  controllerCopy = controller;
  editorController = [(ICEditingTextView *)self editorController];
  [editorController ic_removeObserver:self forKeyPath:@"textView.editable" context:&compoundliteral_5];

  v7.receiver = self;
  v7.super_class = ICTableColumnTextView;
  [(ICEditingTextView *)&v7 setEditorController:controllerCopy];

  editorController2 = [(ICEditingTextView *)self editorController];
  [editorController2 ic_addObserver:self forKeyPath:@"textView.editable" context:&compoundliteral_5 explicitOptions:4];
}

- (ICTableColumnTextStorage)columnTextStorage
{
  objc_opt_class();
  textStorage = [(ICTableColumnTextView *)self textStorage];
  v4 = ICDynamicCast();

  return v4;
}

- (CGRect)selectionRect
{
  selectedTextRange = [(ICTableColumnTextView *)self selectedTextRange];
  isEmpty = [selectedTextRange isEmpty];

  if (isEmpty)
  {
    selectedTextRange2 = [(ICTableColumnTextView *)self selectedTextRange];
    start = [selectedTextRange2 start];
    [(ICEditingTextView *)self caretRectForPosition:start];
    x = v7;
    y = v9;
    width = v11;
    height = v13;
  }

  else
  {
    selectedTextRange2 = [(ICTableColumnTextView *)self layoutManager];
    selectedRange = [(ICTableColumnTextView *)self selectedRange];
    v17 = [selectedTextRange2 glyphRangeForCharacterRange:selectedRange actualCharacterRange:{v16, 0}];
    v19 = v18;
    textContainer = [(ICTableColumnTextView *)self textContainer];
    [selectedTextRange2 boundingRectForGlyphRange:v17 inTextContainer:{v19, textContainer}];
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
  resignFirstResponder = 1;
  [(ICTableColumnTextView *)self setIsResigningFirstResponder:1];
  cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
  [cellDelegate setPreventScrolling:1];

  if ([(ICTableColumnTextView *)self isFirstResponder])
  {
    editorController = [(ICEditingTextView *)self editorController];
    textView = [editorController textView];
    shouldAvoidBecomingFirstResponder = [textView shouldAvoidBecomingFirstResponder];

    editorController2 = [(ICEditingTextView *)self editorController];
    textView2 = [editorController2 textView];
    [textView2 setShouldAvoidBecomingFirstResponder:1];

    [(ICTableColumnTextView *)self setSelectedRange:[(ICTableColumnTextView *)self selectedRange], 0];
    v14.receiver = self;
    v14.super_class = ICTableColumnTextView;
    resignFirstResponder = [(ICTableColumnTextView *)&v14 resignFirstResponder];
    editorController3 = [(ICEditingTextView *)self editorController];
    textView3 = [editorController3 textView];
    [textView3 setShouldAvoidBecomingFirstResponder:shouldAvoidBecomingFirstResponder];
  }

  cellDelegate2 = [(ICTableColumnTextView *)self cellDelegate];
  [cellDelegate2 setPreventScrolling:0];

  [(ICTableColumnTextView *)self setIsResigningFirstResponder:0];
  return resignFirstResponder;
}

- (BOOL)canBecomeFirstResponder
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = ICTableColumnTextView;
  if ([(ICEditingTextView *)&v15 canBecomeFirstResponder])
  {
    cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
    containedInNoteSelection = [cellDelegate containedInNoteSelection];

    if (containedInNoteSelection)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      gestureRecognizers = [(ICTableColumnTextView *)self gestureRecognizers];
      v6 = [gestureRecognizers countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v6)
      {
        v7 = *v12;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(gestureRecognizers);
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

          v6 = [gestureRecognizers countByEnumeratingWithState:&v11 objects:v16 count:16];
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v18.receiver = self;
  v18.super_class = ICTableColumnTextView;
  v6 = [(ICEditingTextView *)&v18 canPerformAction:action withSender:sender];
  if (sel_selectAll_ != action || v6 == 0)
  {
    hasStrings = v6;
    if (((sel_paste_ == action) & v6) != 1)
    {
      if (sel_shiftReturn_ == action)
      {
        return 1;
      }

      if (sel_moveLeft_ == action)
      {
        selfCopy2 = self;
        v15 = 0;
      }

      else
      {
        if (sel_moveRight_ != action)
        {
          return hasStrings;
        }

        selfCopy2 = self;
        v15 = 1;
      }

      return [(ICTableColumnTextView *)selfCopy2 atCellBoundaryForDirection:v15];
    }

    generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
    hasStrings = [generalPasteboard hasStrings];
  }

  else
  {
    objc_opt_class();
    textStorage = [(ICTableColumnTextView *)self textStorage];
    v10 = ICDynamicCast();

    v17 = 0;
    v11 = [v10 rowAtIndex:-[ICTableColumnTextView selectedRange](self rowRange:{"selectedRange", 0), &v16}];
    hasStrings = v17 != 0;
  }

  return hasStrings;
}

- (void)select:(id)select
{
  selectCopy = select;
  objc_opt_class();
  textStorage = [(ICTableColumnTextView *)self textStorage];
  v6 = ICDynamicCast();

  v10 = 0;
  v11 = 0;
  v7 = [v6 rowAtIndex:-[ICTableColumnTextView selectedRange](self rowRange:{"selectedRange"), &v10}];
  if (v11)
  {
    v9.receiver = self;
    v9.super_class = ICTableColumnTextView;
    [(ICEditingTextView *)&v9 select:selectCopy];
  }

  else
  {
    cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
    [cellDelegate selectCell];
  }
}

- (void)selectAll:(id)all
{
  objc_opt_class();
  textStorage = [(ICTableColumnTextView *)self textStorage];
  v5 = ICDynamicCast();

  v10 = 0;
  v11 = 0;
  v6 = [v5 rowAtIndex:-[ICTableColumnTextView selectedRange](self rowRange:{"selectedRange"), &v10}];
  [(ICTableColumnTextView *)self selectedRange];
  if (v7 == v11)
  {
    cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
    [cellDelegate selectTable];
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
  keyCommands = [(ICTableColumnTextView *)&v47 keyCommands];
  v4 = [keyCommands mutableCopy];
  v5 = v4;
  if (v4)
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v7 = array;

  if ([(ICTableColumnTextView *)self isFirstResponder])
  {
    cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
    acceptsKeystrokes = [cellDelegate acceptsKeystrokes];

    if (acceptsKeystrokes)
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

        selectedRange = [(ICTableColumnTextView *)self selectedRange];
        textStorage = [(ICTableColumnTextView *)self textStorage];
        v18 = [textStorage length];

        v12 = *MEMORY[0x277D76AC0];
        if (selectedRange == v18)
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
        textStorage2 = [(ICTableColumnTextView *)self textStorage];
        v23 = ICDynamicCast();

        v45 = 0;
        v46 = 0;
        v44 = v23;
        v24 = [v23 rowAtIndex:-[ICTableColumnTextView selectedRange](self rowRange:{"selectedRange"), &v45}];
        v13 = *MEMORY[0x277D76B48];
        v25 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76B48] modifierFlags:0 action:sel_moveLeft_];
        ic_wantPriorityOverSystemBehavior = [v25 ic_wantPriorityOverSystemBehavior];
        [v7 addObject:ic_wantPriorityOverSystemBehavior];

        v27 = [MEMORY[0x277D75650] keyCommandWithInput:v13 modifierFlags:0x80000 action:sel_moveLeft_];
        ic_wantPriorityOverSystemBehavior2 = [v27 ic_wantPriorityOverSystemBehavior];
        [v7 addObject:ic_wantPriorityOverSystemBehavior2];

        v14 = *MEMORY[0x277D76B60];
        v29 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76B60] modifierFlags:0 action:sel_moveRight_];
        ic_wantPriorityOverSystemBehavior3 = [v29 ic_wantPriorityOverSystemBehavior];
        [v7 addObject:ic_wantPriorityOverSystemBehavior3];

        v31 = [MEMORY[0x277D75650] keyCommandWithInput:v14 modifierFlags:0x80000 action:sel_moveRight_];
        ic_wantPriorityOverSystemBehavior4 = [v31 ic_wantPriorityOverSystemBehavior];
        [v7 addObject:ic_wantPriorityOverSystemBehavior4];

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

- (void)moveUp:(id)up
{
  cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
  [cellDelegate moveUpCell];
}

- (void)altMoveUp:(id)up
{
  upCopy = up;
  if ([(ICTableColumnTextView *)self selectedRange])
  {
    if ([(ICTableColumnTextView *)self atCellBoundaryForDirection:0])
    {
      [(ICTableColumnTextView *)self moveUp:upCopy];
    }

    [(ICTableColumnTextView *)self moveToBeginningOfCell:upCopy];
  }
}

- (void)moveDown:(id)down
{
  cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
  [cellDelegate moveDownCell];
}

- (void)altMoveDown:(id)down
{
  downCopy = down;
  selectedRange = [(ICTableColumnTextView *)self selectedRange];
  textStorage = [(ICTableColumnTextView *)self textStorage];
  v6 = [textStorage length];

  if (selectedRange != v6)
  {
    if ([(ICTableColumnTextView *)self atCellBoundaryForDirection:1])
    {
      [(ICTableColumnTextView *)self moveDown:downCopy];
    }

    [(ICTableColumnTextView *)self moveToEndOfCell:downCopy];
  }
}

- (void)moveLeft:(id)left
{
  cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
  [cellDelegate moveLeftCell];
}

- (void)moveRight:(id)right
{
  cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
  [cellDelegate moveRightCell];
}

- (void)addRowUp:(id)up
{
  cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    cellDelegate2 = [(ICTableColumnTextView *)self cellDelegate];
    [cellDelegate2 addRowAboveSelection:self];
  }
}

- (void)addRowDown:(id)down
{
  cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    cellDelegate2 = [(ICTableColumnTextView *)self cellDelegate];
    [cellDelegate2 addRowBelowSelection:self];
  }
}

- (void)addColumnLeft:(id)left
{
  cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    cellDelegate2 = [(ICTableColumnTextView *)self cellDelegate];
    [cellDelegate2 addColumnLeftOfSelection:self];
  }
}

- (void)addColumnRight:(id)right
{
  cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    cellDelegate2 = [(ICTableColumnTextView *)self cellDelegate];
    [cellDelegate2 addColumnRightOfSelection:self];
  }
}

- (void)deleteBackward
{
  objc_opt_class();
  textStorage = [(ICTableColumnTextView *)self textStorage];
  v4 = ICDynamicCast();

  v11 = 0;
  v12 = 0;
  v5 = [v4 rowAtIndex:-[ICTableColumnTextView selectedRange](self rowRange:{"selectedRange"), &v11}];
  if (v12 || (-[ICTableColumnTextView cellDelegate](self, "cellDelegate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 acceptsKeystrokes], v6, !v7))
  {
    selectedRange = [(ICTableColumnTextView *)self selectedRange];
    if (selectedRange > v11 || ([(ICTableColumnTextView *)self selectedRange], v9))
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
  cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
  [cellDelegate moveLeftCell];
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

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  _modifierFlags = [eventCopy _modifierFlags];
  _modifiedInput = [eventCopy _modifiedInput];
  _unmodifiedInput = [eventCopy _unmodifiedInput];
  v10 = 0;
  if ([_modifiedInput length] == 1 && _modifierFlags == 0x80000)
  {
    cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
    if ([cellDelegate acceptsKeystrokes])
    {
      if ([_modifiedInput isEqualToString:@"\t"])
      {

LABEL_9:
        [(ICEditingTextView *)self insertText:_modifiedInput];
        v10 = 1;
        goto LABEL_10;
      }

      v12 = [_modifiedInput isEqualToString:@"\n"];

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
  if ([_modifiedInput length] != 1)
  {
    goto LABEL_32;
  }

  if ((_modifierFlags & 0x180000) != 0)
  {
    goto LABEL_32;
  }

  cellDelegate2 = [(ICTableColumnTextView *)self cellDelegate];
  acceptsKeystrokes = [cellDelegate2 acceptsKeystrokes];

  if (!acceptsKeystrokes)
  {
    goto LABEL_32;
  }

  v15 = [_modifiedInput characterAtIndex:0];
  v16 = v15;
  if (v15 == 13 || v15 == 10)
  {
    markedTextRange = [(ICTableColumnTextView *)self markedTextRange];
    if (markedTextRange)
    {
      cellDelegate3 = markedTextRange;
LABEL_31:

      goto LABEL_32;
    }

    if ([MEMORY[0x277D75658] ic_isShiftKeyPressed])
    {
      goto LABEL_32;
    }

    if ((_modifierFlags & 0x20000) != 0)
    {
      cellDelegate3 = [(ICTableColumnTextView *)self cellDelegate];
      [cellDelegate3 moveShiftReturnCell];
    }

    else
    {
      isInHardwareKeyboardMode = [MEMORY[0x277D75658] isInHardwareKeyboardMode];
      if (v16 == 13 && isInHardwareKeyboardMode)
      {
        cellDelegate4 = [(ICTableColumnTextView *)self cellDelegate];
        cellDelegate3 = cellDelegate4;
LABEL_29:
        [cellDelegate4 moveReturnCell];
        goto LABEL_30;
      }

      returnKeyType = [(ICTableColumnTextView *)self returnKeyType];
      cellDelegate4 = [(ICTableColumnTextView *)self cellDelegate];
      cellDelegate3 = cellDelegate4;
      if (returnKeyType != 4)
      {
        goto LABEL_29;
      }

      [cellDelegate4 moveNextCell];
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  if (v15 == 9)
  {
    cellDelegate5 = [(ICTableColumnTextView *)self cellDelegate];
    cellDelegate3 = cellDelegate5;
    if ((_modifierFlags & 0x20000) != 0)
    {
      [cellDelegate5 movePrevCell];
    }

    else
    {
      [cellDelegate5 moveTabCell];
    }

    goto LABEL_30;
  }

LABEL_32:
  v23 = [_unmodifiedInput isEqualToString:*MEMORY[0x277D76B48]];
  v37 = _unmodifiedInput;
  v24 = [_unmodifiedInput isEqualToString:*MEMORY[0x277D76B60]];
  v25 = v24;
  v26 = v23 | v24;
  if ((_modifierFlags & 0x20000) != 0 && (v26 & 1) != 0 && [(ICTableColumnTextView *)self atCellBoundaryForDirection:v23 ^ 1u])
  {
    cellDelegate6 = [(ICTableColumnTextView *)self cellDelegate];
    [cellDelegate6 extendCellRangeSelectionInDirection:v23 ^ 1u toEnd:(_modifierFlags >> 20) & 1];
  }

  if ((v10 & 1) == 0)
  {
    selectedRange = [(ICTableColumnTextView *)self selectedRange];
    v30 = v29;
    v41.receiver = self;
    v41.super_class = ICTableColumnTextView;
    [(ICTableColumnTextView *)&v41 pressesBegan:beganCopy withEvent:eventCopy];
    if (([eventCopy _isKeyDown] & v26) == 1)
    {
      if (_modifierFlags == 0x100000)
      {
        if ([(ICTableColumnTextView *)self selectedRange]== selectedRange)
        {
          [(ICTableColumnTextView *)self selectedRange];
          if (v31 == v30)
          {
            if (v23)
            {
              cellDelegate7 = [(ICTableColumnTextView *)self cellDelegate];
              [cellDelegate7 moveLeftCell];
              goto LABEL_52;
            }

            if (v25)
            {
              cellDelegate7 = [(ICTableColumnTextView *)self cellDelegate];
              [cellDelegate7 moveRightCell];
              goto LABEL_52;
            }
          }
        }
      }

      else if (_modifierFlags == 0x80000)
      {
        objc_opt_class();
        textStorage = [(ICTableColumnTextView *)self textStorage];
        cellDelegate7 = ICDynamicCast();

        v40[0] = 0;
        v40[1] = 0;
        v34 = [cellDelegate7 rowAtIndex:selectedRange rowRange:v40];
        v39[0] = 0;
        v39[1] = 0;
        v35 = [cellDelegate7 rowAtIndex:-[ICTableColumnTextView selectedRange](self rowRange:{"selectedRange"), v39}];
        if (v40[0] != v39[0])
        {
          [(ICTableColumnTextView *)self setSelectedRange:selectedRange, v30];
          if (v23)
          {
            cellDelegate8 = [(ICTableColumnTextView *)self cellDelegate];
            [cellDelegate8 moveLeftCell];
          }

          else
          {
            if ((v25 & 1) == 0)
            {
              goto LABEL_52;
            }

            cellDelegate8 = [(ICTableColumnTextView *)self cellDelegate];
            [cellDelegate8 moveRightCell];
          }
        }

LABEL_52:
      }
    }
  }
}

- (id)positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset
{
  positionCopy = position;
  if ((direction & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    beginningOfDocument = [(ICTableColumnTextView *)self beginningOfDocument];
    v10 = [(ICTableColumnTextView *)self offsetFromPosition:beginningOfDocument toPosition:positionCopy];

    v43.receiver = self;
    v43.super_class = ICTableColumnTextView;
    v11 = [(ICTableColumnTextView *)&v43 positionFromPosition:positionCopy inDirection:direction offset:offset];
    beginningOfDocument2 = [(ICTableColumnTextView *)self beginningOfDocument];
    v13 = [(ICTableColumnTextView *)self offsetFromPosition:beginningOfDocument2 toPosition:v11];

    if (v13 == v10 && v13 >= 1)
    {
      v13 = v10 - 1;
      beginningOfDocument3 = [(ICTableColumnTextView *)self beginningOfDocument];
      v16 = [(ICTableColumnTextView *)self positionFromPosition:beginningOfDocument3 offset:v10 - 1];

      v11 = v16;
    }

    objc_opt_class();
    textStorage = [(ICTableColumnTextView *)self textStorage];
    v18 = ICDynamicCast();

    v42[0] = 0;
    v42[1] = 0;
    v19 = [v18 rowAtIndex:v10 rowRange:v42];
    v41[0] = 0;
    v41[1] = 0;
    v20 = [v18 rowAtIndex:v13 rowRange:v41];
    if (v42[0] != v41[0])
    {
      [(ICEditingTextView *)self caretRectForPosition:positionCopy];
      MidX = CGRectGetMidX(v45);
      layoutManager = [(ICTableColumnTextView *)self layoutManager];
      v23 = [layoutManager glyphIndexForCharacterAtIndex:v13];

      layoutManager2 = [(ICTableColumnTextView *)self layoutManager];
      [layoutManager2 lineFragmentRectForGlyphAtIndex:v23 effectiveRange:0 withoutAdditionalLayout:1];
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
        layoutManager3 = [(ICTableColumnTextView *)self layoutManager];
        v47.origin.x = v26;
        v47.origin.y = v28;
        v47.size.width = v30;
        v47.size.height = v32;
        MidY = CGRectGetMidY(v47);
        textContainer = [(ICTableColumnTextView *)self textContainer];
        v36 = [layoutManager3 characterIndexForPoint:textContainer inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{MidX, MidY}];

        if (v13 != v36)
        {
          beginningOfDocument4 = [(ICTableColumnTextView *)self beginningOfDocument];
          v38 = [(ICTableColumnTextView *)self positionFromPosition:beginningOfDocument4 offset:v36];

          v11 = v38;
        }
      }
    }
  }

  else
  {
    v40.receiver = self;
    v40.super_class = ICTableColumnTextView;
    v11 = [(ICTableColumnTextView *)&v40 positionFromPosition:positionCopy inDirection:direction offset:offset];
  }

  return v11;
}

- (id)closestPositionToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v40 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  layoutManager = [(ICTableColumnTextView *)self layoutManager];
  v7 = ICDynamicCast();
  tableLayoutManager = [v7 tableLayoutManager];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  columnTextStorage = [(ICTableColumnTextView *)self columnTextStorage];
  populatedRows = [columnTextStorage populatedRows];

  v11 = [populatedRows countByEnumeratingWithState:&v35 objects:v39 count:16];
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
          objc_enumerationMutation(populatedRows);
        }

        v17 = *(*(&v35 + 1) + 8 * v15);
        rowPositions = [tableLayoutManager rowPositions];
        v19 = [rowPositions objectForKey:v17];
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
      v12 = [populatedRows countByEnumeratingWithState:&v35 objects:v39 count:16];
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
    columnTextStorage2 = [(ICTableColumnTextView *)self columnTextStorage];
    v24 = [columnTextStorage2 characterRangeForRowID:v13];
    v26 = v25;

    beginningOfDocument = [(ICTableColumnTextView *)self beginningOfDocument];
    v28 = [(ICTableColumnTextView *)self offsetFromPosition:beginningOfDocument toPosition:v22];

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
      beginningOfDocument2 = [(ICTableColumnTextView *)self beginningOfDocument];
      v32 = [(ICTableColumnTextView *)self positionFromPosition:beginningOfDocument2 offset:v30];

      v22 = v32;
    }
  }

  return v22;
}

- (id)undoManager
{
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  undoManager = [tTTextStorage undoManager];

  return undoManager;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  v7.receiver = self;
  v7.super_class = ICTableColumnTextView;
  beginCopy = begin;
  v4 = [(ICEditingTextView *)&v7 gestureRecognizerShouldBegin:beginCopy];
  NSClassFromString(&cfstr_Uitextselectio.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return v4 & ~isKindOfClass & 1;
}

- (void)startEditingForTapGesture:(id)gesture
{
  gestureCopy = gesture;
  superview = [(ICTableColumnTextView *)self superview];
  [gestureCopy locationInView:superview];
  v7 = v6;
  v9 = v8;

  cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
  [cellDelegate tappedTableAtLocation:{v7, v9}];
}

- (void)didPasteOrDropText:(id)text toRange:(id)range
{
  v5 = [(ICTableColumnTextView *)self cellDelegate:text];
  [v5 didPasteOrDropTextForTableColumnTextView:self];
}

- (id)textDroppableView:(id)view proposalForDrop:(id)drop
{
  dropCopy = drop;
  dropSession = [dropCopy dropSession];
  v7 = [(ICEditingTextView *)self shouldAcceptDropSession:dropSession];

  if (v7)
  {
    if ([dropCopy isSameView])
    {
      selectedRange = [(ICTableColumnTextView *)self selectedRange];
      columnTextStorage = [(ICTableColumnTextView *)self columnTextStorage];
      [columnTextStorage logicalRangeForLocation:selectedRange];

      beginningOfDocument = [(ICTableColumnTextView *)self beginningOfDocument];
      dropPosition = [dropCopy dropPosition];
      [(ICTableColumnTextView *)self offsetFromPosition:beginningOfDocument toPosition:dropPosition];

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

- (void)toggleBoldface:(id)boldface
{
  v3.receiver = self;
  v3.super_class = ICTableColumnTextView;
  [(ICTableColumnTextView *)&v3 toggleBoldface:boldface];
}

- (void)toggleItalics:(id)italics
{
  v3.receiver = self;
  v3.super_class = ICTableColumnTextView;
  [(ICTableColumnTextView *)&v3 toggleItalics:italics];
}

- (void)toggleUnderline:(id)underline
{
  v3.receiver = self;
  v3.super_class = ICTableColumnTextView;
  [(ICTableColumnTextView *)&v3 toggleUnderline:underline];
}

- (id)inputAssistantItem
{
  editorController = [(ICEditingTextView *)self editorController];
  textView = [editorController textView];
  inputAssistantItem = [textView inputAssistantItem];

  return inputAssistantItem;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (([(ICTableColumnTextView *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/Common/TextAttachmentUI/ICTableColumnTextView_iOS.m"]& 1) != 0)
  {
    v13 = [(ICTableColumnTextView *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if ((v13 & 1) == 0)
    {
      editorController = [(ICEditingTextView *)self editorController];
      v15 = editorController;
      if (editorController == objectCopy)
      {
        v16 = [pathCopy isEqual:@"textView.editable"];

        if (v16)
        {
          editorController2 = [(ICEditingTextView *)self editorController];
          textView = [editorController2 textView];
          isEditable = [textView isEditable];

          if (isEditable != [(ICTableColumnTextView *)self isEditable])
          {
            columnTextStorage = [(ICTableColumnTextView *)self columnTextStorage];
            [columnTextStorage setShouldPreventUndoCommands:1];

            columnTextStorage2 = [(ICTableColumnTextView *)self columnTextStorage];
            [columnTextStorage2 beginPreventEditingUpdates];

            [(ICTableColumnTextView *)self setEditable:isEditable];
            columnTextStorage3 = [(ICTableColumnTextView *)self columnTextStorage];
            [columnTextStorage3 endPreventEditingUpdates];

            columnTextStorage4 = [(ICTableColumnTextView *)self columnTextStorage];
            [columnTextStorage4 setShouldPreventUndoCommands:0];
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
    [(ICTableColumnTextView *)&v24 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (id)baseAttributedStringForAccessibility
{
  objc_opt_class();
  textStorage = [(ICTableColumnTextView *)self textStorage];
  v4 = ICDynamicCast();

  v9 = 0;
  v10 = 0;
  v5 = [v4 rowAtIndex:-[ICTableColumnTextView selectedRange](self rowRange:{"selectedRange"), &v9}];
  textStorage2 = [(ICTableColumnTextView *)self textStorage];
  v7 = [textStorage2 attributedSubstringFromRange:{v9, v10}];

  return v7;
}

- (id)_accessibilityAttributedValueForRange:(_NSRange *)range
{
  location = range->location;
  length = range->length;
  baseAttributedStringForAccessibility = [(ICTableColumnTextView *)self baseAttributedStringForAccessibility];
  v7 = [(ICTableColumnTextView *)self _icaxAccessibilityAttributedStringFromOriginalString:baseAttributedStringForAccessibility];

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

- (id)_icaxAccessibilityAttributedStringFromOriginalString:(id)string
{
  v4 = MEMORY[0x277CCAB48];
  stringCopy = string;
  v6 = [v4 alloc];
  string = [stringCopy string];
  v8 = [v6 initWithString:string];

  v9 = *MEMORY[0x277D74060];
  v10 = [stringCopy length];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __78__ICTableColumnTextView__icaxAccessibilityAttributedStringFromOriginalString___block_invoke;
  v17 = &unk_2781AC8D0;
  selfCopy = self;
  v19 = v8;
  v11 = v8;
  [stringCopy enumerateAttribute:v9 inRange:0 options:v10 usingBlock:{0, &v14}];

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
  selectedRange = [(ICTableColumnTextView *)self selectedRange];

  v5 = [(ICTableColumnTextView *)self rangeInSelectedCellFromRangeInTextView:selectedRange, v3];
  result.length = v6;
  result.location = v5;
  return result;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = range.location + range.length;
  baseAttributedStringForAccessibility = [(ICTableColumnTextView *)self baseAttributedStringForAccessibility];
  v8 = [baseAttributedStringForAccessibility length];

  if (v6 <= v8)
  {
    v10 = [(ICTableColumnTextView *)self rangeInTextViewFromRangeInSelectedCell:location, length];

    [(ICTableColumnTextView *)self setSelectedRange:v10, v9];
  }
}

- (CGRect)_accessibilityBoundsForRange:(_NSRange)range
{
  v4 = [(ICTableColumnTextView *)self rangeInTextViewFromRangeInSelectedCell:range.location, range.length];
  v10.receiver = self;
  v10.super_class = ICTableColumnTextView;
  [(ICEditingTextView *)&v10 _accessibilityBoundsForRange:v4, v5];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (_NSRange)rangeInSelectedCellFromRangeInTextView:(_NSRange)view
{
  v14 = 0;
  v15 = 0;
  objc_opt_class();
  textStorage = [(ICTableColumnTextView *)self textStorage];
  v5 = ICDynamicCast();

  v6 = [v5 rowAtIndex:-[ICTableColumnTextView selectedRange](self rowRange:{"selectedRange"), &v14}];
  if (v6)
  {
    selectedRange = [(ICTableColumnTextView *)self selectedRange];
    if (selectedRange >= v14)
    {
      v8 = selectedRange - v14;
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

- (_NSRange)rangeInTextViewFromRangeInSelectedCell:(_NSRange)cell
{
  length = cell.length;
  location = cell.location;
  v12 = 0;
  v13 = 0;
  objc_opt_class();
  textStorage = [(ICTableColumnTextView *)self textStorage];
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
  cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
  v4 = ICDynamicCast();

  tableAXController = [v4 tableAXController];
  selectedCells = [tableAXController selectedCells];
  firstObject = [selectedCells firstObject];
  [firstObject accessibilityFrame];
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

- (BOOL)scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location
{
  v5 = [(ICTableColumnTextView *)self cellDelegate:interaction];
  if ([v5 isNoteEditable])
  {
    canBecomeFirstResponder = [(ICTableColumnTextView *)self canBecomeFirstResponder];
  }

  else
  {
    canBecomeFirstResponder = 0;
  }

  return canBecomeFirstResponder;
}

- (void)indirectScribbleInteraction:(id)interaction willBeginWritingInElement:(id)element
{
  v5 = [(ICTableColumnTextView *)self cellDelegate:interaction];
  [v5 beginEditingSelectedRangeInTextView:self];
}

- (void)indirectScribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion
{
  completionCopy = completion;
  columnTextStorage = [(ICTableColumnTextView *)self columnTextStorage];
  populatedRows = [columnTextStorage populatedRows];
  v8 = [populatedRows count];

  if (v8)
  {
    populatedRows2 = [columnTextStorage populatedRows];
    completionCopy[2](completionCopy, populatedRows2);
  }

  else
  {
    completionCopy[2](completionCopy, MEMORY[0x277CBEBF8]);
  }
}

- (BOOL)indirectScribbleInteraction:(id)interaction isElementFocused:(id)focused
{
  focusedCopy = focused;
  isFirstResponder = [(ICTableColumnTextView *)self isFirstResponder];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[elementIdentifier isKindOfClass:[NSUUID class]]" functionName:"-[ICTableColumnTextView indirectScribbleInteraction:isElementFocused:]" simulateCrash:1 showAlert:0 format:@"Expected NSUUID in indirectScribbleInteraction:isElementFocused:"];
  }

  objc_opt_class();
  v7 = ICDynamicCast();
  if (v7)
  {
    v8 = isFirstResponder;
  }

  else
  {
    v8 = 0;
  }

  if (v8 == 1)
  {
    columnTextStorage = [(ICTableColumnTextView *)self columnTextStorage];
    v10 = [columnTextStorage rowAtIndex:-[ICTableColumnTextView selectedRange](self rowRange:{"selectedRange"), 0}];
    LOBYTE(isFirstResponder) = [v10 isEqual:v7];
  }

  return isFirstResponder;
}

- (CGRect)indirectScribbleInteraction:(id)interaction frameForElement:(id)element
{
  elementCopy = element;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[elementIdentifier isKindOfClass:[NSUUID class]]" functionName:"-[ICTableColumnTextView indirectScribbleInteraction:frameForElement:]" simulateCrash:1 showAlert:0 format:@"Expected NSUUID in indirectScribbleInteraction:frameForElement:"];
  }

  objc_opt_class();
  v6 = ICDynamicCast();
  if (v6)
  {
    cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
    [cellDelegate frameOfCellForColumnTextView:self row:v6];
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

- (void)indirectScribbleInteraction:(id)interaction focusElementIfNeeded:(id)needed referencePoint:(CGPoint)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  neededCopy = needed;
  completionCopy = completion;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[elementIdentifier isKindOfClass:[NSUUID class]]" functionName:"-[ICTableColumnTextView indirectScribbleInteraction:focusElementIfNeeded:referencePoint:completion:]" simulateCrash:1 showAlert:0 format:@"Expected NSUUID in indirectScribbleInteraction:focusElementIfNeeded:..."];
  }

  objc_opt_class();
  v11 = ICDynamicCast();
  columnTextStorage = [(ICTableColumnTextView *)self columnTextStorage];
  v13 = columnTextStorage;
  if (v11 && ([columnTextStorage populatedRows], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "containsObject:", v11), v14, v15))
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
        beginningOfDocument = [(ICTableColumnTextView *)self beginningOfDocument];
        v23 = [(ICTableColumnTextView *)self offsetFromPosition:beginningOfDocument toPosition:v21];

        [(ICTableColumnTextView *)self setSelectedRange:v23, 0];
      }
    }
  }

  else
  {
    self = 0;
  }

  completionCopy[2](completionCopy, self);
}

- (void)setupMenuController
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (ICDebugModeEnabled())
  {
    mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
    v3 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:@"Tags" action:sel_openExperimentalHashtagUI_];
    v5[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
    [mEMORY[0x277D75718] ic_addMenuItemsIfNecessary:v4];
  }
}

- (void)openExperimentalHashtagUI:(id)i
{
  if (ICDebugModeEnabled())
  {
    v6 = objc_alloc_init(ICHashtagViewController);
    [(ICHashtagViewController *)v6 setDelegate:self];
    cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
    viewController = [cellDelegate viewController];
    [viewController presentViewController:v6 animated:1 completion:0];
  }
}

- (void)hashtagViewController:(id)controller insertHashtagWithText:(id)text
{
  textCopy = text;
  cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
  account = [cellDelegate account];

  cellDelegate2 = [(ICTableColumnTextView *)self cellDelegate];
  note = [cellDelegate2 note];

  cellDelegate3 = [(ICTableColumnTextView *)self cellDelegate];
  attachment = [cellDelegate3 attachment];

  v11 = [MEMORY[0x277D35EE0] hashtagWithDisplayText:textCopy account:account createIfNecessary:1];

  if (!v11)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((hashtag) != nil)" functionName:"-[ICTableColumnTextView hashtagViewController:insertHashtagWithText:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "hashtag"}];
  }

  v12 = MEMORY[0x277D35EF8];
  displayText = [v11 displayText];
  v14 = [v12 createHashtagAttachmentIfApplicableWithHashtagText:displayText forHashtag:v11 note:note parentAttachment:attachment];

  if (v14)
  {
    [(ICTableColumnTextView *)self insertInlineAttachment:v14 saveAndResumeEditingForAttachment:attachment inNote:note];
  }
}

- (void)hashtagViewController:(id)controller insertUnknownInlineAttachmentWithText:(id)text
{
  textCopy = text;
  cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
  note = [cellDelegate note];

  cellDelegate2 = [(ICTableColumnTextView *)self cellDelegate];
  attachment = [cellDelegate2 attachment];

  v9 = MEMORY[0x277D35EF8];
  v10 = [*MEMORY[0x277D35D48] stringByAppendingString:@".unknown"];
  v11 = [v9 createInlineAttachmentIfApplicableWithTypeUTI:v10 altText:textCopy tokenContentIdentifier:textCopy note:note parentAttachment:attachment];

  if (v11)
  {
    [(ICTableColumnTextView *)self insertInlineAttachment:v11 saveAndResumeEditingForAttachment:attachment inNote:note];
  }
}

- (void)hashtagViewController:(id)controller insertFutureHashtagWithText:(id)text
{
  textCopy = text;
  cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
  account = [cellDelegate account];

  cellDelegate2 = [(ICTableColumnTextView *)self cellDelegate];
  note = [cellDelegate2 note];

  cellDelegate3 = [(ICTableColumnTextView *)self cellDelegate];
  attachment = [cellDelegate3 attachment];

  v11 = [MEMORY[0x277D35EE0] hashtagWithDisplayText:textCopy account:account createIfNecessary:1];

  if (!v11)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((hashtag) != nil)" functionName:"-[ICTableColumnTextView hashtagViewController:insertFutureHashtagWithText:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "hashtag"}];
  }

  v12 = MEMORY[0x277D35EF8];
  displayText = [v11 displayText];
  v14 = [v12 createHashtagAttachmentIfApplicableWithHashtagText:displayText forHashtag:v11 note:note parentAttachment:attachment];

  if (v14)
  {
    [v14 requireMinimumSupportedVersionAndPropagateToChildObjects:{objc_msgSend(MEMORY[0x277D35E80], "currentNotesVersion") + 1}];
    [(ICTableColumnTextView *)self insertInlineAttachment:v14 saveAndResumeEditingForAttachment:attachment inNote:note];
  }
}

- (void)insertInlineAttachment:(id)attachment saveAndResumeEditingForAttachment:(id)forAttachment inNote:(id)note
{
  noteCopy = note;
  forAttachmentCopy = forAttachment;
  attachmentCopy = attachment;
  selectedRange = [(ICTableColumnTextView *)self selectedRange];
  [(ICTableColumnTextView *)self insertInlineAttachment:attachmentCopy saveAndResumeEditingForAttachment:forAttachmentCopy inNote:noteCopy forRange:selectedRange, v11];
}

- (void)insertInlineAttachment:(id)attachment saveAndResumeEditingForAttachment:(id)forAttachment inNote:(id)note forRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attachmentCopy = attachment;
  forAttachmentCopy = forAttachment;
  noteCopy = note;
  objc_opt_class();
  textStorage = [(ICTableColumnTextView *)self textStorage];
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

    v17 = [MEMORY[0x277D367F0] textAttachmentWithAttachment:attachmentCopy];
    v18 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v17];
    v19 = [v18 mutableCopy];

    [v19 addAttribute:*MEMORY[0x277D74060] value:v17 range:{0, objc_msgSend(v19, "length")}];
    [v15 replaceCharactersInRange:location withAttributedString:{length, v19}];
    [(ICTableColumnTextView *)self setSelectedRange:location + length, 0];
    [v15 fixupAfterEditing];
    cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
    [cellDelegate setNeedsSaveAfterUserEdit];

    [attachmentCopy updateChangeCountWithReason:@"Inserted inline attachment in table"];
    [forAttachmentCopy updateChangeCountWithReason:@"Inserted inline attachment in table"];
    [noteCopy updateChangeCountWithReason:@"Inserted inline attachment in table"];
    [noteCopy save];
  }
}

- (void)openLinkEditor:(id)editor
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D35DF0];
  textStorage = [(ICTableColumnTextView *)self textStorage];
  selectedRange = [(ICTableColumnTextView *)self selectedRange];
  v8 = [v4 URLForAttributedString:textStorage range:{selectedRange, v7}];

  selectedText = [(ICTableColumnTextView *)self selectedText];
  textStorage2 = [(ICTableColumnTextView *)self textStorage];
  v11 = [textStorage2 attribute:*MEMORY[0x277D74060] atIndex:-[ICTableColumnTextView selectedRange](self effectiveRange:{"selectedRange"), 0}];

  objc_opt_class();
  v30 = v11;
  v29 = ICDynamicCast();
  attachment = [v29 attachment];
  v31 = xmmword_2154BBE70;
  if (v8 && (-[ICTableColumnTextView textStorage](self, "textStorage"), v13 = objc_claimAutoreleasedReturnValue(), v14 = *MEMORY[0x277D740E8], v15 = -[ICTableColumnTextView selectedRange](self, "selectedRange"), -[ICTableColumnTextView textStorage](self, "textStorage"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v13 attribute:v14 atIndex:v15 longestEffectiveRange:&v31 inRange:{0, objc_msgSend(v16, "length")}], v16, v13, v31 != 0x7FFFFFFFFFFFFFFFLL) && *(&v31 + 1))
  {
    v18 = [(ICTableColumnTextView *)self ic_textRangeFromCharacterRange:?];
    v19 = [(ICTableColumnTextView *)self textInRange:v18];

    selectedText = v19;
  }

  else
  {
    *&v31 = [(ICTableColumnTextView *)self selectedRange];
    *(&v31 + 1) = v20;
  }

  cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
  note = [cellDelegate note];
  mergeableString = [note mergeableString];
  v24 = [MEMORY[0x277CCAE60] valueWithRange:v31];
  v32[0] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  v26 = [mergeableString selectionForCharacterRanges:v25 selectionAffinity:1];

  editorController = [(ICEditingTextView *)self editorController];
  v28 = [ICLinkEditorControllerHelper presentFromViewController:editorController delegate:self text:selectedText url:v8 attachment:attachment stringSelection:v26 range:v31 addApproach:3];
}

- (void)createLink:(id)link title:(id)title textSelection:(id)selection range:(_NSRange)range addApproach:(int64_t)approach
{
  length = range.length;
  location = range.location;
  titleCopy = title;
  linkCopy = link;
  textStorage = [(ICTableColumnTextView *)self textStorage];
  v43 = [textStorage attributesAtIndex:location effectiveRange:0];

  v15 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:titleCopy];
  ic_range = [v15 ic_range];
  [v15 addAttributes:v43 range:{ic_range, v17}];
  v18 = *MEMORY[0x277D740E8];
  ic_range2 = [v15 ic_range];
  [v15 addAttribute:v18 value:linkCopy range:{ic_range2, v20}];
  Helper_x8__DDResultAttributeName = gotLoadHelper_x8__DDResultAttributeName(v21);
  v24 = **(v23 + 472);
  ic_range3 = [v15 ic_range];
  [v15 removeAttribute:v24 range:{ic_range3, v26}];
  textStorage2 = [(ICTableColumnTextView *)self textStorage];
  v28 = [v15 copy];
  [textStorage2 replaceCharactersInRange:location withAttributedString:{length, v28}];

  cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
  [cellDelegate setNeedsSaveAfterUserEdit];

  cellDelegate2 = [(ICTableColumnTextView *)self cellDelegate];
  attachment = [cellDelegate2 attachment];
  [attachment updateChangeCountWithReason:@"Created link in table"];

  cellDelegate3 = [(ICTableColumnTextView *)self cellDelegate];
  note = [cellDelegate3 note];
  [note updateChangeCountWithReason:@"Created link in table"];

  cellDelegate4 = [(ICTableColumnTextView *)self cellDelegate];
  note2 = [cellDelegate4 note];
  [note2 save];

  eventReporter = [(ICTableColumnTextView *)self eventReporter];
  cellDelegate5 = [(ICTableColumnTextView *)self cellDelegate];
  note3 = [cellDelegate5 note];
  [eventReporter submitAddLinkEvent:note3 addApproach:approach url:linkCopy];

  editorController = [(ICEditingTextView *)self editorController];
  [editorController startEditing];

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

- (void)createNoteLinkAttachment:(id)attachment textSelection:(id)selection range:(_NSRange)range addApproach:(int64_t)approach
{
  length = range.length;
  location = range.location;
  v10 = MEMORY[0x277D35F28];
  attachmentCopy = attachment;
  cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
  note = [cellDelegate note];
  managedObjectContext = [note managedObjectContext];
  v15 = [v10 noteWithIdentifier:attachmentCopy context:managedObjectContext];

  if (v15)
  {
    v16 = MEMORY[0x277D35EF8];
    cellDelegate2 = [(ICTableColumnTextView *)self cellDelegate];
    note2 = [cellDelegate2 note];
    v19 = [v16 newLinkAttachmentToNote:v15 fromNote:note2 parentAttachment:0];

    if (v19)
    {
      cellDelegate3 = [(ICTableColumnTextView *)self cellDelegate];
      attachment = [cellDelegate3 attachment];
      cellDelegate4 = [(ICTableColumnTextView *)self cellDelegate];
      note3 = [cellDelegate4 note];
      [(ICTableColumnTextView *)self insertInlineAttachment:v19 saveAndResumeEditingForAttachment:attachment inNote:note3 forRange:location, length];

      eventReporter = [(ICTableColumnTextView *)self eventReporter];
      cellDelegate5 = [(ICTableColumnTextView *)self cellDelegate];
      note4 = [cellDelegate5 note];
      [eventReporter submitAddLinkEvent:note4 addApproach:approach contentType:1 isTokenized:1];

      editorController = [(ICEditingTextView *)self editorController];
      [editorController startEditing];

      [(ICTableColumnTextView *)self becomeFirstResponder];
      if (length)
      {
        displayText = [v19 displayText];
        -[ICTableColumnTextView setSelectedRange:](self, "setSelectedRange:", location, [displayText length]);
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

- (void)removeLinksFromTextSelection:(id)selection range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textStorage = [(ICTableColumnTextView *)self textStorage];
  [textStorage removeAttribute:*MEMORY[0x277D740E8] range:{location, length}];

  cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
  [cellDelegate setNeedsSaveAfterUserEdit];

  cellDelegate2 = [(ICTableColumnTextView *)self cellDelegate];
  attachment = [cellDelegate2 attachment];
  [attachment updateChangeCountWithReason:@"Removed link from table"];

  cellDelegate3 = [(ICTableColumnTextView *)self cellDelegate];
  note = [cellDelegate3 note];
  [note updateChangeCountWithReason:@"Removed link from table"];

  cellDelegate4 = [(ICTableColumnTextView *)self cellDelegate];
  note2 = [cellDelegate4 note];
  [note2 save];
}

- (void)removeLinksFromCurrentSelection
{
  textStorage = [(ICTableColumnTextView *)self textStorage];
  selectedRange = [(ICTableColumnTextView *)self selectedRange];
  v6 = v5;
  [textStorage removeAttribute:*MEMORY[0x277D740E8] range:{selectedRange, v5}];
  v7 = *MEMORY[0x277D74060];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__ICTableColumnTextView_removeLinksFromCurrentSelection__block_invoke;
  v9[3] = &unk_2781AC5D8;
  v10 = textStorage;
  v8 = textStorage;
  [v8 enumerateAttribute:v7 inRange:selectedRange options:v6 usingBlock:{0, v9}];
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_eventReporterLostSession_ name:*MEMORY[0x277D35958] object:self->_eventReporter];
  }

  v9 = self->_eventReporter;

  return v9;
}

- (void)eventReporterLostSession:(id)session
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  sessionCopy = session;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D35958];
  object = [sessionCopy object];

  [defaultCenter removeObserver:self name:v6 object:object];
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

- (void)moveToBeginningOfCell:(id)cell
{
  selectedRange = [(ICTableColumnTextView *)self selectedRange];
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  v6 = [tTTextStorage logicalRangeForLocation:selectedRange];

  if (selectedRange == v6)
  {
    cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
    [cellDelegate moveUpCell];
  }

  else
  {

    [(ICTableColumnTextView *)self setSelectedRange:v6, 0];
  }
}

- (void)moveToEndOfCell:(id)cell
{
  selectedRange = [(ICTableColumnTextView *)self selectedRange];
  v6 = selectedRange + v5;
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  v8 = [tTTextStorage logicalRangeForLocation:v6];
  v10 = v9;

  if (v6 == v8 + v10)
  {
    cellDelegate = [(ICTableColumnTextView *)self cellDelegate];
    [cellDelegate moveDownCell];
  }

  else
  {

    [(ICTableColumnTextView *)self setSelectedRange:?];
  }
}

- (void)moveToBeginningOfCellAndModifySelection:(id)selection
{
  selectedRange = [(ICTableColumnTextView *)self selectedRange];
  v6 = v5;
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  v8 = [tTTextStorage logicalRangeForLocation:selectedRange];

  v11.location = v8;
  v11.length = 0;
  v12.location = selectedRange;
  v12.length = v6;
  v9 = NSUnionRange(v11, v12);

  [(ICTableColumnTextView *)self setSelectedRange:v9.location, v9.length];
}

- (void)moveToEndOfCellAndModifySelection:(id)selection
{
  selectedRange = [(ICTableColumnTextView *)self selectedRange];
  v6 = v5;
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  v8 = [tTTextStorage logicalRangeForLocation:selectedRange];
  v10 = v9;

  v13.location = v8 + v10;
  v13.length = 0;
  v14.location = selectedRange;
  v14.length = v6;
  v11 = NSUnionRange(v13, v14);

  [(ICTableColumnTextView *)self setSelectedRange:v11.location, v11.length];
}

- (BOOL)atCellBoundaryForDirection:(unint64_t)direction
{
  selectedRange = [(ICTableColumnTextView *)self selectedRange];
  v7 = v6;
  v20 = 0;
  v21 = 0;
  columnTextStorage = [(ICTableColumnTextView *)self columnTextStorage];
  v9 = [columnTextStorage rowAtIndex:selectedRange rowRange:&v20];
  v10 = v20;
  v11 = v21;
  if (v21)
  {
    v12 = selectedRange == v20;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    textStorage = [(ICTableColumnTextView *)self textStorage];
    v14 = [textStorage ic_writingDirectionAtIndex:selectedRange];

    if (!(direction | v14) || direction == 1 && v14 == 1)
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

  v15 = selectedRange + v7;
  if (v15 != v11 + v10)
  {
    v18 = 0;
    goto LABEL_18;
  }

  textStorage2 = [(ICTableColumnTextView *)self textStorage];
  v17 = [textStorage2 ic_writingDirectionAtIndex:v15 - 1];

  if (!direction && v17 == 1)
  {
    goto LABEL_16;
  }

  v18 = 0;
  if (direction == 1 && !v17)
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