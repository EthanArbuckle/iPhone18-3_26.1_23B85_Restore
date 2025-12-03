@interface ICTK2TextView
- (CGPoint)scrollOffsetForRange:(_NSRange)range withHeightPercentageAdjustment:(double)adjustment;
- (ICTK2TextView)initWithNote:(id)note size:(CGSize)size insideSystemPaper:(BOOL)paper insideSiriSnippet:(BOOL)snippet;
- (id)attachmentViewDelegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)textStorage;
- (void)dealloc;
- (void)handleHover:(id)hover;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)scrollRangeToVisible:(_NSRange)visible withHeightPercentageAdjustment:(double)adjustment forceTop:(BOOL)top;
- (void)setAttachmentViewDelegate:(id)delegate;
- (void)setFrame:(CGRect)frame;
- (void)writingToolsCoordinator:(id)coordinator finishTextAnimation:(int64_t)animation forRange:(_NSRange)range inContext:(id)context completion:(id)completion;
- (void)writingToolsCoordinator:(id)coordinator prepareForTextAnimation:(int64_t)animation forRange:(_NSRange)range inContext:(id)context completion:(id)completion;
- (void)writingToolsCoordinator:(id)coordinator replaceRange:(_NSRange)range inContext:(id)context proposedText:(id)text reason:(int64_t)reason animationParameters:(id)parameters completion:(id)completion;
- (void)writingToolsCoordinator:(id)coordinator requestsBoundingBezierPathsForRange:(_NSRange)range inContext:(id)context completion:(id)completion;
- (void)writingToolsCoordinator:(id)coordinator requestsContextsForScope:(int64_t)scope completion:(id)completion;
- (void)writingToolsCoordinator:(id)coordinator requestsPreviewForTextAnimation:(int64_t)animation ofRange:(_NSRange)range inContext:(id)context completion:(id)completion;
- (void)writingToolsCoordinator:(id)coordinator requestsUnderlinePathsForRange:(_NSRange)range inContext:(id)context completion:(id)completion;
- (void)writingToolsCoordinator:(id)coordinator selectRanges:(id)ranges inContext:(id)context completion:(id)completion;
@end

@implementation ICTK2TextView

- (id)textStorage
{
  textContentStorage = [(ICBaseTextView *)self textContentStorage];
  textStorage = [textContentStorage textStorage];

  return textStorage;
}

- (void)layoutSubviews
{
  v36[4] = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = ICTK2TextView;
  [(ICTextView *)&v35 layoutSubviews];
  attributionSidebarView = [(ICTK2TextView *)self attributionSidebarView];
  [attributionSidebarView fullContentWidth];
  v5 = v4;

  LODWORD(attributionSidebarView) = [(ICTK2TextView *)self ic_isRTL];
  [(ICTK2TextView *)self textContainerInset];
  if (attributionSidebarView)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if ([(ICTK2TextView *)self ic_hasCompactWidth])
  {
    v9 = 27.0;
  }

  else
  {
    v9 = 31.0;
  }

  attributionSidebarView2 = [(ICTK2TextView *)self attributionSidebarView];
  superview = [attributionSidebarView2 superview];

  if (superview)
  {
    attributionSidebarLeadingConstraint = [(ICTK2TextView *)self attributionSidebarLeadingConstraint];
    [attributionSidebarLeadingConstraint setConstant:v8 - v5 - v9];

    attributionSidebarWidthConstraint = [(ICTK2TextView *)self attributionSidebarWidthConstraint];
    [attributionSidebarWidthConstraint setConstant:v5];
  }

  else
  {
    containerViewForAttachments = [(ICBaseTextView *)self containerViewForAttachments];
    attributionSidebarView3 = [(ICTK2TextView *)self attributionSidebarView];
    [containerViewForAttachments insertSubview:attributionSidebarView3 atIndex:0];

    v27 = MEMORY[0x277CCAAD0];
    attributionSidebarWidthConstraint = [(ICTK2TextView *)self attributionSidebarView];
    topAnchor = [attributionSidebarWidthConstraint topAnchor];
    containerViewForAttachments2 = [(ICBaseTextView *)self containerViewForAttachments];
    topAnchor2 = [containerViewForAttachments2 topAnchor];
    v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v36[0] = v31;
    attributionSidebarView4 = [(ICTK2TextView *)self attributionSidebarView];
    bottomAnchor = [attributionSidebarView4 bottomAnchor];
    containerViewForAttachments3 = [(ICBaseTextView *)self containerViewForAttachments];
    bottomAnchor2 = [containerViewForAttachments3 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v36[1] = v25;
    attributionSidebarView5 = [(ICTK2TextView *)self attributionSidebarView];
    leadingAnchor = [attributionSidebarView5 leadingAnchor];
    containerViewForAttachments4 = [(ICBaseTextView *)self containerViewForAttachments];
    leadingAnchor2 = [containerViewForAttachments4 leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v8 - v5 - v9];
    [(ICTK2TextView *)self setAttributionSidebarLeadingConstraint:v20];
    v36[2] = v20;
    attributionSidebarView6 = [(ICTK2TextView *)self attributionSidebarView];
    widthAnchor = [attributionSidebarView6 widthAnchor];
    v23 = [widthAnchor constraintEqualToConstant:v5];
    [(ICTK2TextView *)self setAttributionSidebarWidthConstraint:v23];
    v36[3] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
    [v27 activateConstraints:v24];
  }
}

- (ICTK2TextView)initWithNote:(id)note size:(CGSize)size insideSystemPaper:(BOOL)paper insideSiriSnippet:(BOOL)snippet
{
  snippetCopy = snippet;
  paperCopy = paper;
  height = size.height;
  width = size.width;
  noteCopy = note;
  v21.receiver = self;
  v21.super_class = ICTK2TextView;
  height = [(ICBaseTextView *)&v21 initForTextKit2WithNote:noteCopy size:paperCopy insideSystemPaper:snippetCopy insideSiriSnippet:width, height];
  v14 = height;
  if (height)
  {
    objc_storeStrong(height + 440, note);
    v15 = [[ICOutlineRenderer alloc] initWithTextView:v14];
    outlineRenderer = v14->_outlineRenderer;
    v14->_outlineRenderer = v15;

    v14->_hoveredCharacterIndex = 0x7FFFFFFFFFFFFFFFLL;
    [(ICTK2TextView *)v14 setWritingToolsAllowedInputOptions:15];
    [(ICTK2TextView *)v14 setAllowedWritingToolsResultOptions:[(ICTK2TextView *)v14 allowedWritingToolsResultOptions]| 0x10];
    v17 = objc_alloc_init(ICAttributionSidebarView);
    attributionSidebarView = v14->_attributionSidebarView;
    v14->_attributionSidebarView = v17;

    [(ICAttributionSidebarView *)v14->_attributionSidebarView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ICAttributionSidebarView *)v14->_attributionSidebarView setTextView:v14];
    v19 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:v14 action:sel_handleHover_];
    [(ICTK2TextView *)v14 addGestureRecognizer:v19];

    [(ICTK2TextView *)v14 ic_addObserver:v14 forKeyPath:@"hoveredCharacterIndex" context:&compoundliteral_10];
  }

  return v14;
}

- (void)writingToolsCoordinator:(id)coordinator requestsContextsForScope:(int64_t)scope completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__ICTK2TextView_writingToolsCoordinator_requestsContextsForScope_completion___block_invoke;
  v11[3] = &unk_2781AF7D0;
  v11[4] = self;
  v12 = completionCopy;
  v10.receiver = self;
  v10.super_class = ICTK2TextView;
  v9 = completionCopy;
  [(ICTK2TextView *)&v10 writingToolsCoordinator:coordinator requestsContextsForScope:scope completion:v11];
}

void __77__ICTK2TextView_writingToolsCoordinator_requestsContextsForScope_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count] != 1)
  {
    v4 = os_log_create("com.apple.notes", "WritingTools");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __77__ICTK2TextView_writingToolsCoordinator_requestsContextsForScope_completion___block_invoke_cold_1(v4);
    }
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__ICTK2TextView_writingToolsCoordinator_requestsContextsForScope_completion___block_invoke_19;
  v6[3] = &unk_2781AFAE8;
  v6[4] = *(a1 + 32);
  v5 = [v3 ic_map:v6];
  (*(*(a1 + 40) + 16))();
}

id __77__ICTK2TextView_writingToolsCoordinator_requestsContextsForScope_completion___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D36848];
  v4 = a2;
  v5 = [v4 attributedString];
  v6 = [*(a1 + 32) note];
  v7 = [v6 managedObjectContext];
  v17 = 0;
  v8 = [v3 createMarkdownStringFrom:v5 context:v7 rangeMapping:&v17];
  v9 = v17;

  v10 = objc_alloc(MEMORY[0x277D369B0]);
  v11 = [v4 attributedString];
  v12 = [v4 range];
  v14 = v13;

  v15 = [v10 initWithAttributedString:v8 originalString:v11 originalRange:v12 rangeMapping:{v14, v9}];

  return v15;
}

- (void)writingToolsCoordinator:(id)coordinator replaceRange:(_NSRange)range inContext:(id)context proposedText:(id)text reason:(int64_t)reason animationParameters:(id)parameters completion:(id)completion
{
  length = range.length;
  location = range.location;
  coordinatorCopy = coordinator;
  contextCopy = context;
  textCopy = text;
  parametersCopy = parameters;
  completionCopy = completion;
  objc_opt_class();
  v18 = ICCheckedDynamicCast();
  v19 = v18;
  if (v18)
  {
    reasonCopy = reason;
    v20 = [v18 rangeInOriginalStringCorrespondingToRange:{location, length}];
    v29 = v21;
    v30 = v20;
    attributedString = [v19 attributedString];
    v23 = [textCopy isEqualToAttributedString:attributedString];

    if (v23)
    {
      originalString = [v19 originalString];
    }

    else
    {
      v28 = [objc_alloc(MEMORY[0x277D36848]) initWithMarkdown:textCopy];
      [v28 setKeepOriginalAttributes:1];
      [v28 setFilterConflictingAttributes:1];
      originalString = [v28 createRenderableAttributedString];
    }

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __115__ICTK2TextView_writingToolsCoordinator_replaceRange_inContext_proposedText_reason_animationParameters_completion___block_invoke;
    v35[3] = &unk_2781AFB10;
    v35[4] = self;
    v36 = v19;
    v38 = location;
    v39 = length;
    v37 = completionCopy;
    v34.receiver = self;
    v34.super_class = ICTK2TextView;
    v27 = parametersCopy;
    v26 = coordinatorCopy;
    [(ICTextView *)&v34 writingToolsCoordinator:coordinatorCopy replaceRange:v30 inContext:v29 proposedText:v36 reason:originalString animationParameters:reasonCopy completion:parametersCopy, v35];
  }

  else
  {
    v25 = os_log_create("com.apple.notes", "WritingTools");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [ICTK2TextView writingToolsCoordinator:replaceRange:inContext:proposedText:reason:animationParameters:completion:];
    }

    v27 = parametersCopy;
    v26 = coordinatorCopy;
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __115__ICTK2TextView_writingToolsCoordinator_replaceRange_inContext_proposedText_reason_animationParameters_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D36848];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 note];
  v7 = [v6 managedObjectContext];
  v10 = 0;
  v8 = [v3 createMarkdownStringFrom:v5 context:v7 rangeMapping:&v10];

  v9 = v10;
  [*(a1 + 40) updateRangeMapping:v9 withinRange:{*(a1 + 56), *(a1 + 64)}];
  (*(*(a1 + 48) + 16))();
}

- (void)writingToolsCoordinator:(id)coordinator requestsBoundingBezierPathsForRange:(_NSRange)range inContext:(id)context completion:(id)completion
{
  length = range.length;
  location = range.location;
  coordinatorCopy = coordinator;
  contextCopy = context;
  completionCopy = completion;
  objc_opt_class();
  v14 = ICCheckedDynamicCast();
  v15 = v14;
  if (v14)
  {
    v16 = [v14 rangeInOriginalStringCorrespondingToRange:{location, length}];
    v19.receiver = self;
    v19.super_class = ICTK2TextView;
    [(ICTK2TextView *)&v19 writingToolsCoordinator:coordinatorCopy requestsBoundingBezierPathsForRange:v16 inContext:v17 completion:contextCopy, completionCopy];
  }

  else
  {
    v18 = os_log_create("com.apple.notes", "WritingTools");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ICTK2TextView writingToolsCoordinator:replaceRange:inContext:proposedText:reason:animationParameters:completion:];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, MEMORY[0x277CBEBF8]);
    }
  }
}

- (void)writingToolsCoordinator:(id)coordinator requestsUnderlinePathsForRange:(_NSRange)range inContext:(id)context completion:(id)completion
{
  length = range.length;
  location = range.location;
  coordinatorCopy = coordinator;
  contextCopy = context;
  completionCopy = completion;
  objc_opt_class();
  v14 = ICCheckedDynamicCast();
  v15 = v14;
  if (v14)
  {
    v16 = [v14 rangeInOriginalStringCorrespondingToRange:{location, length}];
    v19.receiver = self;
    v19.super_class = ICTK2TextView;
    [(ICTK2TextView *)&v19 writingToolsCoordinator:coordinatorCopy requestsUnderlinePathsForRange:v16 inContext:v17 completion:contextCopy, completionCopy];
  }

  else
  {
    v18 = os_log_create("com.apple.notes", "WritingTools");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ICTK2TextView writingToolsCoordinator:replaceRange:inContext:proposedText:reason:animationParameters:completion:];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, MEMORY[0x277CBEBF8]);
    }
  }
}

- (void)writingToolsCoordinator:(id)coordinator prepareForTextAnimation:(int64_t)animation forRange:(_NSRange)range inContext:(id)context completion:(id)completion
{
  length = range.length;
  location = range.location;
  coordinatorCopy = coordinator;
  contextCopy = context;
  completionCopy = completion;
  objc_opt_class();
  v16 = ICCheckedDynamicCast();
  v17 = v16;
  if (v16)
  {
    v18 = [v16 rangeInOriginalStringCorrespondingToRange:{location, length}];
    v21.receiver = self;
    v21.super_class = ICTK2TextView;
    [(ICTK2TextView *)&v21 writingToolsCoordinator:coordinatorCopy prepareForTextAnimation:animation forRange:v18 inContext:v19 completion:contextCopy, completionCopy];
  }

  else
  {
    v20 = os_log_create("com.apple.notes", "WritingTools");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ICTK2TextView writingToolsCoordinator:replaceRange:inContext:proposedText:reason:animationParameters:completion:];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)writingToolsCoordinator:(id)coordinator requestsPreviewForTextAnimation:(int64_t)animation ofRange:(_NSRange)range inContext:(id)context completion:(id)completion
{
  length = range.length;
  location = range.location;
  coordinatorCopy = coordinator;
  contextCopy = context;
  completionCopy = completion;
  objc_opt_class();
  v16 = ICCheckedDynamicCast();
  v17 = v16;
  if (v16)
  {
    v18 = [v16 rangeInOriginalStringCorrespondingToRange:{location, length}];
    v21.receiver = self;
    v21.super_class = ICTK2TextView;
    [(ICTK2TextView *)&v21 writingToolsCoordinator:coordinatorCopy requestsPreviewForTextAnimation:animation ofRange:v18 inContext:v19 completion:contextCopy, completionCopy];
  }

  else
  {
    v20 = os_log_create("com.apple.notes", "WritingTools");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ICTK2TextView writingToolsCoordinator:replaceRange:inContext:proposedText:reason:animationParameters:completion:];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)writingToolsCoordinator:(id)coordinator finishTextAnimation:(int64_t)animation forRange:(_NSRange)range inContext:(id)context completion:(id)completion
{
  length = range.length;
  location = range.location;
  coordinatorCopy = coordinator;
  contextCopy = context;
  completionCopy = completion;
  objc_opt_class();
  v16 = ICCheckedDynamicCast();
  v17 = v16;
  if (v16)
  {
    v18 = [v16 rangeInOriginalStringCorrespondingToRange:{location, length}];
    v21.receiver = self;
    v21.super_class = ICTK2TextView;
    [(ICTK2TextView *)&v21 writingToolsCoordinator:coordinatorCopy finishTextAnimation:animation forRange:v18 inContext:v19 completion:contextCopy, completionCopy];
  }

  else
  {
    v20 = os_log_create("com.apple.notes", "WritingTools");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ICTK2TextView writingToolsCoordinator:replaceRange:inContext:proposedText:reason:animationParameters:completion:];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)writingToolsCoordinator:(id)coordinator selectRanges:(id)ranges inContext:(id)context completion:(id)completion
{
  coordinatorCopy = coordinator;
  rangesCopy = ranges;
  contextCopy = context;
  completionCopy = completion;
  objc_opt_class();
  v14 = ICCheckedDynamicCast();
  v15 = v14;
  if (v14)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __75__ICTK2TextView_writingToolsCoordinator_selectRanges_inContext_completion___block_invoke;
    v19[3] = &unk_2781AFB38;
    v20 = v14;
    v16 = [rangesCopy ic_map:v19];
    v18.receiver = self;
    v18.super_class = ICTK2TextView;
    [(ICTK2TextView *)&v18 writingToolsCoordinator:coordinatorCopy selectRanges:v16 inContext:contextCopy completion:completionCopy];
  }

  else
  {
    v17 = os_log_create("com.apple.notes", "WritingTools");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ICTK2TextView writingToolsCoordinator:replaceRange:inContext:proposedText:reason:animationParameters:completion:];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

uint64_t __75__ICTK2TextView_writingToolsCoordinator_selectRanges_inContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 rangeValue];
  v6 = [v2 rangeInOriginalStringCorrespondingToRange:{v3, v4}];
  v7 = MEMORY[0x277CCAE60];

  return [v7 valueWithRange:{v6, v5}];
}

- (void)dealloc
{
  objc_opt_class();
  textLayoutManager = [(ICTK2TextView *)self textLayoutManager];
  v4 = ICCheckedDynamicCast();

  if (v4)
  {
    textContentStorage = [(ICBaseTextView *)self textContentStorage];
    [textContentStorage removeTextLayoutManager:v4];
  }

  [(ICTK2TextView *)self ic_removeObserver:self forKeyPath:@"hoveredCharacterIndex" context:&compoundliteral_10];

  v6.receiver = self;
  v6.super_class = ICTK2TextView;
  [(ICTextView *)&v6 dealloc];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v18.receiver = self;
  v18.super_class = ICTK2TextView;
  v8 = [(ICTextView *)&v18 hitTest:eventCopy withEvent:x, y];
  if (!v8)
  {
    attributionSidebarView = [(ICTK2TextView *)self attributionSidebarView];
    [attributionSidebarView convertPoint:self fromView:{x, y}];
    v11 = v10;
    v13 = v12;

    attributionSidebarView2 = [(ICTK2TextView *)self attributionSidebarView];
    [attributionSidebarView2 bounds];
    v20.x = v11;
    v20.y = v13;
    v15 = CGRectContainsPoint(v21, v20);

    if (v15)
    {
      attributionSidebarView3 = [(ICTK2TextView *)self attributionSidebarView];
      v8 = [attributionSidebarView3 hitTest:eventCopy withEvent:{v11, v13}];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = ICTK2TextView;
  [(ICTK2TextView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(ICTextView *)self updateLayoutMargins];
}

- (void)scrollRangeToVisible:(_NSRange)visible withHeightPercentageAdjustment:(double)adjustment forceTop:(BOOL)top
{
  topCopy = top;
  [(ICTK2TextView *)self scrollOffsetForRange:visible.location withHeightPercentageAdjustment:visible.length, adjustment];
  v8 = v7;
  v10 = v9;
  if (topCopy || (-[ICTK2TextView textLayoutManager](self, "textLayoutManager"), v11 = objc_claimAutoreleasedReturnValue(), [v11 textViewportLayoutController], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "viewportBounds"), v14 = v13, v16 = v15, v18 = v17, v20 = v19, v12, v11, -[ICTK2TextView keyboardLayoutGuide](self, "keyboardLayoutGuide"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "layoutFrame"), v23 = v22, v21, v26.size.height = v20 - v23, v26.origin.x = v14, v26.origin.y = v16, v26.size.width = v18, v25.x = v8, v25.y = v10, !CGRectContainsPoint(v26, v25)))
  {

    [(ICTextView *)self setContentOffset:v8, v10];
  }
}

- (void)setAttachmentViewDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_opt_class();
  textLayoutManager = [(ICTK2TextView *)self textLayoutManager];
  v6 = ICCheckedDynamicCast();

  [v6 setAttachmentViewDelegate:delegateCopy];
}

- (id)attachmentViewDelegate
{
  objc_opt_class();
  textLayoutManager = [(ICTK2TextView *)self textLayoutManager];
  v4 = ICCheckedDynamicCast();

  attachmentViewDelegate = [v4 attachmentViewDelegate];

  return attachmentViewDelegate;
}

- (void)handleHover:(id)hover
{
  [hover locationInView:self];
  v5 = v4;
  v7 = v6;
  icTextLayoutManager = [(ICEditingTextView *)self icTextLayoutManager];
  v9 = [icTextLayoutManager characterIndexForPoint:{v5, v7}];

  if ([(ICTK2TextView *)self hoveredCharacterIndex]!= v9)
  {

    [(ICTK2TextView *)self setHoveredCharacterIndex:v9];
  }
}

- (CGPoint)scrollOffsetForRange:(_NSRange)range withHeightPercentageAdjustment:(double)adjustment
{
  length = range.length;
  location = range.location;
  textLayoutManager = [(ICTK2TextView *)self textLayoutManager];
  documentRange = [textLayoutManager documentRange];

  textLayoutManager2 = [(ICTK2TextView *)self textLayoutManager];
  location = [documentRange location];
  v12 = [textLayoutManager2 locationFromLocation:location withOffset:location];

  v13 = objc_alloc(MEMORY[0x277D742D0]);
  location2 = [documentRange location];
  v15 = [v13 initWithLocation:location2 endLocation:v12];

  textLayoutManager3 = [(ICTK2TextView *)self textLayoutManager];
  [textLayoutManager3 ensureLayoutForRange:v15];

  [(ICTK2TextView *)self layoutIfNeeded];
  [(ICTextView *)self _updateContentSize];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3010000000;
  v31 = &unk_21552D17E;
  v32 = *MEMORY[0x277CBF348];
  textLayoutManager4 = [(ICTK2TextView *)self textLayoutManager];
  v18 = [textLayoutManager4 ic_textRangeForRange:{location, length}];

  textLayoutManager5 = [(ICTK2TextView *)self textLayoutManager];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __69__ICTK2TextView_scrollOffsetForRange_withHeightPercentageAdjustment___block_invoke;
  v27[3] = &unk_2781AFB60;
  v27[4] = self;
  v27[5] = &v28;
  *&v27[6] = adjustment;
  [textLayoutManager5 enumerateTextSegmentsInRange:v18 type:0 options:0 usingBlock:v27];

  [(ICTK2TextView *)self safeAreaInsets];
  v29[5] = v29[5] - v20;
  [(ICTK2TextView *)self contentOffset];
  v22 = v21;
  v23 = v29;
  v29[4] = v21;
  v24 = v23[5];

  _Block_object_dispose(&v28, 8);
  v25 = v22;
  v26 = v24;
  result.y = v26;
  result.x = v25;
  return result;
}

uint64_t __69__ICTK2TextView_scrollOffsetForRange_withHeightPercentageAdjustment___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = [*(a1 + 32) containerViewForAttachments];
  [v9 convertPoint:*(a1 + 32) toView:{a2, a3}];
  v10 = *(*(a1 + 40) + 8);
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  *(*(*(a1 + 40) + 8) + 40) = *(*(*(a1 + 40) + 8) + 40) + a5 * *(a1 + 48);

  return 0;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (context == &compoundliteral_10)
  {
    v32 = changeCopy;
    v10 = [path isEqualToString:@"hoveredCharacterIndex"];
    changeCopy = v32;
    if (v10)
    {
      objc_opt_class();
      v11 = [v32 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v12 = ICDynamicCast();

      objc_opt_class();
      v13 = [v32 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v14 = ICDynamicCast();

      editorController = [(ICEditingTextView *)self editorController];
      calculateRecognitionController = [editorController calculateRecognitionController];
      previewBehavior = [calculateRecognitionController previewBehavior];

      if (!ICInternalSettingsIsScrubbingEnabled() || previewBehavior == 1)
      {
        goto LABEL_24;
      }

      editorController2 = [(ICEditingTextView *)self editorController];
      note = [editorController2 note];
      if ([note isSharedReadOnly])
      {
        goto LABEL_23;
      }

      note2 = [(ICTK2TextView *)self note];
      if (([note2 isDeletedOrInTrash] & 1) == 0)
      {
        v21 = *MEMORY[0x277CBEEE8];
        v22 = *MEMORY[0x277CBEEE8] == v12 ? 0 : v12;
        v23 = v22;
        v24 = v21 == v14 ? 0 : v14;
        v25 = v24;
        if (v23 | v25)
        {
          v26 = v25;
          if (v23 && v25)
          {
            v27 = [v23 isEqual:v25];

            if (v27)
            {
              goto LABEL_24;
            }
          }

          else
          {
          }

          note3 = [(ICTK2TextView *)self note];
          editorController2 = [note3 calculateDocumentController];

          note = [editorController2 numberLiteralAtLocation:{objc_msgSend(v14, "integerValue")}];
          if ([note range] == 0x7FFFFFFFFFFFFFFFLL || (v29 = objc_msgSend(v14, "intValue"), v29 < 1))
          {
LABEL_23:

LABEL_24:
            changeCopy = v32;
            goto LABEL_25;
          }

          v30 = v29;
          note2 = [(ICEditingTextView *)self editorController];
          calculateScrubberController = [note2 calculateScrubberController];
          [calculateScrubberController setHoveredCharacterIndex:v30];
        }
      }

      goto LABEL_23;
    }
  }

LABEL_25:
}

- (void)writingToolsCoordinator:replaceRange:inContext:proposedText:reason:animationParameters:completion:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_2151A1000, v2, v3, "Expected ICWritingToolsContext but got %@", v4, v5, v6, v7, v8);
}

@end