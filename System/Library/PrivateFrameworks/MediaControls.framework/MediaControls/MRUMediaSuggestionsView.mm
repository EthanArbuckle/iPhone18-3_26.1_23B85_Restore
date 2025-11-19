@interface MRUMediaSuggestionsView
- (CGSize)sizeThatFits:(CGSize)a3;
- (MRUMediaSuggestionsView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentEdgeInsets;
- (double)itemHeightForItemWidth:(double)a3;
- (double)itemWidthForWidth:(double)a3;
- (int64_t)numberOfColumns;
- (int64_t)numberOfRows;
- (void)layoutSubviews;
- (void)setContentEdgeInsets:(UIEdgeInsets)a3;
- (void)setContentScale:(double)a3;
- (void)setFrame:(CGRect)a3;
- (void)setLayout:(int64_t)a3;
- (void)updateCollectionViewLayout;
@end

@implementation MRUMediaSuggestionsView

- (MRUMediaSuggestionsView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13.receiver = self;
  v13.super_class = MRUMediaSuggestionsView;
  v7 = [(MRUMediaSuggestionsView *)&v13 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(MRUMediaSuggestionsView *)v7 updateCollectionViewLayout];
    v9 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:v8->_collectionViewLayout collectionViewLayout:{x, y, width, height}];
    collectionView = v8->_collectionView;
    v8->_collectionView = v9;

    v11 = [MEMORY[0x1E69DC888] clearColor];
    [(UICollectionView *)v8->_collectionView setBackgroundColor:v11];

    [(UICollectionView *)v8->_collectionView setShowsVerticalScrollIndicator:0];
    [(UICollectionView *)v8->_collectionView setShowsHorizontalScrollIndicator:0];
    v8->_contentScale = 1.0;
    [(MRUMediaSuggestionsView *)v8 addSubview:v8->_collectionView];
  }

  return v8;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MRUMediaSuggestionsView;
  [(MRUMediaSuggestionsView *)&v3 layoutSubviews];
  [(MRUMediaSuggestionsView *)self bounds];
  [(UICollectionView *)self->_collectionView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(MRUMediaSuggestionsView *)self itemWidthForWidth:a3.width, a3.height];
  [(MRUMediaSuggestionsView *)self itemHeightForItemWidth:?];
  top = self->_contentEdgeInsets.top;
  v7 = top + v6 * [(MRUMediaSuggestionsView *)self numberOfRows];
  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(MRUMediaSuggestionsView *)self bounds];
  v9 = v8;
  v11 = v10;
  v15.receiver = self;
  v15.super_class = MRUMediaSuggestionsView;
  [(MRUMediaSuggestionsView *)&v15 setFrame:x, y, width, height];
  [(MRUMediaSuggestionsView *)self bounds];
  if (v13 != v9 || v12 != v11)
  {
    [(MRUMediaSuggestionsView *)self updateCollectionViewLayout];
  }
}

- (void)setLayout:(int64_t)a3
{
  if (self->_layout != a3)
  {
    self->_layout = a3;
    [(MRUMediaSuggestionsView *)self updateCollectionViewLayout];
  }
}

- (void)setContentEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentEdgeInsets.top, v3), vceqq_f64(*&self->_contentEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentEdgeInsets = a3;
    [(MRUMediaSuggestionsView *)self updateCollectionViewLayout];
  }
}

- (void)setContentScale:(double)a3
{
  if (vabdd_f64(self->_contentScale, a3) > 2.22044605e-16)
  {
    self->_contentScale = a3;
    [(MRUMediaSuggestionsView *)self updateCollectionViewLayout];
  }
}

- (void)updateCollectionViewLayout
{
  if (self->_supportsHorizontalLayout && !MRULayoutShouldBeVertical())
  {
    v22 = [(MRUMediaSuggestionsView *)self numberOfColumns];
    [(MRUMediaSuggestionsView *)self bounds];
    [(MRUMediaSuggestionsView *)self itemWidthForWidth:CGRectGetWidth(v42)];
    [(MRUMediaSuggestionsView *)self itemHeightForItemWidth:?];
    v24 = v23;
    v25 = MEMORY[0x1E6995588];
    v26 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v27 = [MEMORY[0x1E6995558] fractionalHeightDimension:1.0];
    v28 = [v25 sizeWithWidthDimension:v26 heightDimension:v27];

    v39 = v28;
    v10 = [MEMORY[0x1E6995578] itemWithLayoutSize:v28];
    v29 = MEMORY[0x1E6995588];
    v30 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v31 = [MEMORY[0x1E6995558] absoluteDimension:v24];
    v14 = [v29 sizeWithWidthDimension:v30 heightDimension:v31];

    v15 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v14 subitem:v10 count:v22];
    v32 = [MEMORY[0x1E6995590] fixedSpacing:10.0];
    [v15 setInterItemSpacing:v32];

    v16 = [MEMORY[0x1E6995580] sectionWithGroup:v15];
    v19 = 0;
    v21 = 0;
    p_contentEdgeInsets = &self->_contentEdgeInsets;
    bottom = self->_contentEdgeInsets.bottom;
    v17 = 1;
  }

  else
  {
    v3 = [(MRUMediaSuggestionsView *)self numberOfRows];
    [(MRUMediaSuggestionsView *)self bounds];
    [(MRUMediaSuggestionsView *)self itemWidthForWidth:CGRectGetWidth(v41)];
    v5 = v4;
    v6 = MEMORY[0x1E6995588];
    v7 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v8 = [MEMORY[0x1E6995558] fractionalHeightDimension:1.0];
    v9 = [v6 sizeWithWidthDimension:v7 heightDimension:v8];

    v39 = v9;
    v10 = [MEMORY[0x1E6995578] itemWithLayoutSize:v9];
    v11 = MEMORY[0x1E6995588];
    v12 = [MEMORY[0x1E6995558] absoluteDimension:v5];
    v13 = [MEMORY[0x1E6995558] fractionalHeightDimension:1.0];
    v14 = [v11 sizeWithWidthDimension:v12 heightDimension:v13];

    v15 = [MEMORY[0x1E6995568] verticalGroupWithLayoutSize:v14 subitem:v10 count:v3];
    v16 = [MEMORY[0x1E6995580] sectionWithGroup:v15];
    [v16 setInterGroupSpacing:10.0];
    v17 = 0;
    p_contentEdgeInsets = &self->_contentEdgeInsets;
    v19 = 1;
    bottom = 0.0;
    v21 = 1;
  }

  [v16 setContentInsets:{p_contentEdgeInsets->top, p_contentEdgeInsets->left, bottom, p_contentEdgeInsets->right}];
  v33 = objc_alloc_init(MEMORY[0x1E69DC810]);
  [v33 setScrollDirection:v19];
  v34 = [objc_alloc(MEMORY[0x1E69DC808]) initWithSection:v16 configuration:v33];
  collectionViewLayout = self->_collectionViewLayout;
  self->_collectionViewLayout = v34;

  [(UICollectionView *)self->_collectionView setAlwaysBounceVertical:v17];
  [(UICollectionView *)self->_collectionView setAlwaysBounceHorizontal:v21];

  [(UICollectionView *)self->_collectionView setCollectionViewLayout:self->_collectionViewLayout];
  v36 = *MEMORY[0x1E695EFF8];
  v37 = *(MEMORY[0x1E695EFF8] + 8);
  collectionView = self->_collectionView;

  [(UICollectionView *)collectionView setContentOffset:v36, v37];
}

- (double)itemWidthForWidth:(double)a3
{
  MRUMediaSuggestionsVisibleItemCount(self->_layout);
  layout = self->_layout;
  if (layout)
  {
    if (layout != 1)
    {
      return result;
    }

    v6 = [(MRUMediaSuggestionsView *)self traitCollection];
    [v6 displayScale];
    UIRoundToScale();

    MRUMediaSuggestionsMaxItemWidthCompact();
  }

  else if (self->_supportsHorizontalLayout && !MRULayoutShouldBeVertical())
  {
    [(MRUMediaSuggestionsView *)self numberOfColumns];
  }

  v7 = [(MRUMediaSuggestionsView *)self traitCollection];
  [v7 displayScale];
  UIRoundToScale();
  v9 = v8;

  return v9;
}

- (double)itemHeightForItemWidth:(double)a3
{
  v4 = [MEMORY[0x1E69DB878] mru_suggestionsTitleFont];
  [v4 lineHeight];

  v5 = [MEMORY[0x1E69DB878] mru_suggestionsSubtitleFont];
  [v5 lineHeight];

  v6 = [(MRUMediaSuggestionsView *)self traitCollection];
  [v6 displayScale];
  UIRoundToScale();
  v8 = v7;

  return v8;
}

- (int64_t)numberOfRows
{
  if (self->_layout)
  {
    return 1;
  }

  if (MRUIsSmallScreenWithScale(self->_contentScale))
  {
    return 1;
  }

  return 2;
}

- (int64_t)numberOfColumns
{
  if (MRUIsSmallScreenWithScale(self->_contentScale))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (UIEdgeInsets)contentEdgeInsets
{
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end