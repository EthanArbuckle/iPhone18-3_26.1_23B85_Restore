@interface GKLoadingCell
- (void)awakeFromNib;
@end

@implementation GKLoadingCell

- (void)awakeFromNib
{
  v6.receiver = self;
  v6.super_class = GKLoadingCell;
  [(GKLoadingCell *)&v6 awakeFromNib];
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();
  v5 = [(GKLoadingCell *)self loading];
  [v5 setText:v4];
}

@end