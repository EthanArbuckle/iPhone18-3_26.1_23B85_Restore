@interface FMTitleViewCenteringNavigationBar
- (void)layoutSubviews;
@end

@implementation FMTitleViewCenteringNavigationBar

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = FMTitleViewCenteringNavigationBar;
  [(FMTitleViewCenteringNavigationBar *)&v39 layoutSubviews];
  topItem = [(FMTitleViewCenteringNavigationBar *)self topItem];
  titleView = [topItem titleView];

  if (titleView)
  {
    currentLeftView = [(FMTitleViewCenteringNavigationBar *)self currentLeftView];

    v6 = 0.0;
    v7 = 0.0;
    if (currentLeftView)
    {
      currentLeftView2 = [(FMTitleViewCenteringNavigationBar *)self currentLeftView];
      [currentLeftView2 frame];
      v10 = v9;
      v12 = v11;

      v7 = v10 + v12;
    }

    currentRightView = [(FMTitleViewCenteringNavigationBar *)self currentRightView];

    if (currentRightView)
    {
      currentRightView2 = [(FMTitleViewCenteringNavigationBar *)self currentRightView];
      [currentRightView2 frame];
      v16 = v15;

      [(FMTitleViewCenteringNavigationBar *)self frame];
      v6 = v17 - v16;
    }

    topItem2 = [(FMTitleViewCenteringNavigationBar *)self topItem];
    titleView2 = [topItem2 titleView];
    [titleView2 frame];
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
      topItem3 = [(FMTitleViewCenteringNavigationBar *)self topItem];
      titleView3 = [topItem3 titleView];
      [titleView3 setFrame:{x, y, width, height}];
    }
  }
}

@end