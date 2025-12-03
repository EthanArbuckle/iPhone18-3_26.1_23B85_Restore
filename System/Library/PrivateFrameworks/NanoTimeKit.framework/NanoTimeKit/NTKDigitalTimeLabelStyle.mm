@interface NTKDigitalTimeLabelStyle
+ (id)_fontForDesign:(id)design withWeight:(double)weight onDevice:(id)device;
+ (id)defaultRoundedStyleForBounds:(CGRect)bounds withRightSideMargin:(double)margin applyAdvanceFudge:(BOOL)fudge forDevice:(id)device;
+ (id)defaultStyleForBounds:(CGRect)bounds withRightSideMargin:(double)margin applyAdvanceFudge:(BOOL)fudge font:(id)font forDevice:(id)device;
+ (id)defaultStyleForBounds:(CGRect)bounds withRightSideMargin:(double)margin applyAdvanceFudge:(BOOL)fudge forDevice:(id)device;
+ (id)defaultStyleForBounds:(CGRect)bounds withRightSideMargin:(double)margin applyAdvanceFudge:(BOOL)fudge withBaselineY:(double)y forDevice:(id)device;
+ (id)defaultStyleForBounds:(CGRect)bounds withRightSideMargin:(double)margin applyAdvanceFudge:(BOOL)fudge withBaselineY:(double)y withFont:(id)font forDevice:(id)device;
+ (id)smallInUpperRightCornerStyleForBounds:(CGRect)bounds weight:(double)weight forDevice:(id)device;
+ (id)smallInUpperRightCornerStyleForBounds:(CGRect)bounds withBaselineY:(double)y withFont:(id)font forDevice:(id)device;
+ (id)smallInUpperRightCornerStyleForBounds:(CGRect)bounds withFont:(id)font forDevice:(id)device;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation NTKDigitalTimeLabelStyle

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = NTKDigitalTimeLabelStyle;
  v5 = [(CLKUITimeLabelStyle *)&v9 copyWithZone:?];
  layoutRule = [(NTKDigitalTimeLabelStyle *)self layoutRule];
  v7 = [layoutRule copyWithZone:zone];
  [v5 setLayoutRule:v7];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKDigitalTimeLabelStyle;
    if ([(CLKUITimeLabelStyle *)&v8 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      layoutRule = [(NTKDigitalTimeLabelStyle *)equalCopy layoutRule];
      v6 = [layoutRule isEqual:self->_layoutRule];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = NTKDigitalTimeLabelStyle;
  v3 = [(CLKUITimeLabelStyle *)&v5 hash];
  return ([(NTKLayoutRule *)self->_layoutRule hash]* 1000.0 + v3 * 100.0);
}

+ (id)defaultStyleForBounds:(CGRect)bounds withRightSideMargin:(double)margin applyAdvanceFudge:(BOOL)fudge forDevice:(id)device
{
  fudgeCopy = fudge;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  deviceCopy = device;
  ___LayoutConstants_block_invoke_16(deviceCopy, v16);
  v14 = [self defaultStyleForBounds:fudgeCopy withRightSideMargin:deviceCopy applyAdvanceFudge:x withBaselineY:y forDevice:{width, height, margin, *v16}];

  return v14;
}

+ (id)defaultStyleForBounds:(CGRect)bounds withRightSideMargin:(double)margin applyAdvanceFudge:(BOOL)fudge font:(id)font forDevice:(id)device
{
  fudgeCopy = fudge;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  deviceCopy = device;
  fontCopy = font;
  ___LayoutConstants_block_invoke_16(deviceCopy, v19);
  v17 = [self defaultStyleForBounds:fudgeCopy withRightSideMargin:fontCopy applyAdvanceFudge:deviceCopy withBaselineY:x withFont:y forDevice:{width, height, margin, *v19}];

  return v17;
}

+ (id)defaultStyleForBounds:(CGRect)bounds withRightSideMargin:(double)margin applyAdvanceFudge:(BOOL)fudge withBaselineY:(double)y forDevice:(id)device
{
  fudgeCopy = fudge;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v15 = *MEMORY[0x277D74408];
  deviceCopy = device;
  v17 = [self _fontForDesign:0 withWeight:deviceCopy onDevice:v15];
  v18 = [self defaultStyleForBounds:fudgeCopy withRightSideMargin:v17 applyAdvanceFudge:deviceCopy withBaselineY:x withFont:y forDevice:{width, height, margin, y}];

  return v18;
}

+ (id)defaultRoundedStyleForBounds:(CGRect)bounds withRightSideMargin:(double)margin applyAdvanceFudge:(BOOL)fudge forDevice:(id)device
{
  fudgeCopy = fudge;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v13 = *MEMORY[0x277CBB6C0];
  v14 = *MEMORY[0x277D74418];
  deviceCopy = device;
  v16 = [self _fontForDesign:v13 withWeight:deviceCopy onDevice:v14];
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  ___LayoutConstants_block_invoke_16(deviceCopy, v19);
  v17 = [self defaultStyleForBounds:fudgeCopy withRightSideMargin:v16 applyAdvanceFudge:deviceCopy withBaselineY:x withFont:y forDevice:{width, height, margin, *v19}];

  return v17;
}

+ (id)_fontForDesign:(id)design withWeight:(double)weight onDevice:(id)device
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  ___LayoutConstants_block_invoke_16(device, &v9);
  if (design)
  {
    [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:*(&v10 + 1) design:weight];
  }

  else
  {
    [MEMORY[0x277CBBB08] systemFontOfSize:*(&v10 + 1) weight:weight];
  }
  v7 = ;

  return v7;
}

+ (id)defaultStyleForBounds:(CGRect)bounds withRightSideMargin:(double)margin applyAdvanceFudge:(BOOL)fudge withBaselineY:(double)y withFont:(id)font forDevice:(id)device
{
  fudgeCopy = fudge;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  fontCopy = font;
  deviceCopy = device;
  v18 = objc_alloc_init(NTKDigitalTimeLabelStyle);
  [(CLKUITimeLabelStyle *)v18 setThreeDigitFont:fontCopy];
  [(CLKUITimeLabelStyle *)v18 setFourDigitFont:fontCopy];
  [(CLKUITimeLabelStyle *)v18 setDesignatorFont:fontCopy];
  [fontCopy lineHeight];
  v20 = v19;
  [fontCopy descender];
  v22 = v21;
  if (fudgeCopy)
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    ___LayoutConstants_block_invoke_16(deviceCopy, v27);
    margin = margin - *(v27 + 1);
  }

  v23 = [[NTKLayoutRule alloc] initForDevice:deviceCopy];
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v24 = CGRectGetWidth(v30) - margin;
  [fontCopy lineHeight];
  [v23 setReferenceFrame:{0.0, y + y - (v20 + v22), v24, v25}];
  [v23 setHorizontalLayout:2];
  [v23 setVerticalLayout:0];
  [(NTKDigitalTimeLabelStyle *)v18 setLayoutRule:v23];

  return v18;
}

+ (id)smallInUpperRightCornerStyleForBounds:(CGRect)bounds weight:(double)weight forDevice:(id)device
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  deviceCopy = device;
  ___LayoutConstants_block_invoke_16(deviceCopy, &v15);
  v12 = [MEMORY[0x277CBBB08] systemFontOfSize:*&v17 weight:{weight, v15, v16}];
  v13 = [self smallInUpperRightCornerStyleForBounds:v12 withFont:deviceCopy forDevice:{x, y, width, height}];

  return v13;
}

+ (id)smallInUpperRightCornerStyleForBounds:(CGRect)bounds withFont:(id)font forDevice:(id)device
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  deviceCopy = device;
  fontCopy = font;
  [fontCopy lineHeight];
  v14 = v13;
  [fontCopy descender];
  v16 = [self smallInUpperRightCornerStyleForBounds:fontCopy withBaselineY:deviceCopy withFont:x forDevice:{y, width, height, v14 + v15}];

  return v16;
}

+ (id)smallInUpperRightCornerStyleForBounds:(CGRect)bounds withBaselineY:(double)y withFont:(id)font forDevice:(id)device
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  deviceCopy = device;
  fontCopy = font;
  v14 = objc_alloc_init(NTKDigitalTimeLabelStyle);
  [(CLKUITimeLabelStyle *)v14 setThreeDigitFont:fontCopy];
  [(CLKUITimeLabelStyle *)v14 setFourDigitFont:fontCopy];
  [(CLKUITimeLabelStyle *)v14 setDesignatorFont:fontCopy];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  ___LayoutConstants_block_invoke_16(deviceCopy, &v25);
  v15 = *&v26 + *(&v27 + 1);
  [fontCopy lineHeight];
  v17 = v16;
  [fontCopy descender];
  v19 = y - (v17 + v18);
  v20 = [[NTKLayoutRule alloc] initForDevice:deviceCopy];

  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v21 = CGRectGetWidth(v30) + -3.0;
  [fontCopy lineHeight];
  v23 = v22;

  [v20 setReferenceFrame:{0.0, v15 + y + v19, v21, v23}];
  [v20 setHorizontalLayout:2];
  [v20 setVerticalLayout:0];
  [(NTKDigitalTimeLabelStyle *)v14 setLayoutRule:v20];

  return v14;
}

@end