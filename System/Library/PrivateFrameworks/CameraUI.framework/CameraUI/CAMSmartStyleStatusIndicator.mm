@interface CAMSmartStyleStatusIndicator
+ (CGPoint)centerPositionForNormalizedValue:(CGPoint)a3 inGridOfSize:(CGSize)a4 strokeWidth:(double)a5 strokeToDotSpacing:(double)a6 gridDotWidth:(double)a7;
+ (id)gridImageWithSize:(CGSize)a3 cornerRadius:(double)a4 strokeWidth:(double)a5 strokeToDotSpacing:(double)a6 gridDotWidth:(double)a7 valueDotWidth:(double)a8 value:(CGPoint)a9 color:(id)a10;
+ (void)_drawCircleInContext:(id)a3 atCenter:(CGPoint)a4 diameter:(double)a5;
- (BOOL)shouldUseActiveTintForCurrentState;
- (CAMSmartStyleStatusIndicator)initWithFrame:(CGRect)a3;
- (CGPoint)_normalizedStyleValue;
- (id)imageForAXHUD;
- (id)imageForCurrentState;
- (id)imageSymbolColorConfiguration;
- (void)_setNormalizedStyleValue:(CGPoint)a3;
- (void)setActive:(BOOL)a3;
- (void)setShowDisabled:(BOOL)a3 animated:(BOOL)a4;
- (void)setShowValueDot:(BOOL)a3;
- (void)setSmartStyle:(id)a3 animated:(BOOL)a4;
@end

@implementation CAMSmartStyleStatusIndicator

- (CAMSmartStyleStatusIndicator)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CAMSmartStyleStatusIndicator;
  v3 = [(CAMControlStatusIndicator *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)setSmartStyle:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  smartStyle = self->_smartStyle;
  if (smartStyle != v6)
  {
    v11 = v6;
    smartStyle = [smartStyle isEqualToSmartStyle:v6];
    v6 = v11;
    if ((smartStyle & 1) == 0)
    {
      objc_storeStrong(&self->_smartStyle, a3);
      [v11 colorBias];
      v9 = v8;
      [v11 toneBias];
      smartStyle = [(CAMSmartStyleStatusIndicator *)self _setNormalizedStyleValue:v9, v10];
      v6 = v11;
    }
  }

  MEMORY[0x1EEE66BB8](smartStyle, v6);
}

- (void)setShowDisabled:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showDisabled != a3)
  {
    self->_showDisabled = a3;
    [(CAMControlStatusIndicator *)self updateImageAnimated:a4];
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    [(CAMControlStatusIndicator *)self updateImageAnimated:0];
  }
}

- (void)setShowValueDot:(BOOL)a3
{
  if (self->_showValueDot != a3)
  {
    self->_showValueDot = a3;
    [(CAMControlStatusIndicator *)self updateImageAnimated:0];
  }
}

- (void)_setNormalizedStyleValue:(CGPoint)a3
{
  if (self->__normalizedStyleValue.x != a3.x || self->__normalizedStyleValue.y != a3.y)
  {
    self->__normalizedStyleValue = a3;
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
  v2 = [(CAMSmartStyleStatusIndicator *)self smartStyle];
  v3 = [v2 isCustomizable];

  return v3;
}

- (id)imageSymbolColorConfiguration
{
  v2 = MEMORY[0x1E69DCAD8];
  v3 = [MEMORY[0x1E69DC888] tintColor];
  v4 = [v2 configurationWithHierarchicalColor:v3];

  return v4;
}

- (id)imageForAXHUD
{
  v2 = objc_opt_class();
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [v2 gridImageWithSize:v3 cornerRadius:48.0 strokeWidth:48.0 strokeToDotSpacing:10.0 gridDotWidth:2.0 valueDotWidth:6.0 value:2.66666667 color:{8.66666667, 0x3FE0000000000000, 0x3FE0000000000000}];

  return v4;
}

+ (id)gridImageWithSize:(CGSize)a3 cornerRadius:(double)a4 strokeWidth:(double)a5 strokeToDotSpacing:(double)a6 gridDotWidth:(double)a7 valueDotWidth:(double)a8 value:(CGPoint)a9 color:(id)a10
{
  height = a3.height;
  width = a3.width;
  v17 = a10;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    v31 = 0;
  }

  else
  {
    v19 = [MEMORY[0x1E69DCA80] preferredFormat];
    v20 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v19 format:{width, height}];
    CEKRectWithSize();
    v33 = a4;
    v34 = a8;
    v22 = v21;
    v24 = v23;
    v25 = a7;
    v27 = v26;
    v28 = a6;
    v30 = v29;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __133__CAMSmartStyleStatusIndicator_gridImageWithSize_cornerRadius_strokeWidth_strokeToDotSpacing_gridDotWidth_valueDotWidth_value_color___block_invoke;
    v36[3] = &unk_1E76F8888;
    v37 = v17;
    v38 = v22;
    v39 = v24;
    v40 = v27;
    v41 = v30;
    v42 = a5;
    v43 = v33;
    v44 = a1;
    v45 = width;
    v46 = height;
    v47 = v28;
    v48 = v25;
    v49 = v34;
    v50 = a9;
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

+ (CGPoint)centerPositionForNormalizedValue:(CGPoint)a3 inGridOfSize:(CGSize)a4 strokeWidth:(double)a5 strokeToDotSpacing:(double)a6 gridDotWidth:(double)a7
{
  y = a3.y;
  x = a3.x;
  CEKRectWithSize();
  v20 = CGRectInset(v19, a5 + a6 + a7 * 0.5, a5 + a6 + a7 * 0.5);
  width = v20.size.width;
  height = v20.size.height;
  UIRectGetCenter();
  v14 = v13 + x * width * 0.5;
  v16 = v15 - y * height * 0.5;
  result.y = v16;
  result.x = v14;
  return result;
}

+ (void)_drawCircleInContext:(id)a3 atCenter:(CGPoint)a4 diameter:(double)a5
{
  v6 = a5 * 0.5;
  v7 = a4.x - v6;
  v8 = a4.y - v6;
  v9 = [a3 CGContext];
  v10 = v7;
  v11 = v8;
  v12 = a5;
  v13 = a5;

  CGContextFillEllipseInRect(v9, *&v10);
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