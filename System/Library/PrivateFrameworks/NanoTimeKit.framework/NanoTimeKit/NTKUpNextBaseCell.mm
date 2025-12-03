@interface NTKUpNextBaseCell
+ (CGSize)suggestedBodyImageSizeForDevice:(id)device;
+ (CGSize)suggestedHeaderImageSizeForDevice:(id)device;
+ (Class)suggestedCellClassForContent:(id)content;
+ (void)clearLabel:(id)label;
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKUpNextBaseCell)initWithFrame:(CGRect)frame;
- (void)_updateColorOverlay;
- (void)applyLayoutAttributes:(id)attributes;
- (void)configureWithContent:(id)content;
- (void)enumerateContentsLayersWithBlock:(id)block;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContentBrightness:(double)brightness animated:(BOOL)animated;
- (void)setContentImage:(id)image animated:(BOOL)animated;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImageColor:(id)color;
- (void)setOverrideContentImage:(id)image;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKUpNextBaseCell

+ (void)clearLabel:(id)label
{
  labelCopy = label;
  [labelCopy setTextProvider:0];
  [labelCopy setText:0];
}

+ (CGSize)suggestedHeaderImageSizeForDevice:(id)device
{
  sizeClass = [device sizeClass];
  if (sizeClass > 1)
  {
    if (sizeClass != 2 && sizeClass != 4)
    {
LABEL_8:
      v4 = 19.0;
      goto LABEL_10;
    }
  }

  else
  {
    if (!sizeClass)
    {
      v4 = 14.5;
      goto LABEL_10;
    }

    if (sizeClass != 1)
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

+ (CGSize)suggestedBodyImageSizeForDevice:(id)device
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (NTKUpNextBaseCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = NTKUpNextBaseCell;
  v3 = [(NTKUpNextBaseCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
    device = [v4 device];
    device = v3->_device;
    v3->_device = device;

    ___LayoutConstants_block_invoke_69(v7, v3->_device);
    NTKImageNamed(@"platter_shadow");
  }

  return 0;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(NTKUpNextBaseCell *)self isHighlighted];
  v7.receiver = self;
  v7.super_class = NTKUpNextBaseCell;
  [(NTKUpNextBaseCell *)&v7 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    if (highlightedCopy)
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
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(NTKUpNextBaseCell *)self setImageColor:whiteColor];

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

- (void)setImageColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    colorCopy = [MEMORY[0x277D75348] whiteColor];
  }

  if ((NTKEqualObjects(colorCopy, self->_imageColor) & 1) == 0)
  {
    v5 = [colorCopy copy];
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

- (void)setContentBrightness:(double)brightness animated:(BOOL)animated
{
  animatedCopy = animated;
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    v7 = [MEMORY[0x277D75348] colorWithWhite:brightness alpha:1.0];
    cGColor = [v7 CGColor];

    v9 = [MEMORY[0x277D75348] colorWithWhite:self->_contentBrightness alpha:1.0];
    cGColor2 = [v9 CGColor];

    imageColor = self->_imageColor;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    LOBYTE(imageColor) = [(UIColor *)imageColor isEqual:whiteColor];

    if ((imageColor & 1) == 0)
    {
      v23 = 0.0;
      v24 = 0.0;
      v21 = 0.0;
      v22 = 0.0;
      [(UIColor *)self->_imageColor getHue:&v24 saturation:&v23 brightness:&v22 alpha:&v21];
      v13 = [MEMORY[0x277D75348] colorWithHue:v24 saturation:v23 brightness:v22 * brightness alpha:v21];
      cGColor = [v13 CGColor];

      v14 = [MEMORY[0x277D75348] colorWithHue:v24 saturation:v23 brightness:v22 * self->_contentBrightness alpha:v21];
      cGColor2 = [v14 CGColor];
    }

    if (animatedCopy)
    {
      v15 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"contentsMultiplyColor"];
      [v15 setToValue:cGColor];
      [v15 setFromValue:cGColor2];
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
    v18[4] = cGColor;
    [(NTKUpNextBaseCell *)self enumerateContentsLayersWithBlock:v18];
    [MEMORY[0x277CD9FF0] commit];
    self->_contentBrightness = brightness;
  }
}

- (void)setContentImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  if (self->_contentImage != imageCopy)
  {
    if (!self->_overrideContentImage)
    {
      if (animatedCopy)
      {
        v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"contents"];
        [v8 setToValue:{-[UIImage CGImage](imageCopy, "CGImage")}];
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
      v15 = imageCopy;
      [(NTKUpNextBaseCell *)self enumerateContentsLayersWithBlock:&v11];
      [MEMORY[0x277CD9FF0] commit];
    }

    objc_storeStrong(&self->_contentImage, image);
  }
}

void __46__NTKUpNextBaseCell_setContentImage_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = a2;
  [v5 setContents:{objc_msgSend(v3, "CGImage")}];
}

- (void)setOverrideContentImage:(id)image
{
  imageCopy = image;
  if (self->_overrideContentImage != imageCopy)
  {
    objc_storeStrong(&self->_overrideContentImage, image);
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__NTKUpNextBaseCell_setOverrideContentImage___block_invoke;
    v6[3] = &unk_278787090;
    v7 = imageCopy;
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

- (void)enumerateContentsLayersWithBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  blockCopy[2](blockCopy, self->_imageLayer);
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

        contentsLayer = [*(*(&v11 + 1) + 8 * v9) contentsLayer];
        if (contentsLayer)
        {
          blockCopy[2](blockCopy, contentsLayer);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)configureWithContent:(id)content
{
  objc_storeStrong(&self->_content, content);
  contentCopy = content;
  tintColor = [contentCopy tintColor];

  [(NTKUpNextBaseCell *)self setTintColor:tintColor];
}

- (void)applyLayoutAttributes:(id)attributes
{
  v22 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v20.receiver = self;
  v20.super_class = NTKUpNextBaseCell;
  [(NTKUpNextBaseCell *)&v20 applyLayoutAttributes:attributesCopy];
  -[NTKUpNextBaseCell setHidden:](self, "setHidden:", [attributesCopy isHidden]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[NTKUpNextBaseCell setPaused:](self, "setPaused:", [attributesCopy notVisibleToUser]);
    _isInAnimationBlock = [MEMORY[0x277D75D18] _isInAnimationBlock];
    if ((_isInAnimationBlock & 1) == 0)
    {
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
    }

    [attributesCopy darkeningAlphaUniform];
    CLKInterpolateBetweenFloatsClipped();
    self->_darkeningAmount = v6;
    [(NTKUpNextBaseCell *)self _updateColorOverlay];
    if (!self->_overrideContentImage)
    {
      imageLayer = self->_imageLayer;
      [attributesCopy unitFrameOnScreen];
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
            contentsLayer = [v13 contentsLayer];
            [v13 contentsLayerBoundsForLayout:attributesCopy];
            [contentsLayer setContentsRect:?];
          }

          v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v10);
      }
    }

    shadowView = self->_shadowView;
    [attributesCopy shadowAlpha];
    CLKInterpolateBetweenFloatsClipped();
    [(UIImageView *)shadowView setAlpha:?];
    if ((_isInAnimationBlock & 1) == 0)
    {
      [MEMORY[0x277CD9FF0] commit];
    }
  }
}

- (void)_updateColorOverlay
{
  isHighlighted = [(NTKUpNextBaseCell *)self isHighlighted];
  overlayView = self->_overlayView;
  if (isHighlighted)
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

+ (Class)suggestedCellClassForContent:(id)content
{
  [content style];
  v3 = objc_opt_class();

  return v3;
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

- (void)transitionToMonochromeWithFraction:(double)fraction
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