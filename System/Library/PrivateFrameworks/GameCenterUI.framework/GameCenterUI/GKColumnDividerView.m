@interface GKColumnDividerView
- (GKColumnDividerView)initWithFrame:(CGRect)a3;
@end

@implementation GKColumnDividerView

- (GKColumnDividerView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = GKColumnDividerView;
  v3 = [(GKColumnDividerView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [GKHairlineView hairlineViewForAlignment:1];
    [(GKColumnDividerView *)v3 setHairlineView:v4];

    [(GKHairlineView *)v3->_hairlineView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKColumnDividerView *)v3 addSubview:v3->_hairlineView];
    v5 = [MEMORY[0x277CCAAD0] constraintWithItem:v3->_hairlineView attribute:5 relatedBy:0 toItem:v3 attribute:5 multiplier:1.0 constant:0.0];
    [(GKColumnDividerView *)v3 addConstraint:v5];

    v6 = [MEMORY[0x277CCAAD0] constraintWithItem:v3->_hairlineView attribute:8 relatedBy:0 toItem:v3 attribute:8 multiplier:1.0 constant:0.0];
    [(GKColumnDividerView *)v3 addConstraint:v6];

    v7 = [MEMORY[0x277CCAAD0] constraintWithItem:v3->_hairlineView attribute:3 relatedBy:0 toItem:v3 attribute:3 multiplier:1.0 constant:0.0];
    [(GKColumnDividerView *)v3 addConstraint:v7];
  }

  return v3;
}

@end