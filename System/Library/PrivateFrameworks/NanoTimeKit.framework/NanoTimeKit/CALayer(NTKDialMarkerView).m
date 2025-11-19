@interface CALayer(NTKDialMarkerView)
- (uint64_t)_setAffineTransform:()NTKDialMarkerView;
- (void)addToParentView:()NTKDialMarkerView;
@end

@implementation CALayer(NTKDialMarkerView)

- (void)addToParentView:()NTKDialMarkerView
{
  v4 = [a3 layer];
  [v4 addSublayer:a1];
}

- (uint64_t)_setAffineTransform:()NTKDialMarkerView
{
  v3 = a3[1];
  v5[0] = *a3;
  v5[1] = v3;
  v5[2] = a3[2];
  return [a1 setAffineTransform:v5];
}

@end