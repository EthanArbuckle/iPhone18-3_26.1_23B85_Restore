@interface CKLocationSearchResultCell
- (CKLocationSearchResultCell)initWithFrame:(CGRect)a3;
- (NSString)resultIdentifier;
- (UIEdgeInsets)marginInsets;
- (void)_configurePlaceLabelWithResult:(id)a3 searchText:(id)a4;
- (void)_thumbnailGenerated:(id)a3;
- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshForSearchTextIfNeeded:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CKLocationSearchResultCell

- (CKLocationSearchResultCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v19.receiver = self;
  v19.super_class = CKLocationSearchResultCell;
  v7 = [(CKLocationSearchResultCell *)&v19 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    [v8 setContentMode:2];
    [(CKEditableSearchResultCell *)v7 setImageView:v8];
    v9 = [(CKLocationSearchResultCell *)v7 contentView];
    [v9 addSubview:v8];

    v10 = objc_alloc(MEMORY[0x1E69DD298]);
    v11 = [MEMORY[0x1E69DC730] effectWithStyle:6];
    v12 = [v10 initWithEffect:v11];

    [(CKLocationSearchResultCell *)v7 setBlurEffectView:v12];
    v13 = [(CKLocationSearchResultCell *)v7 contentView];
    [v13 addSubview:v12];

    v14 = objc_alloc(MEMORY[0x1E69DCC10]);
    v15 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v15 setNumberOfLines:1];
    [(CKLocationSearchResultCell *)v7 setPlaceLabel:v15];
    v16 = [(CKLocationSearchResultCell *)v7 contentView];
    [v16 addSubview:v15];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v7 selector:sel__thumbnailGenerated_ name:@"CKSearchThumbnailDidChange" object:0];
  }

  return v7;
}

- (void)layoutSubviews
{
  v58.receiver = self;
  v58.super_class = CKLocationSearchResultCell;
  [(CKEditableSearchResultCell *)&v58 layoutSubviews];
  v3 = [(CKLocationSearchResultCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKEditableSearchResultCell *)self imageView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(CKLocationSearchResultCell *)self layer];
  [v13 setShouldRasterize:1];

  v14 = [(CKLocationSearchResultCell *)self traitCollection];
  [v14 displayScale];
  v16 = v15;
  v17 = [(CKLocationSearchResultCell *)self layer];
  [v17 setRasterizationScale:v16];

  v18 = [(CKLocationSearchResultCell *)self placeLabel];
  [v18 layoutIfNeeded];

  v57 = v9;
  v19 = v9 + -20.0;
  v20 = [(CKLocationSearchResultCell *)self placeLabel];
  [v20 sizeThatFits:{v9 + -20.0, v11 + -20.0}];
  v22 = v21;
  v24 = v23;

  if (v22 >= v9 + -20.0)
  {
    v22 = v9 + -20.0;
  }

  v59.origin.x = v5;
  v59.origin.y = v7;
  v59.size.width = v9;
  v59.size.height = v11;
  v25 = CGRectGetMaxY(v59) + -10.0;
  v26 = [(CKLocationSearchResultCell *)self placeLabel];
  [v26 setFrame:{10.0, v25, v22, v24}];

  v27 = [(CKLocationSearchResultCell *)self placeLabel];
  v60.origin.y = v7 + 10.0;
  v60.origin.x = v5 + 10.0;
  v60.size.width = v19;
  v60.size.height = v11 + -20.0;
  [v27 _setLastLineBaselineFrameOriginY:CGRectGetMaxY(v60)];

  v28 = [(CKLocationSearchResultCell *)self placeLabel];
  [v28 _firstLineCapFrameOriginY];
  v30 = v29 + -10.0;

  v61.origin.x = v5;
  v61.origin.y = v7;
  v61.size.width = v57;
  rect = v11;
  v61.size.height = v11;
  v31 = CGRectGetHeight(v61) - v30;
  v32 = [(CKLocationSearchResultCell *)self blurEffectView];
  v33 = v5;
  v34 = v30;
  v35 = v57;
  [v32 setFrame:{v5, v34, v57, v31}];

  v36 = [(CKEditableSearchResultCell *)self checkmarkView];

  if (v36)
  {
    v37 = [(CKLocationSearchResultCell *)self _shouldReverseLayoutDirection];
    v38 = [(CKLocationSearchResultCell *)self contentView];
    v39 = [(CKEditableSearchResultCell *)self checkmarkView];
    [v38 bringSubviewToFront:v39];

    v40 = [(CKEditableSearchResultCell *)self checkmarkView];
    [v40 sizeToFit];

    v41 = [(CKEditableSearchResultCell *)self checkmarkView];
    [v41 frame];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v50 = 4.0;
    if ((v37 & 1) == 0)
    {
      v62.origin.x = v33;
      v62.origin.y = v7;
      v62.size.width = v57;
      v62.size.height = rect;
      Width = CGRectGetWidth(v62);
      v63.origin.x = v43;
      v63.origin.y = v45;
      v63.size.width = v47;
      v63.size.height = v49;
      v52 = Width - CGRectGetWidth(v63);
      v35 = v57;
      v50 = v52 + -4.0;
    }

    v64.origin.x = v33;
    v64.origin.y = v7;
    v64.size.width = v35;
    v64.size.height = rect;
    Height = CGRectGetHeight(v64);
    v65.origin.x = v50;
    v65.origin.y = v45;
    v65.size.width = v47;
    v65.size.height = v49;
    v54 = Height - CGRectGetHeight(v65) + -4.0;
    v55 = [(CKEditableSearchResultCell *)self checkmarkView];
    [v55 setFrame:{v50, v54, v47, v49}];
  }
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CKLocationSearchResultCell;
  [(CKEditableSearchResultCell *)&v5 prepareForReuse];
  v3 = [(CKEditableSearchResultCell *)self imageView];
  [v3 setImage:0];

  v4 = [(CKLocationSearchResultCell *)self placeLabel];
  [v4 setAttributedText:0];

  [(CKLocationSearchResultCell *)self setResult:0];
  [(CKLocationSearchResultCell *)self setSearchText:0];
  [(CKLocationSearchResultCell *)self setMode:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKLocationSearchResultCell;
  [(CKLocationSearchResultCell *)&v4 dealloc];
}

- (NSString)resultIdentifier
{
  v2 = [(CKLocationSearchResultCell *)self result];
  v3 = [v2 identifier];

  return v3;
}

- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5
{
  v22 = a3;
  v8 = a4;
  [(CKLocationSearchResultCell *)self setResult:v22];
  [(CKLocationSearchResultCell *)self setSearchText:v8];
  [(CKLocationSearchResultCell *)self setMode:a5];
  v9 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v10 = [(CKLocationSearchResultCell *)self traitCollection];
  v11 = [v9 hasCachedMapPreviewForQueryResult:v22 traitCollection:v10];

  v12 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v13 = [(CKLocationSearchResultCell *)self traitCollection];
  if (v11)
  {
    v14 = [v12 cachedMapPreviewForQueryResult:v22 traitCollection:v13];

    if (v14)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [v12 generateMapPreviewForQueryResult:v22 traitCollection:v13];
  }

  v15 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v16 = [(CKLocationSearchResultCell *)self traitCollection];
  v14 = [v15 mapPlaceholderImageForTraitCollection:v16];

LABEL_6:
  v17 = [(CKEditableSearchResultCell *)self imageView];
  [v17 setImage:v14];

  [(CKLocationSearchResultCell *)self _configurePlaceLabelWithResult:v22 searchText:v8];
  v18 = [(CKLocationSearchResultCell *)self contentView];
  [v18 setClipsToBounds:1];

  v19 = [(CKLocationSearchResultCell *)self contentView];
  v20 = [v19 layer];
  v21 = +[CKUIBehavior sharedBehaviors];
  [v21 searchLocationCellCornerRadius];
  [v20 setCornerRadius:?];

  [(CKLocationSearchResultCell *)self setNeedsLayout];
}

- (void)refreshForSearchTextIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(CKLocationSearchResultCell *)self result];
  [(CKLocationSearchResultCell *)self _configurePlaceLabelWithResult:v5 searchText:v4];
}

- (void)_configurePlaceLabelWithResult:(id)a3 searchText:(id)a4
{
  v44 = a4;
  v6 = [a3 item];
  v7 = [v6 attributeSet];
  v8 = [v7 __ck_spotlightItemSnippet];

  if (([v8 isEqualToString:@"Current Location"] & 1) != 0 || (CKFrameworkBundle(), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "localizedStringForKey:value:table:", @"Current Location", &stru_1F04268F8, @"ChatKit"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "isEqualToString:", v10), v10, v9, v11))
  {
    v12 = [v6 attributeSet];
    v13 = [v12 __ck_itemContentCreationDate];

    v14 = +[CKUIBehavior sharedBehaviors];
    v15 = [v14 locationRelativeDateFormatter];

    v16 = [v15 stringFromDate:v13];
    v17 = MEMORY[0x1E696AEC0];
    v18 = CKFrameworkBundle();
    v19 = [v18 localizedStringForKey:@"LOCATION_FOOTER_DETAILS_VIEW" value:&stru_1F04268F8 table:@"ChatKit"];
    v20 = [v17 stringWithFormat:v19, v16];

    v21 = [MEMORY[0x1E69DC668] sharedApplication];
    v22 = [v21 userInterfaceLayoutDirection];

    if (v22 == 1)
    {
      v23 = @"\u200F";
    }

    else
    {
      v23 = @"\u200E";
    }

    v24 = [(__CFString *)v23 stringByAppendingString:v20];

    v8 = v24;
  }

  v25 = [v8 length];
  v26 = +[CKUIBehavior sharedBehaviors];
  v27 = [v26 conversationListCellMaxSummaryLength];

  if (v25 > v27)
  {
    v28 = +[CKUIBehavior sharedBehaviors];
    v29 = [v8 substringWithRange:{0, objc_msgSend(v28, "conversationListCellMaxSummaryLength")}];

    v8 = v29;
  }

  if (v8)
  {
    v42 = +[CKUIBehavior sharedBehaviors];
    v41 = [v42 theme];
    v30 = [v41 conversationListSummaryColor];
    v31 = +[CKUIBehavior sharedBehaviors];
    v32 = [v31 searchResultLabelFont];
    v33 = +[CKUIBehavior sharedBehaviors];
    [v33 theme];
    v34 = v40 = self;
    [v34 conversationListSenderColor];
    v35 = v43 = v6;
    v36 = +[CKUIBehavior sharedBehaviors];
    v37 = [v36 searchResultLabelFont];
    v38 = [CKSpotlightQueryUtilities annotatedResultStringWithSearchText:v44 resultText:v8 primaryTextColor:v30 primaryFont:v32 annotatedTextColor:v35 annotatedFont:v37];

    v39 = [(CKLocationSearchResultCell *)v40 placeLabel];
    [v39 setAttributedText:v38];

    v6 = v43;
  }
}

- (void)_thumbnailGenerated:(id)a3
{
  v15 = [a3 object];
  v4 = [v15 identifier];
  v5 = [(CKLocationSearchResultCell *)self result];
  v6 = [v5 identifier];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
    v9 = [(CKLocationSearchResultCell *)self traitCollection];
    v10 = [v8 cachedMapPreviewForQueryResult:v15 traitCollection:v9];

    if (v10)
    {
      v11 = [(CKEditableSearchResultCell *)self imageView];
      [v11 setImage:v10];
    }

    else
    {
      v12 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
      v13 = [(CKLocationSearchResultCell *)self traitCollection];
      v11 = [v12 mapPlaceholderImageForTraitCollection:v13];

      v14 = [(CKEditableSearchResultCell *)self imageView];
      [v14 setImage:v11];
    }

    [(CKLocationSearchResultCell *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = CKLocationSearchResultCell;
  [(CKLocationSearchResultCell *)&v6 traitCollectionDidChange:a3];
  v4 = [(CKLocationSearchResultCell *)self result];
  v5 = [(CKLocationSearchResultCell *)self searchText];
  [(CKLocationSearchResultCell *)self configureWithQueryResult:v4 searchText:v5 mode:[(CKLocationSearchResultCell *)self mode]];
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