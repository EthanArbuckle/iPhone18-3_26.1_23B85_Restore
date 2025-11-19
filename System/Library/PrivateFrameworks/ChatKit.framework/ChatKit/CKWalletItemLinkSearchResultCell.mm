@interface CKWalletItemLinkSearchResultCell
- (CKWalletItemLinkSearchResultCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)marginInsets;
- (id)previewSnapshot;
- (void)_metadataGenerated:(id)a3;
- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setLinkPresentationProperties:(id)a3 forSearchResult:(id)a4;
@end

@implementation CKWalletItemLinkSearchResultCell

- (CKWalletItemLinkSearchResultCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CKWalletItemLinkSearchResultCell;
  v3 = [(CKWalletItemLinkSearchResultCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel__metadataGenerated_ name:@"CKSearchLPWalletItemMetadataDidChange" object:0];
  }

  return v3;
}

- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5
{
  v12 = a3;
  v6 = [v12 identifier];
  [(CKWalletItemLinkSearchResultCell *)self setResultIdentifier:v6];

  v7 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v8 = [v7 hasCachedWalletItemLinkPropertiesForQueryResult:v12];

  v9 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 cachedWalletItemLinkPropertiesForQueryResult:v12];

    [(CKWalletItemLinkSearchResultCell *)self setLinkPresentationProperties:v11 forSearchResult:v12];
    v10 = v11;
  }

  else
  {
    [v9 beginGeneratingWebLinkPresentationPropertiesForQueryResult:v12];
  }
}

- (void)setLinkPresentationProperties:(id)a3 forSearchResult:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (v13)
  {
    v7 = [(CKWalletItemLinkSearchResultCell *)self linkMetadata];
    v8 = [v7 isEqual:v13];

    if ((v8 & 1) == 0)
    {
      [(CKWalletItemLinkSearchResultCell *)self setLinkMetadata:v13];
      v9 = [(CKWalletItemLinkSearchResultCell *)self linkView];

      if (v9)
      {
        v10 = [(CKWalletItemLinkSearchResultCell *)self linkView];
        [v10 removeFromSuperview];

        [(CKWalletItemLinkSearchResultCell *)self setLinkView:0];
      }

      v11 = [objc_alloc(MEMORY[0x1E696ECC8]) initWithPresentationProperties:v13 URL:0];
      [v11 _setApplyCornerRadius:1];
      [v11 _setPreferredSizeClass:5];
      [v11 _setDisableTapGesture:1];
      [v11 _setAction:0 withText:&stru_1F04268F8 buttonType:1];
      [(CKWalletItemLinkSearchResultCell *)self setLinkView:v11];
      v12 = [(CKWalletItemLinkSearchResultCell *)self contentView];
      [v12 addSubview:v11];

      [(CKWalletItemLinkSearchResultCell *)self setNeedsLayout];
    }
  }
}

- (void)_metadataGenerated:(id)a3
{
  v9 = [a3 object];
  v4 = [v9 identifier];
  v5 = [(CKWalletItemLinkSearchResultCell *)self resultIdentifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
    v8 = [v7 cachedWalletItemLinkPropertiesForQueryResult:v9];
    [(CKWalletItemLinkSearchResultCell *)self setLinkPresentationProperties:v8 forSearchResult:v9];
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
  v3 = [(CKWalletItemLinkSearchResultCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKWalletItemLinkSearchResultCell *)self linkView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(CKEditableSearchResultCell *)self checkmarkView];

  if (v13)
  {
    v14 = [(CKWalletItemLinkSearchResultCell *)self _shouldReverseLayoutDirection];
    v15 = [(CKWalletItemLinkSearchResultCell *)self contentView];
    v16 = [(CKEditableSearchResultCell *)self checkmarkView];
    [v15 bringSubviewToFront:v16];

    v17 = [(CKEditableSearchResultCell *)self checkmarkView];
    [v17 sizeToFit];

    v18 = [(CKEditableSearchResultCell *)self checkmarkView];
    [v18 frame];
    rect.origin.x = v19;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = 4.0;
    if ((v14 & 1) == 0)
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
    v30 = [(CKEditableSearchResultCell *)self checkmarkView];
    [v30 setFrame:{v26, v29, v23, v25}];
  }
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CKWalletItemLinkSearchResultCell;
  [(CKEditableSearchResultCell *)&v5 prepareForReuse];
  [(CKWalletItemLinkSearchResultCell *)self setResultIdentifier:0];
  [(CKWalletItemLinkSearchResultCell *)self setLinkMetadata:0];
  v3 = [(CKWalletItemLinkSearchResultCell *)self linkView];

  if (v3)
  {
    v4 = [(CKWalletItemLinkSearchResultCell *)self linkView];
    [v4 removeFromSuperview];

    [(CKWalletItemLinkSearchResultCell *)self setLinkView:0];
  }
}

- (id)previewSnapshot
{
  v2 = [(CKWalletItemLinkSearchResultCell *)self linkView];
  v3 = v2;
  if (v2)
  {
    [v2 bounds];
    v10.width = v4;
    v10.height = v5;
    UIGraphicsBeginImageContextWithOptions(v10, 0, 0.0);
    v6 = [v3 layer];
    [v6 renderInContext:UIGraphicsGetCurrentContext()];

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