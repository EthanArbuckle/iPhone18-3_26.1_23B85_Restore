@interface NTKUpNextBaseCell
+ (CGSize)suggestedBodyImageSizeForDevice:(id)a3;
+ (CGSize)suggestedHeaderImageSizeForDevice:(id)a3;
+ (Class)suggestedCellClassForContent:(id)a3;
+ (void)clearLabel:(id)a3;
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKUpNextBaseCell)initWithFrame:(CGRect)a3;
- (void)_updateColorOverlay;
- (void)applyLayoutAttributes:(id)a3;
- (void)configureWithContent:(id)a3;
- (void)enumerateContentsLayersWithBlock:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContentBrightness:(double)a3 animated:(BOOL)a4;
- (void)setContentImage:(id)a3 animated:(BOOL)a4;
- (void)setHighlighted:(BOOL)a3;
- (void)setImageColor:(id)a3;
- (void)setOverrideContentImage:(id)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKUpNextBaseCell

+ (void)clearLabel:(id)a3
{
  v3 = a3;
  [v3 setTextProvider:0];
  [v3 setText:0];
}

+ (CGSize)suggestedHeaderImageSizeForDevice:(id)a3
{
  v3 = [a3 sizeClass];
  if (v3 > 1)
  {
    if (v3 != 2 && v3 != 4)
    {
LABEL_8:
      v4 = 19.0;
      goto LABEL_10;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = 14.5;
      goto LABEL_10;
    }

    if (v3 != 1)
    {
      goto LABEL_8;
    }
  }

  v4 = 17.0;
LABEL_10:
  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)suggestedBodyImageSizeForDevice:(id)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (NTKUpNextBaseCell)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = NTKUpNextBaseCell;
  v3 = [(NTKUpNextBaseCell *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
    v5 = [v4 device];
    device = v3->_device;
    v3->_device = v5;

    ___LayoutConstants_block_invoke_69(v7, v3->_device);
    NTKImageNamed(@"platter_shadow");
  }

  return 0;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(NTKUpNextBaseCell *)self isHighlighted];
  v7.receiver = self;
  v7.super_class = NTKUpNextBaseCell;
  [(NTKUpNextBaseCell *)&v7 setHighlighted:v3];
  if (v5 != v3)
  {
    if (v3)
    {
      [(NTKUpNextBaseCell *)self _updateColorOverlay];
    }

    else
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __36__NTKUpNextBaseCell_setHighlighted___block_invoke;
      v6[3] = &unk_27877DB10;
      v6[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0.25];
    }
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = NTKUpNextBaseCell;
  [(NTKUpNextBaseCell *)&v4 prepareForReuse];
  v3 = [MEMORY[0x277D75348] whiteColor];
  [(NTKUpNextBaseCell *)self setImageColor:v3];

  [(NTKUpNextBaseCell *)self setPaused:0];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = NTKUpNextBaseCell;
  [(NTKUpNextBaseCell *)&v13 layoutSubviews];
  [(NTKUpNextBaseCell *)self bounds];
  x = v14.origin.x;
  width = v14.size.width;
  height = self->_shadowSize.height;
  MaxY = CGRectGetMaxY(v14);
  v8 = ___LayoutConstants_block_invoke_69(v7, self->_device);
  v10 = MaxY - v9;
  overlayView = self->_overlayView;
  [(NTKUpNextBaseCell *)self bounds];
  [(UIView *)overlayView setFrame:?];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  imageLayer = self->_imageLayer;
  [(NTKUpNextBaseCell *)self bounds];
  [(CALayer *)imageLayer setFrame:?];
  [(UIImageView *)self->_shadowView setFrame:x, v10, width, height];
  [MEMORY[0x277CD9FF0] commit];
}

- (void)setImageColor:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x277D75348] whiteColor];
  }

  if ((NTKEqualObjects(v4, self->_imageColor) & 1) == 0)
  {
    v5 = [v4 copy];
    imageColor = self->_imageColor;
    self->_imageColor = v5;

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __35__NTKUpNextBaseCell_setImageColor___block_invoke;
    v7[3] = &unk_278787090;
    v7[4] = self;
    [(NTKUpNextBaseCell *)self enumerateContentsLayersWithBlock:v7];
  }
}

void __35__NTKUpNextBaseCell_setImageColor___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 768);
  v3 = a2;
  [v3 setContentsMultiplyColor:{objc_msgSend(v2, "CGColor")}];
}

- (void)setContentBrightness:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    v7 = [MEMORY[0x277D75348] colorWithWhite:a3 alpha:1.0];
    v8 = [v7 CGColor];

    v9 = [MEMORY[0x277D75348] colorWithWhite:self->_contentBrightness alpha:1.0];
    v10 = [v9 CGColor];

    imageColor = self->_imageColor;
    v12 = [MEMORY[0x277D75348] whiteColor];
    LOBYTE(imageColor) = [(UIColor *)imageColor isEqual:v12];

    if ((imageColor & 1) == 0)
    {
      v23 = 0.0;
      v24 = 0.0;
      v21 = 0.0;
      v22 = 0.0;
      [(UIColor *)self->_imageColor getHue:&v24 saturation:&v23 brightness:&v22 alpha:&v21];
      v13 = [MEMORY[0x277D75348] colorWithHue:v24 saturation:v23 brightness:v22 * a3 alpha:v21];
      v8 = [v13 CGColor];

      v14 = [MEMORY[0x277D75348] colorWithHue:v24 saturation:v23 brightness:v22 * self->_contentBrightness alpha:v21];
      v10 = [v14 CGColor];
    }

    if (v4)
    {
      v15 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"contentsMultiplyColor"];
      [v15 setToValue:v8];
      [v15 setFromValue:v10];
      [v15 setDuration:0.5];
      v16 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
      [v15 setTimingFunction:v16];

      [v15 setFillMode:*MEMORY[0x277CDA228]];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __51__NTKUpNextBaseCell_setContentBrightness_animated___block_invoke;
      v19[3] = &unk_278787090;
      v20 = v15;
      v17 = v15;
      [(NTKUpNextBaseCell *)self enumerateContentsLayersWithBlock:v19];
    }

    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __51__NTKUpNextBaseCell_setContentBrightness_animated___block_invoke_2;
    v18[3] = &__block_descriptor_40_e17_v16__0__CALayer_8l;
    v18[4] = v8;
    [(NTKUpNextBaseCell *)self enumerateContentsLayersWithBlock:v18];
    [MEMORY[0x277CD9FF0] commit];
    self->_contentBrightness = a3;
  }
}

- (void)setContentImage:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_contentImage != v7)
  {
    if (!self->_overrideContentImage)
    {
      if (v4)
      {
        v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"contents"];
        [v8 setToValue:{-[UIImage CGImage](v7, "CGImage")}];
        [v8 setFromValue:{-[UIImage CGImage](self->_contentImage, "CGImage")}];
        [v8 setDuration:1.0];
        v9 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
        [v8 setTimingFunction:v9];

        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __46__NTKUpNextBaseCell_setContentImage_animated___block_invoke;
        v16[3] = &unk_278787090;
        v17 = v8;
        v10 = v8;
        [(NTKUpNextBaseCell *)self enumerateContentsLayersWithBlock:v16];
      }

      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      v11 = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __46__NTKUpNextBaseCell_setContentImage_animated___block_invoke_2;
      v14 = &unk_278787090;
      v15 = v7;
      [(NTKUpNextBaseCell *)self enumerateContentsLayersWithBlock:&v11];
      [MEMORY[0x277CD9FF0] commit];
    }

    objc_storeStrong(&self->_contentImage, a3);
  }
}

void __46__NTKUpNextBaseCell_setContentImage_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = a2;
  [v5 setContents:{objc_msgSend(v3, "CGImage")}];
}

- (void)setOverrideContentImage:(id)a3
{
  v5 = a3;
  if (self->_overrideContentImage != v5)
  {
    objc_storeStrong(&self->_overrideContentImage, a3);
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__NTKUpNextBaseCell_setOverrideContentImage___block_invoke;
    v6[3] = &unk_278787090;
    v7 = v5;
    [(NTKUpNextBaseCell *)self enumerateContentsLayersWithBlock:v6];
    [MEMORY[0x277CD9FF0] commit];
  }
}

void __45__NTKUpNextBaseCell_setOverrideContentImage___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = a2;
  [v5 setContents:{objc_msgSend(v3, "CGImage")}];
}

- (void)enumerateContentsLayersWithBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v4[2](v4, self->_imageLayer);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_layerProviders;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) contentsLayer];
        if (v10)
        {
          v4[2](v4, v10);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)configureWithContent:(id)a3
{
  objc_storeStrong(&self->_content, a3);
  v5 = a3;
  v6 = [v5 tintColor];

  [(NTKUpNextBaseCell *)self setTintColor:v6];
}

- (void)applyLayoutAttributes:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = NTKUpNextBaseCell;
  [(NTKUpNextBaseCell *)&v20 applyLayoutAttributes:v4];
  -[NTKUpNextBaseCell setHidden:](self, "setHidden:", [v4 isHidden]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[NTKUpNextBaseCell setPaused:](self, "setPaused:", [v4 notVisibleToUser]);
    v5 = [MEMORY[0x277D75D18] _isInAnimationBlock];
    if ((v5 & 1) == 0)
    {
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
    }

    [v4 darkeningAlphaUniform];
    CLKInterpolateBetweenFloatsClipped();
    self->_darkeningAmount = v6;
    [(NTKUpNextBaseCell *)self _updateColorOverlay];
    if (!self->_overrideContentImage)
    {
      imageLayer = self->_imageLayer;
      [v4 unitFrameOnScreen];
      [(CALayer *)imageLayer setContentsRect:?];
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = self->_layerProviders;
      v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            v14 = [v13 contentsLayer];
            [v13 contentsLayerBoundsForLayout:v4];
            [v14 setContentsRect:?];
          }

          v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v10);
      }
    }

    shadowView = self->_shadowView;
    [v4 shadowAlpha];
    CLKInterpolateBetweenFloatsClipped();
    [(UIImageView *)shadowView setAlpha:?];
    if ((v5 & 1) == 0)
    {
      [MEMORY[0x277CD9FF0] commit];
    }
  }
}

- (void)_updateColorOverlay
{
  v3 = [(NTKUpNextBaseCell *)self isHighlighted];
  overlayView = self->_overlayView;
  if (v3)
  {
    v5 = 1.0;
    darkeningAmount = 0.25;
  }

  else
  {
    darkeningAmount = self->_darkeningAmount;
    v5 = 0.0;
  }

  v7 = [MEMORY[0x277D75348] colorWithWhite:v5 alpha:darkeningAmount];
  [(UIView *)overlayView setBackgroundColor:v7];
}

+ (Class)suggestedCellClassForContent:(id)a3
{
  [a3 style];
  v3 = objc_opt_class();

  return v3;
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)updateMonochromeColor
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end