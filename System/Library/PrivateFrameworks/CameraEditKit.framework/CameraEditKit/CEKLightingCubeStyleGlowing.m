@interface CEKLightingCubeStyleGlowing
+ (id)contourAppearance;
+ (id)naturalAppearance;
+ (id)stageAppearance;
+ (id)stageWhiteAppearance;
+ (id)studioAppearance;
@end

@implementation CEKLightingCubeStyleGlowing

+ (id)naturalAppearance
{
  if (naturalAppearance_token != -1)
  {
    +[CEKLightingCubeStyleGlowing naturalAppearance];
  }

  v3 = naturalAppearance_naturalAppearance;

  return v3;
}

void __48__CEKLightingCubeStyleGlowing_naturalAppearance__block_invoke()
{
  StrokeColor = CreateStrokeColor();
  v1 = [(CEKLightingCubeAppearance *)[CEKLightingCubeMutableAppearance alloc] initWithStroke:StrokeColor];
  v2 = naturalAppearance_naturalAppearance;
  naturalAppearance_naturalAppearance = v1;

  CGColorRelease(StrokeColor);
}

+ (id)studioAppearance
{
  if (studioAppearance_token != -1)
  {
    +[CEKLightingCubeStyleGlowing studioAppearance];
  }

  v3 = studioAppearance_studioAppearance;

  return v3;
}

void __47__CEKLightingCubeStyleGlowing_studioAppearance__block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  space = CGColorSpaceCreateDeviceGray();
  BackgroundGradient = CreateBackgroundGradient();
  FillColor = CreateFillColor();
  GlowGradient = CreateGlowGradient();
  MaskGradient = CreateMaskGradient(0.1, 0.3);
  v4 = CreateFillColor();
  v5 = CreateGlowGradient();
  v6 = CreateMaskGradient(0.5, 0.9);
  *components = xmmword_1B7EDA4E0;
  v7 = CGColorCreate(space, components);
  StrokeColor = CreateStrokeColor();
  v9 = [(CEKLightingCubeAppearance *)[CEKLightingCubeMutableAppearance alloc] initWithStroke:StrokeColor];
  [(CEKLightingCubeMutableAppearance *)v9 setBackground:BackgroundGradient];
  [(CEKLightingCubeMutableAppearance *)v9 setTopFill:FillColor];
  [(CEKLightingCubeMutableAppearance *)v9 setTopGlow:GlowGradient];
  [(CEKLightingCubeMutableAppearance *)v9 setTopMask:MaskGradient];
  [(CEKLightingCubeMutableAppearance *)v9 setBottomFill:v4];
  [(CEKLightingCubeMutableAppearance *)v9 setBottomOuterGlow:v5];
  [(CEKLightingCubeMutableAppearance *)v9 setBottomMask:v6];
  [(CEKLightingCubeMutableAppearance *)v9 setVerticalFillColor:v7];
  v10 = studioAppearance_studioAppearance;
  studioAppearance_studioAppearance = v9;

  CGColorRelease(StrokeColor);
  CGColorRelease(v7);
  CGColorRelease(FillColor);
  CGGradientRelease(GlowGradient);
  CGGradientRelease(MaskGradient);
  CGColorRelease(v4);
  CGGradientRelease(v5);
  CGGradientRelease(v6);
  CGGradientRelease(BackgroundGradient);
  CGColorSpaceRelease(space);
}

+ (id)contourAppearance
{
  if (contourAppearance_token != -1)
  {
    +[CEKLightingCubeStyleGlowing contourAppearance];
  }

  v3 = contourAppearance_contourAppearance;

  return v3;
}

void __48__CEKLightingCubeStyleGlowing_contourAppearance__block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  space = CGColorSpaceCreateDeviceGray();
  BackgroundGradient = CreateBackgroundGradient();
  FillColor = CreateFillColor();
  GlowGradient = CreateGlowGradient();
  MaskGradient = CreateMaskGradient(0.5, 0.8);
  v4 = CreateFillColor();
  v5 = CreateGlowGradient();
  v6 = CreateMaskGradient(0.5, 0.9);
  *components = xmmword_1B7EDA5E0;
  v7 = CGColorCreate(space, components);
  StrokeColor = CreateStrokeColor();
  v9 = [(CEKLightingCubeAppearance *)[CEKLightingCubeMutableAppearance alloc] initWithStroke:StrokeColor];
  [(CEKLightingCubeMutableAppearance *)v9 setBackground:BackgroundGradient];
  [(CEKLightingCubeMutableAppearance *)v9 setTopFill:FillColor];
  [(CEKLightingCubeMutableAppearance *)v9 setTopGlow:GlowGradient];
  [(CEKLightingCubeMutableAppearance *)v9 setTopMask:MaskGradient];
  [(CEKLightingCubeMutableAppearance *)v9 setBottomFill:v4];
  [(CEKLightingCubeMutableAppearance *)v9 setBottomOuterGlow:v5];
  [(CEKLightingCubeMutableAppearance *)v9 setBottomMask:v6];
  [(CEKLightingCubeMutableAppearance *)v9 setVerticalFillColor:v7];
  v10 = contourAppearance_contourAppearance;
  contourAppearance_contourAppearance = v9;

  CGColorRelease(StrokeColor);
  CGColorRelease(v7);
  CGColorRelease(FillColor);
  CGGradientRelease(GlowGradient);
  CGGradientRelease(MaskGradient);
  CGColorRelease(v4);
  CGGradientRelease(v5);
  CGGradientRelease(v6);
  CGGradientRelease(BackgroundGradient);
  CGColorSpaceRelease(space);
}

+ (id)stageAppearance
{
  if (stageAppearance_token != -1)
  {
    +[CEKLightingCubeStyleGlowing stageAppearance];
  }

  v3 = stageAppearance_stageAppearance;

  return v3;
}

void __46__CEKLightingCubeStyleGlowing_stageAppearance__block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  FillColor = CreateFillColor();
  GlowGradient = CreateGlowGradient();
  MaskGradient = CreateMaskGradient(0.55, 0.9);
  v8 = xmmword_1B7EDA5F0;
  v4 = CGColorCreate(DeviceGray, &v8);
  StrokeColor = CreateStrokeColor();
  v6 = [(CEKLightingCubeAppearance *)[CEKLightingCubeMutableAppearance alloc] initWithStroke:StrokeColor];
  [(CEKLightingCubeMutableAppearance *)v6 setBottomFill:FillColor];
  [(CEKLightingCubeMutableAppearance *)v6 setBottomOuterGlow:GlowGradient];
  [(CEKLightingCubeMutableAppearance *)v6 setBottomMask:MaskGradient];
  [(CEKLightingCubeMutableAppearance *)v6 setVerticalFillColor:v4];
  v7 = stageAppearance_stageAppearance;
  stageAppearance_stageAppearance = v6;

  CGColorRelease(StrokeColor);
  CGColorRelease(v4);
  CGColorRelease(FillColor);
  CGGradientRelease(GlowGradient);
  CGGradientRelease(MaskGradient);
  CGColorSpaceRelease(DeviceGray);
}

+ (id)stageWhiteAppearance
{
  if (stageWhiteAppearance_token != -1)
  {
    +[CEKLightingCubeStyleGlowing stageWhiteAppearance];
  }

  v3 = stageWhiteAppearance_stageWhiteAppearance;

  return v3;
}

void __51__CEKLightingCubeStyleGlowing_stageWhiteAppearance__block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  BackgroundGradient = CreateBackgroundGradient();
  *components = xmmword_1B7EDA600;
  v2 = CGColorCreate(DeviceGray, components);
  GlowGradient = CreateGlowGradient();
  MaskGradient = CreateMaskGradient(0.55, 0.9);
  __asm { FMOV            V0.2D, #1.0 }

  v14 = _Q0;
  v10 = CGColorCreate(DeviceGray, &v14);
  StrokeColor = CreateStrokeColor();
  v12 = [(CEKLightingCubeAppearance *)[CEKLightingCubeMutableAppearance alloc] initWithStroke:StrokeColor];
  [(CEKLightingCubeMutableAppearance *)v12 setBackground:BackgroundGradient];
  [(CEKLightingCubeMutableAppearance *)v12 setBottomFill:v2];
  [(CEKLightingCubeMutableAppearance *)v12 setBottomInnerGlow:GlowGradient];
  [(CEKLightingCubeMutableAppearance *)v12 setBottomMask:MaskGradient];
  [(CEKLightingCubeMutableAppearance *)v12 setVerticalFillColor:v10];
  [(CEKLightingCubeMutableAppearance *)v12 setVerticalFillFrontIntensity:0.0];
  [(CEKLightingCubeMutableAppearance *)v12 setVerticalFillBackIntensity:0.33];
  v13 = stageWhiteAppearance_stageWhiteAppearance;
  stageWhiteAppearance_stageWhiteAppearance = v12;

  CGColorRelease(StrokeColor);
  CGColorRelease(v2);
  CGGradientRelease(BackgroundGradient);
  CGGradientRelease(GlowGradient);
  CGGradientRelease(MaskGradient);
  CGColorRelease(v10);
  CGColorSpaceRelease(DeviceGray);
}

@end