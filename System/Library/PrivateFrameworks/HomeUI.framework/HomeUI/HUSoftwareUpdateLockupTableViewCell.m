@interface HUSoftwareUpdateLockupTableViewCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
@end

@implementation HUSoftwareUpdateLockupTableViewCell

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v10 = [(HULockupTableViewCell *)self lockupView];
  [v10 layoutIfNeeded];

  v15.receiver = self;
  v15.super_class = HUSoftwareUpdateLockupTableViewCell;
  *&v11 = a4;
  *&v12 = a5;
  [(HUSoftwareUpdateLockupTableViewCell *)&v15 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v11, v12];
  result.height = v14;
  result.width = v13;
  return result;
}

@end