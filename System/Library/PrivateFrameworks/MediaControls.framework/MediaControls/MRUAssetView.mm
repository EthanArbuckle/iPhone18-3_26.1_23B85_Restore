@interface MRUAssetView
- (MRUAssetView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setAsset:(id)a3;
- (void)setGlyphState:(id)a3;
- (void)setImageSymbolConfiguration:(id)a3;
- (void)setStylingProvider:(id)a3;
- (void)setTintColor:(id)a3;
- (void)updateVisualStyling;
@end

@implementation MRUAssetView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MRUAssetView;
  [(MRUAssetView *)&v3 layoutSubviews];
  [(MRUAssetView *)self bounds];
  [(UIImageView *)self->_imageView setFrame:?];
  UIRectGetCenter();
  [(MRUCAPackageView *)self->_packageView setCenter:?];
}

- (MRUAssetView)initWithFrame:(CGRect)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = MRUAssetView;
  v3 = [(MRUAssetView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MRUCAPackageView);
    packageView = v3->_packageView;
    v3->_packageView = v4;

    [(MRUAssetView *)v3 addSubview:v3->_packageView];
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v3->_imageView;
    v3->_imageView = v6;

    [(UIImageView *)v3->_imageView setContentMode:4];
    [(UIImageView *)v3->_imageView setUserInteractionEnabled:0];
    [(MRUAssetView *)v3 addSubview:v3->_imageView];
    v12[0] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v9 = [(MRUAssetView *)v3 registerForTraitChanges:v8 withAction:sel_updateVisualStyling];
  }

  return v3;
}

- (void)setAsset:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_asset, a3);
  v5 = [v8 packageAsset];

  if (v5)
  {
    v6 = [v8 packageAsset];
    [(MRUCAPackageView *)self->_packageView setAsset:v6];

    [(UIImageView *)self->_imageView setImage:0];
  }

  else
  {
    [(MRUCAPackageView *)self->_packageView clear];
    v7 = [v8 image];
    [(UIImageView *)self->_imageView setImage:v7];
  }

  [(MRUAssetView *)self setNeedsLayout];
}

- (void)setGlyphState:(id)a3
{
  objc_storeStrong(&self->_glyphState, a3);
  v5 = a3;
  [(MRUCAPackageView *)self->_packageView setGlyphState:v5];
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRUAssetView *)self updateVisualStyling];
    v5 = v6;
  }
}

- (void)setImageSymbolConfiguration:(id)a3
{
  objc_storeStrong(&self->_imageSymbolConfiguration, a3);
  v5 = a3;
  [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:v5];
}

- (void)setTintColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = MRUAssetView;
  v4 = a3;
  [(MRUAssetView *)&v5 setTintColor:v4];
  [(UIImageView *)self->_imageView setTintColor:v4, v5.receiver, v5.super_class];
  [(MRUCAPackageView *)self->_packageView setTintColor:v4];
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  imageView = self->_imageView;
  v5 = [(MRUAssetView *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:0 toView:imageView traitCollection:v5];

  v6 = self->_stylingProvider;
  packageView = self->_packageView;
  v8 = [(MRUAssetView *)self traitCollection];
  [(MRUVisualStylingProvider *)v6 applyStyle:0 toView:packageView traitCollection:v8];
}

@end