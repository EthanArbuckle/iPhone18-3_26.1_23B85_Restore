@interface DSTableView
- (DSTableView)init;
- (void)constrainTableView;
- (void)setContentSize:(CGSize)a3;
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
    v4 = [(DSTableView *)v2 heightAnchor];
    [(DSTableView *)v3 contentSize];
    v6 = [v4 constraintEqualToConstant:v5];
    heightConstraint = v3->_heightConstraint;
    v3->_heightConstraint = v6;

    v8 = [MEMORY[0x277D75348] clearColor];
    [(DSTableView *)v3 setBackgroundColor:v8];

    [(DSTableView *)v3 setAllowsMultipleSelection:1];
    [(DSTableView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v3;
}

- (void)setContentSize:(CGSize)a3
{
  v4.receiver = self;
  v4.super_class = DSTableView;
  [(DSTableView *)&v4 setContentSize:a3.width, a3.height];
  [(DSTableView *)self constrainTableView];
}

- (void)constrainTableView
{
  [(DSTableView *)self contentSize];
  v4 = v3 + 10.0;
  v5 = [(DSTableView *)self heightConstraint];
  [v5 setConstant:v4];

  v6 = [(DSTableView *)self heightConstraint];
  [v6 setActive:1];
}

@end