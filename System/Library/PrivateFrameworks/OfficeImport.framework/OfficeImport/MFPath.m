@interface MFPath
- (CGPoint)currentPoint;
@end

@implementation MFPath

- (CGPoint)currentPoint
{
  v2 = 0.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

@end