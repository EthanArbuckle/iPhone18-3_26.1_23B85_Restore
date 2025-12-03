@interface DSTableView
- (DSTableView)init;
- (void)constrainTableView;
- (void)setContentSize:(CGSize)size;
@end

@implementation DSTableView

- (DSTableView)init
{
  v10.receiver = self;
  v10.super_class = DSTableView;
  v2 = [(DSTableView *)&v10 initWithFrame:2 style:0.0, 0.0, 0.0, 0.0];
  v3 = v2;
  if (v2)
  {
    heightAnchor = [(DSTableView *)v2 heightAnchor];
    [(DSTableView *)v3 contentSize];
    v6 = [heightAnchor constraintEqualToConstant:v5];
    heightConstraint = v3->_heightConstraint;
    v3->_heightConstraint = v6;

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(DSTableView *)v3 setBackgroundColor:clearColor];

    [(DSTableView *)v3 setAllowsMultipleSelection:1];
    [(DSTableView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v3;
}

- (void)setContentSize:(CGSize)size
{
  v4.receiver = self;
  v4.super_class = DSTableView;
  [(DSTableView *)&v4 setContentSize:size.width, size.height];
  [(DSTableView *)self constrainTableView];
}

- (void)constrainTableView
{
  [(DSTableView *)self contentSize];
  v4 = v3 + 10.0;
  heightConstraint = [(DSTableView *)self heightConstraint];
  [heightConstraint setConstant:v4];

  heightConstraint2 = [(DSTableView *)self heightConstraint];
  [heightConstraint2 setActive:1];
}

@end