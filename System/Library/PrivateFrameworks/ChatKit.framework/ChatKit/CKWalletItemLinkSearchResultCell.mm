@interface CKWalletItemLinkSearchResultCell
- (CKWalletItemLinkSearchResultCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)marginInsets;
- (id)previewSnapshot;
- (void)_metadataGenerated:(id)generated;
- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setLinkPresentationProperties:(id)properties forSearchResult:(id)result;
@end

@implementation CKWalletItemLinkSearchResultCell

- (CKWalletItemLinkSearchResultCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CKWalletItemLinkSearchResultCell;
  v3 = [(CKWalletItemLinkSearchResultCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__metadataGenerated_ name:@"CKSearchLPWalletItemMetadataDidChange" object:0];
  }

  return v3;
}

- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode
{
  resultCopy = result;
  identifier = [resultCopy identifier];
  [(CKWalletItemLinkSearchResultCell *)self setResultIdentifier:identifier];

  v7 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v8 = [v7 hasCachedWalletItemLinkPropertiesForQueryResult:resultCopy];

  v9 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 cachedWalletItemLinkPropertiesForQueryResult:resultCopy];

    [(CKWalletItemLinkSearchResultCell *)self setLinkPresentationProperties:v11 forSearchResult:resultCopy];
    v10 = v11;
  }

  else
  {
    [v9 beginGeneratingWebLinkPresentationPropertiesForQueryResult:resultCopy];
  }
}

- (void)setLinkPresentationProperties:(id)properties forSearchResult:(id)result
{
  propertiesCopy = properties;
  resultCopy = result;
  if (propertiesCopy)
  {
    linkMetadata = [(CKWalletItemLinkSearchResultCell *)self linkMetadata];
    v8 = [linkMetadata isEqual:propertiesCopy];

    if ((v8 & 1) == 0)
    {
      [(CKWalletItemLinkSearchResultCell *)self setLinkMetadata:propertiesCopy];
      linkView = [(CKWalletItemLinkSearchResultCell *)self linkView];

      if (linkView)
      {
        linkView2 = [(CKWalletItemLinkSearchResultCell *)self linkView];
        [linkView2 removeFromSuperview];

        [(CKWalletItemLinkSearchResultCell *)self setLinkView:0];
      }

      v11 = [objc_alloc(MEMORY[0x1E696ECC8]) initWithPresentationProperties:propertiesCopy URL:0];
      [v11 _setApplyCornerRadius:1];
      [v11 _setPreferredSizeClass:5];
      [v11 _setDisableTapGesture:1];
      [v11 _setAction:0 withText:&stru_1F04268F8 buttonType:1];
      [(CKWalletItemLinkSearchResultCell *)self setLinkView:v11];
      contentView = [(CKWalletItemLinkSearchResultCell *)self contentView];
      [contentView addSubview:v11];

      [(CKWalletItemLinkSearchResultCell *)self setNeedsLayout];
    }
  }
}

- (void)_metadataGenerated:(id)generated
{
  object = [generated object];
  identifier = [object identifier];
  resultIdentifier = [(CKWalletItemLinkSearchResultCell *)self resultIdentifier];
  v6 = [identifier isEqualToString:resultIdentifier];

  if (v6)
  {
    v7 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
    v8 = [v7 cachedWalletItemLinkPropertiesForQueryResult:object];
    [(CKWalletItemLinkSearchResultCell *)self setLinkPresentationProperties:v8 forSearchResult:object];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = CKWalletItemLinkSearchResultCell;
  [(CKWalletItemLinkSearchResultCell *)&v3 didMoveToWindow];
  [(CKWalletItemLinkSearchResultCell *)self layoutIfNeeded];
}

- (void)layoutSubviews
{
  *&rect.origin.y = self;
  *&rect.size.width = CKWalletItemLinkSearchResultCell;
  [(CGFloat *)&rect.origin.y layoutSubviews];
  contentView = [(CKWalletItemLinkSearchResultCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  linkView = [(CKWalletItemLinkSearchResultCell *)self linkView];
  [linkView setFrame:{v5, v7, v9, v11}];

  checkmarkView = [(CKEditableSearchResultCell *)self checkmarkView];

  if (checkmarkView)
  {
    _shouldReverseLayoutDirection = [(CKWalletItemLinkSearchResultCell *)self _shouldReverseLayoutDirection];
    contentView2 = [(CKWalletItemLinkSearchResultCell *)self contentView];
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
  v5.super_class = CKWalletItemLinkSearchResultCell;
  [(CKEditableSearchResultCell *)&v5 prepareForReuse];
  [(CKWalletItemLinkSearchResultCell *)self setResultIdentifier:0];
  [(CKWalletItemLinkSearchResultCell *)self setLinkMetadata:0];
  linkView = [(CKWalletItemLinkSearchResultCell *)self linkView];

  if (linkView)
  {
    linkView2 = [(CKWalletItemLinkSearchResultCell *)self linkView];
    [linkView2 removeFromSuperview];

    [(CKWalletItemLinkSearchResultCell *)self setLinkView:0];
  }
}

- (id)previewSnapshot
{
  linkView = [(CKWalletItemLinkSearchResultCell *)self linkView];
  v3 = linkView;
  if (linkView)
  {
    [linkView bounds];
    v10.width = v4;
    v10.height = v5;
    UIGraphicsBeginImageContextWithOptions(v10, 0, 0.0);
    layer = [v3 layer];
    [layer renderInContext:UIGraphicsGetCurrentContext()];

    v7 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v7 = 0;
  }

  return v7;
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