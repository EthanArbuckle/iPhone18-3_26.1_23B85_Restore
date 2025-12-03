@interface NTKUpNextImageView
- (BOOL)_hasMultipartImages;
- (CGRect)contentsLayerBoundsForLayout:(id)layout;
- (CGSize)intrinsicContentSize;
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKUpNextImageView)initWithFrame:(CGRect)frame parentCell:(id)cell;
- (void)_updateColors;
- (void)layoutSubviews;
- (void)setCompositingFilter:(id)filter;
- (void)setContentMode:(int64_t)mode;
- (void)setFullColorImage:(id)image tintableImageProvider:(id)provider;
- (void)setImageProvider:(id)provider;
- (void)setOverrideImage:(id)image;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKUpNextImageView

- (NTKUpNextImageView)initWithFrame:(CGRect)frame parentCell:(id)cell
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  cellCopy = cell;
  v30.receiver = self;
  v30.super_class = NTKUpNextImageView;
  height = [(NTKUpNextImageView *)&v30 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    objc_storeWeak(&height->_parentCell, cellCopy);
    v12 = objc_alloc(MEMORY[0x277D755E8]);
    v13 = *MEMORY[0x277CBF3A0];
    v14 = *(MEMORY[0x277CBF3A0] + 8);
    v15 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = *(MEMORY[0x277CBF3A0] + 24);
    v17 = [v12 initWithFrame:{*MEMORY[0x277CBF3A0], v14, v15, v16}];
    foregroundImageView = v11->_foregroundImageView;
    v11->_foregroundImageView = v17;

    [(UIImageView *)v11->_foregroundImageView setContentMode:4];
    v19 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v13, v14, v15, v16}];
    foregroundAccentImageView = v11->_foregroundAccentImageView;
    v11->_foregroundAccentImageView = v19;

    [(UIImageView *)v11->_foregroundAccentImageView setContentMode:4];
    v21 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v13, v14, v15, v16}];
    backgroundImageView = v11->_backgroundImageView;
    v11->_backgroundImageView = v21;

    [(UIImageView *)v11->_backgroundImageView setContentMode:4];
    v23 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v13, v14, v15, v16}];
    overrideImageView = v11->_overrideImageView;
    v11->_overrideImageView = v23;

    [(UIImageView *)v11->_overrideImageView setContentMode:4];
    [(NTKUpNextImageView *)v11 addSubview:v11->_backgroundImageView];
    [(NTKUpNextImageView *)v11 addSubview:v11->_foregroundImageView];
    [(NTKUpNextImageView *)v11 addSubview:v11->_foregroundAccentImageView];
    [(NTKUpNextImageView *)v11 addSubview:v11->_overrideImageView];
    v25 = objc_opt_new();
    foregroundAccentBackdrop = v11->_foregroundAccentBackdrop;
    v11->_foregroundAccentBackdrop = v25;

    layer = [(NTKUpNextImageView *)v11 layer];
    [layer insertSublayer:v11->_foregroundAccentBackdrop atIndex:0];

    [cellCopy addContentsLayerProvider:v11];
    layer2 = [(NTKUpNextImageView *)v11 layer];
    [layer2 setAllowsGroupBlending:0];
  }

  return v11;
}

- (void)setCompositingFilter:(id)filter
{
  filterCopy = filter;
  objc_storeStrong(&self->_compositingFilter, filter);
  [(CALayer *)self->_foregroundAccentBackdrop setHidden:self->_compositingFilter == 0];
  layer = [(UIImageView *)self->_foregroundAccentImageView layer];
  v6 = layer;
  if (filterCopy)
  {
    v7 = [MEMORY[0x277CD9EA0] filterWithType:filterCopy];
    [v6 setCompositingFilter:v7];
  }

  else
  {
    [layer setCompositingFilter:0];
  }

  layer2 = [(UIImageView *)self->_backgroundImageView layer];
  v9 = layer2;
  if (filterCopy)
  {
    v10 = [MEMORY[0x277CD9EA0] filterWithType:filterCopy];
    [v9 setCompositingFilter:v10];
  }

  else
  {
    [layer2 setCompositingFilter:0];
  }
}

- (CGRect)contentsLayerBoundsForLayout:(id)layout
{
  [layout unitFrameOnScreen];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  WeakRetained = objc_loadWeakRetained(&self->_parentCell);
  [WeakRetained bounds];
  v14 = v13;
  v16 = v15;

  [(NTKUpNextImageView *)self frame];
  v18 = v5 + v17 / v14 * v9;
  v20 = v7 + v19 / v16 * v11;
  v22 = v9 * (v21 / v14);
  v24 = v11 * (v23 / v16);
  result.size.height = v24;
  result.size.width = v22;
  result.origin.y = v20;
  result.origin.x = v18;
  return result;
}

- (CGSize)intrinsicContentSize
{
  overrideImage = self->_overrideImage;
  if (!overrideImage)
  {
    if (!self->_imageProvider)
    {
      v5 = *MEMORY[0x277D77260];
      v7 = *MEMORY[0x277D77260];
      goto LABEL_12;
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x3010000000;
    v23 = &unk_22DD390E3;
    v24 = *MEMORY[0x277CBF3A8];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __42__NTKUpNextImageView_intrinsicContentSize__block_invoke;
    aBlock[3] = &unk_27877EFB0;
    aBlock[4] = &v20;
    v8 = _Block_copy(aBlock);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      image = [(UIImageView *)self->_backgroundImageView image];
      v8[2](v8, image);

      image2 = [(UIImageView *)self->_foregroundImageView image];
      v8[2](v8, image2);

      image3 = [(UIImageView *)self->_foregroundAccentImageView image];
      v8[2](v8, image3);
    }

    else
    {
      if (![(NTKUpNextImageView *)self _hasMultipartImages])
      {
        onePieceImage = [(CLKImageProvider *)self->_imageProvider onePieceImage];
        [onePieceImage size];
        v5 = v15;
        v7 = v16;

        goto LABEL_11;
      }

      twoPieceImageBackground = [(CLKImageProvider *)self->_imageProvider twoPieceImageBackground];
      v8[2](v8, twoPieceImageBackground);

      twoPieceImageForeground = [(CLKImageProvider *)self->_imageProvider twoPieceImageForeground];
      v8[2](v8, twoPieceImageForeground);

      image3 = [(CLKImageProvider *)self->_imageProvider foregroundAccentImage];
      v8[2](v8, image3);
    }

    v5 = v21[4];
    v7 = v21[5];
LABEL_11:

    _Block_object_dispose(&v20, 8);
    goto LABEL_12;
  }

  [(UIImage *)overrideImage size];
  v5 = v4;
  v7 = v6;
LABEL_12:
  v17 = v5;
  v18 = v7;
  result.height = v18;
  result.width = v17;
  return result;
}

void __42__NTKUpNextImageView_intrinsicContentSize__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(*(*(a1 + 32) + 8) + 32);
    v4 = a2;
    [v4 size];
    if (v3 >= v5)
    {
      v5 = v3;
    }

    *(*(*(a1 + 32) + 8) + 32) = v5;
    v6 = *(*(*(a1 + 32) + 8) + 40);
    [v4 size];
    v8 = v7;

    if (v6 >= v8)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    *(*(*(a1 + 32) + 8) + 40) = v9;
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = NTKUpNextImageView;
  [(NTKUpNextImageView *)&v8 layoutSubviews];
  overrideImageView = self->_overrideImageView;
  [(NTKUpNextImageView *)self bounds];
  [(UIImageView *)overrideImageView setFrame:?];
  foregroundAccentImageView = self->_foregroundAccentImageView;
  [(NTKUpNextImageView *)self bounds];
  [(UIImageView *)foregroundAccentImageView setFrame:?];
  foregroundImageView = self->_foregroundImageView;
  [(NTKUpNextImageView *)self bounds];
  [(UIImageView *)foregroundImageView setFrame:?];
  backgroundImageView = self->_backgroundImageView;
  [(NTKUpNextImageView *)self bounds];
  [(UIImageView *)backgroundImageView setFrame:?];
  foregroundAccentBackdrop = self->_foregroundAccentBackdrop;
  [(NTKUpNextImageView *)self bounds];
  [(CALayer *)foregroundAccentBackdrop setFrame:?];
}

- (BOOL)_hasMultipartImages
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  imageProvider = self->_imageProvider;
  if ((isKindOfClass & 1) == 0)
  {
    twoPieceImageBackground = [(CLKImageProvider *)imageProvider twoPieceImageBackground];
    if (twoPieceImageBackground && ([(CLKImageProvider *)self->_imageProvider twoPieceImageForeground], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = 1;
    }

    else
    {
      foregroundAccentImage = [(CLKImageProvider *)self->_imageProvider foregroundAccentImage];
      v8 = foregroundAccentImage != 0;

      if (!twoPieceImageBackground)
      {
LABEL_11:

        return v8;
      }

      v7 = 0;
    }

    goto LABEL_11;
  }

  return [(CLKImageProvider *)imageProvider isTwoPiece];
}

- (void)setFullColorImage:(id)image tintableImageProvider:(id)provider
{
  imageCopy = image;
  [(NTKUpNextImageView *)self setImageProvider:provider];
  [(NTKUpNextImageView *)self setOverrideImage:imageCopy];

  [(NTKUpNextImageView *)self invalidateIntrinsicContentSize];
}

- (void)setImageProvider:(id)provider
{
  providerCopy = provider;
  layer = [(UIImageView *)self->_backgroundImageView layer];
  [layer setFilters:0];

  layer2 = [(UIImageView *)self->_foregroundImageView layer];
  [layer2 setFilters:0];

  layer3 = [(UIImageView *)self->_foregroundAccentImageView layer];
  [layer3 setFilters:0];

  layer4 = [(UIImageView *)self->_overrideImageView layer];
  [layer4 setFilters:0];

  v9 = providerCopy;
  if (self->_imageProvider != providerCopy)
  {
    objc_storeStrong(&self->_imageProvider, provider);
    v9 = providerCopy;
    if (providerCopy)
    {
      [(UIImageView *)self->_overrideImageView setHidden:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        layer7 = providerCopy;
        tintColor = [(CLKImageProvider *)self->_imageProvider tintColor];
        fallbackTintColor = tintColor;
        if (tintColor || (fallbackTintColor = self->_fallbackTintColor) != 0)
        {
          whiteColor = fallbackTintColor;
        }

        else
        {
          whiteColor = [MEMORY[0x277D75348] whiteColor];
        }

        v14 = whiteColor;

        if ([(CLKImageProvider *)layer7 isTwoPiece])
        {
          v15 = [(CLKImageProvider *)layer7 createSymbolImageForType:3 color:v14];
          whiteColor2 = [MEMORY[0x277D75348] whiteColor];
          v17 = [(CLKImageProvider *)layer7 createSymbolImageForType:2 color:whiteColor2];

          [(UIImageView *)self->_foregroundImageView setHidden:0];
          [(UIImageView *)self->_backgroundImageView setHidden:0];
          [(UIImageView *)self->_foregroundAccentImageView setHidden:1];
          [(UIImageView *)self->_foregroundImageView setImage:v17];
          backgroundImageView = self->_backgroundImageView;
          v19 = [v15 imageWithRenderingMode:2];
          [(UIImageView *)backgroundImageView setImage:v19];
        }

        else
        {
          [(UIImageView *)self->_backgroundImageView setHidden:0];
          [(UIImageView *)self->_foregroundImageView setHidden:1];
          [(UIImageView *)self->_foregroundAccentImageView setHidden:1];
          v31 = self->_backgroundImageView;
          createSymbolImage = [(CLKImageProvider *)layer7 createSymbolImage];
          [(UIImageView *)v31 setImage:createSymbolImage];

          [(UIImageView *)self->_foregroundImageView setImage:0];
        }

        WeakRetained = objc_loadWeakRetained(&self->_parentCell);
        device = [WeakRetained device];
        [device screenScale];
        v36 = v35;
        layer5 = [(NTKUpNextImageView *)self layer];
        [layer5 setRasterizationScale:v36];

        layer6 = [(NTKUpNextImageView *)self layer];
        [layer6 setShouldRasterize:1];
      }

      else
      {
        _hasMultipartImages = [(NTKUpNextImageView *)self _hasMultipartImages];
        [(UIImageView *)self->_backgroundImageView setHidden:0];
        foregroundImageView = self->_foregroundImageView;
        if (_hasMultipartImages)
        {
          [(UIImageView *)foregroundImageView setHidden:0];
          [(UIImageView *)self->_foregroundAccentImageView setHidden:0];
          v22 = self->_foregroundImageView;
          twoPieceImageForeground = [(CLKImageProvider *)self->_imageProvider twoPieceImageForeground];
          v24 = [twoPieceImageForeground imageWithRenderingMode:2];
          [(UIImageView *)v22 setImage:v24];

          v25 = self->_backgroundImageView;
          twoPieceImageBackground = [(CLKImageProvider *)self->_imageProvider twoPieceImageBackground];
          v27 = [twoPieceImageBackground imageWithRenderingMode:2];
          [(UIImageView *)v25 setImage:v27];

          foregroundAccentImageView = self->_foregroundAccentImageView;
          foregroundAccentImage = [(CLKImageProvider *)self->_imageProvider foregroundAccentImage];
          v30 = [foregroundAccentImage imageWithRenderingMode:1];
          [(UIImageView *)foregroundAccentImageView setImage:v30];
        }

        else
        {
          [(UIImageView *)foregroundImageView setHidden:1];
          [(UIImageView *)self->_foregroundAccentImageView setHidden:1];
          v39 = self->_backgroundImageView;
          onePieceImage = [(CLKImageProvider *)self->_imageProvider onePieceImage];
          v41 = [onePieceImage imageWithRenderingMode:2];
          [(UIImageView *)v39 setImage:v41];

          [(UIImageView *)self->_foregroundImageView setImage:0];
        }

        layer7 = [(NTKUpNextImageView *)self layer];
        [(CLKImageProvider *)layer7 setShouldRasterize:0];
      }

      [(NTKUpNextImageView *)self _updateColors];
      v9 = providerCopy;
    }
  }
}

- (void)setOverrideImage:(id)image
{
  imageCopy = image;
  if (self->_overrideImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_overrideImage, image);
    imageCopy = v6;
    if (v6)
    {
      [(UIImageView *)self->_foregroundImageView setHidden:1];
      [(UIImageView *)self->_backgroundImageView setHidden:1];
      [(UIImageView *)self->_foregroundAccentImageView setHidden:1];
      [(UIImageView *)self->_overrideImageView setHidden:0];
      [(UIImageView *)self->_overrideImageView setImage:self->_overrideImage];
      imageCopy = v6;
    }
  }
}

- (void)_updateColors
{
  tintColor = [(CLKImageProvider *)self->_imageProvider tintColor];
  fallbackTintColor = tintColor;
  if (tintColor || (fallbackTintColor = self->_fallbackTintColor) != 0)
  {
    whiteColor = fallbackTintColor;
  }

  else
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
  }

  v9 = whiteColor;

  if ([(NTKUpNextImageView *)self _hasMultipartImages]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    foregroundImageView = self->_foregroundImageView;
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(UIImageView *)foregroundImageView setTintColor:whiteColor2];

    v8 = &OBJC_IVAR___NTKUpNextImageView__backgroundImageView;
  }

  else
  {
    v8 = &OBJC_IVAR___NTKUpNextImageView__foregroundImageView;
  }

  [*(&self->super.super.super.isa + *v8) setTintColor:v9];
}

- (void)setContentMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = NTKUpNextImageView;
  [(NTKUpNextImageView *)&v5 setContentMode:?];
  [(UIImageView *)self->_foregroundImageView setContentMode:mode];
  [(UIImageView *)self->_backgroundImageView setContentMode:mode];
  [(UIImageView *)self->_foregroundAccentImageView setContentMode:mode];
  [(UIImageView *)self->_overrideImageView setContentMode:mode];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  if (self->_overrideImage && self->_imageProvider)
  {
    [(NTKUpNextImageView *)self updateMonochromeColor];
    [(UIImageView *)self->_overrideImageView setHidden:0];
    layer = [(UIImageView *)self->_overrideImageView layer];
    [layer setFilters:0];

    overrideImageView = self->_overrideImageView;

    [(UIImageView *)overrideImageView setAlpha:1.0 - fraction];
  }

  else
  {
    filterProvider = [(NTKUpNextImageView *)self filterProvider];
    v16 = [filterProvider filtersForView:self style:2 fraction:fraction];

    if (v16)
    {
      layer2 = [(UIImageView *)self->_backgroundImageView layer];
      [layer2 setFilters:v16];
    }

    filterProvider2 = [(NTKUpNextImageView *)self filterProvider];
    v10 = [filterProvider2 filtersForView:self style:0 fraction:fraction];

    if (v10)
    {
      layer3 = [(UIImageView *)self->_foregroundImageView layer];
      [layer3 setFilters:v10];
    }

    filterProvider3 = [(NTKUpNextImageView *)self filterProvider];
    v13 = [filterProvider3 filtersForView:self style:1 fraction:fraction];

    if (v13)
    {
      layer4 = [(UIImageView *)self->_foregroundAccentImageView layer];
      [layer4 setFilters:v13];

      layer5 = [(UIImageView *)self->_overrideImageView layer];
      [layer5 setFilters:v13];
    }
  }
}

- (void)updateMonochromeColor
{
  if (self->_imageProvider)
  {
    [(UIImageView *)self->_overrideImageView setHidden:1];
    [(UIImageView *)self->_overrideImageView setAlpha:1.0];
    [(UIImageView *)self->_foregroundAccentImageView setHidden:0];
    [(UIImageView *)self->_foregroundImageView setHidden:0];
    [(UIImageView *)self->_backgroundImageView setHidden:0];
  }

  filterProvider = [(NTKUpNextImageView *)self filterProvider];
  v12 = [filterProvider filtersForView:self style:2];

  if (v12)
  {
    layer = [(UIImageView *)self->_backgroundImageView layer];
    [layer setFilters:v12];
  }

  filterProvider2 = [(NTKUpNextImageView *)self filterProvider];
  v6 = [filterProvider2 filtersForView:self style:0];

  if (v6)
  {
    layer2 = [(UIImageView *)self->_foregroundImageView layer];
    [layer2 setFilters:v6];
  }

  filterProvider3 = [(NTKUpNextImageView *)self filterProvider];
  v9 = [filterProvider3 filtersForView:self style:1];

  if (v9)
  {
    layer3 = [(UIImageView *)self->_foregroundAccentImageView layer];
    [layer3 setFilters:v9];

    layer4 = [(UIImageView *)self->_overrideImageView layer];
    [layer4 setFilters:v9];
  }
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end