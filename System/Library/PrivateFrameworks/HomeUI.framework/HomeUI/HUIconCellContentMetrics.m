@interface HUIconCellContentMetrics
+ (id)compactMetrics;
+ (id)defaultMetrics;
- (CGSize)iconSize;
- (UIEdgeInsets)contentInset;
@end

@implementation HUIconCellContentMetrics

+ (id)defaultMetrics
{
  v2 = objc_alloc_init(a1);
  HUDefaultSizeForIconSize();
  [v2 setIconSize:?];
  [v2 setContentInset:{8.0, 0.0, 8.0, 0.0}];

  return v2;
}

+ (id)compactMetrics
{
  v2 = objc_alloc_init(a1);
  HUDefaultSizeForIconSize();
  [v2 setIconSize:?];
  [v2 setContentInset:{4.0, 0.0, 4.0, 0.0}];

  return v2;
}

- (CGSize)iconSize
{
  width = self->_iconSize.width;
  height = self->_iconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end