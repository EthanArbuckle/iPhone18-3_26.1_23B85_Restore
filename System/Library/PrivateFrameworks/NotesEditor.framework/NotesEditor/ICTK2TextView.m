@interface ICTK2TextView
- (CGPoint)scrollOffsetForRange:(_NSRange)a3 withHeightPercentageAdjustment:(double)a4;
- (ICTK2TextView)initWithNote:(id)a3 size:(CGSize)a4 insideSystemPaper:(BOOL)a5 insideSiriSnippet:(BOOL)a6;
- (id)attachmentViewDelegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)textStorage;
- (void)dealloc;
- (void)handleHover:(id)a3;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)scrollRangeToVisible:(_NSRange)a3 withHeightPercentageAdjustment:(double)a4 forceTop:(BOOL)a5;
- (void)setAttachmentViewDelegate:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)writingToolsCoordinator:(id)a3 finishTextAnimation:(int64_t)a4 forRange:(_NSRange)a5 inContext:(id)a6 completion:(id)a7;
- (void)writingToolsCoordinator:(id)a3 prepareForTextAnimation:(int64_t)a4 forRange:(_NSRange)a5 inContext:(id)a6 completion:(id)a7;
- (void)writingToolsCoordinator:(id)a3 replaceRange:(_NSRange)a4 inContext:(id)a5 proposedText:(id)a6 reason:(int64_t)a7 animationParameters:(id)a8 completion:(id)a9;
- (void)writingToolsCoordinator:(id)a3 requestsBoundingBezierPathsForRange:(_NSRange)a4 inContext:(id)a5 completion:(id)a6;
- (void)writingToolsCoordinator:(id)a3 requestsContextsForScope:(int64_t)a4 completion:(id)a5;
- (void)writingToolsCoordinator:(id)a3 requestsPreviewForTextAnimation:(int64_t)a4 ofRange:(_NSRange)a5 inContext:(id)a6 completion:(id)a7;
- (void)writingToolsCoordinator:(id)a3 requestsUnderlinePathsForRange:(_NSRange)a4 inContext:(id)a5 completion:(id)a6;
- (void)writingToolsCoordinator:(id)a3 selectRanges:(id)a4 inContext:(id)a5 completion:(id)a6;
@end

@implementation ICTK2TextView

- (id)textStorage
{
  v2 = [(ICBaseTextView *)self textContentStorage];
  v3 = [v2 textStorage];

  return v3;
}

- (void)layoutSubviews
{
  v36[4] = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = ICTK2TextView;
  [(ICTextView *)&v35 layoutSubviews];
  v3 = [(ICTK2TextView *)self attributionSidebarView];
  [v3 fullContentWidth];
  v5 = v4;

  LODWORD(v3) = [(ICTK2TextView *)self ic_isRTL];
  [(ICTK2TextView *)self textContainerInset];
  if (v3)
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

  v10 = [(ICTK2TextView *)self attributionSidebarView];
  v11 = [v10 superview];

  if (v11)
  {
    v12 = [(ICTK2TextView *)self attributionSidebarLeadingConstraint];
    [v12 setConstant:v8 - v5 - v9];

    v13 = [(ICTK2TextView *)self attributionSidebarWidthConstraint];
    [v13 setConstant:v5];
  }

  else
  {
    v14 = [(ICBaseTextView *)self containerViewForAttachments];
    v15 = [(ICTK2TextView *)self attributionSidebarView];
    [v14 insertSubview:v15 atIndex:0];

    v27 = MEMORY[0x277CCAAD0];
    v13 = [(ICTK2TextView *)self attributionSidebarView];
    v33 = [v13 topAnchor];
    v34 = [(ICBaseTextView *)self containerViewForAttachments];
    v32 = [v34 topAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v36[0] = v31;
    v30 = [(ICTK2TextView *)self attributionSidebarView];
    v28 = [v30 bottomAnchor];
    v29 = [(ICBaseTextView *)self containerViewForAttachments];
    v26 = [v29 bottomAnchor];
    v25 = [v28 constraintEqualToAnchor:v26];
    v36[1] = v25;
    v16 = [(ICTK2TextView *)self attributionSidebarView];
    v17 = [v16 leadingAnchor];
    v18 = [(ICBaseTextView *)self containerViewForAttachments];
    v19 = [v18 leadingAnchor];
    v20 = [v17 constraintEqualToAnchor:v19 constant:v8 - v5 - v9];
    [(ICTK2TextView *)self setAttributionSidebarLeadingConstraint:v20];
    v36[2] = v20;
    v21 = [(ICTK2TextView *)self attributionSidebarView];
    v22 = [v21 widthAnchor];
    v23 = [v22 constraintEqualToConstant:v5];
    [(ICTK2TextView *)self setAttributionSidebarWidthConstraint:v23];
    v36[3] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
    [v27 activateConstraints:v24];
  }
}

- (ICTK2TextView)initWithNote:(id)a3 size:(CGSize)a4 insideSystemPaper:(BOOL)a5 insideSiriSnippet:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  height = a4.height;
  width = a4.width;
  v12 = a3;
  v21.receiver = self;
  v21.super_class = ICTK2TextView;
  v13 = [(ICBaseTextView *)&v21 initForTextKit2WithNote:v12 size:v7 insideSystemPaper:v6 insideSiriSnippet:width, height];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(v13 + 440, a3);
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

- (void)writingToolsCoordinator:(id)a3 requestsContextsForScope:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__ICTK2TextView_writingToolsCoordinator_requestsContextsForScope_completion___block_invoke;
  v11[3] = &unk_2781AF7D0;
  v11[4] = self;
  v12 = v8;
  v10.receiver = self;
  v10.super_class = ICTK2TextView;
  v9 = v8;
  [(ICTK2TextView *)&v10 writingToolsCoordinator:a3 requestsContextsForScope:a4 completion:v11];
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

- (void)writingToolsCoordinator:(id)a3 replaceRange:(_NSRange)a4 inContext:(id)a5 proposedText:(id)a6 reason:(int64_t)a7 animationParameters:(id)a8 completion:(id)a9
{
  length = a4.length;
  location = a4.location;
  v33 = a3;
  v15 = a5;
  v16 = a6;
  v32 = a8;
  v17 = a9;
  objc_opt_class();
  v18 = ICCheckedDynamicCast();
  v19 = v18;
  if (v18)
  {
    v31 = a7;
    v20 = [v18 rangeInOriginalStringCorrespondingToRange:{location, length}];
    v29 = v21;
    v30 = v20;
    v22 = [v19 attributedString];
    v23 = [v16 isEqualToAttributedString:v22];

    if (v23)
    {
      v24 = [v19 originalString];
    }

    else
    {
      v28 = [objc_alloc(MEMORY[0x277D36848]) initWithMarkdown:v16];
      [v28 setKeepOriginalAttributes:1];
      [v28 setFilterConflictingAttributes:1];
      v24 = [v28 createRenderableAttributedString];
    }

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __115__ICTK2TextView_writingToolsCoordinator_replaceRange_inContext_proposedText_reason_animationParameters_completion___block_invoke;
    v35[3] = &unk_2781AFB10;
    v35[4] = self;
    v36 = v19;
    v38 = location;
    v39 = length;
    v37 = v17;
    v34.receiver = self;
    v34.super_class = ICTK2TextView;
    v27 = v32;
    v26 = v33;
    [(ICTextView *)&v34 writingToolsCoordinator:v33 replaceRange:v30 inContext:v29 proposedText:v36 reason:v24 animationParameters:v31 completion:v32, v35];
  }

  else
  {
    v25 = os_log_create("com.apple.notes", "WritingTools");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [ICTK2TextView writingToolsCoordinator:replaceRange:inContext:proposedText:reason:animationParameters:completion:];
    }

    v27 = v32;
    v26 = v33;
    if (v17)
    {
      (*(v17 + 2))(v17, 0);
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

- (void)writingToolsCoordinator:(id)a3 requestsBoundingBezierPathsForRange:(_NSRange)a4 inContext:(id)a5 completion:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  objc_opt_class();
  v14 = ICCheckedDynamicCast();
  v15 = v14;
  if (v14)
  {
    v16 = [v14 rangeInOriginalStringCorrespondingToRange:{location, length}];
    v19.receiver = self;
    v19.super_class = ICTK2TextView;
    [(ICTK2TextView *)&v19 writingToolsCoordinator:v11 requestsBoundingBezierPathsForRange:v16 inContext:v17 completion:v12, v13];
  }

  else
  {
    v18 = os_log_create("com.apple.notes", "WritingTools");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ICTK2TextView writingToolsCoordinator:replaceRange:inContext:proposedText:reason:animationParameters:completion:];
    }

    if (v13)
    {
      v13[2](v13, MEMORY[0x277CBEBF8]);
    }
  }
}

- (void)writingToolsCoordinator:(id)a3 requestsUnderlinePathsForRange:(_NSRange)a4 inContext:(id)a5 completion:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  objc_opt_class();
  v14 = ICCheckedDynamicCast();
  v15 = v14;
  if (v14)
  {
    v16 = [v14 rangeInOriginalStringCorrespondingToRange:{location, length}];
    v19.receiver = self;
    v19.super_class = ICTK2TextView;
    [(ICTK2TextView *)&v19 writingToolsCoordinator:v11 requestsUnderlinePathsForRange:v16 inContext:v17 completion:v12, v13];
  }

  else
  {
    v18 = os_log_create("com.apple.notes", "WritingTools");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ICTK2TextView writingToolsCoordinator:replaceRange:inContext:proposedText:reason:animationParameters:completion:];
    }

    if (v13)
    {
      v13[2](v13, MEMORY[0x277CBEBF8]);
    }
  }
}

- (void)writingToolsCoordinator:(id)a3 prepareForTextAnimation:(int64_t)a4 forRange:(_NSRange)a5 inContext:(id)a6 completion:(id)a7
{
  length = a5.length;
  location = a5.location;
  v13 = a3;
  v14 = a6;
  v15 = a7;
  objc_opt_class();
  v16 = ICCheckedDynamicCast();
  v17 = v16;
  if (v16)
  {
    v18 = [v16 rangeInOriginalStringCorrespondingToRange:{location, length}];
    v21.receiver = self;
    v21.super_class = ICTK2TextView;
    [(ICTK2TextView *)&v21 writingToolsCoordinator:v13 prepareForTextAnimation:a4 forRange:v18 inContext:v19 completion:v14, v15];
  }

  else
  {
    v20 = os_log_create("com.apple.notes", "WritingTools");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ICTK2TextView writingToolsCoordinator:replaceRange:inContext:proposedText:reason:animationParameters:completion:];
    }

    if (v15)
    {
      v15[2](v15);
    }
  }
}

- (void)writingToolsCoordinator:(id)a3 requestsPreviewForTextAnimation:(int64_t)a4 ofRange:(_NSRange)a5 inContext:(id)a6 completion:(id)a7
{
  length = a5.length;
  location = a5.location;
  v13 = a3;
  v14 = a6;
  v15 = a7;
  objc_opt_class();
  v16 = ICCheckedDynamicCast();
  v17 = v16;
  if (v16)
  {
    v18 = [v16 rangeInOriginalStringCorrespondingToRange:{location, length}];
    v21.receiver = self;
    v21.super_class = ICTK2TextView;
    [(ICTK2TextView *)&v21 writingToolsCoordinator:v13 requestsPreviewForTextAnimation:a4 ofRange:v18 inContext:v19 completion:v14, v15];
  }

  else
  {
    v20 = os_log_create("com.apple.notes", "WritingTools");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ICTK2TextView writingToolsCoordinator:replaceRange:inContext:proposedText:reason:animationParameters:completion:];
    }

    if (v15)
    {
      v15[2](v15, 0);
    }
  }
}

- (void)writingToolsCoordinator:(id)a3 finishTextAnimation:(int64_t)a4 forRange:(_NSRange)a5 inContext:(id)a6 completion:(id)a7
{
  length = a5.length;
  location = a5.location;
  v13 = a3;
  v14 = a6;
  v15 = a7;
  objc_opt_class();
  v16 = ICCheckedDynamicCast();
  v17 = v16;
  if (v16)
  {
    v18 = [v16 rangeInOriginalStringCorrespondingToRange:{location, length}];
    v21.receiver = self;
    v21.super_class = ICTK2TextView;
    [(ICTK2TextView *)&v21 writingToolsCoordinator:v13 finishTextAnimation:a4 forRange:v18 inContext:v19 completion:v14, v15];
  }

  else
  {
    v20 = os_log_create("com.apple.notes", "WritingTools");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ICTK2TextView writingToolsCoordinator:replaceRange:inContext:proposedText:reason:animationParameters:completion:];
    }

    if (v15)
    {
      v15[2](v15);
    }
  }
}

- (void)writingToolsCoordinator:(id)a3 selectRanges:(id)a4 inContext:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
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
    v16 = [v11 ic_map:v19];
    v18.receiver = self;
    v18.super_class = ICTK2TextView;
    [(ICTK2TextView *)&v18 writingToolsCoordinator:v10 selectRanges:v16 inContext:v12 completion:v13];
  }

  else
  {
    v17 = os_log_create("com.apple.notes", "WritingTools");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ICTK2TextView writingToolsCoordinator:replaceRange:inContext:proposedText:reason:animationParameters:completion:];
    }

    if (v13)
    {
      v13[2](v13);
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
  v3 = [(ICTK2TextView *)self textLayoutManager];
  v4 = ICCheckedDynamicCast();

  if (v4)
  {
    v5 = [(ICBaseTextView *)self textContentStorage];
    [v5 removeTextLayoutManager:v4];
  }

  [(ICTK2TextView *)self ic_removeObserver:self forKeyPath:@"hoveredCharacterIndex" context:&compoundliteral_10];

  v6.receiver = self;
  v6.super_class = ICTK2TextView;
  [(ICTextView *)&v6 dealloc];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = ICTK2TextView;
  v8 = [(ICTextView *)&v18 hitTest:v7 withEvent:x, y];
  if (!v8)
  {
    v9 = [(ICTK2TextView *)self attributionSidebarView];
    [v9 convertPoint:self fromView:{x, y}];
    v11 = v10;
    v13 = v12;

    v14 = [(ICTK2TextView *)self attributionSidebarView];
    [v14 bounds];
    v20.x = v11;
    v20.y = v13;
    v15 = CGRectContainsPoint(v21, v20);

    if (v15)
    {
      v16 = [(ICTK2TextView *)self attributionSidebarView];
      v8 = [v16 hitTest:v7 withEvent:{v11, v13}];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = ICTK2TextView;
  [(ICTK2TextView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(ICTextView *)self updateLayoutMargins];
}

- (void)scrollRangeToVisible:(_NSRange)a3 withHeightPercentageAdjustment:(double)a4 forceTop:(BOOL)a5
{
  v5 = a5;
  [(ICTK2TextView *)self scrollOffsetForRange:a3.location withHeightPercentageAdjustment:a3.length, a4];
  v8 = v7;
  v10 = v9;
  if (v5 || (-[ICTK2TextView textLayoutManager](self, "textLayoutManager"), v11 = objc_claimAutoreleasedReturnValue(), [v11 textViewportLayoutController], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "viewportBounds"), v14 = v13, v16 = v15, v18 = v17, v20 = v19, v12, v11, -[ICTK2TextView keyboardLayoutGuide](self, "keyboardLayoutGuide"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "layoutFrame"), v23 = v22, v21, v26.size.height = v20 - v23, v26.origin.x = v14, v26.origin.y = v16, v26.size.width = v18, v25.x = v8, v25.y = v10, !CGRectContainsPoint(v26, v25)))
  {

    [(ICTextView *)self setContentOffset:v8, v10];
  }
}

- (void)setAttachmentViewDelegate:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(ICTK2TextView *)self textLayoutManager];
  v6 = ICCheckedDynamicCast();

  [v6 setAttachmentViewDelegate:v4];
}

- (id)attachmentViewDelegate
{
  objc_opt_class();
  v3 = [(ICTK2TextView *)self textLayoutManager];
  v4 = ICCheckedDynamicCast();

  v5 = [v4 attachmentViewDelegate];

  return v5;
}

- (void)handleHover:(id)a3
{
  [a3 locationInView:self];
  v5 = v4;
  v7 = v6;
  v8 = [(ICEditingTextView *)self icTextLayoutManager];
  v9 = [v8 characterIndexForPoint:{v5, v7}];

  if ([(ICTK2TextView *)self hoveredCharacterIndex]!= v9)
  {

    [(ICTK2TextView *)self setHoveredCharacterIndex:v9];
  }
}

- (CGPoint)scrollOffsetForRange:(_NSRange)a3 withHeightPercentageAdjustment:(double)a4
{
  length = a3.length;
  location = a3.location;
  v8 = [(ICTK2TextView *)self textLayoutManager];
  v9 = [v8 documentRange];

  v10 = [(ICTK2TextView *)self textLayoutManager];
  v11 = [v9 location];
  v12 = [v10 locationFromLocation:v11 withOffset:location];

  v13 = objc_alloc(MEMORY[0x277D742D0]);
  v14 = [v9 location];
  v15 = [v13 initWithLocation:v14 endLocation:v12];

  v16 = [(ICTK2TextView *)self textLayoutManager];
  [v16 ensureLayoutForRange:v15];

  [(ICTK2TextView *)self layoutIfNeeded];
  [(ICTextView *)self _updateContentSize];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3010000000;
  v31 = &unk_21552D17E;
  v32 = *MEMORY[0x277CBF348];
  v17 = [(ICTK2TextView *)self textLayoutManager];
  v18 = [v17 ic_textRangeForRange:{location, length}];

  v19 = [(ICTK2TextView *)self textLayoutManager];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __69__ICTK2TextView_scrollOffsetForRange_withHeightPercentageAdjustment___block_invoke;
  v27[3] = &unk_2781AFB60;
  v27[4] = self;
  v27[5] = &v28;
  *&v27[6] = a4;
  [v19 enumerateTextSegmentsInRange:v18 type:0 options:0 usingBlock:v27];

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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a5;
  if (a6 == &compoundliteral_10)
  {
    v32 = v9;
    v10 = [a3 isEqualToString:@"hoveredCharacterIndex"];
    v9 = v32;
    if (v10)
    {
      objc_opt_class();
      v11 = [v32 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v12 = ICDynamicCast();

      objc_opt_class();
      v13 = [v32 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v14 = ICDynamicCast();

      v15 = [(ICEditingTextView *)self editorController];
      v16 = [v15 calculateRecognitionController];
      v17 = [v16 previewBehavior];

      if (!ICInternalSettingsIsScrubbingEnabled() || v17 == 1)
      {
        goto LABEL_24;
      }

      v18 = [(ICEditingTextView *)self editorController];
      v19 = [v18 note];
      if ([v19 isSharedReadOnly])
      {
        goto LABEL_23;
      }

      v20 = [(ICTK2TextView *)self note];
      if (([v20 isDeletedOrInTrash] & 1) == 0)
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

          v28 = [(ICTK2TextView *)self note];
          v18 = [v28 calculateDocumentController];

          v19 = [v18 numberLiteralAtLocation:{objc_msgSend(v14, "integerValue")}];
          if ([v19 range] == 0x7FFFFFFFFFFFFFFFLL || (v29 = objc_msgSend(v14, "intValue"), v29 < 1))
          {
LABEL_23:

LABEL_24:
            v9 = v32;
            goto LABEL_25;
          }

          v30 = v29;
          v20 = [(ICEditingTextView *)self editorController];
          v31 = [v20 calculateScrubberController];
          [v31 setHoveredCharacterIndex:v30];
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