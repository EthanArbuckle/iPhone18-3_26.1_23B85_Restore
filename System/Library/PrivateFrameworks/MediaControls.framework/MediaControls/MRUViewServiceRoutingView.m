@interface MRUViewServiceRoutingView
- (CGSize)sizeThatFits:(CGSize)a3;
- (MRUViewServiceRoutingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setAlertView:(id)a3;
- (void)setContentView:(id)a3;
- (void)setCornerRadius:(double)a3;
- (void)setFooterVisible:(BOOL)a3;
- (void)setShowAlertView:(BOOL)a3;
- (void)setState:(int64_t)a3;
- (void)setStylingProvider:(id)a3;
- (void)updateVisibility;
@end

@implementation MRUViewServiceRoutingView

- (MRUViewServiceRoutingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v22.receiver = self;
  v22.super_class = MRUViewServiceRoutingView;
  v7 = [(MRUViewServiceRoutingView *)&v22 initWithFrame:?];
  if (v7)
  {
    v8 = [MRUViewServiceRoutingHeaderView alloc];
    v9 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
    v13 = [(MRUViewServiceRoutingHeaderView *)v8 initWithFrame:*MEMORY[0x1E695F058], v10, v11, v12];
    headerView = v7->_headerView;
    v7->_headerView = v13;

    [(MRUViewServiceRoutingView *)v7 addSubview:v7->_headerView];
    v15 = [[MRUViewServiceRoutingFooterView alloc] initWithFrame:v9, v10, v11, v12];
    footerView = v7->_footerView;
    v7->_footerView = v15;

    [(MRUViewServiceRoutingView *)v7 addSubview:v7->_footerView];
    v17 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:{x, y, width, height}];
    tableView = v7->_tableView;
    v7->_tableView = v17;

    [(UITableView *)v7->_tableView setSeparatorStyle:0];
    [(UITableView *)v7->_tableView setAlwaysBounceVertical:1];
    v19 = [MEMORY[0x1E69DC888] clearColor];
    [(UITableView *)v7->_tableView setBackgroundColor:v19];

    [(UITableView *)v7->_tableView setEstimatedRowHeight:108.0];
    [(UITableView *)v7->_tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
    v20 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v9, v10, v11, v12}];
    [(UITableView *)v7->_tableView setTableFooterView:v20];

    [(UITableView *)v7->_tableView setScrollIndicatorInsets:24.0, 0.0, 24.0, 0.0];
    [(MRUViewServiceRoutingView *)v7 addSubview:v7->_tableView];
    [(MRUViewServiceRoutingView *)v7 updateVisibility];
  }

  return v7;
}

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = MRUViewServiceRoutingView;
  [(MRUViewServiceRoutingView *)&v39 layoutSubviews];
  [(MRUViewServiceRoutingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UITableView *)self->_tableView setFrame:?];
  if (self->_footerVisible || self->_showAlertView)
  {
    [(MRUViewServiceRoutingView *)self safeAreaInsets];
    v4 = v4 + v11;
    v6 = v6 + v12;
    v8 = v8 - (v11 + v13);
    v10 = v10 - (v12 + v14);
  }

  [(UIView *)self->_alertView setFrame:v4, v6, v8, v10];
  [(MRUViewServiceRoutingHeaderView *)self->_headerView sizeThatFits:v8, v10];
  v16 = v15;
  v18 = v17;
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  MinX = CGRectGetMinX(v40);
  v41.origin.x = v4;
  v41.origin.y = v6;
  v41.size.width = v8;
  v41.size.height = v10;
  [(MRUViewServiceRoutingHeaderView *)self->_headerView setFrame:MinX, CGRectGetMinY(v41), v16, v18];
  UIRectInset();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(MRUViewServiceRoutingFooterView *)self->_footerView sizeThatFits:v24, v26];
  v29 = v28;
  v31 = v30;
  v42.origin.x = v21;
  v42.origin.y = v23;
  v42.size.width = v25;
  v42.size.height = v27;
  v32 = CGRectGetMinX(v42);
  v43.origin.x = v21;
  v43.origin.y = v23;
  v43.size.width = v25;
  v43.size.height = v27;
  MaxY = CGRectGetMaxY(v43);
  v34 = MaxY;
  if (self->_footerVisible)
  {
    v34 = MaxY - v31;
    UIRectInset();
    v21 = v35;
    v23 = v36;
    v25 = v37;
    v27 = v38;
  }

  [(MRUViewServiceRoutingFooterView *)self->_footerView setFrame:v32, v34, v29, v31];
  [(UIView *)self->_contentView setFrame:v21, v23, v25, v27];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = MRUDefaultExpandedWidth(self);
  v7 = [MEMORY[0x1E69DC938] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if ((v8 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    preferredWidth = self->_preferredWidth;
    if (v6 >= preferredWidth)
    {
      preferredWidth = v6;
    }

    if (preferredWidth >= width)
    {
      v6 = width;
    }

    else
    {
      v6 = preferredWidth;
    }
  }

  state = self->_state;
  if (state == 1)
  {
    [(UITableView *)self->_tableView _contentSize];
    if (v9 >= height)
    {
      v9 = height;
    }
  }

  else if (!state)
  {
    if (self->_showAlertView)
    {
      [(MRUViewServiceRoutingView *)self safeAreaInsets];
      v13 = v12 + 390.0;
      [(MRUViewServiceRoutingView *)self safeAreaInsets];
      v9 = v13 + v14;
    }

    else
    {
      [(MRUViewServiceRoutingHeaderView *)self->_headerView sizeThatFits:v6, height];
      v16 = height - v15;
      v17 = v15 + 0.0;
      if (self->_footerVisible)
      {
        [(MRUViewServiceRoutingFooterView *)self->_footerView sizeThatFits:v6, v16];
        v16 = v16 - v18;
        v17 = v17 + v18;
      }

      [(UIView *)self->_contentView sizeThatFits:v6, v16];
      if (v19 >= v16)
      {
        v20 = v16;
      }

      else
      {
        v20 = v19;
      }

      v9 = v17 + v20;
    }
  }

  v21 = v6;
  result.height = v9;
  result.width = v21;
  return result;
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v7 = v5;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    [(MRUViewServiceRoutingView *)self addSubview:v7];
    contentView = [(MRUViewServiceRoutingView *)self setNeedsLayout];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](contentView, v5);
}

- (void)setAlertView:(id)a3
{
  v5 = a3;
  if (self->_alertView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_alertView, a3);
    [(MRUViewServiceRoutingView *)self addSubview:self->_alertView];
    [(MRUViewServiceRoutingView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRUViewServiceRoutingHeaderView *)self->_headerView setStylingProvider:v6];
    [(MRUViewServiceRoutingFooterView *)self->_footerView setStylingProvider:v6];
    v5 = v6;
  }
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(MRUViewServiceRoutingView *)self updateVisibility];

    [(MRUViewServiceRoutingView *)self setNeedsLayout];
  }
}

- (void)setCornerRadius:(double)a3
{
  self->_cornerRadius = a3;
  [(MRUViewServiceRoutingView *)self _setContinuousCornerRadius:?];
  tableView = self->_tableView;

  [(UITableView *)tableView setScrollIndicatorInsets:0.0, 0.0, a3, 0.0];
}

- (void)setFooterVisible:(BOOL)a3
{
  if (self->_footerVisible != a3)
  {
    self->_footerVisible = a3;
    [(MRUViewServiceRoutingView *)self updateVisibility];

    [(MRUViewServiceRoutingView *)self setNeedsLayout];
  }
}

- (void)setShowAlertView:(BOOL)a3
{
  if (self->_showAlertView != a3)
  {
    self->_showAlertView = a3;
    [(MRUViewServiceRoutingView *)self updateVisibility];

    [(MRUViewServiceRoutingView *)self setNeedsLayout];
  }
}

- (void)updateVisibility
{
  state = self->_state;
  if (state == 1)
  {
    [(UITableView *)self->_tableView setAlpha:1.0];
    v4 = 0.0;
    [(MRUViewServiceRoutingHeaderView *)self->_headerView setAlpha:0.0];
    [(UIView *)self->_contentView setAlpha:0.0];
    [(MRUViewServiceRoutingFooterView *)self->_footerView setAlpha:0.0];
  }

  else
  {
    if (state)
    {
      return;
    }

    v4 = 0.0;
    [(UITableView *)self->_tableView setAlpha:0.0];
    if (self->_showAlertView)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 1.0;
    }

    [(MRUViewServiceRoutingHeaderView *)self->_headerView setAlpha:v5];
    if (self->_showAlertView)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 1.0;
    }

    [(UIView *)self->_contentView setAlpha:v6];
    v7 = 0.0;
    if (self->_footerVisible && !self->_showAlertView)
    {
      v7 = 1.0;
    }

    [(MRUViewServiceRoutingFooterView *)self->_footerView setAlpha:v7];
    if (self->_showAlertView)
    {
      v4 = 1.0;
    }
  }

  alertView = self->_alertView;

  [(UIView *)alertView setAlpha:v4];
}

@end