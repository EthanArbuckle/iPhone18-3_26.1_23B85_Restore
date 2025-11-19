@interface CKAttachmentSearchResultCell
- (CGPoint)avatarOffsetLTR;
- (CGPoint)avatarOffsetRTL;
- (CKAttachmentSearchResultCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)marginInsets;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)_thumbnailGenerated:(id)a3;
- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)a3;
@end

@implementation CKAttachmentSearchResultCell

- (CKAttachmentSearchResultCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v30.receiver = self;
  v30.super_class = CKAttachmentSearchResultCell;
  v7 = [(CKAttachmentSearchResultCell *)&v30 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    [v8 setContentMode:1];
    [(CKEditableSearchResultCell *)v7 setImageView:v8];
    v9 = [(CKAttachmentSearchResultCell *)v7 contentView];
    [v9 addSubview:v8];

    v10 = objc_alloc(MEMORY[0x1E69DCC10]);
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
    v15 = [v10 initWithFrame:{*MEMORY[0x1E695F058], v12, v13, v14}];
    v16 = +[CKUIBehavior sharedBehaviors];
    v17 = [v16 searchAttachmentResultLabelFont];
    [v15 setFont:v17];

    [v15 setNumberOfLines:2];
    [v15 setTextAlignment:1];
    [(CKAttachmentSearchResultCell *)v7 setTitleLabel:v15];
    v18 = [(CKAttachmentSearchResultCell *)v7 contentView];
    [v18 addSubview:v15];

    v19 = [objc_alloc(MEMORY[0x1E69DC918]) initWithFrame:{v11, v12, v13, v14}];
    v20 = +[CKUIBehavior sharedBehaviors];
    v21 = [v20 searchAttachmentResultDateLabelFont];
    [v19 setFont:v21];

    v22 = +[CKUIBehavior sharedBehaviors];
    v23 = [v22 theme];
    v24 = [v23 spotlightAttachmentSecondaryColor];
    [v19 setTextColor:v24];

    [v19 setNumberOfLines:1];
    [v19 setTextAlignment:1];
    [(CKAttachmentSearchResultCell *)v7 setDateLabel:v19];
    v25 = [(CKAttachmentSearchResultCell *)v7 contentView];
    [v25 addSubview:v19];

    v26 = [[CKSearchAvatarSupplementryView alloc] initWithFrame:v11, v12, v13, v14];
    [(CKSearchAvatarSupplementryView *)v26 setParentContentType:3];
    [(CKAttachmentSearchResultCell *)v7 setAvatarView:v26];
    v27 = [(CKAttachmentSearchResultCell *)v7 contentView];
    [v27 addSubview:v26];

    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 addObserver:v7 selector:sel__thumbnailGenerated_ name:@"CKSearchThumbnailDidChange" object:0];
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
  v3 = [(CKAttachmentSearchResultCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKAttachmentSearchResultCell *)self _shouldReverseLayoutDirection];
  v13 = +[CKUIBehavior sharedBehaviors];
  [v13 searchAttachmentsImageTopPadding];
  v15 = v14;

  v16 = [(CKEditableSearchResultCell *)self imageView];
  v17 = [v16 image];

  v129 = v9;
  if (!v17)
  {
    v50 = [(CKEditableSearchResultCell *)self checkmarkView];
    [v50 setHidden:1];

    v51 = [(CKAttachmentSearchResultCell *)self avatarView];
    [v51 setHidden:1];
LABEL_19:

    goto LABEL_20;
  }

  v128 = v5;
  v18 = *MEMORY[0x1E695F058];
  v19 = [(CKEditableSearchResultCell *)self imageView];
  [v19 sizeToFit];

  v20 = [(CKEditableSearchResultCell *)self imageView];
  [v20 frame];
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

  v39 = [(CKEditableSearchResultCell *)self imageView];
  [v39 setFrame:{v30, v38, v127, v28}];

  v40 = [(CKAttachmentSearchResultCell *)self avatarView];
  [v40 setHidden:{-[CKAttachmentSearchResultCell suppressAvatars](self, "suppressAvatars")}];

  v41 = +[CKUIBehavior sharedBehaviors];
  [v41 searchResultAvatarSize];
  v43 = v42;
  v44 = +[CKUIBehavior sharedBehaviors];
  [v44 searchResultAvatarSize];
  v46 = v45;

  if (v12)
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
  v56 = [(CKAttachmentSearchResultCell *)self avatarView];
  [v56 setFrame:{v48, v55, v43, v46}];

  v57 = [(CKEditableSearchResultCell *)self checkmarkView];

  v5 = v128;
  if (v57)
  {
    [(CKAttachmentSearchResultCell *)self editModeHorizontalOffset];
    v126 = v58;
    v59 = [(CKEditableSearchResultCell *)self checkmarkView];
    [v59 setHidden:0];

    LODWORD(v59) = [(CKAttachmentSearchResultCell *)self _shouldReverseLayoutDirection];
    v60 = [(CKAttachmentSearchResultCell *)self contentView];
    v61 = [(CKEditableSearchResultCell *)self checkmarkView];
    [v60 bringSubviewToFront:v61];

    v62 = [(CKEditableSearchResultCell *)self checkmarkView];
    [v62 sizeToFit];

    v63 = [(CKEditableSearchResultCell *)self checkmarkView];
    [v63 frame];
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;

    v72 = v30;
    v73 = v38;
    v74 = v127;
    v75 = v36;
    if (v59)
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
    v51 = [(CKEditableSearchResultCell *)self checkmarkView];
    [v51 setFrame:{v76, v80, v69, v71}];
    v5 = v128;
    goto LABEL_19;
  }

LABEL_20:
  v81 = +[CKUIBehavior sharedBehaviors];
  v82 = [v81 theme];
  v83 = [v82 attachmentBalloonRichIconOutlineColor];

  v84 = [(CKEditableSearchResultCell *)self imageView];
  v85 = [v84 layer];

  [v85 setBorderColor:{objc_msgSend(v83, "CGColor")}];
  if (CKPixelWidth_once_5 != -1)
  {
    [CKAttachmentSearchResultCell layoutSubviews];
  }

  [v85 setBorderWidth:*&CKPixelWidth_sPixel_5];
  [(CKAttachmentSearchResultCell *)self bounds];
  v87 = v86;
  v88 = +[CKUIBehavior sharedBehaviors];
  [v88 searchAttachmentsCellPadding];
  v90 = v87 + v89 * -2.0;

  v91 = [(CKAttachmentSearchResultCell *)self titleLabel];
  [v91 sizeThatFits:{v90, 1.79769313e308}];
  v93 = v92;
  v95 = v94;

  v96 = [(CKAttachmentSearchResultCell *)self titleLabel];
  v97 = +[CKUIBehavior sharedBehaviors];
  [v97 searchAttachmentsTitleTopPadding];
  [v96 drawTextInRect:{0.0, 0.0, v93 + v98, v95}];

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
  v104 = [(CKEditableSearchResultCell *)self imageView];
  [v104 frame];
  v105 = CGRectGetMaxY(v138);
  v106 = +[CKUIBehavior sharedBehaviors];
  [v106 searchAttachmentsTitleTopPadding];
  v108 = v105 + v107;

  v109 = [(CKAttachmentSearchResultCell *)self titleLabel];
  [v109 setFrame:{v103, v108, v101, v95}];

  v110 = [(CKAttachmentSearchResultCell *)self dateLabel];
  [v110 sizeThatFits:{v90, 1.79769313e308}];
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

  v121 = [(CKAttachmentSearchResultCell *)self dateLabel];
  [v121 setFrame:{v116, v120, v112, v114}];

  v122 = [(CKAttachmentSearchResultCell *)self dateLabel];
  v140.origin.x = v103;
  v140.origin.y = v108;
  v140.size.width = v101;
  v140.size.height = v95;
  v123 = CGRectGetMaxY(v140);
  v124 = +[CKUIBehavior sharedBehaviors];
  [v124 searchAttachmentsCellDatePadding];
  [v122 _setFirstLineCapFrameOriginY:v123 + v125];
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = CKAttachmentSearchResultCell;
  [(CKEditableSearchResultCell *)&v7 prepareForReuse];
  v3 = [(CKAttachmentSearchResultCell *)self avatarView];
  [v3 prepareForReuse];

  [(CKAttachmentSearchResultCell *)self setResultIdentifier:0];
  v4 = [(CKEditableSearchResultCell *)self imageView];
  [v4 setImage:0];

  v5 = [(CKAttachmentSearchResultCell *)self titleLabel];
  [v5 setText:0];

  v6 = [(CKAttachmentSearchResultCell *)self dateLabel];
  [v6 setDate:0];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  [v4 frame];
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  v8 = CGRectGetWidth(v23);
  v9 = [(CKAttachmentSearchResultCell *)self titleLabel];
  [v9 sizeThatFits:{v8, 1.79769313e308}];
  v11 = v10;

  v12 = [(CKAttachmentSearchResultCell *)self dateLabel];
  [v12 sizeThatFits:{v8, 1.79769313e308}];
  v14 = v13;

  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 searchAttachmentsImageTopPadding];
  v17 = v14 + v11 + width + v16;
  v18 = +[CKUIBehavior sharedBehaviors];
  [v18 searchAttachmentsTitleTopPadding];
  v20 = v17 + v19 * 3.0;

  [v4 setFrame:{x, y, width, v20}];

  return v4;
}

- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5
{
  v44 = a3;
  v7 = a4;
  v8 = [v44 identifier];
  [(CKAttachmentSearchResultCell *)self setResultIdentifier:v8];

  v9 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v10 = [v9 hasCachedPreviewForQueryResult:v44];

  v11 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v12 = v11;
  if ((v10 & 1) == 0)
  {
    [v11 generatePreviewForQueryResult:v44];
    v13 = 0;
    goto LABEL_6;
  }

  v13 = [v11 cachedPreviewForQueryResult:v44];

  if (v13)
  {
    v14 = [(CKEditableSearchResultCell *)self imageView];
    [v14 setImage:v13];

    if (CKIsRunningInMacCatalyst())
    {
      v15 = [(CKEditableSearchResultCell *)self imageView];
      [v15 setContentMode:2];

      v12 = [(CKEditableSearchResultCell *)self imageView];
      [v12 setClipsToBounds:1];
LABEL_6:
    }
  }

  v16 = [v44 item];
  v17 = [v16 attributeSet];

  v18 = [v17 __ck_spotlightItemSnippet];
  v19 = [v18 stringByDeletingPathExtension];

  if ([v19 length])
  {
    v41 = +[CKUIBehavior sharedBehaviors];
    v40 = [v41 theme];
    v38 = [v40 searchAttachmentsTitleTextColor];
    v39 = +[CKUIBehavior sharedBehaviors];
    v20 = [v39 searchResultLabelFont];
    v21 = +[CKUIBehavior sharedBehaviors];
    [v21 theme];
    v43 = v17;
    v23 = v22 = v7;
    [v23 conversationListSenderColor];
    v42 = self;
    v25 = v24 = v13;
    v26 = +[CKUIBehavior sharedBehaviors];
    v27 = [v26 searchResultLabelFont];
    v28 = [CKSpotlightQueryUtilities annotatedResultStringWithSearchText:v22 resultText:v19 primaryTextColor:v38 primaryFont:v20 annotatedTextColor:v25 annotatedFont:v27];

    v13 = v24;
    self = v42;

    v7 = v22;
    v17 = v43;

    v29 = [(CKAttachmentSearchResultCell *)v42 titleLabel];
    [v29 setAttributedText:v28];
  }

  v30 = [v17 contentCreationDate];
  v31 = [(CKAttachmentSearchResultCell *)self dateLabel];
  [v31 setDate:v30];

  v32 = [CKSpotlightQueryResultUtilities contactForResult:v44];
  v33 = [(CKAttachmentSearchResultCell *)self avatarView];
  [v33 setContact:v32];

  v34 = [(CKEditableSearchResultCell *)self imageView];
  v35 = [v34 layer];

  v36 = +[CKUIBehavior sharedBehaviors];
  [v36 searchAttachmentsCellCornerRadius];
  [v35 setCornerRadius:?];

  v37 = [(CKEditableSearchResultCell *)self imageView];
  [v37 setClipsToBounds:1];

  [(CKAttachmentSearchResultCell *)self setNeedsLayout];
}

- (void)_thumbnailGenerated:(id)a3
{
  v12 = [a3 object];
  v4 = [v12 identifier];
  v5 = [(CKAttachmentSearchResultCell *)self resultIdentifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
    v8 = [v7 cachedPreviewForQueryResult:v12];

    if (v8)
    {
      v9 = [(CKEditableSearchResultCell *)self imageView];
      [v9 setImage:v8];

      if (CKIsRunningInMacCatalyst())
      {
        v10 = [(CKEditableSearchResultCell *)self imageView];
        [v10 setContentMode:2];

        v11 = [(CKEditableSearchResultCell *)self imageView];
        [v11 setClipsToBounds:1];
      }
    }

    [(CKAttachmentSearchResultCell *)self setNeedsLayout];
    [(CKAttachmentSearchResultCell *)self layoutIfNeeded];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CKAttachmentSearchResultCell;
  [(CKEditableSearchResultCell *)&v3 setSelected:a3];
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