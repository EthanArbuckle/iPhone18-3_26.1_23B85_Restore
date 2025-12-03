@interface SFUnifiedTabBarAnimatedResizingInfo
- (CGPoint)targetContentOffset;
- (SFUnifiedTabBarAnimatedResizingInfo)initWithItemsToKeepVisible:(id)visible targetContentOffset:(CGPoint)offset;
@end

@implementation SFUnifiedTabBarAnimatedResizingInfo

- (SFUnifiedTabBarAnimatedResizingInfo)initWithItemsToKeepVisible:(id)visible targetContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  visibleCopy = visible;
  v13.receiver = self;
  v13.super_class = SFUnifiedTabBarAnimatedResizingInfo;
  v9 = [(SFUnifiedTabBarAnimatedResizingInfo *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemsToKeepVisible, visible);
    v10->_targetContentOffset.x = x;
    v10->_targetContentOffset.y = y;
    v11 = v10;
  }

  return v10;
}

- (CGPoint)targetContentOffset
{
  x = self->_targetContentOffset.x;
  y = self->_targetContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end