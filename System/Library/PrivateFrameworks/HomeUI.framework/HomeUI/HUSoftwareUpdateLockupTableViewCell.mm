@interface HUSoftwareUpdateLockupTableViewCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
@end

@implementation HUSoftwareUpdateLockupTableViewCell

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  lockupView = [(HULockupTableViewCell *)self lockupView];
  [lockupView layoutIfNeeded];

  v15.receiver = self;
  v15.super_class = HUSoftwareUpdateLockupTableViewCell;
  *&v11 = priority;
  *&v12 = fittingPriority;
  [(HUSoftwareUpdateLockupTableViewCell *)&v15 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v11, v12];
  result.height = v14;
  result.width = v13;
  return result;
}

@end