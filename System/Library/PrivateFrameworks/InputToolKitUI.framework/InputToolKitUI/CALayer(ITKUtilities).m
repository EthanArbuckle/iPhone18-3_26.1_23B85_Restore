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
  [a1 bounds];
  v5 = [a1 itk_quadFromConvertingRect:v4 toLayer:?];

  return v5;
}

- (ITKQuad)itk_quadFromConvertingRect:()ITKUtilities toLayer:
{
  v12 = a7;
  v13 = [[ITKQuad alloc] initWithRect:a2, a3, a4, a5];
  [(ITKQuad *)v13 topLeft];
  [a1 convertPoint:v12 toLayer:?];
  v15 = v14;
  v17 = v16;
  [(ITKQuad *)v13 topRight];
  [a1 convertPoint:v12 toLayer:?];
  v19 = v18;
  v21 = v20;
  [(ITKQuad *)v13 bottomLeft];
  [a1 convertPoint:v12 toLayer:?];
  v23 = v22;
  v25 = v24;
  [(ITKQuad *)v13 bottomRight];
  [a1 convertPoint:v12 toLayer:?];
  v27 = v26;
  v29 = v28;

  v30 = [[ITKQuad alloc] initWithBottomLeft:v23 bottomRight:v25 topLeft:v27 topRight:v29, v15, v17, v19, v21];

  return v30;
}

- (ITKAutoFadeOutLayer)itk_autoFadeOutShapePointLayer
{
  v2 = objc_alloc_init(ITKAutoFadeOutLayer);
  v3 = [MEMORY[0x277D75348] itk_randomColor];
  v4 = [v3 colorWithAlphaComponent:0.8];
  -[ITKAutoFadeOutLayer setBackgroundColor:](v2, "setBackgroundColor:", [v4 CGColor]);

  ITKRectWithOriginAndSize();
  [(ITKAutoFadeOutLayer *)v2 setBounds:?];
  [a1 addSublayer:v2];
  v6 = v2;
  itk_dispatchMainAfterDelay();

  return v6;
}

- (id)itk_autoFadeOutShapeRectLayer
{
  v1 = [a1 itk_autoFadeOutShapePointLayer];
  [v1 setBorderColor:{objc_msgSend(v1, "backgroundColor")}];
  [v1 setBorderWidth:2.0];
  v2 = [MEMORY[0x277D75348] clearColor];
  [v1 setBackgroundColor:{objc_msgSend(v2, "CGColor")}];

  return v1;
}

@end