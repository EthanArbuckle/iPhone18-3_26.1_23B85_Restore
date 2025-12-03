@interface MRUAssetView
- (MRUAssetView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setAsset:(id)asset;
- (void)setGlyphState:(id)state;
- (void)setImageSymbolConfiguration:(id)configuration;
- (void)setStylingProvider:(id)provider;
- (void)setTintColor:(id)color;
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

- (MRUAssetView)initWithFrame:(CGRect)frame
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = MRUAssetView;
  v3 = [(MRUAssetView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  objc_storeStrong(&self->_asset, asset);
  packageAsset = [assetCopy packageAsset];

  if (packageAsset)
  {
    packageAsset2 = [assetCopy packageAsset];
    [(MRUCAPackageView *)self->_packageView setAsset:packageAsset2];

    [(UIImageView *)self->_imageView setImage:0];
  }

  else
  {
    [(MRUCAPackageView *)self->_packageView clear];
    image = [assetCopy image];
    [(UIImageView *)self->_imageView setImage:image];
  }

  [(MRUAssetView *)self setNeedsLayout];
}

- (void)setGlyphState:(id)state
{
  objc_storeStrong(&self->_glyphState, state);
  stateCopy = state;
  [(MRUCAPackageView *)self->_packageView setGlyphState:stateCopy];
}

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    [(MRUAssetView *)self updateVisualStyling];
    providerCopy = v6;
  }
}

- (void)setImageSymbolConfiguration:(id)configuration
{
  objc_storeStrong(&self->_imageSymbolConfiguration, configuration);
  configurationCopy = configuration;
  [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:configurationCopy];
}

- (void)setTintColor:(id)color
{
  v5.receiver = self;
  v5.super_class = MRUAssetView;
  colorCopy = color;
  [(MRUAssetView *)&v5 setTintColor:colorCopy];
  [(UIImageView *)self->_imageView setTintColor:colorCopy, v5.receiver, v5.super_class];
  [(MRUCAPackageView *)self->_packageView setTintColor:colorCopy];
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  imageView = self->_imageView;
  traitCollection = [(MRUAssetView *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:0 toView:imageView traitCollection:traitCollection];

  v6 = self->_stylingProvider;
  packageView = self->_packageView;
  traitCollection2 = [(MRUAssetView *)self traitCollection];
  [(MRUVisualStylingProvider *)v6 applyStyle:0 toView:packageView traitCollection:traitCollection2];
}

@end