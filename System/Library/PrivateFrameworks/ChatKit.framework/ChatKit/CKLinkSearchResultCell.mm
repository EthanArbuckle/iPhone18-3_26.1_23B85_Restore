@interface CKLinkSearchResultCell
- (CKLinkSearchResultCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)marginInsets;
- (void)_metadataGenerated:(id)a3;
- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setLinkMetadata:(id)a3 forSearchResult:(id)a4;
@end

@implementation CKLinkSearchResultCell

- (CKLinkSearchResultCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CKLinkSearchResultCell;
  v3 = [(CKLinkSearchResultCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel__metadataGenerated_ name:@"CKSearchLPLinkMetadataDidChange" object:0];
  }

  return v3;
}

- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5
{
  v12 = a3;
  v6 = [v12 identifier];
  [(CKLinkSearchResultCell *)self setResultIdentifier:v6];

  v7 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v8 = [v7 hasCachedLinkMetadataForQueryResult:v12];

  v9 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 cachedLinkMetadataForQueryResult:v12];

    [(CKLinkSearchResultCell *)self setLinkMetadata:v11 forSearchResult:v12];
    v10 = v11;
  }

  else
  {
    [v9 beginFetchingLinkMetadataForQueryResult:v12];
  }
}

- (void)setLinkMetadata:(id)a3 forSearchResult:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [v6 item];
  v8 = [v7 attributeSet];
  v9 = [v8 URL];

  v10 = v20;
  if (!v20 && v9)
  {
    v21 = objc_alloc_init(MEMORY[0x1E696ECA0]);
    [v21 setOriginalURL:v9];
    [v21 setURL:v9];
    v10 = v21;
  }

  v22 = v10;
  if (v10)
  {
    v11 = [(CKLinkSearchResultCell *)self linkMetadata];
    v12 = [v11 isEqual:v22];

    if ((v12 & 1) == 0)
    {
      [(CKLinkSearchResultCell *)self setLinkMetadata:v22];
      v13 = [(CKLinkSearchResultCell *)self linkView];

      if (v13)
      {
        v14 = [(CKLinkSearchResultCell *)self linkView];
        [v14 removeFromSuperview];

        [(CKLinkSearchResultCell *)self setLinkView:0];
      }

      v15 = [v6 item];
      v16 = [v15 attributeSet];
      v17 = [v16 URL];

      v18 = [objc_alloc(MEMORY[0x1E696ECC8]) initWithURL:v17];
      [v18 setMetadata:v22];
      [v18 _setApplyCornerRadius:1];
      [v18 _setPreferredSizeClass:5];
      [v18 _setDisableTapGesture:1];
      [(CKLinkSearchResultCell *)self setLinkView:v18];
      v19 = [(CKLinkSearchResultCell *)self contentView];
      [v19 addSubview:v18];

      [(CKLinkSearchResultCell *)self setNeedsLayout];
    }
  }
}

- (void)_metadataGenerated:(id)a3
{
  v9 = [a3 object];
  v4 = [v9 identifier];
  v5 = [(CKLinkSearchResultCell *)self resultIdentifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
    v8 = [v7 cachedLinkMetadataForQueryResult:v9];

    [(CKLinkSearchResultCell *)self setLinkMetadata:v8 forSearchResult:v9];
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
  v3 = [(CKLinkSearchResultCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKLinkSearchResultCell *)self linkView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(CKEditableSearchResultCell *)self checkmarkView];

  if (v13)
  {
    v14 = [(CKLinkSearchResultCell *)self _shouldReverseLayoutDirection];
    v15 = [(CKLinkSearchResultCell *)self contentView];
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
  v5.super_class = CKLinkSearchResultCell;
  [(CKEditableSearchResultCell *)&v5 prepareForReuse];
  [(CKLinkSearchResultCell *)self setResultIdentifier:0];
  [(CKLinkSearchResultCell *)self setLinkMetadata:0];
  v3 = [(CKLinkSearchResultCell *)self linkView];

  if (v3)
  {
    v4 = [(CKLinkSearchResultCell *)self linkView];
    [v4 removeFromSuperview];

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