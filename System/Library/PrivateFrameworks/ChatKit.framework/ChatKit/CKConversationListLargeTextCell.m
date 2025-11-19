@interface CKConversationListLargeTextCell
+ (double)cellHeightForDisplayScale:(double)a3;
+ (id)hyphenationParagraphStyle;
- (CKConversationListLargeTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_constraintForEditing:(BOOL)a3;
- (id)_contentSizeCategoryDependentConstraints;
- (id)summaryLabelTextBaseColor;
- (id)unreadIndicatorImageForVisibility:(BOOL)a3 withMuteState:(BOOL)a4;
- (void)contentSizeCategoryDidChange;
- (void)updateContentsForConversation:(id)a3 fastPreview:(BOOL)a4;
- (void)updateForEditing:(BOOL)a3;
- (void)updateFromLabelWithText:(id)a3;
- (void)updateUnreadIndicatorWithImage:(id)a3;
@end

@implementation CKConversationListLargeTextCell

+ (id)hyphenationParagraphStyle
{
  if (hyphenationParagraphStyle_onceToken != -1)
  {
    +[CKConversationListLargeTextCell hyphenationParagraphStyle];
  }

  v3 = hyphenationParagraphStyle_hyphenationParagraphStyle;

  return v3;
}

void __60__CKConversationListLargeTextCell_hyphenationParagraphStyle__block_invoke()
{
  v0 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v1 = [v0 mutableCopy];

  LODWORD(v2) = 1.0;
  [v1 setHyphenationFactor:v2];
  [v1 setLineBreakMode:4];
  v3 = hyphenationParagraphStyle_hyphenationParagraphStyle;
  hyphenationParagraphStyle_hyphenationParagraphStyle = v1;
}

+ (double)cellHeightForDisplayScale:(double)a3
{
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___CKConversationListLargeTextCell;
  objc_msgSendSuper2(&v13, sel_cellHeightForDisplayScale_);
  v4 = v3;
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 conversationListDateFont];

  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 senderSummaryConversationListSpace];
  v9 = v8;

  [v6 capHeight];
  UIRoundToScale();
  v11 = v4 + v9 + v10;

  return v11;
}

- (CKConversationListLargeTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v126[11] = *MEMORY[0x1E69E9840];
  v123.receiver = self;
  v123.super_class = CKConversationListLargeTextCell;
  v4 = [(CKConversationListCell *)&v123 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(CKConversationListCell *)v4 dateLabel];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(CKConversationListCell *)v5 dateLabel];
    [v7 setTextAlignment:4];

    v8 = [(CKConversationListCell *)v5 dateLabel];
    v9 = +[CKUIBehavior sharedBehaviors];
    v10 = [v9 theme];
    v11 = [v10 conversationListLargeTextDateColor];
    [v8 setTextColor:v11];

    v12 = [(CKConversationListLargeTextCell *)v5 contentView];
    v13 = [(CKConversationListCell *)v5 dateLabel];
    [v12 addSubview:v13];

    v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(v13) = [v14 isPriorityMessagesEnabled];

    if (v13)
    {
      v15 = [(CKConversationListCell *)v5 priorityLabel];
      [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

      v16 = [(CKConversationListCell *)v5 priorityLabel];
      [v16 setTextAlignment:4];

      v17 = [(CKConversationListLargeTextCell *)v5 contentView];
      v18 = [(CKConversationListCell *)v5 priorityLabel];
      [v17 addSubview:v18];
    }

    v19 = [(CKConversationListCell *)v5 fromLabel];
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

    v20 = [(CKConversationListCell *)v5 fromLabel];
    [v20 setNumberOfLines:2];

    v21 = [(CKConversationListCell *)v5 summaryLabel];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

    v22 = [(CKConversationListLargeTextCell *)v5 contentView];
    v23 = [(CKConversationListCell *)v5 summaryLabel];
    [v22 addSubview:v23];

    v24 = [(CKConversationListCell *)v5 chevronImageView];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

    v25 = [(CKConversationListCell *)v5 chevronImageView];
    LODWORD(v26) = 1148846080;
    [v25 setContentHuggingPriority:0 forAxis:v26];

    v27 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    v28 = [(CKConversationListLargeTextCell *)v5 contentView];
    [v28 addLayoutGuide:v27];

    v121 = v27;
    [(CKConversationListLargeTextCell *)v5 setFirstLineLayoutGuide:v27];
    v122 = [MEMORY[0x1E695DF70] array];
    v118 = [(CKConversationListCell *)v5 fromLabel];
    v114 = [v118 leadingAnchor];
    v115 = [(CKConversationListLargeTextCell *)v5 contentView];
    v112 = [v115 leadingAnchor];
    v113 = +[CKUIBehavior sharedBehaviors];
    [v113 conversationListCellLargeTextLeftMargin];
    v111 = [v114 constraintEqualToAnchor:v112 constant:?];
    v126[0] = v111;
    v110 = [(CKConversationListCell *)v5 summaryLabel];
    v108 = [v110 leadingAnchor];
    v109 = [(CKConversationListCell *)v5 fromLabel];
    v107 = [v109 leadingAnchor];
    v106 = [v108 constraintEqualToAnchor:v107];
    v126[1] = v106;
    v105 = [(CKConversationListCell *)v5 summaryLabel];
    v103 = [v105 trailingAnchor];
    v104 = [(CKConversationListCell *)v5 fromLabel];
    v102 = [v104 trailingAnchor];
    v101 = [v103 constraintEqualToAnchor:v102];
    v126[2] = v101;
    v100 = [(CKConversationListCell *)v5 dateLabel];
    v98 = [v100 leadingAnchor];
    v99 = [(CKConversationListCell *)v5 fromLabel];
    v97 = [v99 leadingAnchor];
    v96 = [v98 constraintEqualToAnchor:v97];
    v126[3] = v96;
    v95 = [(CKConversationListCell *)v5 dateLabel];
    v93 = [v95 trailingAnchor];
    v94 = [(CKConversationListCell *)v5 fromLabel];
    v92 = [v94 trailingAnchor];
    v91 = [v93 constraintEqualToAnchor:v92];
    v126[4] = v91;
    v90 = [(CKConversationListLargeTextCell *)v5 firstLineLayoutGuide];
    v88 = [v90 bottomAnchor];
    v89 = [(CKConversationListCell *)v5 fromLabel];
    v87 = [v89 firstBaselineAnchor];
    v86 = [v88 constraintEqualToAnchor:v87];
    v126[5] = v86;
    v85 = [(CKConversationListCell *)v5 summaryLabel];
    v83 = [v85 topAnchor];
    v84 = [(CKConversationListCell *)v5 fromLabel];
    v81 = [v84 bottomAnchor];
    v82 = +[CKUIBehavior sharedBehaviors];
    [v82 conversationListCellLargeTextSenderSummaryInterspacing];
    v80 = [v83 constraintEqualToAnchor:v81 constant:?];
    v126[6] = v80;
    v79 = [(CKConversationListCell *)v5 dateLabel];
    v77 = [v79 topAnchor];
    v78 = [(CKConversationListCell *)v5 summaryLabel];
    v76 = [v78 bottomAnchor];
    v75 = [v77 constraintEqualToAnchor:v76];
    v126[7] = v75;
    v74 = [(CKConversationListCell *)v5 priorityLabel];
    v72 = [v74 leadingAnchor];
    v73 = [(CKConversationListCell *)v5 fromLabel];
    v71 = [v73 leadingAnchor];
    v70 = [v72 constraintEqualToAnchor:v71];
    v126[8] = v70;
    v69 = [(CKConversationListCell *)v5 priorityLabel];
    v68 = [v69 trailingAnchor];
    v29 = [(CKConversationListCell *)v5 fromLabel];
    v30 = [v29 trailingAnchor];
    v31 = [v68 constraintEqualToAnchor:v30];
    v126[9] = v31;
    v32 = [(CKConversationListCell *)v5 priorityLabel];
    v33 = [v32 topAnchor];
    v34 = [(CKConversationListCell *)v5 summaryLabel];
    v35 = [v34 bottomAnchor];
    v36 = [v33 constraintEqualToAnchor:v35];
    v126[10] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:11];
    [v122 addObjectsFromArray:v37];

    v38 = [(CKConversationListCell *)v5 chevronImageView];

    if (v38)
    {
      v119 = [(CKConversationListCell *)v5 chevronImageView];
      v116 = [v119 centerYAnchor];
      v39 = [(CKConversationListLargeTextCell *)v5 firstLineLayoutGuide];
      v40 = [v39 centerYAnchor];
      v41 = [v116 constraintEqualToAnchor:v40];
      v125[0] = v41;
      v42 = [(CKConversationListCell *)v5 chevronImageView];
      v43 = [v42 trailingAnchor];
      v44 = [(CKConversationListLargeTextCell *)v5 contentView];
      v45 = [v44 trailingAnchor];
      [(CKConversationListLargeTextCell *)v5 layoutMargins];
      v47 = [v43 constraintEqualToAnchor:v45 constant:-v46];
      v125[1] = v47;
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:2];
      [v122 addObjectsFromArray:v48];
    }

    if ((IMSharedHelperDeviceIsiPad() & 1) != 0 || CKIsRunningInMacCatalyst())
    {
      v49 = objc_alloc_init(CKConversationListTypingIndicatorView);
      [(CKConversationListCell *)v5 setTypingIndicatorView:v49];

      v50 = [(CKConversationListCell *)v5 typingIndicatorView];
      [v50 setTranslatesAutoresizingMaskIntoConstraints:0];

      v51 = [(CKConversationListLargeTextCell *)v5 contentView];
      v52 = [(CKConversationListCell *)v5 typingIndicatorView];
      [v51 addSubview:v52];

      v120 = [(CKConversationListCell *)v5 typingIndicatorView];
      v117 = [v120 leadingAnchor];
      v53 = [(CKConversationListCell *)v5 fromLabel];
      v54 = [v53 leadingAnchor];
      v55 = [v117 constraintEqualToAnchor:v54];
      v124[0] = v55;
      v56 = [(CKConversationListCell *)v5 typingIndicatorView];
      v57 = [v56 topAnchor];
      v58 = [(CKConversationListCell *)v5 fromLabel];
      v59 = [v58 bottomAnchor];
      v60 = [v57 constraintEqualToAnchor:v59];
      v124[1] = v60;
      v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:2];
      [v122 addObjectsFromArray:v61];

      v62 = [(CKConversationListCell *)v5 typingIndicatorView];
      [v62 setHidden:1];
    }

    v63 = [(CKConversationListLargeTextCell *)v5 _constraintForEditing:0];
    [(CKConversationListLargeTextCell *)v5 setEditingDependentConstraint:v63];

    v64 = [(CKConversationListLargeTextCell *)v5 editingDependentConstraint];
    [v122 addObject:v64];

    v65 = [(CKConversationListLargeTextCell *)v5 _contentSizeCategoryDependentConstraints];
    [(CKConversationListLargeTextCell *)v5 setContentSizeCategoryDependentConstraints:v65];

    v66 = [(CKConversationListLargeTextCell *)v5 contentSizeCategoryDependentConstraints];
    [v122 addObjectsFromArray:v66];

    [MEMORY[0x1E696ACD8] activateConstraints:v122];
  }

  return v5;
}

- (id)summaryLabelTextBaseColor
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 theme];
  v4 = [v3 conversationListLargeTextSummaryColor];

  return v4;
}

- (id)unreadIndicatorImageForVisibility:(BOOL)a3 withMuteState:(BOOL)a4
{
  if (a3)
  {
    v4 = [CKUIBehavior sharedBehaviors:a3];
    v5 = [v4 unreadIndicatorTintedImage];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)contentSizeCategoryDidChange
{
  v8.receiver = self;
  v8.super_class = CKConversationListLargeTextCell;
  [(CKConversationListCell *)&v8 contentSizeCategoryDidChange];
  v3 = MEMORY[0x1E696ACD8];
  v4 = [(CKConversationListLargeTextCell *)self contentSizeCategoryDependentConstraints];
  [v3 deactivateConstraints:v4];

  v5 = [(CKConversationListLargeTextCell *)self _contentSizeCategoryDependentConstraints];
  [(CKConversationListLargeTextCell *)self setContentSizeCategoryDependentConstraints:v5];

  v6 = MEMORY[0x1E696ACD8];
  v7 = [(CKConversationListLargeTextCell *)self contentSizeCategoryDependentConstraints];
  [v6 activateConstraints:v7];
}

- (void)updateFromLabelWithText:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(CKConversationListLargeTextCell *)self indicatorTextAttachments];
    if ([v5 count])
    {
    }

    else
    {
      v7 = [(CKConversationListLargeTextCell *)self unreadIndicatorAttachment];

      if (!v7)
      {
        v8 = [v4 mutableCopy];
LABEL_16:
        v20 = *MEMORY[0x1E69DB688];
        v21 = [objc_opt_class() hyphenationParagraphStyle];
        [v8 addAttribute:v20 value:v21 range:{0, objc_msgSend(v8, "length")}];

        v22 = [(CKConversationListCell *)self fromLabel];
        [v22 setAttributedText:v8];

        goto LABEL_17;
      }
    }

    v8 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v9 = [(CKConversationListLargeTextCell *)self unreadIndicatorAttachment];

    if (v9)
    {
      v10 = MEMORY[0x1E696AAB0];
      v11 = [(CKConversationListLargeTextCell *)self unreadIndicatorAttachment];
      v12 = [v10 attributedStringWithAttachment:v11];

      [v8 appendAttributedString:v12];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = [(CKConversationListLargeTextCell *)self indicatorTextAttachments];
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:*(*(&v23 + 1) + 8 * i)];
          [v8 appendAttributedString:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v8 appendAttributedString:v19];

    [v8 appendAttributedString:v4];
    goto LABEL_16;
  }

  v6 = [(CKConversationListCell *)self fromLabel];
  [v6 setAttributedText:0];

LABEL_17:
}

- (void)updateUnreadIndicatorWithImage:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(CKConversationListLargeTextCell *)self unreadIndicatorAttachment];

    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
      [(CKConversationListLargeTextCell *)self setUnreadIndicatorAttachment:v6];
    }

    v7 = [(CKConversationListLargeTextCell *)self unreadIndicatorAttachment];
    [v7 setImage:v4];

    v8 = [(CKConversationListCell *)self fromLabel];
    v9 = [v8 font];
    [v9 capHeight];
    v11 = v10;

    [v4 size];
    v13 = v12;
    v15 = v14;
    v16 = [(CKConversationListLargeTextCell *)self unreadIndicatorAttachment];
    [v16 setBounds:{0.0, v11 * 0.5 - v15 * 0.5, v13, v15}];
  }

  else
  {
    [(CKConversationListLargeTextCell *)self setUnreadIndicatorAttachment:0];
  }

  v17 = [(CKConversationListCell *)self fromLabel];
  v18 = [v17 font];
  [v18 capHeight];
  v20 = v19;

  v21 = [(CKConversationListCell *)self makeTextAttachmentsForCurrentIndicatorState];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v22 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v34;
    v25 = v20 * 0.5;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v33 + 1) + 8 * i);
        v28 = [v27 image];
        [v28 size];
        v30 = v29;
        v32 = v31;

        [v27 setBounds:{0.0, v25 + v32 * 0.65 * -0.5, v30 * 0.65}];
      }

      v23 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v23);
  }

  [(CKConversationListLargeTextCell *)self setIndicatorTextAttachments:v21];
}

- (void)updateForEditing:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = CKConversationListLargeTextCell;
  [(CKConversationListCell *)&v8 updateForEditing:?];
  v5 = [(CKConversationListLargeTextCell *)self editingDependentConstraint];
  [v5 setActive:0];

  v6 = [(CKConversationListLargeTextCell *)self _constraintForEditing:v3];
  [(CKConversationListLargeTextCell *)self setEditingDependentConstraint:v6];

  v7 = [(CKConversationListLargeTextCell *)self editingDependentConstraint];
  [v7 setActive:1];

  [(CKConversationListLargeTextCell *)self layoutIfNeeded];
}

- (id)_constraintForEditing:(BOOL)a3
{
  if (a3)
  {
    v4 = [(CKConversationListCell *)self fromLabel];
    v5 = [v4 trailingAnchor];
    v6 = [(CKConversationListLargeTextCell *)self contentView];
    v7 = [v6 trailingAnchor];
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 conversationListCellLargeTextLeftMargin];
    v10 = [v5 constraintEqualToAnchor:v7 constant:-v9];
  }

  else
  {
    v11 = [(CKConversationListCell *)self chevronImageView];

    v4 = [(CKConversationListCell *)self fromLabel];
    v5 = [v4 trailingAnchor];
    if (v11)
    {
      v6 = [(CKConversationListCell *)self chevronImageView];
      v7 = [v6 leadingAnchor];
      v12 = -10.0;
    }

    else
    {
      v6 = [(CKConversationListLargeTextCell *)self contentView];
      v7 = [v6 trailingAnchor];
      [(CKConversationListLargeTextCell *)self layoutMargins];
      v12 = -v13;
    }

    v10 = [v5 constraintEqualToAnchor:v7 constant:v12];
  }

  return v10;
}

- (id)_contentSizeCategoryDependentConstraints
{
  v30[4] = *MEMORY[0x1E69E9840];
  v29 = [(CKConversationListCell *)self fromLabel];
  v27 = [v29 topAnchor];
  v28 = [(CKConversationListLargeTextCell *)self contentView];
  v25 = [v28 topAnchor];
  v26 = +[CKUIBehavior sharedBehaviors];
  [v26 largeTextTopConversationListSpace];
  v24 = [v27 constraintEqualToAnchor:v25 constant:?];
  v30[0] = v24;
  v23 = [(CKConversationListLargeTextCell *)self firstLineLayoutGuide];
  v21 = [v23 heightAnchor];
  v22 = [(CKConversationListCell *)self fromLabel];
  v20 = [v22 font];
  [v20 capHeight];
  v19 = [v21 constraintEqualToConstant:?];
  v30[1] = v19;
  v18 = [(CKConversationListCell *)self dateLabel];
  v17 = [v18 bottomAnchor];
  v3 = [(CKConversationListLargeTextCell *)self contentView];
  v4 = [v3 bottomAnchor];
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 accessibilityBottomConversationListSpace];
  v7 = [v17 constraintEqualToAnchor:v4 constant:-v6];
  v30[2] = v7;
  v8 = [(CKConversationListCell *)self priorityLabel];
  v9 = [v8 bottomAnchor];
  v10 = [(CKConversationListLargeTextCell *)self contentView];
  v11 = [v10 bottomAnchor];
  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 accessibilityBottomConversationListSpace];
  v14 = [v9 constraintEqualToAnchor:v11 constant:-v13];
  v30[3] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];

  return v16;
}

- (void)updateContentsForConversation:(id)a3 fastPreview:(BOOL)a4
{
  v11.receiver = self;
  v11.super_class = CKConversationListLargeTextCell;
  [(CKConversationListCell *)&v11 updateContentsForConversation:a3 fastPreview:a4];
  if ((IMSharedHelperDeviceIsiPad() & 1) != 0 || CKIsRunningInMacCatalyst())
  {
    if ([(CKConversationListCell *)self lastMessageIsTypingIndicator])
    {
      v5 = [(CKConversationListCell *)self summaryLabel];
      [v5 setHidden:1];

      v6 = [(CKConversationListCell *)self typingIndicatorView];
      [v6 stopAnimation];

      v7 = [(CKConversationListCell *)self typingIndicatorView];
      [v7 setHidden:0];

      v8 = [(CKConversationListCell *)self typingIndicatorView];
      [v8 startPulseAnimation];
    }

    else
    {
      v9 = [(CKConversationListCell *)self typingIndicatorView];
      [v9 setHidden:1];

      v10 = [(CKConversationListCell *)self typingIndicatorView];
      [v10 stopAnimation];

      v8 = [(CKConversationListCell *)self summaryLabel];
      [v8 setHidden:0];
    }
  }
}

@end