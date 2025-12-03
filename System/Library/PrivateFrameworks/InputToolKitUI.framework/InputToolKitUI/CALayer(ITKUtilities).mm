@interface CALayer(ITKUtilities)
- (ITKAutoFadeOutLayer)itk_autoFadeOutShapePointLayer;
- (ITKQuad)itk_quadFromConvertingRect:()ITKUtilities toLayer:;
- (id)itk_autoFadeOutShapeRectLayer;
- (id)itk_quadFromConvertingBoundsToLayer:()ITKUtilities;
@end

@implementation CALayer(ITKUtilities)

- (id)itk_quadFromConvertingBoundsToLayer:()ITKUtilities
{
  v4 = a3;
  [self bounds];
  v5 = [self itk_quadFromConvertingRect:v4 toLayer:?];

  return v5;
}

- (ITKQuad)itk_quadFromConvertingRect:()ITKUtilities toLayer:
{
  v12 = a7;
  v13 = [[ITKQuad alloc] initWithRect:a2, a3, a4, a5];
  [(ITKQuad *)v13 topLeft];
  [self convertPoint:v12 toLayer:?];
  v15 = v14;
  v17 = v16;
  [(ITKQuad *)v13 topRight];
  [self convertPoint:v12 toLayer:?];
  v19 = v18;
  v21 = v20;
  [(ITKQuad *)v13 bottomLeft];
  [self convertPoint:v12 toLayer:?];
  v23 = v22;
  v25 = v24;
  [(ITKQuad *)v13 bottomRight];
  [self convertPoint:v12 toLayer:?];
  v27 = v26;
  v29 = v28;

  v30 = [[ITKQuad alloc] initWithBottomLeft:v23 bottomRight:v25 topLeft:v27 topRight:v29, v15, v17, v19, v21];

  return v30;
}

- (ITKAutoFadeOutLayer)itk_autoFadeOutShapePointLayer
{
  v2 = objc_alloc_init(ITKAutoFadeOutLayer);
  itk_randomColor = [MEMORY[0x277D75348] itk_randomColor];
  v4 = [itk_randomColor colorWithAlphaComponent:0.8];
  -[ITKAutoFadeOutLayer setBackgroundColor:](v2, "setBackgroundColor:", [v4 CGColor]);

  ITKRectWithOriginAndSize();
  [(ITKAutoFadeOutLayer *)v2 setBounds:?];
  [self addSublayer:v2];
  v6 = v2;
  itk_dispatchMainAfterDelay();

  return v6;
}

- (id)itk_autoFadeOutShapeRectLayer
{
  itk_autoFadeOutShapePointLayer = [self itk_autoFadeOutShapePointLayer];
  [itk_autoFadeOutShapePointLayer setBorderColor:{objc_msgSend(itk_autoFadeOutShapePointLayer, "backgroundColor")}];
  [itk_autoFadeOutShapePointLayer setBorderWidth:2.0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [itk_autoFadeOutShapePointLayer setBackgroundColor:{objc_msgSend(clearColor, "CGColor")}];

  return itk_autoFadeOutShapePointLayer;
}

@end