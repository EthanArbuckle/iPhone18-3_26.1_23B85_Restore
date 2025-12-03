@interface WDBrandLogoView
- (CGSize)intrinsicContentSize;
- (WDBrandLogoView)initWithFrame:(CGRect)frame;
- (WDBrandLogoView)initWithSize:(double)size;
- (void)_updateStyle;
- (void)fetchBrandable:(id)brandable dataProvider:(id)provider;
- (void)prepareForReuse;
- (void)setSize:(double)size;
@end

@implementation WDBrandLogoView

- (WDBrandLogoView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = WDBrandLogoView;
  v3 = [(WDBrandLogoView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(WDBrandLogoView *)v3 setContentMode:4];
    LODWORD(v5) = 1148846080;
    [(WDBrandLogoView *)v4 setContentCompressionResistancePriority:0 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [(WDBrandLogoView *)v4 setContentCompressionResistancePriority:1 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [(WDBrandLogoView *)v4 setContentHuggingPriority:0 forAxis:v7];
    LODWORD(v8) = 1148846080;
    [(WDBrandLogoView *)v4 setContentHuggingPriority:1 forAxis:v8];
    [MEMORY[0x1E69DCAE0] largeLogoViewDimension];
    [(WDBrandLogoView *)v4 setSize:?];
  }

  return v4;
}

- (WDBrandLogoView)initWithSize:(double)size
{
  v4 = [(WDBrandLogoView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(WDBrandLogoView *)v4 setSize:size];
  }

  return v5;
}

- (CGSize)intrinsicContentSize
{
  [(WDBrandLogoView *)self size];
  v4 = v3;
  [(WDBrandLogoView *)self size];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)fetchBrandable:(id)brandable dataProvider:(id)provider
{
  brandableCopy = brandable;
  providerCopy = provider;
  [(WDBrandLogoView *)self prepareForReuse];
  objc_initWeak(&location, self);
  [(WDBrandLogoView *)self intrinsicContentSize];
  v9 = v8;
  v11 = v10;
  [MEMORY[0x1E69DCAE0] logoDimensionForImageViewSize:?];
  v13 = v12;
  [MEMORY[0x1E69DCAE0] logoInsetForImageViewSize:{v9, v11}];
  v15 = v14;
  brand = [brandableCopy brand];
  title = [brandableCopy title];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __47__WDBrandLogoView_fetchBrandable_dataProvider___block_invoke;
  v19[3] = &unk_1E83DD268;
  v20[1] = v15;
  objc_copyWeak(v20, &location);
  v20[2] = v13;
  v19[4] = self;
  v18 = [providerCopy fetchLogoForBrand:brand fallback:title size:v19 completion:*&v13];
  [(WDBrandLogoView *)self setCancellationToken:v18];

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

uint64_t __47__WDBrandLogoView_fetchBrandable_dataProvider___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *MEMORY[0x1E695EFF8];
    v6 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v6 = *(a1 + 48);
    v5 = v6;
  }

  v7 = [a2 scaledToTargetSize:*(a1 + 56) padding:{*(a1 + 56), v5, v6}];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setImage:v7];

  [*(a1 + 32) setIsFallback:a3];
  v9 = *(a1 + 32);

  return [v9 _updateStyle];
}

- (void)prepareForReuse
{
  cancellationToken = [(WDBrandLogoView *)self cancellationToken];
  [cancellationToken cancel];

  [(WDBrandLogoView *)self setCancellationToken:0];

  [(WDBrandLogoView *)self setImage:0];
}

- (void)setSize:(double)size
{
  self->_size = size;
  [(WDBrandLogoView *)self invalidateIntrinsicContentSize];

  [(WDBrandLogoView *)self _updateStyle];
}

- (void)_updateStyle
{
  isFallback = [(WDBrandLogoView *)self isFallback];
  [(WDBrandLogoView *)self intrinsicContentSize];

  [(UIImageView *)self applyAccountLogoStyleForIsMonogram:isFallback imageViewSize:?];
}

@end