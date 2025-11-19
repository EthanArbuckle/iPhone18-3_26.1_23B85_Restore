@interface CEKLightingCubeAppearance
+ (id)appearanceFrom:(id)a3 to:(id)a4 progress:(double)a5;
- (CEKLightingCubeAppearance)initWithStroke:(CGColor *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation CEKLightingCubeAppearance

- (CEKLightingCubeAppearance)initWithStroke:(CGColor *)a3
{
  v6.receiver = self;
  v6.super_class = CEKLightingCubeAppearance;
  v4 = [(CEKLightingCubeAppearance *)&v6 init];
  if (v4)
  {
    v4->_stroke = CGColorRetain(a3);
    *&v4->_verticalFillFrontIntensity = xmmword_1B7EDA780;
  }

  return v4;
}

+ (id)appearanceFrom:(id)a3 to:(id)a4 progress:(double)a5
{
  v7 = a4;
  v8 = a3;
  Interpolated = CubeColorCreateInterpolated([v8 stroke], objc_msgSend(v7, "stroke"), a5);
  v10 = [(CEKLightingCubeAppearance *)[CEKLightingCubeMutableAppearance alloc] initWithStroke:Interpolated];
  CGColorRelease(Interpolated);
  gradient = CubeGradientCreateInterpolated([v8 background], objc_msgSend(v7, "background"), a5);
  v11 = CubeColorCreateInterpolated([v8 topFill], objc_msgSend(v7, "topFill"), a5);
  v12 = CubeGradientCreateInterpolated([v8 topGlow], objc_msgSend(v7, "topGlow"), a5);
  v30 = CubeGradientCreateInterpolated([v8 topMask], objc_msgSend(v7, "topMask"), a5);
  v13 = CubeColorCreateInterpolated([v8 bottomFill], objc_msgSend(v7, "bottomFill"), a5);
  v29 = CubeGradientCreateInterpolated([v8 bottomInnerGlow], objc_msgSend(v7, "bottomInnerGlow"), a5);
  v28 = CubeGradientCreateInterpolated([v8 bottomOuterGlow], objc_msgSend(v7, "bottomOuterGlow"), a5);
  v27 = CubeGradientCreateInterpolated([v8 bottomMask], objc_msgSend(v7, "bottomMask"), a5);
  v26 = CubeColorCreateInterpolated([v8 verticalFillColor], objc_msgSend(v7, "verticalFillColor"), a5);
  [v8 verticalFillFrontIntensity];
  v15 = v14;
  [v7 verticalFillFrontIntensity];
  v17 = CEKInterpolate(v15, v16, a5);
  [v8 verticalFillBackIntensity];
  v19 = v18;
  [v7 verticalFillBackIntensity];
  v21 = CEKInterpolate(v19, v20, a5);
  v22 = [v8 topOver];

  v23 = [v7 topOver];
  v24 = CubeGradientCreateInterpolated(v22, v23, a5);
  [(CEKLightingCubeMutableAppearance *)v10 setBackground:gradient];
  [(CEKLightingCubeMutableAppearance *)v10 setTopFill:v11];
  [(CEKLightingCubeMutableAppearance *)v10 setTopGlow:v12];
  [(CEKLightingCubeMutableAppearance *)v10 setTopMask:v30];
  [(CEKLightingCubeMutableAppearance *)v10 setBottomFill:v13];
  [(CEKLightingCubeMutableAppearance *)v10 setBottomInnerGlow:v29];
  [(CEKLightingCubeMutableAppearance *)v10 setBottomOuterGlow:v28];
  [(CEKLightingCubeMutableAppearance *)v10 setBottomMask:v27];
  [(CEKLightingCubeMutableAppearance *)v10 setVerticalFillColor:v26];
  [(CEKLightingCubeMutableAppearance *)v10 setVerticalFillFrontIntensity:v17];
  [(CEKLightingCubeMutableAppearance *)v10 setVerticalFillBackIntensity:v21];
  [(CEKLightingCubeMutableAppearance *)v10 setTopOver:v24];
  CGColorRelease(v11);
  CGColorRelease(v13);
  CGColorRelease(v26);
  CGGradientRelease(gradient);
  CGGradientRelease(v12);
  CGGradientRelease(v30);
  CGGradientRelease(v29);
  CGGradientRelease(v28);
  CGGradientRelease(v27);
  CGGradientRelease(v24);

  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(CEKLightingCubeAppearance *)[CEKLightingCubeMutableAppearance alloc] initWithStroke:self->_stroke];
  [(CEKLightingCubeMutableAppearance *)v4 setBackground:self->_background];
  [(CEKLightingCubeMutableAppearance *)v4 setTopFill:self->_topFill];
  [(CEKLightingCubeMutableAppearance *)v4 setBottomFill:self->_bottomFill];
  [(CEKLightingCubeMutableAppearance *)v4 setTopGlow:self->_topGlow];
  [(CEKLightingCubeMutableAppearance *)v4 setBottomInnerGlow:self->_bottomInnerGlow];
  [(CEKLightingCubeMutableAppearance *)v4 setBottomOuterGlow:self->_bottomOuterGlow];
  [(CEKLightingCubeMutableAppearance *)v4 setVerticalFillColor:self->_verticalFillColor];
  [(CEKLightingCubeMutableAppearance *)v4 setVerticalFillFrontIntensity:self->_verticalFillFrontIntensity];
  [(CEKLightingCubeMutableAppearance *)v4 setVerticalFillBackIntensity:self->_verticalFillBackIntensity];
  [(CEKLightingCubeMutableAppearance *)v4 setTopOver:self->_topOver];
  return v4;
}

- (void)dealloc
{
  CGGradientRelease(self->_background);
  CGColorRelease(self->_topFill);
  CGGradientRelease(self->_topGlow);
  CGGradientRelease(self->_topMask);
  CGColorRelease(self->_bottomFill);
  CGGradientRelease(self->_bottomInnerGlow);
  CGGradientRelease(self->_bottomOuterGlow);
  CGGradientRelease(self->_bottomMask);
  CGColorRelease(self->_verticalFillColor);
  CGGradientRelease(self->_topOver);
  CGColorRelease(self->_stroke);
  v3.receiver = self;
  v3.super_class = CEKLightingCubeAppearance;
  [(CEKLightingCubeAppearance *)&v3 dealloc];
}

@end