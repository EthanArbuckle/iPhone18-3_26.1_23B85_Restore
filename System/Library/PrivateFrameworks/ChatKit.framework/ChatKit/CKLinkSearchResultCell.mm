@interface CKLinkSearchResultCell
- (CKLinkSearchResultCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)marginInsets;
- (void)_metadataGenerated:(id)generated;
- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setLinkMetadata:(id)metadata forSearchResult:(id)result;
@end

@implementation CKLinkSearchResultCell

- (CKLinkSearchResultCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CKLinkSearchResultCell;
  v3 = [(CKLinkSearchResultCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__metadataGenerated_ name:@"CKSearchLPLinkMetadataDidChange" object:0];
  }

  return v3;
}

- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode
{
  resultCopy = result;
  identifier = [resultCopy identifier];
  [(CKLinkSearchResultCell *)self setResultIdentifier:identifier];

  v7 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v8 = [v7 hasCachedLinkMetadataForQueryResult:resultCopy];

  v9 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 cachedLinkMetadataForQueryResult:resultCopy];

    [(CKLinkSearchResultCell *)self setLinkMetadata:v11 forSearchResult:resultCopy];
    v10 = v11;
  }

  else
  {
    [v9 beginFetchingLinkMetadataForQueryResult:resultCopy];
  }
}

- (void)setLinkMetadata:(id)metadata forSearchResult:(id)result
{
  metadataCopy = metadata;
  resultCopy = result;
  item = [resultCopy item];
  attributeSet = [item attributeSet];
  v9 = [attributeSet URL];

  v10 = metadataCopy;
  if (!metadataCopy && v9)
  {
    v21 = objc_alloc_init(MEMORY[0x1E696ECA0]);
    [v21 setOriginalURL:v9];
    [v21 setURL:v9];
    v10 = v21;
  }

  v22 = v10;
  if (v10)
  {
    linkMetadata = [(CKLinkSearchResultCell *)self linkMetadata];
    v12 = [linkMetadata isEqual:v22];

    if ((v12 & 1) == 0)
    {
      [(CKLinkSearchResultCell *)self setLinkMetadata:v22];
      linkView = [(CKLinkSearchResultCell *)self linkView];

      if (linkView)
      {
        linkView2 = [(CKLinkSearchResultCell *)self linkView];
        [linkView2 removeFromSuperview];

        [(CKLinkSearchResultCell *)self setLinkView:0];
      }

      item2 = [resultCopy item];
      attributeSet2 = [item2 attributeSet];
      v17 = [attributeSet2 URL];

      v18 = [objc_alloc(MEMORY[0x1E696ECC8]) initWithURL:v17];
      [v18 setMetadata:v22];
      [v18 _setApplyCornerRadius:1];
      [v18 _setPreferredSizeClass:5];
      [v18 _setDisableTapGesture:1];
      [(CKLinkSearchResultCell *)self setLinkView:v18];
      contentView = [(CKLinkSearchResultCell *)self contentView];
      [contentView addSubview:v18];

      [(CKLinkSearchResultCell *)self setNeedsLayout];
    }
  }
}

- (void)_metadataGenerated:(id)generated
{
  object = [generated object];
  identifier = [object identifier];
  resultIdentifier = [(CKLinkSearchResultCell *)self resultIdentifier];
  v6 = [identifier isEqualToString:resultIdentifier];

  if (v6)
  {
    v7 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
    v8 = [v7 cachedLinkMetadataForQueryResult:object];

    [(CKLinkSearchResultCell *)self setLinkMetadata:v8 forSearchResult:object];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = CKLinkSearchResultCell;
  [(CKLinkSearchResultCell *)&v3 didMoveToWindow];
  [(CKLinkSearchResultCell *)self layoutIfNeeded];
}

- (void)layoutSubviews
{
  *&rect.origin.y = self;
  *&rect.size.width = CKLinkSearchResultCell;
  [(CGFloat *)&rect.origin.y layoutSubviews];
  contentView = [(CKLinkSearchResultCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  linkView = [(CKLinkSearchResultCell *)self linkView];
  [linkView setFrame:{v5, v7, v9, v11}];

  checkmarkView = [(CKEditableSearchResultCell *)self checkmarkView];

  if (checkmarkView)
  {
    _shouldReverseLayoutDirection = [(CKLinkSearchResultCell *)self _shouldReverseLayoutDirection];
    contentView2 = [(CKLinkSearchResultCell *)self contentView];
    checkmarkView2 = [(CKEditableSearchResultCell *)self checkmarkView];
    [contentView2 bringSubviewToFront:checkmarkView2];

    checkmarkView3 = [(CKEditableSearchResultCell *)self checkmarkView];
    [checkmarkView3 sizeToFit];

    checkmarkView4 = [(CKEditableSearchResultCell *)self checkmarkView];
    [checkmarkView4 frame];
    rect.origin.x = v19;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = 4.0;
    if ((_shouldReverseLayoutDirection & 1) == 0)
    {
      v32.origin.x = v5;
      v32.origin.y = v7;
      v32.size.width = v9;
      v32.size.height = v11;
      Width = CGRectGetWidth(v32);
      v33.origin.x = rect.origin.x;
      v33.origin.y = v21;
      v33.size.width = v23;
      v33.size.height = v25;
      v26 = Width - CGRectGetWidth(v33) + -4.0;
    }

    v34.origin.x = v5;
    v34.origin.y = v7;
    v34.size.width = v9;
    v34.size.height = v11;
    Height = CGRectGetHeight(v34);
    v35.origin.x = v26;
    v35.origin.y = v21;
    v35.size.width = v23;
    v35.size.height = v25;
    v29 = Height - CGRectGetHeight(v35) + -4.0;
    checkmarkView5 = [(CKEditableSearchResultCell *)self checkmarkView];
    [checkmarkView5 setFrame:{v26, v29, v23, v25}];
  }
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CKLinkSearchResultCell;
  [(CKEditableSearchResultCell *)&v5 prepareForReuse];
  [(CKLinkSearchResultCell *)self setResultIdentifier:0];
  [(CKLinkSearchResultCell *)self setLinkMetadata:0];
  linkView = [(CKLinkSearchResultCell *)self linkView];

  if (linkView)
  {
    linkView2 = [(CKLinkSearchResultCell *)self linkView];
    [linkView2 removeFromSuperview];

    [(CKLinkSearchResultCell *)self setLinkView:0];
  }
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