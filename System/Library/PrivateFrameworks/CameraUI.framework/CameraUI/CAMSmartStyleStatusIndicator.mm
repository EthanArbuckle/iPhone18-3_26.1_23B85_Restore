@interface CAMSmartStyleStatusIndicator
+ (CGPoint)centerPositionForNormalizedValue:(CGPoint)value inGridOfSize:(CGSize)size strokeWidth:(double)width strokeToDotSpacing:(double)spacing gridDotWidth:(double)dotWidth;
+ (id)gridImageWithSize:(CGSize)size cornerRadius:(double)radius strokeWidth:(double)width strokeToDotSpacing:(double)spacing gridDotWidth:(double)dotWidth valueDotWidth:(double)valueDotWidth value:(CGPoint)value color:(id)self0;
+ (void)_drawCircleInContext:(id)context atCenter:(CGPoint)center diameter:(double)diameter;
- (BOOL)shouldUseActiveTintForCurrentState;
- (CAMSmartStyleStatusIndicator)initWithFrame:(CGRect)frame;
- (CGPoint)_normalizedStyleValue;
- (id)imageForAXHUD;
- (id)imageForCurrentState;
- (id)imageSymbolColorConfiguration;
- (void)_setNormalizedStyleValue:(CGPoint)value;
- (void)setActive:(BOOL)active;
- (void)setShowDisabled:(BOOL)disabled animated:(BOOL)animated;
- (void)setShowValueDot:(BOOL)dot;
- (void)setSmartStyle:(id)style animated:(BOOL)animated;
@end

@implementation CAMSmartStyleStatusIndicator

- (CAMSmartStyleStatusIndicator)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CAMSmartStyleStatusIndicator;
  v3 = [(CAMControlStatusIndicator *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)setSmartStyle:(id)style animated:(BOOL)animated
{
  styleCopy = style;
  smartStyle = self->_smartStyle;
  if (smartStyle != styleCopy)
  {
    v11 = styleCopy;
    smartStyle = [smartStyle isEqualToSmartStyle:styleCopy];
    styleCopy = v11;
    if ((smartStyle & 1) == 0)
    {
      objc_storeStrong(&self->_smartStyle, style);
      [v11 colorBias];
      v9 = v8;
      [v11 toneBias];
      smartStyle = [(CAMSmartStyleStatusIndicator *)self _setNormalizedStyleValue:v9, v10];
      styleCopy = v11;
    }
  }

  MEMORY[0x1EEE66BB8](smartStyle, styleCopy);
}

- (void)setShowDisabled:(BOOL)disabled animated:(BOOL)animated
{
  if (self->_showDisabled != disabled)
  {
    self->_showDisabled = disabled;
    [(CAMControlStatusIndicator *)self updateImageAnimated:animated];
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    [(CAMControlStatusIndicator *)self updateImageAnimated:0];
  }
}

- (void)setShowValueDot:(BOOL)dot
{
  if (self->_showValueDot != dot)
  {
    self->_showValueDot = dot;
    [(CAMControlStatusIndicator *)self updateImageAnimated:0];
  }
}

- (void)_setNormalizedStyleValue:(CGPoint)value
{
  if (self->__normalizedStyleValue.x != value.x || self->__normalizedStyleValue.y != value.y)
  {
    self->__normalizedStyleValue = value;
    if ([(CAMSmartStyleStatusIndicator *)self showValueDot])
    {

      [(CAMControlStatusIndicator *)self updateImage];
    }
  }
}

- (id)imageForCurrentState
{
  if ([(CAMSmartStyleStatusIndicator *)self isActive])
  {
    [MEMORY[0x1E69DC888] systemYellowColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v3 = ;
  if ([(CAMSmartStyleStatusIndicator *)self showValueDot])
  {
    v4 = 4.33333333;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = objc_opt_class();
  [(CAMSmartStyleStatusIndicator *)self _normalizedStyleValue];
  v8 = [v5 gridImageWithSize:v3 cornerRadius:24.0 strokeWidth:24.0 strokeToDotSpacing:5.0 gridDotWidth:1.0 valueDotWidth:3.0 value:1.33333333 color:{v4, v6, v7}];

  return v8;
}

- (BOOL)shouldUseActiveTintForCurrentState
{
  smartStyle = [(CAMSmartStyleStatusIndicator *)self smartStyle];
  isCustomizable = [smartStyle isCustomizable];

  return isCustomizable;
}

- (id)imageSymbolColorConfiguration
{
  v2 = MEMORY[0x1E69DCAD8];
  tintColor = [MEMORY[0x1E69DC888] tintColor];
  v4 = [v2 configurationWithHierarchicalColor:tintColor];

  return v4;
}

- (id)imageForAXHUD
{
  v2 = objc_opt_class();
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [v2 gridImageWithSize:whiteColor cornerRadius:48.0 strokeWidth:48.0 strokeToDotSpacing:10.0 gridDotWidth:2.0 valueDotWidth:6.0 value:2.66666667 color:{8.66666667, 0x3FE0000000000000, 0x3FE0000000000000}];

  return v4;
}

+ (id)gridImageWithSize:(CGSize)size cornerRadius:(double)radius strokeWidth:(double)width strokeToDotSpacing:(double)spacing gridDotWidth:(double)dotWidth valueDotWidth:(double)valueDotWidth value:(CGPoint)value color:(id)self0
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    v31 = 0;
  }

  else
  {
    preferredFormat = [MEMORY[0x1E69DCA80] preferredFormat];
    v20 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:preferredFormat format:{width, height}];
    CEKRectWithSize();
    radiusCopy = radius;
    valueDotWidthCopy = valueDotWidth;
    v22 = v21;
    v24 = v23;
    dotWidthCopy = dotWidth;
    v27 = v26;
    spacingCopy = spacing;
    v30 = v29;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __133__CAMSmartStyleStatusIndicator_gridImageWithSize_cornerRadius_strokeWidth_strokeToDotSpacing_gridDotWidth_valueDotWidth_value_color___block_invoke;
    v36[3] = &unk_1E76F8888;
    v37 = colorCopy;
    v38 = v22;
    v39 = v24;
    v40 = v27;
    v41 = v30;
    widthCopy = width;
    v43 = radiusCopy;
    selfCopy = self;
    widthCopy2 = width;
    v46 = height;
    v47 = spacingCopy;
    v48 = dotWidthCopy;
    v49 = valueDotWidthCopy;
    valueCopy = value;
    v31 = [v20 imageWithActions:v36];
  }

  return v31;
}

void __133__CAMSmartStyleStatusIndicator_gridImageWithSize_cornerRadius_strokeWidth_strokeToDotSpacing_gridDotWidth_valueDotWidth_value_color___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v3 = [*(a1 + 32) colorWithAlphaComponent:0.8];
  [v3 setStroke];
  [v3 setFill];
  v16 = CGRectInset(*(a1 + 40), *(a1 + 72) * 0.5, *(a1 + 72) * 0.5);
  v4 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v16.origin.x cornerRadius:{v16.origin.y, v16.size.width, v16.size.height, *(a1 + 80)}];
  [v4 setLineWidth:*(a1 + 72)];
  [v4 stroke];
  v5 = [*(a1 + 32) colorWithAlphaComponent:0.6];
  [v5 setFill];
  v6 = 0;
  v12 = 0;
  v11 = xmmword_1A3A68020;
  v13 = xmmword_1A3A68030;
  do
  {
    v7 = 0;
    v8 = *(&v11 + v6);
    do
    {
      [*(a1 + 88) centerPositionForNormalizedValue:v8 inGridOfSize:*(&v11 + v7) strokeWidth:*(a1 + 96) strokeToDotSpacing:*(a1 + 104) gridDotWidth:{*(a1 + 72), *(a1 + 112), *(a1 + 120)}];
      [*(a1 + 88) _drawCircleInContext:v10 atCenter:? diameter:?];
      v7 += 8;
    }

    while (v7 != 40);
    ++v6;
  }

  while (v6 != 5);
  if (*(a1 + 128) > 0.0)
  {
    v9 = [*(a1 + 32) colorWithAlphaComponent:1.0];
    [v9 setFill];
    [*(a1 + 88) centerPositionForNormalizedValue:*(a1 + 136) inGridOfSize:*(a1 + 144) strokeWidth:*(a1 + 96) strokeToDotSpacing:*(a1 + 104) gridDotWidth:{*(a1 + 72), *(a1 + 112), *(a1 + 120)}];
    [*(a1 + 88) _drawCircleInContext:v10 atCenter:? diameter:?];
  }
}

+ (CGPoint)centerPositionForNormalizedValue:(CGPoint)value inGridOfSize:(CGSize)size strokeWidth:(double)width strokeToDotSpacing:(double)spacing gridDotWidth:(double)dotWidth
{
  y = value.y;
  x = value.x;
  CEKRectWithSize();
  v20 = CGRectInset(v19, width + spacing + dotWidth * 0.5, width + spacing + dotWidth * 0.5);
  width = v20.size.width;
  height = v20.size.height;
  UIRectGetCenter();
  v14 = v13 + x * width * 0.5;
  v16 = v15 - y * height * 0.5;
  result.y = v16;
  result.x = v14;
  return result;
}

+ (void)_drawCircleInContext:(id)context atCenter:(CGPoint)center diameter:(double)diameter
{
  v6 = diameter * 0.5;
  v7 = center.x - v6;
  v8 = center.y - v6;
  cGContext = [context CGContext];
  v10 = v7;
  v11 = v8;
  diameterCopy = diameter;
  diameterCopy2 = diameter;

  CGContextFillEllipseInRect(cGContext, *&v10);
}

- (CGPoint)_normalizedStyleValue
{
  x = self->__normalizedStyleValue.x;
  y = self->__normalizedStyleValue.y;
  result.y = y;
  result.x = x;
  return result;
}

@end