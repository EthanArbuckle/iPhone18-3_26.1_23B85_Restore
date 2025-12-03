@interface CDStackedImagesComplicationImageView
- (BOOL)_hasMultipartImages;
- (BOOL)_shouldIgnoreTwoPieceImage;
- (BOOL)hasMonochromeImage;
- (CDStackedImagesComplicationImageView)initWithFrame:(CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CLKMonochromeFilterProvider)filterProvider;
- (UIColor)overrideColor;
- (void)_enumerateImageViewsWithBlock:(id)block;
- (void)_enumerateMultipartImageViewsWithBlock:(id)block;
- (void)_loadImageViewsIfNecessary;
- (void)_updateAlpha;
- (void)_updateColors;
- (void)_updateImageSubviewsMaxSize;
- (void)_updateImages;
- (void)_updateShadow;
- (void)_updateShadowViewImages;
- (void)layoutSubviews;
- (void)setColor:(id)color;
- (void)setForegroundColor:(id)color;
- (void)setImageProvider:(id)provider;
- (void)setMulticolorAlpha:(double)alpha;
- (void)setShadowBlur:(double)blur;
- (void)setShadowColor:(id)color;
- (void)setUsesLegibility:(BOOL)legibility;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation CDStackedImagesComplicationImageView

- (CDStackedImagesComplicationImageView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = CDStackedImagesComplicationImageView;
  v3 = [(CDStackedImagesComplicationImageView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    mEMORY[0x277CBBB68] = [MEMORY[0x277CBBB68] sharedRenderingContext];
    device = [mEMORY[0x277CBBB68] device];
    device = v3->_device;
    v3->_device = device;

    v3->_shadowBlur = *MEMORY[0x277CFA728];
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:*MEMORY[0x277CFA720]];
    shadowColor = v3->_shadowColor;
    v3->_shadowColor = v7;

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    foregroundColor = v3->_foregroundColor;
    v3->_foregroundColor = whiteColor;

    [(CDStackedImagesComplicationImageView *)v3 _updateAlpha];
  }

  return v3;
}

- (void)_enumerateMultipartImageViewsWithBlock:(id)block
{
  foregroundImageView = self->_foregroundImageView;
  v5 = (block + 16);
  v6 = *(block + 2);
  blockCopy = block;
  v6();
  (*v5)(blockCopy, self->_backgroundImageView);
  (*v5)(blockCopy, self->_foregroundAccentImageView);
}

- (void)_enumerateImageViewsWithBlock:(id)block
{
  blockCopy = block;
  [(CDStackedImagesComplicationImageView *)self _enumerateMultipartImageViewsWithBlock:blockCopy];
  blockCopy[2](blockCopy, self->_monochromeImageView);
  blockCopy[2](blockCopy, self->_layerMaskImageView);
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CDStackedImagesComplicationImageView;
  [(CDStackedImagesComplicationImageView *)&v14 layoutSubviews];
  [(CDStackedImagesComplicationImageView *)self bounds];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__CDStackedImagesComplicationImageView_layoutSubviews__block_invoke;
  v13[3] = &unk_278DF3738;
  v13[5] = v3;
  v13[6] = v4;
  v13[7] = v5;
  v13[8] = v6;
  v13[4] = self;
  [(CDStackedImagesComplicationImageView *)self _enumerateImageViewsWithBlock:v13];
  if ([(CDStackedImagesComplicationImageView *)self _hasShadowViews])
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
    v9 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
    [(UIImageView *)self->_monochromeShadowView sizeThatFits:*MEMORY[0x277CBF3A8], v10];
    device = self->_device;
    CLKRectCenteredIntegralRectForDevice();
    [(UIImageView *)self->_monochromeShadowView setFrame:?];
    [(UIImageView *)self->_multipartShadowView sizeThatFits:v9, v10];
    v12 = self->_device;
    CLKRectCenteredIntegralRectForDevice();
    [(UIImageView *)self->_multipartShadowView setFrame:?];
  }
}

void __54__CDStackedImagesComplicationImageView_layoutSubviews__block_invoke(void *a1, void *a2)
{
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  v12 = a2;
  [v12 sizeThatFits:{v5, v6}];
  v7 = *(a1[4] + 408);
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  CLKRectCenteredIntegralRectForDevice();
  [v12 setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3010000000;
  v20 = &unk_243DB9E91;
  v21 = *MEMORY[0x277CBF3A8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__CDStackedImagesComplicationImageView_sizeThatFits___block_invoke;
  v15[3] = &unk_278DF3760;
  fitsCopy = fits;
  v15[4] = &v17;
  [(CDStackedImagesComplicationImageView *)self _enumerateMultipartImageViewsWithBlock:v15];
  [(CLKUIColoringImageView *)self->_monochromeImageView sizeThatFits:width, height];
  v7.f64[1] = v6;
  v18[2] = vbslq_s8(vcgtq_f64(v7, v18[2]), v7, v18[2]);
  [(_CDComplicationImageViewProviderImageView *)self->_layerMaskImageView sizeThatFits:width, height];
  v10 = v18;
  if (v18[2].f64[0] >= v8)
  {
    v11 = v18[2].f64[0];
  }

  else
  {
    v11 = v8;
  }

  if (v18[2].f64[1] >= v9)
  {
    v12 = v18[2].f64[1];
  }

  else
  {
    v12 = v9;
  }

  v18[2].f64[0] = v11;
  v10[2].f64[1] = v12;
  _Block_object_dispose(&v17, 8);
  v13 = v11;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

float64x2_t __53__CDStackedImagesComplicationImageView_sizeThatFits___block_invoke(uint64_t a1, void *a2)
{
  [a2 sizeThatFits:{*(a1 + 40), *(a1 + 48)}];
  v3 = *(*(a1 + 32) + 8);
  v5.f64[1] = v4;
  result = vbslq_s8(vcgtq_f64(v5, v3[2]), v5, v3[2]);
  v3[2] = result;
  return result;
}

- (void)_updateImageSubviewsMaxSize
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3010000000;
  v23 = &unk_243DB9E91;
  v24 = *MEMORY[0x277CBF3A8];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__CDStackedImagesComplicationImageView__updateImageSubviewsMaxSize__block_invoke;
  v19[3] = &unk_278DF3788;
  v19[4] = &v20;
  [(CDStackedImagesComplicationImageView *)self _enumerateMultipartImageViewsWithBlock:v19];
  [(CLKImageProvider *)self->_imageProvider maxSize];
  v5 = v21[4];
  v6 = 1.0;
  if (v3 > 0.0 && v5 > v3)
  {
    v6 = fmin(v3 / v5, 1.0);
  }

  v8 = v21[5];
  if (v4 > 0.0 && v8 > v4)
  {
    v10 = v4 / v8;
    if (v6 > v10)
    {
      v6 = v10;
    }
  }

  device = self->_device;
  CLKFloorForDevice();
  v13 = v12;
  v14 = v6 * v21[5];
  v15 = self->_device;
  CLKFloorForDevice();
  v17 = v16;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__CDStackedImagesComplicationImageView__updateImageSubviewsMaxSize__block_invoke_2;
  v18[3] = &__block_descriptor_48_e21_v16__0__UIImageView_8l;
  *&v18[4] = v13;
  *&v18[5] = v16;
  [(CDStackedImagesComplicationImageView *)self _enumerateMultipartImageViewsWithBlock:v18];
  [(CLKUIColoringImageView *)self->_monochromeImageView setMaxSize:v13, v17];
  [(_CDComplicationImageViewProviderImageView *)self->_layerMaskImageView setMaxSize:v13, v17];
  _Block_object_dispose(&v20, 8);
}

float64x2_t __67__CDStackedImagesComplicationImageView__updateImageSubviewsMaxSize__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 image];
  [v4 size];
  v10 = v6;
  v11 = v5;

  [v3 sizeToFit];
  v7 = *(*(a1 + 32) + 8);
  v8.f64[0] = v11;
  v8.f64[1] = v10;
  result = vbslq_s8(vcgtq_f64(v8, v7[2]), v8, v7[2]);
  v7[2] = result;
  return result;
}

void __67__CDStackedImagesComplicationImageView__updateImageSubviewsMaxSize__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setMaxSize:{*(a1 + 32), *(a1 + 40)}];
  }
}

- (void)_updateColors
{
  if ([(CDStackedImagesComplicationImageView *)self _hasMultipartImages]|| self->_multicolorAlpha != 1.0)
  {
    v14 = self->_color;
  }

  else
  {
    tintColor = [(CLKImageProvider *)self->_imageProvider tintColor];
    color = tintColor;
    if (!tintColor)
    {
      color = self->_color;
    }

    v14 = color;
  }

  v5 = self->_foregroundColor;
  imageProvider = self->_imageProvider;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    secondaryTintColor = [(CLKImageProvider *)self->_imageProvider secondaryTintColor];
    v8 = secondaryTintColor;
    if (secondaryTintColor)
    {
      v9 = secondaryTintColor;
    }

    else
    {
      v9 = v5;
    }

    v10 = v9;

    v5 = v10;
  }

  [(CLKUIColoringImageView *)self->_foregroundImageView setColor:v5];
  backgroundImageView = self->_backgroundImageView;
  tintColor2 = [(CLKImageProvider *)self->_imageProvider tintColor];
  v13 = tintColor2;
  if (!tintColor2)
  {
    v13 = self->_color;
  }

  [(CLKUIColoringImageView *)backgroundImageView setColor:v13];

  [(CLKUIColoringImageView *)self->_monochromeImageView setColor:v14];
}

- (void)_updateShadowViewImages
{
  self->_isShadowImagesStale = 0;
  imageProvider = self->_imageProvider;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x277CCAE60];
    [(CLKUIColoringImageView *)self->_monochromeImageView sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    v5 = [v4 valueWithCGSize:?];
    monochromeImageView = self->_monochromeImageView;
    shadowColor = self->_shadowColor;
    shadowBlur = self->_shadowBlur;
    v17 = v5;
    image = CLKUIShadowImageFromView();
    [(UIImageView *)self->_monochromeShadowView setImage:image];
  }

  else
  {
    image = [(CLKUIColoringImageView *)self->_monochromeImageView image];
    v10 = self->_shadowColor;
    v11 = self->_shadowBlur;
    v12 = CLKUIShadowImage();
    [(UIImageView *)self->_monochromeShadowView setImage:v12];

    v17 = 0;
  }

  multipartShadowViewSource = self->_multipartShadowViewSource;
  v14 = self->_shadowColor;
  v15 = self->_shadowBlur;
  v16 = CLKUIShadowImage();
  [(UIImageView *)self->_multipartShadowView setImage:v16];
}

- (void)_updateImages
{
  imageProvider = self->_imageProvider;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CLKUIColoringImageView *)self->_monochromeImageView setImageProvider:self->_imageProvider];
    [(CLKUIColoringImageView *)self->_foregroundImageView setImageProvider:self->_imageProvider];
    [(CLKUIColoringImageView *)self->_backgroundImageView setImageProvider:self->_imageProvider];
  }

  else
  {
    if (![(CDStackedImagesComplicationImageView *)self _shouldIgnoreTwoPieceImage])
    {
      foregroundImageView = self->_foregroundImageView;
      twoPieceImageForeground = [(CLKImageProvider *)self->_imageProvider twoPieceImageForeground];
      [(CLKUIColoringImageView *)foregroundImageView setImage:twoPieceImageForeground];

      backgroundImageView = self->_backgroundImageView;
      twoPieceImageBackground = [(CLKImageProvider *)self->_imageProvider twoPieceImageBackground];
      [(CLKUIColoringImageView *)backgroundImageView setImage:twoPieceImageBackground];
    }

    monochromeImageView = self->_monochromeImageView;
    onePieceImage = [(CLKImageProvider *)self->_imageProvider onePieceImage];
    [(CLKUIColoringImageView *)monochromeImageView setImage:onePieceImage];

    foregroundAccentImageView = self->_foregroundAccentImageView;
    foregroundAccentImage = [(CLKImageProvider *)self->_imageProvider foregroundAccentImage];
    [(UIImageView *)foregroundAccentImageView setImage:foregroundAccentImage];

    layerMaskImageView = self->_layerMaskImageView;
    onePieceImage2 = [(CLKImageProvider *)self->_imageProvider onePieceImage];
    [(_CDComplicationImageViewProviderImageView *)layerMaskImageView setImage:onePieceImage2];
  }

  if ([(CDStackedImagesComplicationImageView *)self _hasShadowViews])
  {
    if ([(CDStackedImagesComplicationImageView *)self _hasMultipartImages])
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x4010000000;
      v26 = &unk_243DB9E91;
      v14 = *(MEMORY[0x277CBF3A0] + 16);
      v27 = *MEMORY[0x277CBF3A0];
      v28 = v14;
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __53__CDStackedImagesComplicationImageView__updateImages__block_invoke;
      v18[3] = &unk_278DF37D0;
      v18[4] = &v19;
      v18[5] = &v23;
      [(CDStackedImagesComplicationImageView *)self _enumerateMultipartImageViewsWithBlock:v18];
      if (CGRectIsEmpty(v24[1]))
      {
        v15 = 0;
      }

      else
      {
        UIGraphicsBeginImageContextWithOptions(v24[1].size, 0, v20[3]);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __53__CDStackedImagesComplicationImageView__updateImages__block_invoke_2;
        v17[3] = &unk_278DF37D0;
        v17[4] = &v23;
        v17[5] = &v19;
        [(CDStackedImagesComplicationImageView *)self _enumerateMultipartImageViewsWithBlock:v17];
        v15 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
      }

      _Block_object_dispose(&v19, 8);
      _Block_object_dispose(&v23, 8);
    }

    else
    {
      v15 = 0;
    }

    multipartShadowViewSource = self->_multipartShadowViewSource;
    self->_multipartShadowViewSource = v15;

    if (self->_isUsingLegibility)
    {
      [(CDStackedImagesComplicationImageView *)self _updateShadowViewImages];
    }

    else
    {
      self->_isShadowImagesStale = 1;
    }

    [(CDStackedImagesComplicationImageView *)self setNeedsLayout];
  }
}

void __53__CDStackedImagesComplicationImageView__updateImages__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  v5 = [v4 image];
  [v5 scale];
  v7 = v6;

  if (v3 >= v7)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  *(*(*(a1 + 32) + 8) + 24) = v8;
  v9 = *(*(*(a1 + 40) + 8) + 48);
  v10 = [v4 image];
  [v10 size];
  v12 = v11;

  if (v9 < v12)
  {
    v9 = v12;
  }

  v13 = *(*(*(a1 + 40) + 8) + 56);
  v14 = [v4 image];

  [v14 size];
  v16 = v15;

  if (v13 >= v16)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(*(a1 + 40) + 8);
  *(v18 + 32) = *MEMORY[0x277CBF348];
  *(v18 + 48) = v9;
  *(v18 + 56) = v17;
}

void __53__CDStackedImagesComplicationImageView__updateImages__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = [a2 image];
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  [v11 size];
  v5 = *(*(a1 + 32) + 8);
  v6 = v5[4];
  v7 = v5[5];
  v8 = v5[6];
  v9 = v5[7];
  v10 = *(*(*(a1 + 40) + 8) + 24);
  UIRectCenteredIntegralRectScale();
  [v11 drawInRect:v10];
}

- (void)_updateAlpha
{
  v3 = 0.0;
  if ([(CDStackedImagesComplicationImageView *)self _hasMultipartImages])
  {
    [(CDStackedImagesComplicationImageView *)self multicolorAlpha];
    v3 = v4;
  }

  [(CLKUIColoringImageView *)self->_monochromeImageView setAlpha:1.0 - v3];
  [(UIImageView *)self->_monochromeShadowView setAlpha:1.0 - v3];
  [(UIImageView *)self->_multipartShadowView setAlpha:v3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__CDStackedImagesComplicationImageView__updateAlpha__block_invoke;
  v5[3] = &__block_descriptor_40_e21_v16__0__UIImageView_8l;
  *&v5[4] = v3;
  [(CDStackedImagesComplicationImageView *)self _enumerateMultipartImageViewsWithBlock:v5];
}

- (void)_updateShadow
{
  if (self->_isUsingLegibility)
  {
    if ([(CDStackedImagesComplicationImageView *)self _hasShadowViews])
    {
      [(UIImageView *)self->_multipartShadowView setHidden:0];
      [(UIImageView *)self->_monochromeShadowView setHidden:0];
    }

    else
    {
      v4 = objc_opt_new();
      multipartShadowView = self->_multipartShadowView;
      self->_multipartShadowView = v4;

      v6 = objc_opt_new();
      monochromeShadowView = self->_monochromeShadowView;
      self->_monochromeShadowView = v6;

      [(CDStackedImagesComplicationImageView *)self addSubview:self->_multipartShadowView];
      [(CDStackedImagesComplicationImageView *)self addSubview:self->_monochromeShadowView];
      [(CDStackedImagesComplicationImageView *)self sendSubviewToBack:self->_multipartShadowView];
      [(CDStackedImagesComplicationImageView *)self sendSubviewToBack:self->_monochromeShadowView];
      [(CDStackedImagesComplicationImageView *)self _updateImages];
      [(CDStackedImagesComplicationImageView *)self _updateShadowViewImages];
    }

    [(CDStackedImagesComplicationImageView *)self setClipsToBounds:0];
  }

  else
  {
    [(UIImageView *)self->_multipartShadowView setHidden:1];
    v3 = self->_monochromeShadowView;

    [(UIImageView *)v3 setHidden:1];
  }
}

- (BOOL)_hasMultipartImages
{
  _shouldIgnoreTwoPieceImage = [(CDStackedImagesComplicationImageView *)self _shouldIgnoreTwoPieceImage];
  imageProvider = self->_imageProvider;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isTwoPiece = [(CLKImageProvider *)self->_imageProvider isTwoPiece];
  }

  else
  {
    isTwoPiece = 0;
  }

  twoPieceImageBackground = [(CLKImageProvider *)self->_imageProvider twoPieceImageBackground];
  if (twoPieceImageBackground)
  {
    twoPieceImageForeground = [(CLKImageProvider *)self->_imageProvider twoPieceImageForeground];
    v8 = twoPieceImageForeground != 0;

    isTwoPiece |= v8;
  }

  if (!_shouldIgnoreTwoPieceImage && (isTwoPiece & 1) != 0)
  {
    return 1;
  }

  foregroundAccentImage = [(CLKImageProvider *)self->_imageProvider foregroundAccentImage];
  v9 = foregroundAccentImage != 0;

  return v9;
}

- (void)_loadImageViewsIfNecessary
{
  imageProvider = self->_imageProvider;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    isTwoPiece = [(CLKImageProvider *)self->_imageProvider isTwoPiece];
  }

  else
  {
    isTwoPiece = 0;
  }

  twoPieceImageBackground = [(CLKImageProvider *)self->_imageProvider twoPieceImageBackground];

  twoPieceImageForeground = [(CLKImageProvider *)self->_imageProvider twoPieceImageForeground];
  v8 = (twoPieceImageForeground != 0) | isTwoPiece;

  onePieceImage = [(CLKImageProvider *)self->_imageProvider onePieceImage];
  v10 = onePieceImage != 0;

  backgroundImageView = self->_backgroundImageView;
  if (twoPieceImageBackground)
  {
    v12 = 0;
  }

  else
  {
    v12 = isTwoPiece == 0;
  }

  if (v12)
  {
    v15 = 1;
  }

  else
  {
    if (!backgroundImageView)
    {
      v13 = objc_opt_new();
      v14 = self->_backgroundImageView;
      self->_backgroundImageView = v13;

      [(CDStackedImagesComplicationImageView *)self addSubview:self->_backgroundImageView];
      backgroundImageView = self->_backgroundImageView;
    }

    v15 = 0;
  }

  [(CLKUIColoringImageView *)backgroundImageView setHidden:v15];
  v16 = isKindOfClass | v10;
  foregroundImageView = self->_foregroundImageView;
  if (v8)
  {
    if (!foregroundImageView)
    {
      v18 = objc_opt_new();
      v19 = self->_foregroundImageView;
      self->_foregroundImageView = v18;

      [(CDStackedImagesComplicationImageView *)self addSubview:self->_foregroundImageView];
      foregroundImageView = self->_foregroundImageView;
    }

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  [(CLKUIColoringImageView *)foregroundImageView setHidden:v20];
  if ((v16 & 1) == 0)
  {
    goto LABEL_21;
  }

  if ([(CLKImageProvider *)self->_imageProvider useOnePieceAsLayerMask])
  {
    if (!self->_layerMaskImageView)
    {
      v21 = objc_opt_new();
      layerMaskImageView = self->_layerMaskImageView;
      self->_layerMaskImageView = v21;

      [(CDStackedImagesComplicationImageView *)self addSubview:self->_layerMaskImageView];
    }

LABEL_21:
    monochromeImageView = self->_monochromeImageView;
    v24 = 1;
    goto LABEL_25;
  }

  monochromeImageView = self->_monochromeImageView;
  if (!monochromeImageView)
  {
    v25 = objc_opt_new();
    v26 = self->_monochromeImageView;
    self->_monochromeImageView = v25;

    [(CDStackedImagesComplicationImageView *)self addSubview:self->_monochromeImageView];
    monochromeImageView = self->_monochromeImageView;
  }

  v24 = 0;
LABEL_25:
  [(CLKUIColoringImageView *)monochromeImageView setHidden:v24];
  foregroundAccentImage = [(CLKImageProvider *)self->_imageProvider foregroundAccentImage];

  foregroundAccentImageView = self->_foregroundAccentImageView;
  if (foregroundAccentImage)
  {
    if (!foregroundAccentImageView)
    {
      v29 = objc_opt_new();
      v30 = self->_foregroundAccentImageView;
      self->_foregroundAccentImageView = v29;

      [(CDStackedImagesComplicationImageView *)self addSubview:self->_foregroundAccentImageView];
    }
  }

  else
  {
    [(UIImageView *)foregroundAccentImageView removeFromSuperview];
    v31 = self->_foregroundAccentImageView;
    self->_foregroundAccentImageView = 0;
  }

  [(CLKUIColoringImageView *)self->_backgroundImageView setSymbolImageType:3];
  v32 = self->_foregroundImageView;

  [(CLKUIColoringImageView *)v32 setSymbolImageType:2];
}

- (BOOL)_shouldIgnoreTwoPieceImage
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_filterProvider);
  v6 = [v5 viewShouldIgnoreTwoPieceImage:self];

  return v6;
}

- (BOOL)hasMonochromeImage
{
  image = [(CLKUIColoringImageView *)self->_monochromeImageView image];
  v3 = image != 0;

  return v3;
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if (self->_color != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_color, color);
    [(CDStackedImagesComplicationImageView *)self _updateColors];
    colorCopy = v6;
  }
}

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  if (self->_foregroundColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_foregroundColor, color);
    [(CDStackedImagesComplicationImageView *)self _updateColors];
    colorCopy = v6;
  }
}

- (void)setImageProvider:(id)provider
{
  providerCopy = provider;
  if (self->_imageProvider != providerCopy)
  {
    v9 = providerCopy;
    objc_storeStrong(&self->_imageProvider, provider);
    [(CDStackedImagesComplicationImageView *)self _enumerateImageViewsWithBlock:&__block_literal_global_3];
    [(CDStackedImagesComplicationImageView *)self _loadImageViewsIfNecessary];
    [(CDStackedImagesComplicationImageView *)self _updateAlpha];
    [(CDStackedImagesComplicationImageView *)self _updateImages];
    [(CDStackedImagesComplicationImageView *)self _updateColors];
    [(CDStackedImagesComplicationImageView *)self _updateShadow];
    if ([(CLKImageProvider *)v9 isForegroundAccentImageTinted])
    {
      layer = [(CLKUIColoringImageView *)self->_foregroundImageView layer];
      filters = [layer filters];
      layer2 = [(UIImageView *)self->_foregroundAccentImageView layer];
      [layer2 setFilters:filters];
    }

    else
    {
      layer = [(UIImageView *)self->_foregroundAccentImageView layer];
      [layer setFilters:0];
    }

    if (self->_isUsingLegibility)
    {
      [(CDStackedImagesComplicationImageView *)self _updateShadowViewImages];
    }

    else
    {
      self->_isShadowImagesStale = 1;
    }

    [(CDStackedImagesComplicationImageView *)self _updateImageSubviewsMaxSize];
    [(CDStackedImagesComplicationImageView *)self sizeToFit];
    providerCopy = v9;
  }
}

void __57__CDStackedImagesComplicationImageView_setImageProvider___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 setMaxSize:{1.79769313e308, 1.79769313e308}];
  }
}

- (void)setMulticolorAlpha:(double)alpha
{
  if (self->_multicolorAlpha != alpha)
  {
    self->_multicolorAlpha = alpha;
    [(CDStackedImagesComplicationImageView *)self _updateAlpha];

    [(CDStackedImagesComplicationImageView *)self _updateColors];
  }
}

- (UIColor)overrideColor
{
  overrideColor = self->_overrideColor;
  if (overrideColor)
  {
    tintColor = overrideColor;
  }

  else
  {
    tintColor = [(CLKImageProvider *)self->_imageProvider tintColor];
  }

  return tintColor;
}

- (void)setUsesLegibility:(BOOL)legibility
{
  if (self->_isUsingLegibility != legibility)
  {
    self->_isUsingLegibility = legibility;
    [(CDStackedImagesComplicationImageView *)self _updateShadow];
    if (self->_isShadowImagesStale)
    {

      [(CDStackedImagesComplicationImageView *)self _updateShadowViewImages];
    }
  }
}

- (void)setShadowBlur:(double)blur
{
  shadowBlur = self->_shadowBlur;
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_shadowBlur = blur;
    if (self->_isUsingLegibility)
    {

      [(CDStackedImagesComplicationImageView *)self _updateShadowViewImages];
    }

    else
    {
      self->_isShadowImagesStale = 1;
    }
  }
}

- (void)setShadowColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_shadowColor] & 1) == 0)
  {
    objc_storeStrong(&self->_shadowColor, color);
    if (self->_isUsingLegibility)
    {
      [(CDStackedImagesComplicationImageView *)self _updateShadowViewImages];
    }

    else
    {
      self->_isShadowImagesStale = 1;
    }
  }
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v26[1] = *MEMORY[0x277D85DE8];
  imageProvider = self->_imageProvider;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);
  v8 = [WeakRetained filtersForView:self style:-[CDStackedImagesComplicationImageView _backgroundFilterStyle](self fraction:{"_backgroundFilterStyle"), fraction}];

  if (v8)
  {
    layer = [(CLKUIColoringImageView *)self->_backgroundImageView layer];
    [layer setFilters:v8];

    layer2 = [(CLKUIColoringImageView *)self->_monochromeImageView layer];
    [layer2 setFilters:v8];

    if (isKindOfClass)
    {
      layer3 = [(CLKUIColoringImageView *)self->_foregroundImageView layer];
      [layer3 setFilters:v8];
    }

    if ([(CLKImageProvider *)self->_imageProvider useOnePieceAsLayerMask])
    {
      v12 = objc_loadWeakRetained(&self->_filterProvider);
      v13 = [v12 colorForView:self accented:0];

      v14 = objc_loadWeakRetained(&self->_filterProvider);
      v15 = [v14 colorForView:self accented:1];

      v16 = _CDLayerMaskColorizationFilter(v13, v15);
      v26[0] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
      layer4 = [(_CDComplicationImageViewProviderImageView *)self->_layerMaskImageView layer];
      [layer4 setFilters:v17];
    }
  }

  if ((isKindOfClass & 1) == 0)
  {
    v19 = objc_loadWeakRetained(&self->_filterProvider);
    v20 = [v19 filtersForView:self style:-[CDStackedImagesComplicationImageView _foregroundFilterStyle](self fraction:{"_foregroundFilterStyle"), fraction}];

    if (v20)
    {
      layer5 = [(CLKUIColoringImageView *)self->_foregroundImageView layer];
      [layer5 setFilters:v20];

      LODWORD(layer5) = [(CLKImageProvider *)self->_imageProvider isForegroundAccentImageTinted];
      layer6 = [(UIImageView *)self->_foregroundAccentImageView layer];
      v23 = layer6;
      if (layer5)
      {
        v24 = v20;
      }

      else
      {
        v24 = 0;
      }

      [layer6 setFilters:v24];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)updateMonochromeColor
{
  v24[1] = *MEMORY[0x277D85DE8];
  imageProvider = self->_imageProvider;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);
  v6 = [WeakRetained filtersForView:self style:{-[CDStackedImagesComplicationImageView _backgroundFilterStyle](self, "_backgroundFilterStyle")}];

  if (v6)
  {
    layer = [(CLKUIColoringImageView *)self->_backgroundImageView layer];
    [layer setFilters:v6];

    layer2 = [(CLKUIColoringImageView *)self->_monochromeImageView layer];
    [layer2 setFilters:v6];

    if (isKindOfClass)
    {
      layer3 = [(CLKUIColoringImageView *)self->_foregroundImageView layer];
      [layer3 setFilters:v6];
    }

    if ([(CLKImageProvider *)self->_imageProvider useOnePieceAsLayerMask])
    {
      v10 = objc_loadWeakRetained(&self->_filterProvider);
      v11 = [v10 colorForView:self accented:0];

      v12 = objc_loadWeakRetained(&self->_filterProvider);
      v13 = [v12 colorForView:self accented:1];

      v14 = _CDLayerMaskColorizationFilter(v11, v13);
      v24[0] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      layer4 = [(_CDComplicationImageViewProviderImageView *)self->_layerMaskImageView layer];
      [layer4 setFilters:v15];
    }
  }

  if ((isKindOfClass & 1) == 0)
  {
    v17 = objc_loadWeakRetained(&self->_filterProvider);
    v18 = [v17 filtersForView:self style:{-[CDStackedImagesComplicationImageView _foregroundFilterStyle](self, "_foregroundFilterStyle")}];

    if (v18)
    {
      layer5 = [(CLKUIColoringImageView *)self->_foregroundImageView layer];
      [layer5 setFilters:v18];

      LODWORD(layer5) = [(CLKImageProvider *)self->_imageProvider isForegroundAccentImageTinted];
      layer6 = [(UIImageView *)self->_foregroundAccentImageView layer];
      v21 = layer6;
      if (layer5)
      {
        v22 = v18;
      }

      else
      {
        v22 = 0;
      }

      [layer6 setFilters:v22];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end