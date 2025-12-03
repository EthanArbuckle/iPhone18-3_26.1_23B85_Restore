@interface CKLocationSearchResultCell
- (CKLocationSearchResultCell)initWithFrame:(CGRect)frame;
- (NSString)resultIdentifier;
- (UIEdgeInsets)marginInsets;
- (void)_configurePlaceLabelWithResult:(id)result searchText:(id)text;
- (void)_thumbnailGenerated:(id)generated;
- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshForSearchTextIfNeeded:(id)needed;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CKLocationSearchResultCell

- (CKLocationSearchResultCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v19.receiver = self;
  v19.super_class = CKLocationSearchResultCell;
  v7 = [(CKLocationSearchResultCell *)&v19 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    [v8 setContentMode:2];
    [(CKEditableSearchResultCell *)v7 setImageView:v8];
    contentView = [(CKLocationSearchResultCell *)v7 contentView];
    [contentView addSubview:v8];

    v10 = objc_alloc(MEMORY[0x1E69DD298]);
    v11 = [MEMORY[0x1E69DC730] effectWithStyle:6];
    v12 = [v10 initWithEffect:v11];

    [(CKLocationSearchResultCell *)v7 setBlurEffectView:v12];
    contentView2 = [(CKLocationSearchResultCell *)v7 contentView];
    [contentView2 addSubview:v12];

    v14 = objc_alloc(MEMORY[0x1E69DCC10]);
    v15 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v15 setNumberOfLines:1];
    [(CKLocationSearchResultCell *)v7 setPlaceLabel:v15];
    contentView3 = [(CKLocationSearchResultCell *)v7 contentView];
    [contentView3 addSubview:v15];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__thumbnailGenerated_ name:@"CKSearchThumbnailDidChange" object:0];
  }

  return v7;
}

- (void)layoutSubviews
{
  v58.receiver = self;
  v58.super_class = CKLocationSearchResultCell;
  [(CKEditableSearchResultCell *)&v58 layoutSubviews];
  contentView = [(CKLocationSearchResultCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  imageView = [(CKEditableSearchResultCell *)self imageView];
  [imageView setFrame:{v5, v7, v9, v11}];

  layer = [(CKLocationSearchResultCell *)self layer];
  [layer setShouldRasterize:1];

  traitCollection = [(CKLocationSearchResultCell *)self traitCollection];
  [traitCollection displayScale];
  v16 = v15;
  layer2 = [(CKLocationSearchResultCell *)self layer];
  [layer2 setRasterizationScale:v16];

  placeLabel = [(CKLocationSearchResultCell *)self placeLabel];
  [placeLabel layoutIfNeeded];

  v57 = v9;
  v19 = v9 + -20.0;
  placeLabel2 = [(CKLocationSearchResultCell *)self placeLabel];
  [placeLabel2 sizeThatFits:{v9 + -20.0, v11 + -20.0}];
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
  placeLabel3 = [(CKLocationSearchResultCell *)self placeLabel];
  [placeLabel3 setFrame:{10.0, v25, v22, v24}];

  placeLabel4 = [(CKLocationSearchResultCell *)self placeLabel];
  v60.origin.y = v7 + 10.0;
  v60.origin.x = v5 + 10.0;
  v60.size.width = v19;
  v60.size.height = v11 + -20.0;
  [placeLabel4 _setLastLineBaselineFrameOriginY:CGRectGetMaxY(v60)];

  placeLabel5 = [(CKLocationSearchResultCell *)self placeLabel];
  [placeLabel5 _firstLineCapFrameOriginY];
  v30 = v29 + -10.0;

  v61.origin.x = v5;
  v61.origin.y = v7;
  v61.size.width = v57;
  rect = v11;
  v61.size.height = v11;
  v31 = CGRectGetHeight(v61) - v30;
  blurEffectView = [(CKLocationSearchResultCell *)self blurEffectView];
  v33 = v5;
  v34 = v30;
  v35 = v57;
  [blurEffectView setFrame:{v5, v34, v57, v31}];

  checkmarkView = [(CKEditableSearchResultCell *)self checkmarkView];

  if (checkmarkView)
  {
    _shouldReverseLayoutDirection = [(CKLocationSearchResultCell *)self _shouldReverseLayoutDirection];
    contentView2 = [(CKLocationSearchResultCell *)self contentView];
    checkmarkView2 = [(CKEditableSearchResultCell *)self checkmarkView];
    [contentView2 bringSubviewToFront:checkmarkView2];

    checkmarkView3 = [(CKEditableSearchResultCell *)self checkmarkView];
    [checkmarkView3 sizeToFit];

    checkmarkView4 = [(CKEditableSearchResultCell *)self checkmarkView];
    [checkmarkView4 frame];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v50 = 4.0;
    if ((_shouldReverseLayoutDirection & 1) == 0)
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
    checkmarkView5 = [(CKEditableSearchResultCell *)self checkmarkView];
    [checkmarkView5 setFrame:{v50, v54, v47, v49}];
  }
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CKLocationSearchResultCell;
  [(CKEditableSearchResultCell *)&v5 prepareForReuse];
  imageView = [(CKEditableSearchResultCell *)self imageView];
  [imageView setImage:0];

  placeLabel = [(CKLocationSearchResultCell *)self placeLabel];
  [placeLabel setAttributedText:0];

  [(CKLocationSearchResultCell *)self setResult:0];
  [(CKLocationSearchResultCell *)self setSearchText:0];
  [(CKLocationSearchResultCell *)self setMode:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKLocationSearchResultCell;
  [(CKLocationSearchResultCell *)&v4 dealloc];
}

- (NSString)resultIdentifier
{
  result = [(CKLocationSearchResultCell *)self result];
  identifier = [result identifier];

  return identifier;
}

- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode
{
  resultCopy = result;
  textCopy = text;
  [(CKLocationSearchResultCell *)self setResult:resultCopy];
  [(CKLocationSearchResultCell *)self setSearchText:textCopy];
  [(CKLocationSearchResultCell *)self setMode:mode];
  v9 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  traitCollection = [(CKLocationSearchResultCell *)self traitCollection];
  v11 = [v9 hasCachedMapPreviewForQueryResult:resultCopy traitCollection:traitCollection];

  v12 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  traitCollection2 = [(CKLocationSearchResultCell *)self traitCollection];
  if (v11)
  {
    v14 = [v12 cachedMapPreviewForQueryResult:resultCopy traitCollection:traitCollection2];

    if (v14)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [v12 generateMapPreviewForQueryResult:resultCopy traitCollection:traitCollection2];
  }

  v15 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  traitCollection3 = [(CKLocationSearchResultCell *)self traitCollection];
  v14 = [v15 mapPlaceholderImageForTraitCollection:traitCollection3];

LABEL_6:
  imageView = [(CKEditableSearchResultCell *)self imageView];
  [imageView setImage:v14];

  [(CKLocationSearchResultCell *)self _configurePlaceLabelWithResult:resultCopy searchText:textCopy];
  contentView = [(CKLocationSearchResultCell *)self contentView];
  [contentView setClipsToBounds:1];

  contentView2 = [(CKLocationSearchResultCell *)self contentView];
  layer = [contentView2 layer];
  v21 = +[CKUIBehavior sharedBehaviors];
  [v21 searchLocationCellCornerRadius];
  [layer setCornerRadius:?];

  [(CKLocationSearchResultCell *)self setNeedsLayout];
}

- (void)refreshForSearchTextIfNeeded:(id)needed
{
  neededCopy = needed;
  result = [(CKLocationSearchResultCell *)self result];
  [(CKLocationSearchResultCell *)self _configurePlaceLabelWithResult:result searchText:neededCopy];
}

- (void)_configurePlaceLabelWithResult:(id)result searchText:(id)text
{
  textCopy = text;
  item = [result item];
  attributeSet = [item attributeSet];
  __ck_spotlightItemSnippet = [attributeSet __ck_spotlightItemSnippet];

  if (([__ck_spotlightItemSnippet isEqualToString:@"Current Location"] & 1) != 0 || (CKFrameworkBundle(), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "localizedStringForKey:value:table:", @"Current Location", &stru_1F04268F8, @"ChatKit"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(__ck_spotlightItemSnippet, "isEqualToString:", v10), v10, v9, v11))
  {
    attributeSet2 = [item attributeSet];
    __ck_itemContentCreationDate = [attributeSet2 __ck_itemContentCreationDate];

    v14 = +[CKUIBehavior sharedBehaviors];
    locationRelativeDateFormatter = [v14 locationRelativeDateFormatter];

    v16 = [locationRelativeDateFormatter stringFromDate:__ck_itemContentCreationDate];
    v17 = MEMORY[0x1E696AEC0];
    v18 = CKFrameworkBundle();
    v19 = [v18 localizedStringForKey:@"LOCATION_FOOTER_DETAILS_VIEW" value:&stru_1F04268F8 table:@"ChatKit"];
    v20 = [v17 stringWithFormat:v19, v16];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v23 = @"\u200F";
    }

    else
    {
      v23 = @"\u200E";
    }

    v24 = [(__CFString *)v23 stringByAppendingString:v20];

    __ck_spotlightItemSnippet = v24;
  }

  v25 = [__ck_spotlightItemSnippet length];
  v26 = +[CKUIBehavior sharedBehaviors];
  conversationListCellMaxSummaryLength = [v26 conversationListCellMaxSummaryLength];

  if (v25 > conversationListCellMaxSummaryLength)
  {
    v28 = +[CKUIBehavior sharedBehaviors];
    v29 = [__ck_spotlightItemSnippet substringWithRange:{0, objc_msgSend(v28, "conversationListCellMaxSummaryLength")}];

    __ck_spotlightItemSnippet = v29;
  }

  if (__ck_spotlightItemSnippet)
  {
    v42 = +[CKUIBehavior sharedBehaviors];
    theme = [v42 theme];
    conversationListSummaryColor = [theme conversationListSummaryColor];
    v31 = +[CKUIBehavior sharedBehaviors];
    searchResultLabelFont = [v31 searchResultLabelFont];
    v33 = +[CKUIBehavior sharedBehaviors];
    [v33 theme];
    v34 = v40 = self;
    [v34 conversationListSenderColor];
    v35 = v43 = item;
    v36 = +[CKUIBehavior sharedBehaviors];
    searchResultLabelFont2 = [v36 searchResultLabelFont];
    v38 = [CKSpotlightQueryUtilities annotatedResultStringWithSearchText:textCopy resultText:__ck_spotlightItemSnippet primaryTextColor:conversationListSummaryColor primaryFont:searchResultLabelFont annotatedTextColor:v35 annotatedFont:searchResultLabelFont2];

    placeLabel = [(CKLocationSearchResultCell *)v40 placeLabel];
    [placeLabel setAttributedText:v38];

    item = v43;
  }
}

- (void)_thumbnailGenerated:(id)generated
{
  object = [generated object];
  identifier = [object identifier];
  result = [(CKLocationSearchResultCell *)self result];
  identifier2 = [result identifier];
  v7 = [identifier isEqualToString:identifier2];

  if (v7)
  {
    v8 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
    traitCollection = [(CKLocationSearchResultCell *)self traitCollection];
    v10 = [v8 cachedMapPreviewForQueryResult:object traitCollection:traitCollection];

    if (v10)
    {
      imageView = [(CKEditableSearchResultCell *)self imageView];
      [imageView setImage:v10];
    }

    else
    {
      v12 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
      traitCollection2 = [(CKLocationSearchResultCell *)self traitCollection];
      imageView = [v12 mapPlaceholderImageForTraitCollection:traitCollection2];

      imageView2 = [(CKEditableSearchResultCell *)self imageView];
      [imageView2 setImage:imageView];
    }

    [(CKLocationSearchResultCell *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = CKLocationSearchResultCell;
  [(CKLocationSearchResultCell *)&v6 traitCollectionDidChange:change];
  result = [(CKLocationSearchResultCell *)self result];
  searchText = [(CKLocationSearchResultCell *)self searchText];
  [(CKLocationSearchResultCell *)self configureWithQueryResult:result searchText:searchText mode:[(CKLocationSearchResultCell *)self mode]];
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