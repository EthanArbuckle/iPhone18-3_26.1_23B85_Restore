@interface DBResizeWindow
- (_TtC9DashBoard14DBResizeWindow)initWithWindowScene:(id)a3 frame:(CGRect)a4;
@end

@implementation DBResizeWindow

- (_TtC9DashBoard14DBResizeWindow)initWithWindowScene:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  v9 = sub_248279ADC(v8, 12, x, y, width, height);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 blackColor];
  [(DBResizeWindow *)v11 setBackgroundColor:v12];

  return v11;
}

@end