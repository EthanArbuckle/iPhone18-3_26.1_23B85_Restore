@interface DBResizeWindow
- (_TtC9DashBoard14DBResizeWindow)initWithWindowScene:(id)scene frame:(CGRect)frame;
@end

@implementation DBResizeWindow

- (_TtC9DashBoard14DBResizeWindow)initWithWindowScene:(id)scene frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sceneCopy = scene;
  v9 = sub_248279ADC(sceneCopy, 12, x, y, width, height);
  v10 = objc_opt_self();
  v11 = v9;
  blackColor = [v10 blackColor];
  [(DBResizeWindow *)v11 setBackgroundColor:blackColor];

  return v11;
}

@end