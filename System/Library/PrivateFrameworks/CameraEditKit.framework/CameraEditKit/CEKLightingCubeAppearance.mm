@interface CEKLightingCubeAppearance
+ (id)appearanceFrom:(id)from to:(id)to progress:(double)progress;
- (CEKLightingCubeAppearance)initWithStroke:(CGColor *)stroke;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation CEKLightingCubeAppearance

- (CEKLightingCubeAppearance)initWithStroke:(CGColor *)stroke
{
  v6.receiver = self;
  v6.super_class = CEKLightingCubeAppearance;
  v4 = [(CEKLightingCubeAppearance *)&v6 init];
  if (v4)
  {
    v4->_stroke = CGColorRetain(stroke);
    *&v4->_verticalFillFrontIntensity = xmmword_1B7EDA780;
  }

  return v4;
}

+ (id)appearanceFrom:(id)from to:(id)to progress:(double)progress
{
  toCopy = to;
  fromCopy = from;
  Interpolated = CubeColorCreateInterpolated([fromCopy stroke], objc_msgSend(toCopy, "stroke"), progress);
  v10 = [(CEKLightingCubeAppearance *)[CEKLightingCubeMutableAppearance alloc] initWithStroke:Interpolated];
  CGColorRelease(Interpolated);
  gradient = CubeGradientCreateInterpolated([fromCopy background], objc_msgSend(toCopy, "background"), progress);
  v11 = CubeColorCreateInterpolated([fromCopy topFill], objc_msgSend(toCopy, "topFill"), progress);
  v12 = CubeGradientCreateInterpolated([fromCopy topGlow], objc_msgSend(toCopy, "topGlow"), progress);
  v30 = CubeGradientCreateInterpolated([fromCopy topMask], objc_msgSend(toCopy, "topMask"), progress);
  v13 = CubeColorCreateInterpolated([fromCopy bottomFill], objc_msgSend(toCopy, "bottomFill"), progress);
  v29 = CubeGradientCreateInterpolated([fromCopy bottomInnerGlow], objc_msgSend(toCopy, "bottomInnerGlow"), progress);
  v28 = CubeGradientCreateInterpolated([fromCopy bottomOuterGlow], objc_msgSend(toCopy, "bottomOuterGlow"), progress);
  v27 = CubeGradientCreateInterpolated([fromCopy bottomMask], objc_msgSend(toCopy, "bottomMask"), progress);
  v26 = CubeColorCreateInterpolated([fromCopy verticalFillColor], objc_msgSend(toCopy, "verticalFillColor"), progress);
  [fromCopy verticalFillFrontIntensity];
  v15 = v14;
  [toCopy verticalFillFrontIntensity];
  v17 = CEKInterpolate(v15, v16, progress);
  [fromCopy verticalFillBackIntensity];
  v19 = v18;
  [toCopy verticalFillBackIntensity];
  v21 = CEKInterpolate(v19, v20, progress);
  topOver = [fromCopy topOver];

  topOver2 = [toCopy topOver];
  v24 = CubeGradientCreateInterpolated(topOver, topOver2, progress);
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

- (id)mutableCopyWithZone:(_NSZone *)zone
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