@interface NTKUpNextImageView
- (BOOL)_hasMultipartImages;
- (CGRect)contentsLayerBoundsForLayout:(id)a3;
- (CGSize)intrinsicContentSize;
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKUpNextImageView)initWithFrame:(CGRect)a3 parentCell:(id)a4;
- (void)_updateColors;
- (void)layoutSubviews;
- (void)setCompositingFilter:(id)a3;
- (void)setContentMode:(int64_t)a3;
- (void)setFullColorImage:(id)a3 tintableImageProvider:(id)a4;
- (void)setImageProvider:(id)a3;
- (void)setOverrideImage:(id)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKUpNextImageView

- (NTKUpNextImageView)initWithFrame:(CGRect)a3 parentCell:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v30.receiver = self;
  v30.super_class = NTKUpNextImageView;
  v10 = [(NTKUpNextImageView *)&v30 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_parentCell, v9);
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

    v27 = [(NTKUpNextImageView *)v11 layer];
    [v27 insertSublayer:v11->_foregroundAccentBackdrop atIndex:0];

    [v9 addContentsLayerProvider:v11];
    v28 = [(NTKUpNextImageView *)v11 layer];
    [v28 setAllowsGroupBlending:0];
  }

  return v11;
}

- (void)setCompositingFilter:(id)a3
{
  v11 = a3;
  objc_storeStrong(&self->_compositingFilter, a3);
  [(CALayer *)self->_foregroundAccentBackdrop setHidden:self->_compositingFilter == 0];
  v5 = [(UIImageView *)self->_foregroundAccentImageView layer];
  v6 = v5;
  if (v11)
  {
    v7 = [MEMORY[0x277CD9EA0] filterWithType:v11];
    [v6 setCompositingFilter:v7];
  }

  else
  {
    [v5 setCompositingFilter:0];
  }

  v8 = [(UIImageView *)self->_backgroundImageView layer];
  v9 = v8;
  if (v11)
  {
    v10 = [MEMORY[0x277CD9EA0] filterWithType:v11];
    [v9 setCompositingFilter:v10];
  }

  else
  {
    [v8 setCompositingFilter:0];
  }
}

- (CGRect)contentsLayerBoundsForLayout:(id)a3
{
  [a3 unitFrameOnScreen];
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
      v9 = [(UIImageView *)self->_backgroundImageView image];
      v8[2](v8, v9);

      v10 = [(UIImageView *)self->_foregroundImageView image];
      v8[2](v8, v10);

      v11 = [(UIImageView *)self->_foregroundAccentImageView image];
      v8[2](v8, v11);
    }

    else
    {
      if (![(NTKUpNextImageView *)self _hasMultipartImages])
      {
        v14 = [(CLKImageProvider *)self->_imageProvider onePieceImage];
        [v14 size];
        v5 = v15;
        v7 = v16;

        goto LABEL_11;
      }

      v12 = [(CLKImageProvider *)self->_imageProvider twoPieceImageBackground];
      v8[2](v8, v12);

      v13 = [(CLKImageProvider *)self->_imageProvider twoPieceImageForeground];
      v8[2](v8, v13);

      v11 = [(CLKImageProvider *)self->_imageProvider foregroundAccentImage];
      v8[2](v8, v11);
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
    v6 = [(CLKImageProvider *)imageProvider twoPieceImageBackground];
    if (v6 && ([(CLKImageProvider *)self->_imageProvider twoPieceImageForeground], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = 1;
    }

    else
    {
      v9 = [(CLKImageProvider *)self->_imageProvider foregroundAccentImage];
      v8 = v9 != 0;

      if (!v6)
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

- (void)setFullColorImage:(id)a3 tintableImageProvider:(id)a4
{
  v6 = a3;
  [(NTKUpNextImageView *)self setImageProvider:a4];
  [(NTKUpNextImageView *)self setOverrideImage:v6];

  [(NTKUpNextImageView *)self invalidateIntrinsicContentSize];
}

- (void)setImageProvider:(id)a3
{
  v42 = a3;
  v5 = [(UIImageView *)self->_backgroundImageView layer];
  [v5 setFilters:0];

  v6 = [(UIImageView *)self->_foregroundImageView layer];
  [v6 setFilters:0];

  v7 = [(UIImageView *)self->_foregroundAccentImageView layer];
  [v7 setFilters:0];

  v8 = [(UIImageView *)self->_overrideImageView layer];
  [v8 setFilters:0];

  v9 = v42;
  if (self->_imageProvider != v42)
  {
    objc_storeStrong(&self->_imageProvider, a3);
    v9 = v42;
    if (v42)
    {
      [(UIImageView *)self->_overrideImageView setHidden:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v42;
        v11 = [(CLKImageProvider *)self->_imageProvider tintColor];
        fallbackTintColor = v11;
        if (v11 || (fallbackTintColor = self->_fallbackTintColor) != 0)
        {
          v13 = fallbackTintColor;
        }

        else
        {
          v13 = [MEMORY[0x277D75348] whiteColor];
        }

        v14 = v13;

        if ([(CLKImageProvider *)v10 isTwoPiece])
        {
          v15 = [(CLKImageProvider *)v10 createSymbolImageForType:3 color:v14];
          v16 = [MEMORY[0x277D75348] whiteColor];
          v17 = [(CLKImageProvider *)v10 createSymbolImageForType:2 color:v16];

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
          v32 = [(CLKImageProvider *)v10 createSymbolImage];
          [(UIImageView *)v31 setImage:v32];

          [(UIImageView *)self->_foregroundImageView setImage:0];
        }

        WeakRetained = objc_loadWeakRetained(&self->_parentCell);
        v34 = [WeakRetained device];
        [v34 screenScale];
        v36 = v35;
        v37 = [(NTKUpNextImageView *)self layer];
        [v37 setRasterizationScale:v36];

        v38 = [(NTKUpNextImageView *)self layer];
        [v38 setShouldRasterize:1];
      }

      else
      {
        v20 = [(NTKUpNextImageView *)self _hasMultipartImages];
        [(UIImageView *)self->_backgroundImageView setHidden:0];
        foregroundImageView = self->_foregroundImageView;
        if (v20)
        {
          [(UIImageView *)foregroundImageView setHidden:0];
          [(UIImageView *)self->_foregroundAccentImageView setHidden:0];
          v22 = self->_foregroundImageView;
          v23 = [(CLKImageProvider *)self->_imageProvider twoPieceImageForeground];
          v24 = [v23 imageWithRenderingMode:2];
          [(UIImageView *)v22 setImage:v24];

          v25 = self->_backgroundImageView;
          v26 = [(CLKImageProvider *)self->_imageProvider twoPieceImageBackground];
          v27 = [v26 imageWithRenderingMode:2];
          [(UIImageView *)v25 setImage:v27];

          foregroundAccentImageView = self->_foregroundAccentImageView;
          v29 = [(CLKImageProvider *)self->_imageProvider foregroundAccentImage];
          v30 = [v29 imageWithRenderingMode:1];
          [(UIImageView *)foregroundAccentImageView setImage:v30];
        }

        else
        {
          [(UIImageView *)foregroundImageView setHidden:1];
          [(UIImageView *)self->_foregroundAccentImageView setHidden:1];
          v39 = self->_backgroundImageView;
          v40 = [(CLKImageProvider *)self->_imageProvider onePieceImage];
          v41 = [v40 imageWithRenderingMode:2];
          [(UIImageView *)v39 setImage:v41];

          [(UIImageView *)self->_foregroundImageView setImage:0];
        }

        v10 = [(NTKUpNextImageView *)self layer];
        [(CLKImageProvider *)v10 setShouldRasterize:0];
      }

      [(NTKUpNextImageView *)self _updateColors];
      v9 = v42;
    }
  }
}

- (void)setOverrideImage:(id)a3
{
  v5 = a3;
  if (self->_overrideImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_overrideImage, a3);
    v5 = v6;
    if (v6)
    {
      [(UIImageView *)self->_foregroundImageView setHidden:1];
      [(UIImageView *)self->_backgroundImageView setHidden:1];
      [(UIImageView *)self->_foregroundAccentImageView setHidden:1];
      [(UIImageView *)self->_overrideImageView setHidden:0];
      [(UIImageView *)self->_overrideImageView setImage:self->_overrideImage];
      v5 = v6;
    }
  }
}

- (void)_updateColors
{
  v3 = [(CLKImageProvider *)self->_imageProvider tintColor];
  fallbackTintColor = v3;
  if (v3 || (fallbackTintColor = self->_fallbackTintColor) != 0)
  {
    v5 = fallbackTintColor;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] whiteColor];
  }

  v9 = v5;

  if ([(NTKUpNextImageView *)self _hasMultipartImages]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    foregroundImageView = self->_foregroundImageView;
    v7 = [MEMORY[0x277D75348] whiteColor];
    [(UIImageView *)foregroundImageView setTintColor:v7];

    v8 = &OBJC_IVAR___NTKUpNextImageView__backgroundImageView;
  }

  else
  {
    v8 = &OBJC_IVAR___NTKUpNextImageView__foregroundImageView;
  }

  [*(&self->super.super.super.isa + *v8) setTintColor:v9];
}

- (void)setContentMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = NTKUpNextImageView;
  [(NTKUpNextImageView *)&v5 setContentMode:?];
  [(UIImageView *)self->_foregroundImageView setContentMode:a3];
  [(UIImageView *)self->_backgroundImageView setContentMode:a3];
  [(UIImageView *)self->_foregroundAccentImageView setContentMode:a3];
  [(UIImageView *)self->_overrideImageView setContentMode:a3];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  if (self->_overrideImage && self->_imageProvider)
  {
    [(NTKUpNextImageView *)self updateMonochromeColor];
    [(UIImageView *)self->_overrideImageView setHidden:0];
    v5 = [(UIImageView *)self->_overrideImageView layer];
    [v5 setFilters:0];

    overrideImageView = self->_overrideImageView;

    [(UIImageView *)overrideImageView setAlpha:1.0 - a3];
  }

  else
  {
    v7 = [(NTKUpNextImageView *)self filterProvider];
    v16 = [v7 filtersForView:self style:2 fraction:a3];

    if (v16)
    {
      v8 = [(UIImageView *)self->_backgroundImageView layer];
      [v8 setFilters:v16];
    }

    v9 = [(NTKUpNextImageView *)self filterProvider];
    v10 = [v9 filtersForView:self style:0 fraction:a3];

    if (v10)
    {
      v11 = [(UIImageView *)self->_foregroundImageView layer];
      [v11 setFilters:v10];
    }

    v12 = [(NTKUpNextImageView *)self filterProvider];
    v13 = [v12 filtersForView:self style:1 fraction:a3];

    if (v13)
    {
      v14 = [(UIImageView *)self->_foregroundAccentImageView layer];
      [v14 setFilters:v13];

      v15 = [(UIImageView *)self->_overrideImageView layer];
      [v15 setFilters:v13];
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

  v3 = [(NTKUpNextImageView *)self filterProvider];
  v12 = [v3 filtersForView:self style:2];

  if (v12)
  {
    v4 = [(UIImageView *)self->_backgroundImageView layer];
    [v4 setFilters:v12];
  }

  v5 = [(NTKUpNextImageView *)self filterProvider];
  v6 = [v5 filtersForView:self style:0];

  if (v6)
  {
    v7 = [(UIImageView *)self->_foregroundImageView layer];
    [v7 setFilters:v6];
  }

  v8 = [(NTKUpNextImageView *)self filterProvider];
  v9 = [v8 filtersForView:self style:1];

  if (v9)
  {
    v10 = [(UIImageView *)self->_foregroundAccentImageView layer];
    [v10 setFilters:v9];

    v11 = [(UIImageView *)self->_overrideImageView layer];
    [v11 setFilters:v9];
  }
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end