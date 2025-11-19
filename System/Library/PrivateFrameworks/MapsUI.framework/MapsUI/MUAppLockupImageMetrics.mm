@interface MUAppLockupImageMetrics
- (CGSize)frameSize;
@end

@implementation MUAppLockupImageMetrics

- (CGSize)frameSize
{
  width = self->_frameSize.width;
  height = self->_frameSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end