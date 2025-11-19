@interface GKDashboardShowMoreTextCell
+ (CGSize)defaultSize;
- (void)awakeFromNib;
@end

@implementation GKDashboardShowMoreTextCell

+ (CGSize)defaultSize
{
  v2 = 42.0;
  v3 = 0.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (void)awakeFromNib
{
  v6.receiver = self;
  v6.super_class = GKDashboardShowMoreTextCell;
  [(GKRectShadowCell *)&v6 awakeFromNib];
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();
  v5 = [(GKDashboardShowMoreTextCell *)self label];
  [v5 setText:v4];
}

@end