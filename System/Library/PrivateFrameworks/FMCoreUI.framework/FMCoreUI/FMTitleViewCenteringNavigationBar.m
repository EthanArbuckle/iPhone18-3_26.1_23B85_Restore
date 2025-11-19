@interface FMTitleViewCenteringNavigationBar
- (void)layoutSubviews;
@end

@implementation FMTitleViewCenteringNavigationBar

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = FMTitleViewCenteringNavigationBar;
  [(FMTitleViewCenteringNavigationBar *)&v39 layoutSubviews];
  v3 = [(FMTitleViewCenteringNavigationBar *)self topItem];
  v4 = [v3 titleView];

  if (v4)
  {
    v5 = [(FMTitleViewCenteringNavigationBar *)self currentLeftView];

    v6 = 0.0;
    v7 = 0.0;
    if (v5)
    {
      v8 = [(FMTitleViewCenteringNavigationBar *)self currentLeftView];
      [v8 frame];
      v10 = v9;
      v12 = v11;

      v7 = v10 + v12;
    }

    v13 = [(FMTitleViewCenteringNavigationBar *)self currentRightView];

    if (v13)
    {
      v14 = [(FMTitleViewCenteringNavigationBar *)self currentRightView];
      [v14 frame];
      v16 = v15;

      [(FMTitleViewCenteringNavigationBar *)self frame];
      v6 = v17 - v16;
    }

    v18 = [(FMTitleViewCenteringNavigationBar *)self topItem];
    v19 = [v18 titleView];
    [v19 frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    [(FMTitleViewCenteringNavigationBar *)self bounds];
    if (v7 >= v6)
    {
      v32 = v7;
    }

    else
    {
      v32 = v6;
    }

    v40 = CGRectInset(*&v28, v32, 0.0);
    x = v40.origin.x;
    y = v40.origin.y;
    width = v40.size.width;
    height = v40.size.height;
    v40.origin.x = v21;
    v40.origin.y = v23;
    v40.size.width = v25;
    v40.size.height = v27;
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    if (!CGRectEqualToRect(v40, v41))
    {
      v37 = [(FMTitleViewCenteringNavigationBar *)self topItem];
      v38 = [v37 titleView];
      [v38 setFrame:{x, y, width, height}];
    }
  }
}

@end