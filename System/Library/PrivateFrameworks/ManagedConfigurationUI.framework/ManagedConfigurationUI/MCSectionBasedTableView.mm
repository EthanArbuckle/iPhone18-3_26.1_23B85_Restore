@interface MCSectionBasedTableView
- (MCSectionBasedTableView)initWithFrame:(CGRect)frame;
- (id)_createTableView;
- (void)layoutSubviews;
@end

@implementation MCSectionBasedTableView

- (MCSectionBasedTableView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = MCSectionBasedTableView;
  v3 = [(MCSectionBasedTableView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _createTableView = [(MCSectionBasedTableView *)v3 _createTableView];
    tableView = v4->_tableView;
    v4->_tableView = _createTableView;

    [(MCSectionBasedTableView *)v4 addSubview:v4->_tableView];
  }

  return v4;
}

- (id)_createTableView
{
  v2 = objc_alloc(MEMORY[0x277D75B40]);
  v3 = [v2 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v3 setSeparatorStyle:0];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [v3 setBackgroundColor:systemBackgroundColor];

  [v3 setContentInsetAdjustmentBehavior:2];
  [v3 setShowsVerticalScrollIndicator:0];

  return v3;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = MCSectionBasedTableView;
  [(MCSectionBasedTableView *)&v6 layoutSubviews];
  [(MCSectionBasedTableView *)self bounds];
  Width = CGRectGetWidth(v7);
  [(MCSectionBasedTableView *)self bounds];
  Height = CGRectGetHeight(v8);
  tableView = [(MCSectionBasedTableView *)self tableView];
  [tableView setFrame:{0.0, 0.0, Width, Height}];
}

@end