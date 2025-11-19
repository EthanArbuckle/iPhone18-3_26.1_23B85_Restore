@interface NTKDigitalTimeLabelStyle
+ (id)_fontForDesign:(id)a3 withWeight:(double)a4 onDevice:(id)a5;
+ (id)defaultRoundedStyleForBounds:(CGRect)a3 withRightSideMargin:(double)a4 applyAdvanceFudge:(BOOL)a5 forDevice:(id)a6;
+ (id)defaultStyleForBounds:(CGRect)a3 withRightSideMargin:(double)a4 applyAdvanceFudge:(BOOL)a5 font:(id)a6 forDevice:(id)a7;
+ (id)defaultStyleForBounds:(CGRect)a3 withRightSideMargin:(double)a4 applyAdvanceFudge:(BOOL)a5 forDevice:(id)a6;
+ (id)defaultStyleForBounds:(CGRect)a3 withRightSideMargin:(double)a4 applyAdvanceFudge:(BOOL)a5 withBaselineY:(double)a6 forDevice:(id)a7;
+ (id)defaultStyleForBounds:(CGRect)a3 withRightSideMargin:(double)a4 applyAdvanceFudge:(BOOL)a5 withBaselineY:(double)a6 withFont:(id)a7 forDevice:(id)a8;
+ (id)smallInUpperRightCornerStyleForBounds:(CGRect)a3 weight:(double)a4 forDevice:(id)a5;
+ (id)smallInUpperRightCornerStyleForBounds:(CGRect)a3 withBaselineY:(double)a4 withFont:(id)a5 forDevice:(id)a6;
+ (id)smallInUpperRightCornerStyleForBounds:(CGRect)a3 withFont:(id)a4 forDevice:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation NTKDigitalTimeLabelStyle

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = NTKDigitalTimeLabelStyle;
  v5 = [(CLKUITimeLabelStyle *)&v9 copyWithZone:?];
  v6 = [(NTKDigitalTimeLabelStyle *)self layoutRule];
  v7 = [v6 copyWithZone:a3];
  [v5 setLayoutRule:v7];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKDigitalTimeLabelStyle;
    if ([(CLKUITimeLabelStyle *)&v8 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = [(NTKDigitalTimeLabelStyle *)v4 layoutRule];
      v6 = [v5 isEqual:self->_layoutRule];
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

+ (id)defaultStyleForBounds:(CGRect)a3 withRightSideMargin:(double)a4 applyAdvanceFudge:(BOOL)a5 forDevice:(id)a6
{
  v6 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v13 = a6;
  ___LayoutConstants_block_invoke_16(v13, v16);
  v14 = [a1 defaultStyleForBounds:v6 withRightSideMargin:v13 applyAdvanceFudge:x withBaselineY:y forDevice:{width, height, a4, *v16}];

  return v14;
}

+ (id)defaultStyleForBounds:(CGRect)a3 withRightSideMargin:(double)a4 applyAdvanceFudge:(BOOL)a5 font:(id)a6 forDevice:(id)a7
{
  v8 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v15 = a7;
  v16 = a6;
  ___LayoutConstants_block_invoke_16(v15, v19);
  v17 = [a1 defaultStyleForBounds:v8 withRightSideMargin:v16 applyAdvanceFudge:v15 withBaselineY:x withFont:y forDevice:{width, height, a4, *v19}];

  return v17;
}

+ (id)defaultStyleForBounds:(CGRect)a3 withRightSideMargin:(double)a4 applyAdvanceFudge:(BOOL)a5 withBaselineY:(double)a6 forDevice:(id)a7
{
  v8 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = *MEMORY[0x277D74408];
  v16 = a7;
  v17 = [a1 _fontForDesign:0 withWeight:v16 onDevice:v15];
  v18 = [a1 defaultStyleForBounds:v8 withRightSideMargin:v17 applyAdvanceFudge:v16 withBaselineY:x withFont:y forDevice:{width, height, a4, a6}];

  return v18;
}

+ (id)defaultRoundedStyleForBounds:(CGRect)a3 withRightSideMargin:(double)a4 applyAdvanceFudge:(BOOL)a5 forDevice:(id)a6
{
  v6 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = *MEMORY[0x277CBB6C0];
  v14 = *MEMORY[0x277D74418];
  v15 = a6;
  v16 = [a1 _fontForDesign:v13 withWeight:v15 onDevice:v14];
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  ___LayoutConstants_block_invoke_16(v15, v19);
  v17 = [a1 defaultStyleForBounds:v6 withRightSideMargin:v16 applyAdvanceFudge:v15 withBaselineY:x withFont:y forDevice:{width, height, a4, *v19}];

  return v17;
}

+ (id)_fontForDesign:(id)a3 withWeight:(double)a4 onDevice:(id)a5
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  ___LayoutConstants_block_invoke_16(a5, &v9);
  if (a3)
  {
    [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:*(&v10 + 1) design:a4];
  }

  else
  {
    [MEMORY[0x277CBBB08] systemFontOfSize:*(&v10 + 1) weight:a4];
  }
  v7 = ;

  return v7;
}

+ (id)defaultStyleForBounds:(CGRect)a3 withRightSideMargin:(double)a4 applyAdvanceFudge:(BOOL)a5 withBaselineY:(double)a6 withFont:(id)a7 forDevice:(id)a8
{
  v10 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a7;
  v17 = a8;
  v18 = objc_alloc_init(NTKDigitalTimeLabelStyle);
  [(CLKUITimeLabelStyle *)v18 setThreeDigitFont:v16];
  [(CLKUITimeLabelStyle *)v18 setFourDigitFont:v16];
  [(CLKUITimeLabelStyle *)v18 setDesignatorFont:v16];
  [v16 lineHeight];
  v20 = v19;
  [v16 descender];
  v22 = v21;
  if (v10)
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    ___LayoutConstants_block_invoke_16(v17, v27);
    a4 = a4 - *(v27 + 1);
  }

  v23 = [[NTKLayoutRule alloc] initForDevice:v17];
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v24 = CGRectGetWidth(v30) - a4;
  [v16 lineHeight];
  [v23 setReferenceFrame:{0.0, y + a6 - (v20 + v22), v24, v25}];
  [v23 setHorizontalLayout:2];
  [v23 setVerticalLayout:0];
  [(NTKDigitalTimeLabelStyle *)v18 setLayoutRule:v23];

  return v18;
}

+ (id)smallInUpperRightCornerStyleForBounds:(CGRect)a3 weight:(double)a4 forDevice:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v11 = a5;
  ___LayoutConstants_block_invoke_16(v11, &v15);
  v12 = [MEMORY[0x277CBBB08] systemFontOfSize:*&v17 weight:{a4, v15, v16}];
  v13 = [a1 smallInUpperRightCornerStyleForBounds:v12 withFont:v11 forDevice:{x, y, width, height}];

  return v13;
}

+ (id)smallInUpperRightCornerStyleForBounds:(CGRect)a3 withFont:(id)a4 forDevice:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v12 = a4;
  [v12 lineHeight];
  v14 = v13;
  [v12 descender];
  v16 = [a1 smallInUpperRightCornerStyleForBounds:v12 withBaselineY:v11 withFont:x forDevice:{y, width, height, v14 + v15}];

  return v16;
}

+ (id)smallInUpperRightCornerStyleForBounds:(CGRect)a3 withBaselineY:(double)a4 withFont:(id)a5 forDevice:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a6;
  v13 = a5;
  v14 = objc_alloc_init(NTKDigitalTimeLabelStyle);
  [(CLKUITimeLabelStyle *)v14 setThreeDigitFont:v13];
  [(CLKUITimeLabelStyle *)v14 setFourDigitFont:v13];
  [(CLKUITimeLabelStyle *)v14 setDesignatorFont:v13];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  ___LayoutConstants_block_invoke_16(v12, &v25);
  v15 = *&v26 + *(&v27 + 1);
  [v13 lineHeight];
  v17 = v16;
  [v13 descender];
  v19 = a4 - (v17 + v18);
  v20 = [[NTKLayoutRule alloc] initForDevice:v12];

  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v21 = CGRectGetWidth(v30) + -3.0;
  [v13 lineHeight];
  v23 = v22;

  [v20 setReferenceFrame:{0.0, v15 + y + v19, v21, v23}];
  [v20 setHorizontalLayout:2];
  [v20 setVerticalLayout:0];
  [(NTKDigitalTimeLabelStyle *)v14 setLayoutRule:v20];

  return v14;
}

@end