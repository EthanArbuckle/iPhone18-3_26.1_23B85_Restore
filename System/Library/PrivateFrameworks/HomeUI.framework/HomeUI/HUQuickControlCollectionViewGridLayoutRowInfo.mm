@interface HUQuickControlCollectionViewGridLayoutRowInfo
- (CGPoint)rowOrigin;
- (CGSize)contentSize;
@end

@implementation HUQuickControlCollectionViewGridLayoutRowInfo

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)rowOrigin
{
  x = self->_rowOrigin.x;
  y = self->_rowOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end