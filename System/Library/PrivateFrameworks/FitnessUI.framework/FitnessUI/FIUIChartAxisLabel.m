@interface FIUIChartAxisLabel
- (CGSize)shadowOffset;
@end

@implementation FIUIChartAxisLabel

- (CGSize)shadowOffset
{
  width = self->_shadowOffset.width;
  height = self->_shadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

@end