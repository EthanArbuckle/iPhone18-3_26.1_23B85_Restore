@interface UIView(NTKDialMarkerView)
- (uint64_t)_setAffineTransform:()NTKDialMarkerView;
@end

@implementation UIView(NTKDialMarkerView)

- (uint64_t)_setAffineTransform:()NTKDialMarkerView
{
  v3 = a3[1];
  v5[0] = *a3;
  v5[1] = v3;
  v5[2] = a3[2];
  return [self setTransform:v5];
}

@end