@interface CKAttachmentSearchResultCell
- (CGPoint)avatarOffsetLTR;
- (CGPoint)avatarOffsetRTL;
- (CKAttachmentSearchResultCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)marginInsets;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)_thumbnailGenerated:(id)generated;
- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)selected;
@end

@implementation CKAttachmentSearchResultCell

- (CKAttachmentSearchResultCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v30.receiver = self;
  v30.super_class = CKAttachmentSearchResultCell;
  v7 = [(CKAttachmentSearchResultCell *)&v30 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    [v8 setContentMode:1];
    [(CKEditableSearchResultCell *)v7 setImageView:v8];
    contentView = [(CKAttachmentSearchResultCell *)v7 contentView];
    [contentView addSubview:v8];

    v10 = objc_alloc(MEMORY[0x1E69DCC10]);
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
    v15 = [v10 initWithFrame:{*MEMORY[0x1E695F058], v12, v13, v14}];
    v16 = +[CKUIBehavior sharedBehaviors];
    searchAttachmentResultLabelFont = [v16 searchAttachmentResultLabelFont];
    [v15 setFont:searchAttachmentResultLabelFont];

    [v15 setNumberOfLines:2];
    [v15 setTextAlignment:1];
    [(CKAttachmentSearchResultCell *)v7 setTitleLabel:v15];
    contentView2 = [(CKAttachmentSearchResultCell *)v7 contentView];
    [contentView2 addSubview:v15];

    v19 = [objc_alloc(MEMORY[0x1E69DC918]) initWithFrame:{v11, v12, v13, v14}];
    v20 = +[CKUIBehavior sharedBehaviors];
    searchAttachmentResultDateLabelFont = [v20 searchAttachmentResultDateLabelFont];
    [v19 setFont:searchAttachmentResultDateLabelFont];

    v22 = +[CKUIBehavior sharedBehaviors];
    theme = [v22 theme];
    spotlightAttachmentSecondaryColor = [theme spotlightAttachmentSecondaryColor];
    [v19 setTextColor:spotlightAttachmentSecondaryColor];

    [v19 setNumberOfLines:1];
    [v19 setTextAlignment:1];
    [(CKAttachmentSearchResultCell *)v7 setDateLabel:v19];
    contentView3 = [(CKAttachmentSearchResultCell *)v7 contentView];
    [contentView3 addSubview:v19];

    v26 = [[CKSearchAvatarSupplementryView alloc] initWithFrame:v11, v12, v13, v14];
    [(CKSearchAvatarSupplementryView *)v26 setParentContentType:3];
    [(CKAttachmentSearchResultCell *)v7 setAvatarView:v26];
    contentView4 = [(CKAttachmentSearchResultCell *)v7 contentView];
    [contentView4 addSubview:v26];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__thumbnailGenerated_ name:@"CKSearchThumbnailDidChange" object:0];
  }

  return v7;
}

- (CGPoint)avatarOffsetLTR
{
  v2 = -6.0;
  v3 = 6.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)avatarOffsetRTL
{
  v2 = 6.0;
  v3 = 6.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)layoutSubviews
{
  v130.receiver = self;
  v130.super_class = CKAttachmentSearchResultCell;
  [(CKEditableSearchResultCell *)&v130 layoutSubviews];
  contentView = [(CKAttachmentSearchResultCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  _shouldReverseLayoutDirection = [(CKAttachmentSearchResultCell *)self _shouldReverseLayoutDirection];
  v13 = +[CKUIBehavior sharedBehaviors];
  [v13 searchAttachmentsImageTopPadding];
  v15 = v14;

  imageView = [(CKEditableSearchResultCell *)self imageView];
  image = [imageView image];

  v129 = v9;
  if (!image)
  {
    checkmarkView = [(CKEditableSearchResultCell *)self checkmarkView];
    [checkmarkView setHidden:1];

    avatarView = [(CKAttachmentSearchResultCell *)self avatarView];
    [avatarView setHidden:1];
LABEL_19:

    goto LABEL_20;
  }

  v128 = v5;
  v18 = *MEMORY[0x1E695F058];
  imageView2 = [(CKEditableSearchResultCell *)self imageView];
  [imageView2 sizeToFit];

  imageView3 = [(CKEditableSearchResultCell *)self imageView];
  [imageView3 frame];
  v22 = v21;
  v24 = v23;

  v25 = v9 / v22;
  v26 = 0.0;
  if (v22 == 0.0)
  {
    v25 = 0.0;
  }

  if (v24 != 0.0)
  {
    v26 = v9 / v24;
  }

  v27 = fmin(v25, v26);
  v127 = v22 * v27;
  v28 = v24 * v27;
  if (CKMainScreenScale_once_44 != -1)
  {
    [CKAttachmentSearchResultCell layoutSubviews];
  }

  v29 = *&CKMainScreenScale_sMainScreenScale_44;
  if (*&CKMainScreenScale_sMainScreenScale_44 == 0.0)
  {
    v29 = 1.0;
  }

  v30 = floor((v128 + (v9 - v127) * 0.5) * v29) / v29;
  v31 = floor((v7 + (v11 - v28) * 0.5) * v29) / v29;
  v32 = +[CKUIBehavior sharedBehaviors];
  [v32 searchAttachmentsImageTopPadding];
  v34 = v33;
  v131.origin.x = v18;
  v131.origin.y = v15;
  v131.size.width = v9;
  v131.size.height = v9;
  v35 = v127;
  v36 = v28;
  v37 = v34 + CGRectGetHeight(v131);
  v132.origin.x = v30;
  v132.origin.y = v31;
  v132.size.width = v127;
  v132.size.height = v28;
  v38 = v37 - CGRectGetHeight(v132);

  imageView4 = [(CKEditableSearchResultCell *)self imageView];
  [imageView4 setFrame:{v30, v38, v127, v28}];

  avatarView2 = [(CKAttachmentSearchResultCell *)self avatarView];
  [avatarView2 setHidden:{-[CKAttachmentSearchResultCell suppressAvatars](self, "suppressAvatars")}];

  v41 = +[CKUIBehavior sharedBehaviors];
  [v41 searchResultAvatarSize];
  v43 = v42;
  v44 = +[CKUIBehavior sharedBehaviors];
  [v44 searchResultAvatarSize];
  v46 = v45;

  if (_shouldReverseLayoutDirection)
  {
    [(CKAttachmentSearchResultCell *)self avatarOffsetRTL];
    v48 = v30 + v47;
    [(CKAttachmentSearchResultCell *)self avatarOffsetRTL];
  }

  else
  {
    v133.origin.x = v30;
    v133.origin.y = v38;
    v133.size.width = v127;
    v133.size.height = v28;
    MaxX = CGRectGetMaxX(v133);
    v134.origin.x = v30;
    v134.origin.y = v38;
    v134.size.width = v43;
    v134.size.height = v46;
    v53 = MaxX - CGRectGetWidth(v134);
    [(CKAttachmentSearchResultCell *)self avatarOffsetLTR];
    v48 = v53 + v54;
    [(CKAttachmentSearchResultCell *)self avatarOffsetLTR];
  }

  v55 = v38 + v49;
  avatarView3 = [(CKAttachmentSearchResultCell *)self avatarView];
  [avatarView3 setFrame:{v48, v55, v43, v46}];

  checkmarkView2 = [(CKEditableSearchResultCell *)self checkmarkView];

  v5 = v128;
  if (checkmarkView2)
  {
    [(CKAttachmentSearchResultCell *)self editModeHorizontalOffset];
    v126 = v58;
    checkmarkView3 = [(CKEditableSearchResultCell *)self checkmarkView];
    [checkmarkView3 setHidden:0];

    LODWORD(checkmarkView3) = [(CKAttachmentSearchResultCell *)self _shouldReverseLayoutDirection];
    contentView2 = [(CKAttachmentSearchResultCell *)self contentView];
    checkmarkView4 = [(CKEditableSearchResultCell *)self checkmarkView];
    [contentView2 bringSubviewToFront:checkmarkView4];

    checkmarkView5 = [(CKEditableSearchResultCell *)self checkmarkView];
    [checkmarkView5 sizeToFit];

    checkmarkView6 = [(CKEditableSearchResultCell *)self checkmarkView];
    [checkmarkView6 frame];
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;

    v72 = v30;
    v73 = v38;
    v74 = v127;
    v75 = v36;
    if (checkmarkView3)
    {
      v76 = v126 + CGRectGetMinX(*&v72);
    }

    else
    {
      v77 = CGRectGetMaxX(*&v72);
      v135.origin.x = v65;
      v135.origin.y = v67;
      v135.size.width = v69;
      v135.size.height = v71;
      v78 = v77 - CGRectGetWidth(v135);
      v35 = v127;
      v76 = v78 - v126;
    }

    v136.origin.x = v30;
    v136.origin.y = v38;
    v136.size.width = v35;
    v136.size.height = v36;
    MaxY = CGRectGetMaxY(v136);
    v137.origin.x = v76;
    v137.origin.y = v67;
    v137.size.width = v69;
    v137.size.height = v71;
    v80 = MaxY - CGRectGetHeight(v137) + -4.0;
    avatarView = [(CKEditableSearchResultCell *)self checkmarkView];
    [avatarView setFrame:{v76, v80, v69, v71}];
    v5 = v128;
    goto LABEL_19;
  }

LABEL_20:
  v81 = +[CKUIBehavior sharedBehaviors];
  theme = [v81 theme];
  attachmentBalloonRichIconOutlineColor = [theme attachmentBalloonRichIconOutlineColor];

  imageView5 = [(CKEditableSearchResultCell *)self imageView];
  layer = [imageView5 layer];

  [layer setBorderColor:{objc_msgSend(attachmentBalloonRichIconOutlineColor, "CGColor")}];
  if (CKPixelWidth_once_5 != -1)
  {
    [CKAttachmentSearchResultCell layoutSubviews];
  }

  [layer setBorderWidth:*&CKPixelWidth_sPixel_5];
  [(CKAttachmentSearchResultCell *)self bounds];
  v87 = v86;
  v88 = +[CKUIBehavior sharedBehaviors];
  [v88 searchAttachmentsCellPadding];
  v90 = v87 + v89 * -2.0;

  titleLabel = [(CKAttachmentSearchResultCell *)self titleLabel];
  [titleLabel sizeThatFits:{v90, 1.79769313e308}];
  v93 = v92;
  v95 = v94;

  titleLabel2 = [(CKAttachmentSearchResultCell *)self titleLabel];
  v97 = +[CKUIBehavior sharedBehaviors];
  [v97 searchAttachmentsTitleTopPadding];
  [titleLabel2 drawTextInRect:{0.0, 0.0, v93 + v98, v95}];

  v99 = +[CKUIBehavior sharedBehaviors];
  [v99 searchAttachmentsTitleTopPadding];
  v101 = v93 + v100;

  if (CKMainScreenScale_once_44 != -1)
  {
    [CKAttachmentSearchResultCell layoutSubviews];
  }

  v102 = *&CKMainScreenScale_sMainScreenScale_44;
  if (*&CKMainScreenScale_sMainScreenScale_44 == 0.0)
  {
    v102 = 1.0;
  }

  v103 = floor((v5 + (v129 - v101) * 0.5) * v102) / v102;
  imageView6 = [(CKEditableSearchResultCell *)self imageView];
  [imageView6 frame];
  v105 = CGRectGetMaxY(v138);
  v106 = +[CKUIBehavior sharedBehaviors];
  [v106 searchAttachmentsTitleTopPadding];
  v108 = v105 + v107;

  titleLabel3 = [(CKAttachmentSearchResultCell *)self titleLabel];
  [titleLabel3 setFrame:{v103, v108, v101, v95}];

  dateLabel = [(CKAttachmentSearchResultCell *)self dateLabel];
  [dateLabel sizeThatFits:{v90, 1.79769313e308}];
  v112 = v111;
  v114 = v113;

  if (CKMainScreenScale_once_44 != -1)
  {
    [CKAttachmentSearchResultCell layoutSubviews];
  }

  v115 = *&CKMainScreenScale_sMainScreenScale_44;
  if (*&CKMainScreenScale_sMainScreenScale_44 == 0.0)
  {
    v115 = 1.0;
  }

  v116 = floor((v5 + (v129 - v112) * 0.5) * v115) / v115;
  v139.origin.x = v103;
  v139.origin.y = v108;
  v139.size.width = v101;
  v139.size.height = v95;
  v117 = CGRectGetMaxY(v139);
  v118 = +[CKUIBehavior sharedBehaviors];
  [v118 searchAttachmentsCellDatePadding];
  v120 = v117 + v119;

  dateLabel2 = [(CKAttachmentSearchResultCell *)self dateLabel];
  [dateLabel2 setFrame:{v116, v120, v112, v114}];

  dateLabel3 = [(CKAttachmentSearchResultCell *)self dateLabel];
  v140.origin.x = v103;
  v140.origin.y = v108;
  v140.size.width = v101;
  v140.size.height = v95;
  v123 = CGRectGetMaxY(v140);
  v124 = +[CKUIBehavior sharedBehaviors];
  [v124 searchAttachmentsCellDatePadding];
  [dateLabel3 _setFirstLineCapFrameOriginY:v123 + v125];
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = CKAttachmentSearchResultCell;
  [(CKEditableSearchResultCell *)&v7 prepareForReuse];
  avatarView = [(CKAttachmentSearchResultCell *)self avatarView];
  [avatarView prepareForReuse];

  [(CKAttachmentSearchResultCell *)self setResultIdentifier:0];
  imageView = [(CKEditableSearchResultCell *)self imageView];
  [imageView setImage:0];

  titleLabel = [(CKAttachmentSearchResultCell *)self titleLabel];
  [titleLabel setText:0];

  dateLabel = [(CKAttachmentSearchResultCell *)self dateLabel];
  [dateLabel setDate:0];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  [attributesCopy frame];
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  v8 = CGRectGetWidth(v23);
  titleLabel = [(CKAttachmentSearchResultCell *)self titleLabel];
  [titleLabel sizeThatFits:{v8, 1.79769313e308}];
  v11 = v10;

  dateLabel = [(CKAttachmentSearchResultCell *)self dateLabel];
  [dateLabel sizeThatFits:{v8, 1.79769313e308}];
  v14 = v13;

  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 searchAttachmentsImageTopPadding];
  v17 = v14 + v11 + width + v16;
  v18 = +[CKUIBehavior sharedBehaviors];
  [v18 searchAttachmentsTitleTopPadding];
  v20 = v17 + v19 * 3.0;

  [attributesCopy setFrame:{x, y, width, v20}];

  return attributesCopy;
}

- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode
{
  resultCopy = result;
  textCopy = text;
  identifier = [resultCopy identifier];
  [(CKAttachmentSearchResultCell *)self setResultIdentifier:identifier];

  v9 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v10 = [v9 hasCachedPreviewForQueryResult:resultCopy];

  v11 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  imageView3 = v11;
  if ((v10 & 1) == 0)
  {
    [v11 generatePreviewForQueryResult:resultCopy];
    v13 = 0;
    goto LABEL_6;
  }

  v13 = [v11 cachedPreviewForQueryResult:resultCopy];

  if (v13)
  {
    imageView = [(CKEditableSearchResultCell *)self imageView];
    [imageView setImage:v13];

    if (CKIsRunningInMacCatalyst())
    {
      imageView2 = [(CKEditableSearchResultCell *)self imageView];
      [imageView2 setContentMode:2];

      imageView3 = [(CKEditableSearchResultCell *)self imageView];
      [imageView3 setClipsToBounds:1];
LABEL_6:
    }
  }

  item = [resultCopy item];
  attributeSet = [item attributeSet];

  __ck_spotlightItemSnippet = [attributeSet __ck_spotlightItemSnippet];
  stringByDeletingPathExtension = [__ck_spotlightItemSnippet stringByDeletingPathExtension];

  if ([stringByDeletingPathExtension length])
  {
    v41 = +[CKUIBehavior sharedBehaviors];
    theme = [v41 theme];
    searchAttachmentsTitleTextColor = [theme searchAttachmentsTitleTextColor];
    v39 = +[CKUIBehavior sharedBehaviors];
    searchResultLabelFont = [v39 searchResultLabelFont];
    v21 = +[CKUIBehavior sharedBehaviors];
    [v21 theme];
    v43 = attributeSet;
    v23 = v22 = textCopy;
    [v23 conversationListSenderColor];
    selfCopy = self;
    v25 = v24 = v13;
    v26 = +[CKUIBehavior sharedBehaviors];
    searchResultLabelFont2 = [v26 searchResultLabelFont];
    v28 = [CKSpotlightQueryUtilities annotatedResultStringWithSearchText:v22 resultText:stringByDeletingPathExtension primaryTextColor:searchAttachmentsTitleTextColor primaryFont:searchResultLabelFont annotatedTextColor:v25 annotatedFont:searchResultLabelFont2];

    v13 = v24;
    self = selfCopy;

    textCopy = v22;
    attributeSet = v43;

    titleLabel = [(CKAttachmentSearchResultCell *)selfCopy titleLabel];
    [titleLabel setAttributedText:v28];
  }

  contentCreationDate = [attributeSet contentCreationDate];
  dateLabel = [(CKAttachmentSearchResultCell *)self dateLabel];
  [dateLabel setDate:contentCreationDate];

  v32 = [CKSpotlightQueryResultUtilities contactForResult:resultCopy];
  avatarView = [(CKAttachmentSearchResultCell *)self avatarView];
  [avatarView setContact:v32];

  imageView4 = [(CKEditableSearchResultCell *)self imageView];
  layer = [imageView4 layer];

  v36 = +[CKUIBehavior sharedBehaviors];
  [v36 searchAttachmentsCellCornerRadius];
  [layer setCornerRadius:?];

  imageView5 = [(CKEditableSearchResultCell *)self imageView];
  [imageView5 setClipsToBounds:1];

  [(CKAttachmentSearchResultCell *)self setNeedsLayout];
}

- (void)_thumbnailGenerated:(id)generated
{
  object = [generated object];
  identifier = [object identifier];
  resultIdentifier = [(CKAttachmentSearchResultCell *)self resultIdentifier];
  v6 = [identifier isEqualToString:resultIdentifier];

  if (v6)
  {
    v7 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
    v8 = [v7 cachedPreviewForQueryResult:object];

    if (v8)
    {
      imageView = [(CKEditableSearchResultCell *)self imageView];
      [imageView setImage:v8];

      if (CKIsRunningInMacCatalyst())
      {
        imageView2 = [(CKEditableSearchResultCell *)self imageView];
        [imageView2 setContentMode:2];

        imageView3 = [(CKEditableSearchResultCell *)self imageView];
        [imageView3 setClipsToBounds:1];
      }
    }

    [(CKAttachmentSearchResultCell *)self setNeedsLayout];
    [(CKAttachmentSearchResultCell *)self layoutIfNeeded];
  }
}

- (void)setSelected:(BOOL)selected
{
  v3.receiver = self;
  v3.super_class = CKAttachmentSearchResultCell;
  [(CKEditableSearchResultCell *)&v3 setSelected:selected];
}

- (UIEdgeInsets)marginInsets
{
  top = self->marginInsets.top;
  left = self->marginInsets.left;
  bottom = self->marginInsets.bottom;
  right = self->marginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end