@interface VNRectangleObservation(ITKUtilities)
- (ITKQuad)itkQuad;
- (id)itk_quadConvertedToView:()ITKUtilities withContentsRect:;
@end

@implementation VNRectangleObservation(ITKUtilities)

- (ITKQuad)itkQuad
{
  objc_opt_class();
  v0 = ITKDynamicCast();
  v1 = v0;
  if (v0)
  {
    [v0 topLeft];
    ITKFlipPoint();
    v16 = v3;
    v17 = v2;
    [v1 topRight];
    ITKFlipPoint();
    v5 = v4;
    v7 = v6;
    [v1 bottomLeft];
    ITKFlipPoint();
    v9 = v8;
    v11 = v10;
    [v1 bottomRight];
    ITKFlipPoint();
    v14 = [[ITKQuad alloc] initWithBottomLeft:v9 bottomRight:v11 topLeft:v12 topRight:v13, v17, v16, v5, v7];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)itk_quadConvertedToView:()ITKUtilities withContentsRect:
{
  v12 = a7;
  itkQuad = [self itkQuad];
  v14 = [itkQuad quadByConvertingFromNormalizedRectToView:v12 contentsRect:{a2, a3, a4, a5}];

  return v14;
}

@end