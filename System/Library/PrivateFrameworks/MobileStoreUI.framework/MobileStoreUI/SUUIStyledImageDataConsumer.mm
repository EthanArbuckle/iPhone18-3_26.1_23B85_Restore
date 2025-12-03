@interface SUUIStyledImageDataConsumer
+ (BOOL)isImageCompressionEnabled;
+ (id)appIconConsumerWithSize:(CGSize)size;
+ (id)applePackIconConsumer;
+ (id)brickConsumer;
+ (id)brickConsumerWithBrickSize:(CGSize)size;
+ (id)cardIconConsumer;
+ (id)cardProductImageConsumer;
+ (id)categoriesMessagesConsumer;
+ (id)giftComposeProductImageConsumer;
+ (id)giftResultIconConsumer;
+ (id)giftResultProductImageConsumer;
+ (id)lockupIconConsumerWithSize:(int64_t)size;
+ (id)lockupProductImageConsumerWithSize:(int64_t)size;
+ (id)manageMessagesConsumer;
+ (id)mixedTopChartsNewsstandConsumer;
+ (id)newsstandRoomNewsstandConsumer;
+ (id)newsstandSwooshNewsstandConsumer;
+ (id)parentBundleIconConsumer;
+ (id)productImageConsumerWithSize:(CGSize)size;
+ (id)productPageProductImageConsumer;
+ (id)purchasedMessagesConsumer;
+ (id)purchasedProductImageConsumer;
+ (id)roomIconConsumer;
+ (id)roomProductImageConsumer;
+ (id)swooshNewsstandConsumer;
+ (id)topChartsIconConsumer;
+ (id)topChartsNewsstandConsumer;
- (BOOL)_backgroundIsOpaque;
- (BOOL)isImagePlaceholderAvailable;
- (CGSize)imageSize;
- (CGSize)shadowOffset;
- (SUUIStyledImageDataConsumer)init;
- (SUUIStyledImageDataConsumer)initWithSize:(CGSize)size treatment:(int64_t)treatment;
- (SUUIStyledImageDataConsumer)initWithViewElement:(id)element;
- (UIEdgeInsets)borderMargins;
- (UIEdgeInsets)borderWidths;
- (UIEdgeInsets)imagePadding;
- (id)_arcRoundedImageWithBounds:(CGRect)bounds contentRect:(CGRect)rect cornerRadius:(double)radius drawBlock:(id)block;
- (id)_defaultPlaceholderColor;
- (id)_dynamicUberImageWithBounds:(CGRect)bounds inputSize:(CGSize)size drawBlock:(id)block;
- (id)_imageWithSize:(CGSize)size isOpaque:(BOOL)opaque drawBlock:(id)block;
- (id)_leftToRightGradient:(CGRect)gradient contentRect:(CGRect)rect drawBlock:(id)block;
- (id)_outputImageWithInputSize:(CGSize)size outputSize:(CGSize)outputSize drawBlock:(id)block;
- (id)_placeholderCornerPathBlock;
- (id)_radialBlurImageWithBounds:(CGRect)bounds contentRect:(CGRect)rect drawBlock:(id)block;
- (id)_roundedBorderWithBounds:(CGRect)bounds contentRect:(CGRect)rect drawBlock:(id)block;
- (id)_scaledImageWithBounds:(CGRect)bounds contentRect:(CGRect)rect drawBlock:(id)block;
- (id)_uberBannerImageWithBounds:(CGRect)bounds inputSize:(CGSize)size drawBlock:(id)block;
- (id)_uberImageWithBounds:(CGRect)bounds inputSize:(CGSize)size backgroundColor:(id)color drawBlock:(id)block;
- (id)imageForColor:(id)color size:(CGSize)size;
- (id)imageForImage:(id)image;
- (id)imagePlaceholderForColor:(id)color;
- (void)_drawBordersWithImageRect:(CGRect)rect bounds:(CGRect)bounds;
@end

@implementation SUUIStyledImageDataConsumer

+ (BOOL)isImageCompressionEnabled
{
  if (isImageCompressionEnabled_onceToken != -1)
  {
    +[SUUIStyledImageDataConsumer isImageCompressionEnabled];
  }

  return isImageCompressionEnabled_isImageCompressionEnabled;
}

uint64_t __56__SUUIStyledImageDataConsumer_isImageCompressionEnabled__block_invoke()
{
  result = CFPreferencesGetAppBooleanValue(@"SUUIImageCompressionEnabled", *MEMORY[0x277D6A708], 0);
  isImageCompressionEnabled_isImageCompressionEnabled = result != 0;
  return result;
}

- (SUUIStyledImageDataConsumer)init
{
  v7.receiver = self;
  v7.super_class = SUUIStyledImageDataConsumer;
  v2 = [(SUUIStyledImageDataConsumer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_imageContentMode = 0;
    _currentTraitCollection = [MEMORY[0x277D75C80] _currentTraitCollection];
    startingTraitCollection = v3->_startingTraitCollection;
    v3->_startingTraitCollection = _currentTraitCollection;
  }

  return v3;
}

- (SUUIStyledImageDataConsumer)initWithSize:(CGSize)size treatment:(int64_t)treatment
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = SUUIStyledImageDataConsumer;
  v7 = [(SUUIStyledImageDataConsumer *)&v10 init];
  if (v7)
  {
    if (treatment <= 0xF && ((1 << treatment) & 0x8026) != 0)
    {
      v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
      [(SUUIStyledImageDataConsumer *)v7 setBorderColor:v8];

      [(SUUIStyledImageDataConsumer *)v7 setBorderWidths:1.0, 1.0, 1.0, 1.0];
    }

    [(SUUIStyledImageDataConsumer *)v7 setImageSize:width, height];
    [(SUUIStyledImageDataConsumer *)v7 setImageTreatment:treatment];
    [(SUUIStyledImageDataConsumer *)v7 setImageContentMode:0];
  }

  return v7;
}

- (SUUIStyledImageDataConsumer)initWithViewElement:(id)element
{
  elementCopy = element;
  v5 = [(SUUIStyledImageDataConsumer *)self init];
  if (v5)
  {
    style = [elementCopy style];
    v5->_imageContentMode = [style fillImage] == 1;
    [style elementPadding];
    v5->_imagePadding.top = v7;
    v5->_imagePadding.left = v8;
    v5->_imagePadding.bottom = v9;
    v5->_imagePadding.right = v10;
    ikBackgroundColor = [style ikBackgroundColor];
    iKBackgroundColor = v5->_iKBackgroundColor;
    v5->_iKBackgroundColor = ikBackgroundColor;

    ikBackgroundColor2 = [style ikBackgroundColor];
    color = [ikBackgroundColor2 color];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = color;

    imageTreatment = [style imageTreatment];
    v5->_imageTreatment = SUUIImageTreatmentForString(imageTreatment);

    imageTreatment = v5->_imageTreatment;
    if (imageTreatment > 0x10)
    {
      goto LABEL_14;
    }

    if (((1 << imageTreatment) & 0x10026) != 0)
    {
      p_borderWidths = &v5->_borderWidths;
      __asm { FMOV            V0.2D, #1.0 }

      *&v5->_borderWidths.top = _Q0;
      v5->_borderWidths.bottom = 1.0;
      v24 = 1.0;
      goto LABEL_5;
    }

    if (imageTreatment == 3)
    {
      p_borderWidths = &v5->_borderWidths;
      v5->_borderWidths.top = 0.0;
      v5->_borderWidths.left = 0.0;
      v5->_borderWidths.bottom = 1.0;
      v24 = 0.0;
    }

    else
    {
LABEL_14:
      p_borderWidths = &v5->_borderWidths;
      [style borderWidths];
      v5->_borderWidths.top = v34;
      v5->_borderWidths.left = v35;
      v5->_borderWidths.bottom = v36;
    }

LABEL_5:
    p_borderWidths->right = v24;
    [style borderMargins];
    v5->_borderMargins.top = v25;
    v5->_borderMargins.left = v26;
    v5->_borderMargins.bottom = v27;
    v5->_borderMargins.right = v28;
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v5->_borderWidths.top, *MEMORY[0x277D768C8]), vceqq_f64(*&v5->_borderWidths.bottom, *(MEMORY[0x277D768C8] + 16))))))
    {
LABEL_21:
      shadowColor = [elementCopy shadowColor];
      shadowColor = v5->_shadowColor;
      v5->_shadowColor = shadowColor;

      [elementCopy shadowOffset];
      v5->_shadowOffset.width = v49;
      v5->_shadowOffset.height = v50;
      [elementCopy shadowRadius];
      v5->_shadowRadius = v51;

      goto LABEL_22;
    }

    ikBorderColor = [style ikBorderColor];
    color2 = [ikBorderColor color];
    borderColor = v5->_borderColor;
    v5->_borderColor = color2;

    if (!v5->_borderColor)
    {
      v32 = v5->_backgroundColor;
      if (!v32)
      {
        goto LABEL_18;
      }

      v33 = SUUIColorSchemeStyleForColor(v32);
      if (v33 <= 1)
      {
        if (v33)
        {
          if (v33 != 1)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }

LABEL_18:
        v37 = MEMORY[0x277D75348];
        v38 = 0.2;
        v39 = 0.0;
        goto LABEL_19;
      }

      if (v33 == 2)
      {
        goto LABEL_18;
      }

      if (v33 == 3)
      {
LABEL_17:
        v37 = MEMORY[0x277D75348];
        v38 = 0.15;
        v39 = 1.0;
LABEL_19:
        v40 = [v37 colorWithWhite:v39 alpha:v38];
        v41 = v5->_borderColor;
        v5->_borderColor = v40;
      }
    }

LABEL_20:
    borderRadius = [style borderRadius];
    [borderRadius edgeInsetsValue];
    v5->_borderRadii.top = v43;
    v5->_borderRadii.left = v44;
    v5->_borderRadii.bottom = v45;
    v5->_borderRadii.right = v46;

    goto LABEL_21;
  }

LABEL_22:

  return v5;
}

- (id)imageForColor:(id)color size:(CGSize)size
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  v8 = colorCopy;
  if (width < 0.00000011920929 || height < 0.00000011920929)
  {
    height = 0;
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__SUUIStyledImageDataConsumer_imageForColor_size___block_invoke;
    v12[3] = &unk_2798F7D08;
    v13 = colorCopy;
    selfCopy = self;
    height = [(SUUIStyledImageDataConsumer *)self _outputImageWithInputSize:v12 outputSize:width drawBlock:height, width, height];
  }

  return height;
}

void __50__SUUIStyledImageDataConsumer_imageForColor_size___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (*(a1 + 32))
  {
    [*(a1 + 32) set];
  }

  else
  {
    v9 = [*(a1 + 40) _defaultPlaceholderColor];
    [v9 set];
  }

  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;

  UIRectFill(*&v10);
}

- (id)imageForImage:(id)image
{
  imageCopy = image;
  [imageCopy size];
  v6 = v5;
  v8 = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__SUUIStyledImageDataConsumer_imageForImage___block_invoke;
  v14[3] = &unk_2798F6690;
  v15 = imageCopy;
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  v11 = imageCopy;
  height = [(SUUIStyledImageDataConsumer *)self _outputImageWithInputSize:v14 outputSize:v6 drawBlock:v8, width, height];

  return height;
}

- (BOOL)isImagePlaceholderAvailable
{
  imageTreatment = self->_imageTreatment;
  if (imageTreatment > 0x10)
  {
    return 0;
  }

  if (((1 << imageTreatment) & 0x1CD06) != 0)
  {
    return 1;
  }

  if (((1 << imageTreatment) & 0xA9) == 0)
  {
    return 0;
  }

  top = self->_borderWidths.top;
  left = self->_borderWidths.left;
  v6 = left == self->_borderWidths.right;
  if (top != self->_borderWidths.bottom)
  {
    v6 = 0;
  }

  return left == top && v6;
}

- (id)imagePlaceholderForColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    colorCopy = [(SUUIStyledImageDataConsumer *)self _defaultPlaceholderColor];
  }

  v5 = 0;
  imageTreatment = self->_imageTreatment;
  if (imageTreatment <= 4)
  {
    if ((imageTreatment - 1) >= 2)
    {
      if (imageTreatment)
      {
        v7 = imageTreatment == 3;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    goto LABEL_12;
  }

  if (imageTreatment <= 0x10)
  {
    if (((1 << imageTreatment) & 0x18C00) != 0)
    {
LABEL_12:
      v8 = [SUUIImagePlaceholder alloc];
      borderColor = self->_borderColor;
      top = self->_borderWidths.top;
      _placeholderCornerPathBlock = [(SUUIStyledImageDataConsumer *)self _placeholderCornerPathBlock];
      v12 = v8;
      v13 = colorCopy;
      v14 = borderColor;
      v15 = top;
LABEL_13:
      v5 = [(SUUIImagePlaceholder *)v12 initWithBackgroundColor:v13 borderColor:v14 borderWidth:_placeholderCornerPathBlock cornerPathBlock:v15];

      goto LABEL_33;
    }

    if (imageTreatment == 8)
    {
      v23 = [SUUIImagePlaceholder alloc];
      v25 = 0.0;
      v26 = colorCopy;
      v24 = 0;
      goto LABEL_32;
    }

    if (imageTreatment == 14)
    {
      v16 = [SUUIImagePlaceholder alloc];
      v17 = self->_borderColor;
      _placeholderCornerPathBlock = [(SUUIStyledImageDataConsumer *)self _placeholderCornerPathBlock];
      v15 = 0.0;
      v12 = v16;
      v13 = v17;
      v14 = 0;
      goto LABEL_13;
    }
  }

  if (imageTreatment != 7 && imageTreatment != 5)
  {
    goto LABEL_33;
  }

LABEL_22:
  v19 = self->_borderWidths.top;
  left = self->_borderWidths.left;
  if (left != self->_borderWidths.right || left != v19 || v19 != self->_borderWidths.bottom)
  {
    v5 = 0;
    goto LABEL_33;
  }

  v23 = [SUUIImagePlaceholder alloc];
  v24 = self->_borderColor;
  v25 = self->_borderWidths.left;
  v26 = colorCopy;
LABEL_32:
  v5 = [(SUUIImagePlaceholder *)v23 initWithBackgroundColor:v26 borderColor:v24 borderWidth:v25 cornerRadius:0.0];
LABEL_33:

  return v5;
}

- (id)_placeholderCornerPathBlock
{
  v5 = 0;
  imageTreatment = self->_imageTreatment;
  if (imageTreatment > 13)
  {
    if (imageTreatment != 14)
    {
      if (imageTreatment == 15)
      {
        v5 = &__block_literal_global_14;
      }

      else if (imageTreatment == 16)
      {
        v5 = &__block_literal_global_16;

        return v5;
      }

LABEL_24:

      return v5;
    }

    aBlock[5] = v2;
    v10 = v3;
    top = self->_borderRadii.top;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__SUUIStyledImageDataConsumer__placeholderCornerPathBlock__block_invoke_4;
    aBlock[3] = &__block_descriptor_40_e53___UIBezierPath_40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
    *&aBlock[4] = top;
    v5 = _Block_copy(aBlock);
  }

  else if ((imageTreatment - 10) < 2)
  {
    v5 = &__block_literal_global_12;
  }

  else
  {
    if (imageTreatment != 1)
    {
      if (imageTreatment == 2)
      {
        v5 = &__block_literal_global_10;

        return v5;
      }

      goto LABEL_24;
    }

    v5 = &__block_literal_global_7;
  }

  return v5;
}

uint64_t __58__SUUIStyledImageDataConsumer__placeholderCornerPathBlock__block_invoke(double a1, double a2, double a3, double a4)
{
  if (a4 >= a3)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  return [MEMORY[0x277D75208] _bezierPathWithArcRoundedRect:a1 cornerRadius:{a2, a3, a4, v4 / 57.0 * 13.5}];
}

uint64_t __58__SUUIStyledImageDataConsumer__placeholderCornerPathBlock__block_invoke_5(double a1, double a2, double a3, double a4)
{
  v8 = CGRectGetHeight(*&a1) * 0.5;
  v9 = MEMORY[0x277D75208];

  return [v9 _bezierPathWithArcRoundedRect:a1 cornerRadius:{a2, a3, a4, v8}];
}

- (BOOL)_backgroundIsOpaque
{
  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    LOBYTE(backgroundColor) = CGColorGetAlpha([(UIColor *)backgroundColor CGColor]) == 1.0;
  }

  return backgroundColor;
}

- (id)_defaultPlaceholderColor
{
  backgroundColor = self->_backgroundColor;
  if (!backgroundColor)
  {
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
    goto LABEL_12;
  }

  v4 = SUUIColorSchemeStyleForColor(backgroundColor);
  v5 = 0;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

LABEL_10:
    v6 = self->_backgroundColor;
    v7 = -0.2;
    goto LABEL_11;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  if (v4 == 1)
  {
LABEL_9:
    v6 = self->_backgroundColor;
    v7 = 0.15;
LABEL_11:
    v5 = SUUIColorByAdjustingBrightness(v6, v7);
  }

LABEL_12:

  return v5;
}

- (void)_drawBordersWithImageRect:(CGRect)rect bounds:(CGRect)bounds
{
  borderColor = self->_borderColor;
  if (borderColor)
  {
    height = bounds.size.height;
    width = bounds.size.width;
    y = bounds.origin.y;
    x = bounds.origin.x;
    v10 = rect.size.height;
    v11 = rect.size.width;
    v12 = rect.origin.y;
    v13 = rect.origin.x;
    [(UIColor *)borderColor set];
    if (x >= v13)
    {
      v14 = x;
    }

    else
    {
      v14 = v13;
    }

    rect = v14;
    if (y < v12)
    {
      y = v12;
    }

    if (height >= v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = height;
    }

    if (width >= v11)
    {
      v16 = v11;
    }

    else
    {
      v16 = width;
    }

    v33 = v16;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v19 = v18;

    left = self->_borderWidths.left;
    v20 = self->_borderWidths.top / v19;
    bottom = self->_borderWidths.bottom;
    v22 = self->_borderWidths.right / v19;
    if (v20 > 0.00000011920929)
    {
      v36.size.width = v33;
      v36.origin.x = rect;
      v36.origin.y = y;
      v36.size.height = self->_borderWidths.top / v19;
      UIRectFillUsingBlendMode(v36, kCGBlendModeNormal);
    }

    v23 = y + v20;
    v24 = v15;
    v25 = v15 - v20;
    v26 = bottom / v19;
    if (v22 > 0.00000011920929)
    {
      v37.origin.x = rect + v33 - v22;
      v37.size.height = v25 - v26;
      v37.origin.y = v23;
      v37.size.width = v22;
      UIRectFillUsingBlendMode(v37, kCGBlendModeNormal);
    }

    v27 = left / v19;
    if (v26 > 0.00000011920929)
    {
      v38.origin.y = y + v24 - v26;
      v38.size.width = v33;
      v38.origin.x = rect;
      v38.size.height = v26;
      UIRectFillUsingBlendMode(v38, kCGBlendModeNormal);
    }

    if (v27 > 0.00000011920929)
    {
      rectCopy = rect;
      v30 = v23;
      v31 = v27;

      v28 = v25 - v26;
      UIRectFillUsingBlendMode(*&rectCopy, kCGBlendModeNormal);
    }
  }
}

- (id)_outputImageWithInputSize:(CGSize)size outputSize:(CGSize)outputSize drawBlock:(id)block
{
  height = outputSize.height;
  width = outputSize.width;
  v7 = size.height;
  v8 = size.width;
  blockCopy = block;
  v11 = objc_autoreleasePoolPush();
  switch(self->_imageTreatment)
  {
    case 0:
    case 3:
    case 5:
    case 7:
      v14 = SUUIImageRectForBoundsAndPadding(self->_imageContentMode, v8, v7, 0.0, 0.0, width, height, v12, v13, self->_imagePadding.top, self->_imagePadding.left, self->_imagePadding.bottom, self->_imagePadding.right);
      v16 = v15;
      v18 = v17;
      v20 = v19;
      selfCopy4 = self;
      v22 = width;
      v23 = height;
      goto LABEL_3;
    case 1:
      v31 = SUUIImageRectForBoundsAndPadding(self->_imageContentMode, v8, v7, 0.0, 0.0, width, height, v12, v13, self->_imagePadding.top, self->_imagePadding.left, self->_imagePadding.bottom, self->_imagePadding.right);
      v33 = v51;
      v35 = v49;
      v37 = v50;
      if (v50 >= v49)
      {
        v52 = v50;
      }

      else
      {
        v52 = v49;
      }

      v53 = v52 / 57.0 * 13.5;
      goto LABEL_21;
    case 2:
      v31 = SUUIImageRectForBoundsAndPadding(self->_imageContentMode, v8, v7, 0.0, 0.0, width, height, v12, v13, self->_imagePadding.top, self->_imagePadding.left, self->_imagePadding.bottom, self->_imagePadding.right);
      v33 = v64;
      v35 = v65;
      v37 = v66;
      v38 = 0x4024000000000000;
      goto LABEL_19;
    case 4:
      v54 = SUUIImageRectForBoundsAndPadding(self->_imageContentMode, v8, v7, 0.0, 0.0, width, height, v12, v13, self->_imagePadding.top, self->_imagePadding.left, self->_imagePadding.bottom, self->_imagePadding.right);
      v24 = [(SUUIStyledImageDataConsumer *)self _leftToRightGradient:blockCopy contentRect:0.0 drawBlock:0.0, width, height, v54, v55, v56, v57];
      goto LABEL_24;
    case 6:
      v43 = SUUIImageRectForBoundsAndPadding(self->_imageContentMode, v8, v7, 0.0, 0.0, width, height, v12, v13, self->_imagePadding.top, self->_imagePadding.left, self->_imagePadding.bottom, self->_imagePadding.right);
      v47 = [(SUUIStyledImageDataConsumer *)self _scaledImageWithBounds:blockCopy contentRect:0.0 drawBlock:0.0, width, height, v43, v44, v45, v46];
      v48 = [v47 imageWithRenderingMode:2];

      break;
    case 8:
      v24 = [(SUUIStyledImageDataConsumer *)self _dynamicUberImageWithBounds:blockCopy inputSize:0.0 drawBlock:0.0, width, height, v8, v7];
      goto LABEL_24;
    case 9:
      v24 = [(SUUIStyledImageDataConsumer *)self _uberBannerImageWithBounds:blockCopy inputSize:0.0 drawBlock:0.0, width, height, v8, v7];
      goto LABEL_24;
    case 0xALL:
    case 0xBLL:
      v96.origin.x = SUUIImageRectForBoundsAndPadding(self->_imageContentMode, v8, v7, 0.0, 0.0, width, height, v12, v13, self->_imagePadding.top, self->_imagePadding.left, self->_imagePadding.bottom, self->_imagePadding.right);
      x = v96.origin.x;
      y = v96.origin.y;
      v27 = v96.size.width;
      v28 = v96.size.height;
      v29 = CGRectGetWidth(v96) * 0.5;
      v97.origin.x = x;
      v97.origin.y = y;
      v97.size.width = v27;
      v97.size.height = v28;
      v30 = CGRectGetHeight(v97) * 0.5;
      if (v29 >= v30)
      {
        v30 = v29;
      }

      [(SUUIStyledImageDataConsumer *)self _arcRoundedImageWithBounds:blockCopy contentRect:0.0 cornerRadius:0.0 drawBlock:width, height, x, y, v27, v28, *&v30];
      goto LABEL_23;
    case 0xCLL:
      v14 = SUUIImageRectForBoundsAndPadding(self->_imageContentMode, v8, v7, 0.0, 0.0, width, height, v12, v13, self->_imagePadding.top, self->_imagePadding.left, self->_imagePadding.bottom, self->_imagePadding.right);
      v16 = v58;
      v18 = v59;
      v20 = v60;
      selfCopy3 = self;
      v62 = width;
      v63 = height;
      goto LABEL_37;
    case 0xDLL:
      v87 = v8 + self->_imagePadding.left + self->_imagePadding.right;
      v88 = v7 + self->_imagePadding.top + self->_imagePadding.bottom;
      v14 = SUUIImageRectForBoundsAndPadding(1, v8, v7, 0.0, 0.0, v87, v88, v12, v13, self->_imagePadding.top, self->_imagePadding.left, self->_imagePadding.bottom, self->_imagePadding.right);
      v16 = v89;
      v18 = v90;
      v20 = v91;
      if (self->_imagePadding.bottom >= 0.00000011920929)
      {
        selfCopy3 = self;
        v62 = v87;
        v63 = v88;
LABEL_37:
        v24 = [(SUUIStyledImageDataConsumer *)selfCopy3 _radialBlurImageWithBounds:blockCopy contentRect:0.0 drawBlock:0.0, v62, v63, v14, v16, v18, v20];
      }

      else
      {
        selfCopy4 = self;
        v22 = v87;
        v23 = v88;
LABEL_3:
        v24 = [(SUUIStyledImageDataConsumer *)selfCopy4 _scaledImageWithBounds:blockCopy contentRect:0.0 drawBlock:0.0, v22, v23, v14, v16, v18, v20];
      }

      goto LABEL_24;
    case 0xELL:
      v39 = SUUIImageRectForBoundsAndPadding(self->_imageContentMode, v8, v7, 0.0, 0.0, width, height, v12, v13, self->_borderWidths.top, self->_borderWidths.left, self->_borderWidths.bottom, self->_borderWidths.right);
      v24 = [(SUUIStyledImageDataConsumer *)self _roundedBorderWithBounds:blockCopy contentRect:0.0 drawBlock:0.0, width, height, v39, v40, v41, v42];
      goto LABEL_24;
    case 0xFLL:
      v31 = SUUIImageRectForBoundsAndPadding(self->_imageContentMode, v8, v7, 0.0, 0.0, width, height, v12, v13, self->_imagePadding.top, self->_imagePadding.left, self->_imagePadding.bottom, self->_imagePadding.right);
      v33 = v67;
      v35 = v68;
      v37 = v69;
      v53 = v69 * 0.5;
LABEL_21:
      v92 = v53;
      goto LABEL_22;
    case 0x10:
      v31 = SUUIImageRectForBoundsAndPadding(self->_imageContentMode, v8, v7, 0.0, 0.0, width, height, v12, v13, self->_imagePadding.top, self->_imagePadding.left, self->_imagePadding.bottom, self->_imagePadding.right);
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v38 = 0x4018000000000000;
LABEL_19:
      v92 = *&v38;
LABEL_22:
      [(SUUIStyledImageDataConsumer *)self _arcRoundedImageWithBounds:blockCopy contentRect:0.0 cornerRadius:0.0 drawBlock:width, height, v31, v33, v35, v37, *&v92];
      v24 = LABEL_23:;
LABEL_24:
      v48 = v24;
      break;
    default:
      v48 = 0;
      break;
  }

  p_shadowOffset = &self->_shadowOffset;
  if (self->_shadowOffset.width != *MEMORY[0x277CBF3A8] || self->_shadowOffset.height != *(MEMORY[0x277CBF3A8] + 8))
  {
    [v48 size];
    v73 = v72 + (fabs(p_shadowOffset->width) + self->_shadowRadius) * 2.0;
    [v48 size];
    shadowRadius = self->_shadowRadius;
    v75 = fabs(self->_shadowOffset.height) + shadowRadius;
    v77 = v76 + v75 * 2.0;
    v78 = shadowRadius + fabs(p_shadowOffset->width);
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v81 = v80;
    v94.width = v73;
    v94.height = v77;
    UIGraphicsBeginImageContextWithOptions(v94, 0, v81);

    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSetBlendMode(CurrentContext, kCGBlendModeMultiply);
    v83 = self->_shadowRadius;
    cGColor = [(UIColor *)self->_shadowColor CGColor];
    v95.width = p_shadowOffset->width;
    v95.height = self->_shadowOffset.height;
    CGContextSetShadowWithColor(CurrentContext, v95, v83, cGColor);
    [v48 drawAtPoint:{v78, v75}];
    v85 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    v48 = v85;
  }

  objc_autoreleasePoolPop(v11);

  return v48;
}

- (id)_imageWithSize:(CGSize)size isOpaque:(BOOL)opaque drawBlock:(id)block
{
  height = size.height;
  width = size.width;
  blockCopy = block;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v11 = v10;

  v17.width = width;
  v17.height = height;
  UIGraphicsBeginImageContextWithOptions(v17, opaque, v11);
  if (+[SUUIStyledImageDataConsumer isImageCompressionEnabled])
  {
    HasASTCSupport = SUUIGraphicsDeviceHasASTCSupport();
    blockCopy[2](blockCopy, HasASTCSupport);
    if (HasASTCSupport)
    {
      v13 = SUUIGraphicsGetASTCImageFromCurrentImageContext(v11);
      goto LABEL_6;
    }
  }

  else
  {
    blockCopy[2](blockCopy, 0);
  }

  v13 = UIGraphicsGetImageFromCurrentImageContext();
LABEL_6:
  v14 = v13;
  UIGraphicsEndImageContext();

  return v14;
}

- (id)_arcRoundedImageWithBounds:(CGRect)bounds contentRect:(CGRect)rect cornerRadius:(double)radius drawBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = bounds.size.height;
  v11 = bounds.size.width;
  blockCopy = block;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __93__SUUIStyledImageDataConsumer__arcRoundedImageWithBounds_contentRect_cornerRadius_drawBlock___block_invoke;
  v18[3] = &unk_2798F7D70;
  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  radiusCopy = radius;
  v14 = blockCopy;
  v18[4] = self;
  v19 = v14;
  v15 = [(SUUIStyledImageDataConsumer *)self _imageWithSize:0 isOpaque:v18 drawBlock:v11, v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
    [v16 setCornerRadius:radius];
    [v16 setCornerType:1];
    if (self->_borderColor)
    {
      [v16 setBorderColor:?];
      [v16 setBorderWidth:1.0];
    }
  }

  return v15;
}

void __93__SUUIStyledImageDataConsumer__arcRoundedImageWithBounds_contentRect_cornerRadius_drawBlock___block_invoke(uint64_t a1, char a2)
{
  v5 = [MEMORY[0x277D75208] _bezierPathWithArcRoundedRect:*(a1 + 48) cornerRadius:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [v5 setLineWidth:1.0];
  [v5 addClip];
  (*(*(a1 + 40) + 16))(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  if ((a2 & 1) == 0)
  {
    v4 = *(*(a1 + 32) + 64);
    if (v4)
    {
      [v4 set];
      [v5 strokeWithBlendMode:0 alpha:1.0];
    }
  }
}

- (id)_scaledImageWithBounds:(CGRect)bounds contentRect:(CGRect)rect drawBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = bounds.size.height;
  v10 = bounds.size.width;
  v11 = bounds.origin.y;
  v12 = bounds.origin.x;
  blockCopy = block;
  _backgroundIsOpaque = [(SUUIStyledImageDataConsumer *)self _backgroundIsOpaque];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __76__SUUIStyledImageDataConsumer__scaledImageWithBounds_contentRect_drawBlock___block_invoke;
  v19[3] = &unk_2798F7D98;
  v21 = v12;
  v22 = v11;
  v23 = v10;
  v24 = v9;
  v19[4] = self;
  v20 = blockCopy;
  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  v16 = blockCopy;
  v17 = [(SUUIStyledImageDataConsumer *)self _imageWithSize:_backgroundIsOpaque isOpaque:v19 drawBlock:v10, v9];

  return v17;
}

uint64_t __76__SUUIStyledImageDataConsumer__scaledImageWithBounds_contentRect_drawBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    [v2 set];
    UIRectFill(*(a1 + 48));
  }

  (*(*(a1 + 40) + 16))(*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104));
  v3 = *(a1 + 32);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  v7 = *(a1 + 104);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);

  return [v3 _drawBordersWithImageRect:v4 bounds:{v5, v6, v7, v8, v9, v10, v11}];
}

- (id)_radialBlurImageWithBounds:(CGRect)bounds contentRect:(CGRect)rect drawBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = bounds.size.height;
  v10 = bounds.size.width;
  v11 = bounds.origin.y;
  v12 = bounds.origin.x;
  blockCopy = block;
  _backgroundIsOpaque = [(SUUIStyledImageDataConsumer *)self _backgroundIsOpaque];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __80__SUUIStyledImageDataConsumer__radialBlurImageWithBounds_contentRect_drawBlock___block_invoke;
  v19[3] = &unk_2798F7D98;
  v21 = v12;
  v22 = v11;
  v23 = v10;
  v24 = v9;
  v19[4] = self;
  v20 = blockCopy;
  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  v16 = blockCopy;
  v17 = [(SUUIStyledImageDataConsumer *)self _imageWithSize:_backgroundIsOpaque isOpaque:v19 drawBlock:v10, v9];

  return v17;
}

void __80__SUUIStyledImageDataConsumer__radialBlurImageWithBounds_contentRect_drawBlock___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    [v2 set];
    UIRectFill(*(a1 + 48));
  }

  (*(*(a1 + 40) + 16))(*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104));
  v3 = *(*(a1 + 32) + 56);
  if (v3)
  {
    v36 = 0u;
    memset(v37, 0, 48);
    __asm { FMOV            V0.2D, #1.0 }

    v37[3] = _Q0;
    [v3 getRed:&v36 green:&v36 + 8 blue:v37 alpha:0];
    *(&v37[1] + 8) = v36;
    *(&v37[2] + 1) = *&v37[0];
    v10 = *(a1 + 64);
    v9 = *(a1 + 72);
    *locations = xmmword_259FCAF50;
    v35 = 0x3FF0000000000000;
    *components = v36;
    components[2] = *v37;
    components[3] = 0.0;
    v28 = v36;
    v29 = *&v37[0];
    v30 = 0x3FE3333340000000;
    v31 = v36;
    v32 = *&v37[0];
    v33 = 0x3FF0000000000000;
    CurrentContext = UIGraphicsGetCurrentContext();
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v13 = CGGradientCreateWithColorComponents(DeviceRGB, components, locations, 3uLL);
    v14 = v10 * 0.25;
    v15 = *(a1 + 32);
    v16 = (v15 + 200);
    v17 = (v15 + 168);
    v18 = ceilf(v14);
    v19 = *(MEMORY[0x277D768C8] + 16);
    v20 = v16[1];
    if (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*v16, *MEMORY[0x277D768C8]), vceqq_f64(v20, v19)), xmmword_259FCAF40)) != 15)
    {
      v18 = v20.f64[0] + v18;
    }

    v21 = v17[1];
    v22 = v18 - v21.f64[0];
    if (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*v17, *MEMORY[0x277D768C8]), vceqq_f64(v21, v19)), xmmword_259FCAF40)) == 15)
    {
      v22 = v18;
    }

    v23 = v10 * 0.5;
    v39.x = floorf(v23);
    v24 = v10 * 1.70000005;
    v25 = ceilf(v24);
    v26 = v10 * 1.89999998;
    v39.y = v9 - v25 - v22;
    CGContextDrawRadialGradient(CurrentContext, v13, v39, v25, v39, ceilf(v26), 2u);
    CGColorSpaceRelease(DeviceRGB);
    CGGradientRelease(v13);
  }
}

- (id)_roundedBorderWithBounds:(CGRect)bounds contentRect:(CGRect)rect drawBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = bounds.size.height;
  v10 = bounds.size.width;
  v11 = bounds.origin.y;
  v12 = bounds.origin.x;
  blockCopy = block;
  _backgroundIsOpaque = [(SUUIStyledImageDataConsumer *)self _backgroundIsOpaque];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__SUUIStyledImageDataConsumer__roundedBorderWithBounds_contentRect_drawBlock___block_invoke;
  v19[3] = &unk_2798F7D98;
  v21 = v12;
  v22 = v11;
  v23 = v10;
  v24 = v9;
  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  v19[4] = self;
  v20 = blockCopy;
  v16 = blockCopy;
  v17 = [(SUUIStyledImageDataConsumer *)self _imageWithSize:_backgroundIsOpaque isOpaque:v19 drawBlock:v10, v9];

  return v17;
}

void __78__SUUIStyledImageDataConsumer__roundedBorderWithBounds_contentRect_drawBlock___block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:*(a1 + 48) cornerRadius:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(*(a1 + 32) + 8)}];
  [*(*(a1 + 32) + 64) setFill];
  [v8 fill];
  Width = CGRectGetWidth(*(a1 + 48));
  v3 = floor((Width - CGRectGetWidth(*(a1 + 80))) * 0.5);
  Height = CGRectGetHeight(*(a1 + 48));
  v5 = floor((Height - CGRectGetHeight(*(a1 + 80))) * 0.5);
  v6 = CGRectGetWidth(*(a1 + 80));
  v7 = CGRectGetHeight(*(a1 + 80));
  (*(*(a1 + 40) + 16))(v3, v5, v6, v7);
}

- (id)_uberBannerImageWithBounds:(CGRect)bounds inputSize:(CGSize)size drawBlock:(id)block
{
  height = size.height;
  width = size.width;
  v7 = bounds.size.height;
  v8 = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  blockCopy = block;
  _backgroundIsOpaque = [(SUUIStyledImageDataConsumer *)self _backgroundIsOpaque];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__SUUIStyledImageDataConsumer__uberBannerImageWithBounds_inputSize_drawBlock___block_invoke;
  v17[3] = &unk_2798F7DC0;
  v19 = x;
  v20 = y;
  v21 = v8;
  v22 = v7;
  v23 = width;
  v24 = height;
  v17[4] = self;
  v18 = blockCopy;
  v14 = blockCopy;
  v15 = [(SUUIStyledImageDataConsumer *)self _imageWithSize:_backgroundIsOpaque isOpaque:v17 drawBlock:v8, v7];

  return v15;
}

uint64_t __78__SUUIStyledImageDataConsumer__uberBannerImageWithBounds_inputSize_drawBlock___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    [v2 set];
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextFillRect(CurrentContext, *(a1 + 48));
    v5 = *(a1 + 80);
    v4 = *(a1 + 88);
    v6 = *(a1 + 72);
    if (*(*(a1 + 32) + 56))
    {
      *locations = xmmword_259FCAE10;
      memset(v19, 0, sizeof(v19));
      v20 = 0;
      v21 = 0x3FF0000000000000;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v8 = CGGradientCreateWithColorComponents(DeviceRGB, v19, locations, 2uLL);
      CGColorSpaceRelease(DeviceRGB);
      MidX = CGRectGetMidX(*(a1 + 48));
      v10 = MidX + CGRectGetWidth(*(a1 + 48)) * -0.25;
      v11 = CGRectGetMidY(*(a1 + 48)) + 40.0;
      v12 = *(a1 + 64) * 0.9;
      v13 = UIGraphicsGetCurrentContext();
      v24.x = v10;
      v24.y = v11;
      v25.x = v10;
      v25.y = v11;
      CGContextDrawRadialGradient(v13, v8, v24, 0.0, v25, v12, 2u);
      CGGradientRelease(v8);
    }
  }

  else
  {
    v5 = *(a1 + 80);
    v4 = *(a1 + 88);
    v6 = *(a1 + 72);
  }

  v14 = (v6 + -8.0 + -8.0);
  v15 = (v6 - v14) * 0.5;
  v16 = floorf(v15);
  v17 = v5 * (v14 / v4);
  return (*(*(a1 + 40) + 16))(15.0, v16, ceilf(v17));
}

- (id)_dynamicUberImageWithBounds:(CGRect)bounds inputSize:(CGSize)size drawBlock:(id)block
{
  height = size.height;
  width = size.width;
  v7 = bounds.size.height;
  v8 = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v35[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v13 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceLevel:{-[UITraitCollection userInterfaceLevel](self->_startingTraitCollection, "userInterfaceLevel")}];
  v14 = MEMORY[0x277D75C80];
  v35[0] = v13;
  v15 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
  v35[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v17 = [v14 traitCollectionWithTraitsFromCollections:v16];

  v18 = MEMORY[0x277D75C80];
  v34[0] = v13;
  v19 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v34[1] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v21 = [v18 traitCollectionWithTraitsFromCollections:v20];

  v22 = [(UIColor *)self->_backgroundColor resolvedColorWithTraitCollection:v17];
  height = [(SUUIStyledImageDataConsumer *)self _uberImageWithBounds:v22 inputSize:blockCopy backgroundColor:x drawBlock:y, v8, v7, width, height];
  v24 = [(UIColor *)self->_backgroundColor resolvedColorWithTraitCollection:v21];
  if ([v24 isEqual:v22])
  {
    v25 = height;
  }

  else
  {
    v25 = objc_alloc_init(MEMORY[0x277D755B8]);
    height2 = [(SUUIStyledImageDataConsumer *)self _uberImageWithBounds:v24 inputSize:blockCopy backgroundColor:x drawBlock:y, v8, v7, width, height];
    [v25 imageAsset];
    v33 = v17;
    v28 = v27 = blockCopy;
    v29 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
    [v28 registerImage:height withTraitCollection:v29];

    imageAsset = [v25 imageAsset];
    v31 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
    [imageAsset registerImage:height2 withTraitCollection:v31];

    blockCopy = v27;
    v17 = v33;
  }

  return v25;
}

- (id)_uberImageWithBounds:(CGRect)bounds inputSize:(CGSize)size backgroundColor:(id)color drawBlock:(id)block
{
  height = size.height;
  width = size.width;
  v9 = bounds.size.height;
  v10 = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  colorCopy = color;
  blockCopy = block;
  _backgroundIsOpaque = [(SUUIStyledImageDataConsumer *)self _backgroundIsOpaque];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __88__SUUIStyledImageDataConsumer__uberImageWithBounds_inputSize_backgroundColor_drawBlock___block_invoke;
  v21[3] = &unk_2798F7DC0;
  v24 = x;
  v25 = y;
  v26 = v10;
  v27 = v9;
  v28 = width;
  v29 = height;
  v22 = colorCopy;
  v23 = blockCopy;
  v17 = blockCopy;
  v18 = colorCopy;
  v19 = [(SUUIStyledImageDataConsumer *)self _imageWithSize:_backgroundIsOpaque isOpaque:v21 drawBlock:v10, v9];

  return v19;
}

void __88__SUUIStyledImageDataConsumer__uberImageWithBounds_inputSize_backgroundColor_drawBlock___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 set];
    UIRectFill(*(a1 + 48));
  }

  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80) * (v4 / *(a1 + 88));
  v6 = ceilf(v5);
  v7 = (*(a1 + 64) - v6) * 0.5;
  v8 = floorf(v7);
  (*(*(a1 + 40) + 16))(v8, v3, v6, v4);
  v9 = *(a1 + 32);
  if (v9)
  {
    v18 = 0u;
    memset(v19, 0, 48);
    __asm { FMOV            V0.2D, #1.0 }

    v19[3] = _Q0;
    [v9 getRed:&v18 green:&v18 + 8 blue:v19 alpha:0];
    *(&v19[1] + 8) = v18;
    *(&v19[2] + 1) = *&v19[0];
    v15 = v4 * 0.48;
    v16 = ceilf(v15);
    v17 = [objc_alloc(MEMORY[0x277D75558]) initVerticalWithValues:&v18];
    v21.origin.x = v8;
    v21.origin.y = v3;
    v21.size.width = v6;
    v21.size.height = v4;
    [v17 fillRect:{v8, CGRectGetMaxY(v21) - v16, v6, v16}];
  }
}

- (id)_leftToRightGradient:(CGRect)gradient contentRect:(CGRect)rect drawBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = gradient.size.height;
  v10 = gradient.size.width;
  v11 = gradient.origin.y;
  v12 = gradient.origin.x;
  blockCopy = block;
  if ([(IKColor *)self->_iKBackgroundColor colorType]== 3)
  {
    _backgroundIsOpaque = [(SUUIStyledImageDataConsumer *)self _backgroundIsOpaque];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __74__SUUIStyledImageDataConsumer__leftToRightGradient_contentRect_drawBlock___block_invoke;
    v18[3] = &unk_2798F7D98;
    v18[4] = self;
    v20 = v12;
    v21 = v11;
    v22 = v10;
    v23 = v9;
    v19 = blockCopy;
    v24 = x;
    v25 = y;
    v26 = width;
    v27 = height;
    v16 = [(SUUIStyledImageDataConsumer *)self _imageWithSize:_backgroundIsOpaque isOpaque:v18 drawBlock:v10, v9];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __74__SUUIStyledImageDataConsumer__leftToRightGradient_contentRect_drawBlock___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 40) color];

  if (v2)
  {
    v3 = [*(*(a1 + 32) + 40) color];
    [v3 set];

    UIRectFill(*(a1 + 48));
  }

  (*(*(a1 + 40) + 16))(*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104));
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v30 = _Q0;
  v9 = [*(*(a1 + 32) + 40) gradientColors];
  v10 = [v9 firstObject];

  v11 = [*(*(a1 + 32) + 40) gradientColors];
  v12 = [v11 lastObject];

  [v10 getRed:&v26 green:&v26 + 8 blue:&v27 alpha:&v27 + 8];
  [v12 getRed:&v28 + 8 green:&v29 blue:&v29 + 8 alpha:&v30];
  v13 = *(a1 + 64);
  *locations = xmmword_259FCAF68;
  v25 = 0x3FF0000000000000;
  v17[0] = v26;
  v17[1] = v27;
  v18 = *(&v28 + 1);
  v19 = v29;
  v20 = v30;
  v21 = *(&v28 + 1);
  v22 = v29;
  v23 = v30;
  CurrentContext = UIGraphicsGetCurrentContext();
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v16 = CGGradientCreateWithColorComponents(DeviceRGB, v17, locations, 3uLL);
  v32.x = 0.0;
  v32.y = 0.5;
  v33.y = 0.5;
  v33.x = v13;
  CGContextDrawLinearGradient(CurrentContext, v16, v32, v33, 0);
  CGColorSpaceRelease(DeviceRGB);
  CGGradientRelease(v16);
}

- (UIEdgeInsets)borderWidths
{
  top = self->_borderWidths.top;
  left = self->_borderWidths.left;
  bottom = self->_borderWidths.bottom;
  right = self->_borderWidths.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)borderMargins
{
  top = self->_borderMargins.top;
  left = self->_borderMargins.left;
  bottom = self->_borderMargins.bottom;
  right = self->_borderMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)imagePadding
{
  top = self->_imagePadding.top;
  left = self->_imagePadding.left;
  bottom = self->_imagePadding.bottom;
  right = self->_imagePadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)shadowOffset
{
  width = self->_shadowOffset.width;
  height = self->_shadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (id)appIconConsumerWithSize:(CGSize)size
{
  v3 = [[self alloc] initWithSize:1 treatment:{size.width, size.height}];

  return v3;
}

+ (id)applePackIconConsumer
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 36.0;
  if (userInterfaceIdiom == 1)
  {
    v5 = 47.0;
  }

  v6 = [self appIconConsumerWithSize:{v5, v5}];

  return v6;
}

+ (id)brickConsumer
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v5 = 103.0;
    v6 = 210.0;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v9 = v8;

    if (v9 <= 375.0)
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 bounds];
      v12 = v11;

      v5 = 100.0;
      if (v12 <= 320.0)
      {
        v5 = 78.0;
      }

      v6 = dbl_259FCB3E0[v12 > 320.0];
    }

    else
    {
      v5 = 86.0;
      v6 = 175.0;
    }
  }

  v13 = [self brickConsumerWithBrickSize:{v6, v5}];

  return v13;
}

+ (id)brickConsumerWithBrickSize:(CGSize)size
{
  v3 = [[self alloc] initWithSize:2 treatment:{size.width, size.height}];

  return v3;
}

+ (id)cardIconConsumer
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 64.0;
  if (userInterfaceIdiom == 1)
  {
    v5 = 72.0;
  }

  v6 = [self appIconConsumerWithSize:{v5, v5}];

  return v6;
}

+ (id)cardProductImageConsumer
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 64.0;
  if (userInterfaceIdiom == 1)
  {
    v5 = 72.0;
  }

  v6 = [self productImageConsumerWithSize:{v5, v5}];

  return v6;
}

+ (id)giftComposeProductImageConsumer
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 64.0;
  if (userInterfaceIdiom == 1)
  {
    v5 = 75.0;
  }

  v6 = [self productImageConsumerWithSize:{v5, v5}];

  return v6;
}

+ (id)giftResultIconConsumer
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 72.0;
  if (userInterfaceIdiom == 1)
  {
    v5 = 144.0;
  }

  v6 = [self appIconConsumerWithSize:{v5, v5}];

  return v6;
}

+ (id)giftResultProductImageConsumer
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 72.0;
  if (userInterfaceIdiom == 1)
  {
    v5 = 144.0;
  }

  v6 = [self productImageConsumerWithSize:{v5, v5}];

  return v6;
}

+ (id)lockupIconConsumerWithSize:(int64_t)size
{
  v4 = SUUILockupImageSizeForLockupSize(size, 12);

  return [self appIconConsumerWithSize:v4];
}

+ (id)lockupProductImageConsumerWithSize:(int64_t)size
{
  v4 = SUUILockupImageSizeForLockupSize(size, 12);

  return [self productImageConsumerWithSize:v4];
}

+ (id)mixedTopChartsNewsstandConsumer
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 64.0;
  if (userInterfaceIdiom == 1)
  {
    v5 = 67.0;
  }

  v6 = [self productImageConsumerWithSize:{v5, v5}];

  return v6;
}

+ (id)newsstandRoomNewsstandConsumer
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v4 = [currentDevice userInterfaceIdiom] == 1;

  v5 = [self productImageConsumerWithSize:{dbl_259FCC010[v4], dbl_259FCC020[v4]}];

  return v5;
}

+ (id)newsstandSwooshNewsstandConsumer
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 107.0;
  if (userInterfaceIdiom != 1)
  {
    v5 = 100.0;
  }

  v6 = [self productImageConsumerWithSize:{dbl_259FCC030[userInterfaceIdiom == 1], v5}];

  return v6;
}

+ (id)parentBundleIconConsumer
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 64.0;
  if (userInterfaceIdiom == 1)
  {
    v5 = 72.0;
  }

  v6 = [self appIconConsumerWithSize:{v5, v5}];

  return v6;
}

+ (id)productImageConsumerWithSize:(CGSize)size
{
  v3 = [[self alloc] initWithSize:5 treatment:{size.width, size.height}];

  return v3;
}

+ (id)productPageProductImageConsumer
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 100.0;
  if (userInterfaceIdiom == 1)
  {
    v5 = 170.0;
  }

  v6 = [self productImageConsumerWithSize:{v5, v5}];

  return v6;
}

+ (id)purchasedProductImageConsumer
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 57.0;
  if (userInterfaceIdiom == 1)
  {
    v5 = 72.0;
  }

  v6 = [self productImageConsumerWithSize:{v5, v5}];

  return v6;
}

+ (id)roomIconConsumer
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 64.0;
  if (userInterfaceIdiom == 1)
  {
    v5 = 75.0;
  }

  v6 = [self appIconConsumerWithSize:{v5, v5}];

  return v6;
}

+ (id)roomProductImageConsumer
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 64.0;
  if (userInterfaceIdiom == 1)
  {
    v5 = 75.0;
  }

  v6 = [self productImageConsumerWithSize:{v5, v5}];

  return v6;
}

+ (id)swooshNewsstandConsumer
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 200.0;
  if (userInterfaceIdiom != 1)
  {
    v5 = 107.0;
  }

  v6 = [self productImageConsumerWithSize:{dbl_259FCC040[userInterfaceIdiom == 1], v5}];

  return v6;
}

+ (id)topChartsIconConsumer
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 64.0;
  if (userInterfaceIdiom == 1)
  {
    v5 = 75.0;
  }

  v6 = [self appIconConsumerWithSize:{v5, v5}];

  return v6;
}

+ (id)topChartsNewsstandConsumer
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v4 = [currentDevice userInterfaceIdiom] == 1;

  v5 = [self productImageConsumerWithSize:{dbl_259FCC010[v4], dbl_259FCC020[v4]}];

  return v5;
}

+ (id)manageMessagesConsumer
{
  v2 = [[self alloc] initWithSize:15 treatment:{29.0, 22.0}];

  return v2;
}

+ (id)categoriesMessagesConsumer
{
  v2 = [[self alloc] initWithSize:15 treatment:{35.0, 26.0}];

  return v2;
}

+ (id)purchasedMessagesConsumer
{
  v2 = [[self alloc] initWithSize:15 treatment:{64.0, 48.0}];

  return v2;
}

@end