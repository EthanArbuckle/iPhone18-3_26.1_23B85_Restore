@interface CKConversationListLargeTextCell
+ (double)cellHeightForDisplayScale:(double)scale;
+ (id)hyphenationParagraphStyle;
- (CKConversationListLargeTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_constraintForEditing:(BOOL)editing;
- (id)_contentSizeCategoryDependentConstraints;
- (id)summaryLabelTextBaseColor;
- (id)unreadIndicatorImageForVisibility:(BOOL)visibility withMuteState:(BOOL)state;
- (void)contentSizeCategoryDidChange;
- (void)updateContentsForConversation:(id)conversation fastPreview:(BOOL)preview;
- (void)updateForEditing:(BOOL)editing;
- (void)updateFromLabelWithText:(id)text;
- (void)updateUnreadIndicatorWithImage:(id)image;
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

+ (double)cellHeightForDisplayScale:(double)scale
{
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___CKConversationListLargeTextCell;
  objc_msgSendSuper2(&v13, sel_cellHeightForDisplayScale_);
  v4 = v3;
  v5 = +[CKUIBehavior sharedBehaviors];
  conversationListDateFont = [v5 conversationListDateFont];

  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 senderSummaryConversationListSpace];
  v9 = v8;

  [conversationListDateFont capHeight];
  UIRoundToScale();
  v11 = v4 + v9 + v10;

  return v11;
}

- (CKConversationListLargeTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v126[11] = *MEMORY[0x1E69E9840];
  v123.receiver = self;
  v123.super_class = CKConversationListLargeTextCell;
  v4 = [(CKConversationListCell *)&v123 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    dateLabel = [(CKConversationListCell *)v4 dateLabel];
    [dateLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    dateLabel2 = [(CKConversationListCell *)v5 dateLabel];
    [dateLabel2 setTextAlignment:4];

    dateLabel3 = [(CKConversationListCell *)v5 dateLabel];
    v9 = +[CKUIBehavior sharedBehaviors];
    theme = [v9 theme];
    conversationListLargeTextDateColor = [theme conversationListLargeTextDateColor];
    [dateLabel3 setTextColor:conversationListLargeTextDateColor];

    contentView = [(CKConversationListLargeTextCell *)v5 contentView];
    dateLabel4 = [(CKConversationListCell *)v5 dateLabel];
    [contentView addSubview:dateLabel4];

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(dateLabel4) = [mEMORY[0x1E69A8070] isPriorityMessagesEnabled];

    if (dateLabel4)
    {
      priorityLabel = [(CKConversationListCell *)v5 priorityLabel];
      [priorityLabel setTranslatesAutoresizingMaskIntoConstraints:0];

      priorityLabel2 = [(CKConversationListCell *)v5 priorityLabel];
      [priorityLabel2 setTextAlignment:4];

      contentView2 = [(CKConversationListLargeTextCell *)v5 contentView];
      priorityLabel3 = [(CKConversationListCell *)v5 priorityLabel];
      [contentView2 addSubview:priorityLabel3];
    }

    fromLabel = [(CKConversationListCell *)v5 fromLabel];
    [fromLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    fromLabel2 = [(CKConversationListCell *)v5 fromLabel];
    [fromLabel2 setNumberOfLines:2];

    summaryLabel = [(CKConversationListCell *)v5 summaryLabel];
    [summaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView3 = [(CKConversationListLargeTextCell *)v5 contentView];
    summaryLabel2 = [(CKConversationListCell *)v5 summaryLabel];
    [contentView3 addSubview:summaryLabel2];

    chevronImageView = [(CKConversationListCell *)v5 chevronImageView];
    [chevronImageView setTranslatesAutoresizingMaskIntoConstraints:0];

    chevronImageView2 = [(CKConversationListCell *)v5 chevronImageView];
    LODWORD(v26) = 1148846080;
    [chevronImageView2 setContentHuggingPriority:0 forAxis:v26];

    v27 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    contentView4 = [(CKConversationListLargeTextCell *)v5 contentView];
    [contentView4 addLayoutGuide:v27];

    v121 = v27;
    [(CKConversationListLargeTextCell *)v5 setFirstLineLayoutGuide:v27];
    array = [MEMORY[0x1E695DF70] array];
    fromLabel3 = [(CKConversationListCell *)v5 fromLabel];
    leadingAnchor = [fromLabel3 leadingAnchor];
    contentView5 = [(CKConversationListLargeTextCell *)v5 contentView];
    leadingAnchor2 = [contentView5 leadingAnchor];
    v113 = +[CKUIBehavior sharedBehaviors];
    [v113 conversationListCellLargeTextLeftMargin];
    v111 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    v126[0] = v111;
    summaryLabel3 = [(CKConversationListCell *)v5 summaryLabel];
    leadingAnchor3 = [summaryLabel3 leadingAnchor];
    fromLabel4 = [(CKConversationListCell *)v5 fromLabel];
    leadingAnchor4 = [fromLabel4 leadingAnchor];
    v106 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v126[1] = v106;
    summaryLabel4 = [(CKConversationListCell *)v5 summaryLabel];
    trailingAnchor = [summaryLabel4 trailingAnchor];
    fromLabel5 = [(CKConversationListCell *)v5 fromLabel];
    trailingAnchor2 = [fromLabel5 trailingAnchor];
    v101 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v126[2] = v101;
    dateLabel5 = [(CKConversationListCell *)v5 dateLabel];
    leadingAnchor5 = [dateLabel5 leadingAnchor];
    fromLabel6 = [(CKConversationListCell *)v5 fromLabel];
    leadingAnchor6 = [fromLabel6 leadingAnchor];
    v96 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v126[3] = v96;
    dateLabel6 = [(CKConversationListCell *)v5 dateLabel];
    trailingAnchor3 = [dateLabel6 trailingAnchor];
    fromLabel7 = [(CKConversationListCell *)v5 fromLabel];
    trailingAnchor4 = [fromLabel7 trailingAnchor];
    v91 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v126[4] = v91;
    firstLineLayoutGuide = [(CKConversationListLargeTextCell *)v5 firstLineLayoutGuide];
    bottomAnchor = [firstLineLayoutGuide bottomAnchor];
    fromLabel8 = [(CKConversationListCell *)v5 fromLabel];
    firstBaselineAnchor = [fromLabel8 firstBaselineAnchor];
    v86 = [bottomAnchor constraintEqualToAnchor:firstBaselineAnchor];
    v126[5] = v86;
    summaryLabel5 = [(CKConversationListCell *)v5 summaryLabel];
    topAnchor = [summaryLabel5 topAnchor];
    fromLabel9 = [(CKConversationListCell *)v5 fromLabel];
    bottomAnchor2 = [fromLabel9 bottomAnchor];
    v82 = +[CKUIBehavior sharedBehaviors];
    [v82 conversationListCellLargeTextSenderSummaryInterspacing];
    v80 = [topAnchor constraintEqualToAnchor:bottomAnchor2 constant:?];
    v126[6] = v80;
    dateLabel7 = [(CKConversationListCell *)v5 dateLabel];
    topAnchor2 = [dateLabel7 topAnchor];
    summaryLabel6 = [(CKConversationListCell *)v5 summaryLabel];
    bottomAnchor3 = [summaryLabel6 bottomAnchor];
    v75 = [topAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v126[7] = v75;
    priorityLabel4 = [(CKConversationListCell *)v5 priorityLabel];
    leadingAnchor7 = [priorityLabel4 leadingAnchor];
    fromLabel10 = [(CKConversationListCell *)v5 fromLabel];
    leadingAnchor8 = [fromLabel10 leadingAnchor];
    v70 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v126[8] = v70;
    priorityLabel5 = [(CKConversationListCell *)v5 priorityLabel];
    trailingAnchor5 = [priorityLabel5 trailingAnchor];
    fromLabel11 = [(CKConversationListCell *)v5 fromLabel];
    trailingAnchor6 = [fromLabel11 trailingAnchor];
    v31 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v126[9] = v31;
    priorityLabel6 = [(CKConversationListCell *)v5 priorityLabel];
    topAnchor3 = [priorityLabel6 topAnchor];
    summaryLabel7 = [(CKConversationListCell *)v5 summaryLabel];
    bottomAnchor4 = [summaryLabel7 bottomAnchor];
    v36 = [topAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v126[10] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:11];
    [array addObjectsFromArray:v37];

    chevronImageView3 = [(CKConversationListCell *)v5 chevronImageView];

    if (chevronImageView3)
    {
      chevronImageView4 = [(CKConversationListCell *)v5 chevronImageView];
      centerYAnchor = [chevronImageView4 centerYAnchor];
      firstLineLayoutGuide2 = [(CKConversationListLargeTextCell *)v5 firstLineLayoutGuide];
      centerYAnchor2 = [firstLineLayoutGuide2 centerYAnchor];
      v41 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v125[0] = v41;
      chevronImageView5 = [(CKConversationListCell *)v5 chevronImageView];
      trailingAnchor7 = [chevronImageView5 trailingAnchor];
      contentView6 = [(CKConversationListLargeTextCell *)v5 contentView];
      trailingAnchor8 = [contentView6 trailingAnchor];
      [(CKConversationListLargeTextCell *)v5 layoutMargins];
      v47 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-v46];
      v125[1] = v47;
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:2];
      [array addObjectsFromArray:v48];
    }

    if ((IMSharedHelperDeviceIsiPad() & 1) != 0 || CKIsRunningInMacCatalyst())
    {
      v49 = objc_alloc_init(CKConversationListTypingIndicatorView);
      [(CKConversationListCell *)v5 setTypingIndicatorView:v49];

      typingIndicatorView = [(CKConversationListCell *)v5 typingIndicatorView];
      [typingIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];

      contentView7 = [(CKConversationListLargeTextCell *)v5 contentView];
      typingIndicatorView2 = [(CKConversationListCell *)v5 typingIndicatorView];
      [contentView7 addSubview:typingIndicatorView2];

      typingIndicatorView3 = [(CKConversationListCell *)v5 typingIndicatorView];
      leadingAnchor9 = [typingIndicatorView3 leadingAnchor];
      fromLabel12 = [(CKConversationListCell *)v5 fromLabel];
      leadingAnchor10 = [fromLabel12 leadingAnchor];
      v55 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
      v124[0] = v55;
      typingIndicatorView4 = [(CKConversationListCell *)v5 typingIndicatorView];
      topAnchor4 = [typingIndicatorView4 topAnchor];
      fromLabel13 = [(CKConversationListCell *)v5 fromLabel];
      bottomAnchor5 = [fromLabel13 bottomAnchor];
      v60 = [topAnchor4 constraintEqualToAnchor:bottomAnchor5];
      v124[1] = v60;
      v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:2];
      [array addObjectsFromArray:v61];

      typingIndicatorView5 = [(CKConversationListCell *)v5 typingIndicatorView];
      [typingIndicatorView5 setHidden:1];
    }

    v63 = [(CKConversationListLargeTextCell *)v5 _constraintForEditing:0];
    [(CKConversationListLargeTextCell *)v5 setEditingDependentConstraint:v63];

    editingDependentConstraint = [(CKConversationListLargeTextCell *)v5 editingDependentConstraint];
    [array addObject:editingDependentConstraint];

    _contentSizeCategoryDependentConstraints = [(CKConversationListLargeTextCell *)v5 _contentSizeCategoryDependentConstraints];
    [(CKConversationListLargeTextCell *)v5 setContentSizeCategoryDependentConstraints:_contentSizeCategoryDependentConstraints];

    contentSizeCategoryDependentConstraints = [(CKConversationListLargeTextCell *)v5 contentSizeCategoryDependentConstraints];
    [array addObjectsFromArray:contentSizeCategoryDependentConstraints];

    [MEMORY[0x1E696ACD8] activateConstraints:array];
  }

  return v5;
}

- (id)summaryLabelTextBaseColor
{
  v2 = +[CKUIBehavior sharedBehaviors];
  theme = [v2 theme];
  conversationListLargeTextSummaryColor = [theme conversationListLargeTextSummaryColor];

  return conversationListLargeTextSummaryColor;
}

- (id)unreadIndicatorImageForVisibility:(BOOL)visibility withMuteState:(BOOL)state
{
  if (visibility)
  {
    v4 = [CKUIBehavior sharedBehaviors:visibility];
    unreadIndicatorTintedImage = [v4 unreadIndicatorTintedImage];
  }

  else
  {
    unreadIndicatorTintedImage = 0;
  }

  return unreadIndicatorTintedImage;
}

- (void)contentSizeCategoryDidChange
{
  v8.receiver = self;
  v8.super_class = CKConversationListLargeTextCell;
  [(CKConversationListCell *)&v8 contentSizeCategoryDidChange];
  v3 = MEMORY[0x1E696ACD8];
  contentSizeCategoryDependentConstraints = [(CKConversationListLargeTextCell *)self contentSizeCategoryDependentConstraints];
  [v3 deactivateConstraints:contentSizeCategoryDependentConstraints];

  _contentSizeCategoryDependentConstraints = [(CKConversationListLargeTextCell *)self _contentSizeCategoryDependentConstraints];
  [(CKConversationListLargeTextCell *)self setContentSizeCategoryDependentConstraints:_contentSizeCategoryDependentConstraints];

  v6 = MEMORY[0x1E696ACD8];
  contentSizeCategoryDependentConstraints2 = [(CKConversationListLargeTextCell *)self contentSizeCategoryDependentConstraints];
  [v6 activateConstraints:contentSizeCategoryDependentConstraints2];
}

- (void)updateFromLabelWithText:(id)text
{
  v28 = *MEMORY[0x1E69E9840];
  textCopy = text;
  if (textCopy)
  {
    indicatorTextAttachments = [(CKConversationListLargeTextCell *)self indicatorTextAttachments];
    if ([indicatorTextAttachments count])
    {
    }

    else
    {
      unreadIndicatorAttachment = [(CKConversationListLargeTextCell *)self unreadIndicatorAttachment];

      if (!unreadIndicatorAttachment)
      {
        v8 = [textCopy mutableCopy];
LABEL_16:
        v20 = *MEMORY[0x1E69DB688];
        hyphenationParagraphStyle = [objc_opt_class() hyphenationParagraphStyle];
        [v8 addAttribute:v20 value:hyphenationParagraphStyle range:{0, objc_msgSend(v8, "length")}];

        fromLabel = [(CKConversationListCell *)self fromLabel];
        [fromLabel setAttributedText:v8];

        goto LABEL_17;
      }
    }

    v8 = objc_alloc_init(MEMORY[0x1E696AD40]);
    unreadIndicatorAttachment2 = [(CKConversationListLargeTextCell *)self unreadIndicatorAttachment];

    if (unreadIndicatorAttachment2)
    {
      v10 = MEMORY[0x1E696AAB0];
      unreadIndicatorAttachment3 = [(CKConversationListLargeTextCell *)self unreadIndicatorAttachment];
      v12 = [v10 attributedStringWithAttachment:unreadIndicatorAttachment3];

      [v8 appendAttributedString:v12];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    indicatorTextAttachments2 = [(CKConversationListLargeTextCell *)self indicatorTextAttachments];
    v14 = [indicatorTextAttachments2 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(indicatorTextAttachments2);
          }

          v18 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:*(*(&v23 + 1) + 8 * i)];
          [v8 appendAttributedString:v18];
        }

        v15 = [indicatorTextAttachments2 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v8 appendAttributedString:v19];

    [v8 appendAttributedString:textCopy];
    goto LABEL_16;
  }

  fromLabel2 = [(CKConversationListCell *)self fromLabel];
  [fromLabel2 setAttributedText:0];

LABEL_17:
}

- (void)updateUnreadIndicatorWithImage:(id)image
{
  v38 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (imageCopy)
  {
    unreadIndicatorAttachment = [(CKConversationListLargeTextCell *)self unreadIndicatorAttachment];

    if (!unreadIndicatorAttachment)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
      [(CKConversationListLargeTextCell *)self setUnreadIndicatorAttachment:v6];
    }

    unreadIndicatorAttachment2 = [(CKConversationListLargeTextCell *)self unreadIndicatorAttachment];
    [unreadIndicatorAttachment2 setImage:imageCopy];

    fromLabel = [(CKConversationListCell *)self fromLabel];
    font = [fromLabel font];
    [font capHeight];
    v11 = v10;

    [imageCopy size];
    v13 = v12;
    v15 = v14;
    unreadIndicatorAttachment3 = [(CKConversationListLargeTextCell *)self unreadIndicatorAttachment];
    [unreadIndicatorAttachment3 setBounds:{0.0, v11 * 0.5 - v15 * 0.5, v13, v15}];
  }

  else
  {
    [(CKConversationListLargeTextCell *)self setUnreadIndicatorAttachment:0];
  }

  fromLabel2 = [(CKConversationListCell *)self fromLabel];
  font2 = [fromLabel2 font];
  [font2 capHeight];
  v20 = v19;

  makeTextAttachmentsForCurrentIndicatorState = [(CKConversationListCell *)self makeTextAttachmentsForCurrentIndicatorState];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v22 = [makeTextAttachmentsForCurrentIndicatorState countByEnumeratingWithState:&v33 objects:v37 count:16];
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
          objc_enumerationMutation(makeTextAttachmentsForCurrentIndicatorState);
        }

        v27 = *(*(&v33 + 1) + 8 * i);
        image = [v27 image];
        [image size];
        v30 = v29;
        v32 = v31;

        [v27 setBounds:{0.0, v25 + v32 * 0.65 * -0.5, v30 * 0.65}];
      }

      v23 = [makeTextAttachmentsForCurrentIndicatorState countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v23);
  }

  [(CKConversationListLargeTextCell *)self setIndicatorTextAttachments:makeTextAttachmentsForCurrentIndicatorState];
}

- (void)updateForEditing:(BOOL)editing
{
  editingCopy = editing;
  v8.receiver = self;
  v8.super_class = CKConversationListLargeTextCell;
  [(CKConversationListCell *)&v8 updateForEditing:?];
  editingDependentConstraint = [(CKConversationListLargeTextCell *)self editingDependentConstraint];
  [editingDependentConstraint setActive:0];

  v6 = [(CKConversationListLargeTextCell *)self _constraintForEditing:editingCopy];
  [(CKConversationListLargeTextCell *)self setEditingDependentConstraint:v6];

  editingDependentConstraint2 = [(CKConversationListLargeTextCell *)self editingDependentConstraint];
  [editingDependentConstraint2 setActive:1];

  [(CKConversationListLargeTextCell *)self layoutIfNeeded];
}

- (id)_constraintForEditing:(BOOL)editing
{
  if (editing)
  {
    fromLabel = [(CKConversationListCell *)self fromLabel];
    trailingAnchor = [fromLabel trailingAnchor];
    contentView = [(CKConversationListLargeTextCell *)self contentView];
    trailingAnchor2 = [contentView trailingAnchor];
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 conversationListCellLargeTextLeftMargin];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v9];
  }

  else
  {
    chevronImageView = [(CKConversationListCell *)self chevronImageView];

    fromLabel = [(CKConversationListCell *)self fromLabel];
    trailingAnchor = [fromLabel trailingAnchor];
    if (chevronImageView)
    {
      contentView = [(CKConversationListCell *)self chevronImageView];
      trailingAnchor2 = [contentView leadingAnchor];
      v12 = -10.0;
    }

    else
    {
      contentView = [(CKConversationListLargeTextCell *)self contentView];
      trailingAnchor2 = [contentView trailingAnchor];
      [(CKConversationListLargeTextCell *)self layoutMargins];
      v12 = -v13;
    }

    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v12];
  }

  return v10;
}

- (id)_contentSizeCategoryDependentConstraints
{
  v30[4] = *MEMORY[0x1E69E9840];
  fromLabel = [(CKConversationListCell *)self fromLabel];
  topAnchor = [fromLabel topAnchor];
  contentView = [(CKConversationListLargeTextCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v26 = +[CKUIBehavior sharedBehaviors];
  [v26 largeTextTopConversationListSpace];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  v30[0] = v24;
  firstLineLayoutGuide = [(CKConversationListLargeTextCell *)self firstLineLayoutGuide];
  heightAnchor = [firstLineLayoutGuide heightAnchor];
  fromLabel2 = [(CKConversationListCell *)self fromLabel];
  font = [fromLabel2 font];
  [font capHeight];
  v19 = [heightAnchor constraintEqualToConstant:?];
  v30[1] = v19;
  dateLabel = [(CKConversationListCell *)self dateLabel];
  bottomAnchor = [dateLabel bottomAnchor];
  contentView2 = [(CKConversationListLargeTextCell *)self contentView];
  bottomAnchor2 = [contentView2 bottomAnchor];
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 accessibilityBottomConversationListSpace];
  v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v6];
  v30[2] = v7;
  priorityLabel = [(CKConversationListCell *)self priorityLabel];
  bottomAnchor3 = [priorityLabel bottomAnchor];
  contentView3 = [(CKConversationListLargeTextCell *)self contentView];
  bottomAnchor4 = [contentView3 bottomAnchor];
  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 accessibilityBottomConversationListSpace];
  v14 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-v13];
  v30[3] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];

  return v16;
}

- (void)updateContentsForConversation:(id)conversation fastPreview:(BOOL)preview
{
  v11.receiver = self;
  v11.super_class = CKConversationListLargeTextCell;
  [(CKConversationListCell *)&v11 updateContentsForConversation:conversation fastPreview:preview];
  if ((IMSharedHelperDeviceIsiPad() & 1) != 0 || CKIsRunningInMacCatalyst())
  {
    if ([(CKConversationListCell *)self lastMessageIsTypingIndicator])
    {
      summaryLabel = [(CKConversationListCell *)self summaryLabel];
      [summaryLabel setHidden:1];

      typingIndicatorView = [(CKConversationListCell *)self typingIndicatorView];
      [typingIndicatorView stopAnimation];

      typingIndicatorView2 = [(CKConversationListCell *)self typingIndicatorView];
      [typingIndicatorView2 setHidden:0];

      typingIndicatorView3 = [(CKConversationListCell *)self typingIndicatorView];
      [typingIndicatorView3 startPulseAnimation];
    }

    else
    {
      typingIndicatorView4 = [(CKConversationListCell *)self typingIndicatorView];
      [typingIndicatorView4 setHidden:1];

      typingIndicatorView5 = [(CKConversationListCell *)self typingIndicatorView];
      [typingIndicatorView5 stopAnimation];

      typingIndicatorView3 = [(CKConversationListCell *)self summaryLabel];
      [typingIndicatorView3 setHidden:0];
    }
  }
}

@end