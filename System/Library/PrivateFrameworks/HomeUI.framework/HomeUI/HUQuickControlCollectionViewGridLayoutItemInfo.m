@interface HUQuickControlCollectionViewGridLayoutItemInfo
- (CGSize)preferredSize;
- (CGSize)size;
@end

@implementation HUQuickControlCollectionViewGridLayoutItemInfo

- (CGSize)preferredSize
{
  width = self->_preferredSize.width;
  height = self->_preferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end