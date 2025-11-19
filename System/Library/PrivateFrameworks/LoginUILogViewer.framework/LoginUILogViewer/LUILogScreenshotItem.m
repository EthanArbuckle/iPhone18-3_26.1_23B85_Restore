@interface LUILogScreenshotItem
- (_NSRange)visibleRange;
@end

@implementation LUILogScreenshotItem

- (_NSRange)visibleRange
{
  length = self->_visibleRange.length;
  location = self->_visibleRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end