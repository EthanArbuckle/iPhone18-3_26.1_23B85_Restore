@interface MRURoutingView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MRURoutingView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentEdgeInsets;
- (void)layoutSubviews;
@end

@implementation MRURoutingView

- (MRURoutingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v14.receiver = self;
  v14.super_class = MRURoutingView;
  v7 = [(MRURoutingView *)&v14 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:0 style:{x, y, width, height}];
    tableView = v7->_tableView;
    v7->_tableView = v8;

    [(UITableView *)v7->_tableView setSeparatorStyle:0];
    [(UITableView *)v7->_tableView setIndicatorStyle:2];
    [(UITableView *)v7->_tableView setAlwaysBounceVertical:1];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UITableView *)v7->_tableView setBackgroundColor:clearColor];

    [(UITableView *)v7->_tableView setRowHeight:52.0];
    [(UITableView *)v7->_tableView _setHeaderAndFooterViewsFloat:0];
    v11 = objc_alloc(MEMORY[0x1E69DD250]);
    v12 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(UITableView *)v7->_tableView setTableFooterView:v12];

    [(UITableView *)v7->_tableView setAccessibilityIdentifier:@"mru-routing-list"];
    [(MRURoutingView *)v7 addSubview:v7->_tableView];
  }

  return v7;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MRURoutingView;
  [(MRURoutingView *)&v3 layoutSubviews];
  [(MRURoutingView *)self bounds];
  [(UITableView *)self->_tableView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(UITableView *)self->_tableView _contentSize];
  if (52.0 * 3.0 >= v6)
  {
    v7 = 52.0 * 3.0;
  }

  else
  {
    v7 = v6;
  }

  v8 = self->_contentEdgeInsets.bottom + self->_contentEdgeInsets.top + v7;
  if (v8 >= height)
  {
    v9 = height;
  }

  else
  {
    v9 = v8;
  }

  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

- (UIEdgeInsets)contentEdgeInsets
{
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end