@interface GKCenteringScrollView
- (void)centerContentViewIfDesirable;
- (void)layoutSubviews;
@end

@implementation GKCenteringScrollView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = GKCenteringScrollView;
  [(GKCenteringScrollView *)&v3 layoutSubviews];
  [(GKCenteringScrollView *)self centerContentViewIfDesirable];
}

- (void)centerContentViewIfDesirable
{
  if (self->_contentView)
  {
    [(GKCenteringScrollView *)self bounds];
    v4 = v3;
    v6 = v5;
    rect = v7;
    v9 = v8;
    [(UIView *)self->_contentView frame];
    v44 = v11;
    v45 = v10;
    v43 = v12;
    v14 = v13;
    [(GKCenteringScrollView *)self contentInset];
    v16 = v15;
    v18 = v17;
    [(GKCenteringScrollView *)self safeAreaInsets];
    v19 = v16 + v18;
    v20 = v9 - (v16 + v18);
    if (v20 > v14)
    {
      UIRectCenteredYInRect();
      [(UIView *)self->_contentView setFrame:?];
    }

    v42 = v6;
    [(GKCenteringScrollView *)self contentSize];
    v22 = v21;
    v24 = v23;
    contentView = [(GKCenteringScrollView *)self contentView];
    [contentView frame];
    v27 = v26;

    if (v22 > v27)
    {
      contentView2 = [(GKCenteringScrollView *)self contentView];
      [contentView2 frame];
      v30 = v29;

      [(GKCenteringScrollView *)self setContentSize:v30, v24];
    }

    footerView = self->_footerView;
    if (footerView)
    {
      [(UIView *)footerView frame];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      if (v20 <= v14)
      {
        v49.origin.y = v44;
        v49.origin.x = v45;
        v49.size.width = v43;
        v49.size.height = v14;
        MaxY = CGRectGetMaxY(v49);
        v39 = v37;
      }

      else
      {
        v48.origin.x = v4;
        v48.origin.y = v42;
        v48.size.width = rect;
        v48.size.height = v9;
        MaxY = CGRectGetMaxY(v48);
        v39 = v19 + v37;
      }

      v40 = self->_footerView;
      v41 = MaxY - (v39 + 8.0);

      [(UIView *)v40 setFrame:v33, v41, v35, v37];
    }
  }
}

@end