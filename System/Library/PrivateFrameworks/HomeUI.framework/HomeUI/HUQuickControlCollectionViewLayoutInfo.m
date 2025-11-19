@interface HUQuickControlCollectionViewLayoutInfo
- (CGRect)availableContentFrame;
- (CGSize)collectionViewContentSize;
@end

@implementation HUQuickControlCollectionViewLayoutInfo

- (CGRect)availableContentFrame
{
  x = self->_availableContentFrame.origin.x;
  y = self->_availableContentFrame.origin.y;
  width = self->_availableContentFrame.size.width;
  height = self->_availableContentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)collectionViewContentSize
{
  width = self->_collectionViewContentSize.width;
  height = self->_collectionViewContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end