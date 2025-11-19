@interface SFUnifiedTabBarAnimatedResizingInfo
- (CGPoint)targetContentOffset;
- (SFUnifiedTabBarAnimatedResizingInfo)initWithItemsToKeepVisible:(id)a3 targetContentOffset:(CGPoint)a4;
@end

@implementation SFUnifiedTabBarAnimatedResizingInfo

- (SFUnifiedTabBarAnimatedResizingInfo)initWithItemsToKeepVisible:(id)a3 targetContentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = a3;
  v13.receiver = self;
  v13.super_class = SFUnifiedTabBarAnimatedResizingInfo;
  v9 = [(SFUnifiedTabBarAnimatedResizingInfo *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemsToKeepVisible, a3);
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