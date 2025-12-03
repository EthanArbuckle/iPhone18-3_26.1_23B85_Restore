@interface DBInterestingWindow
- (CGRect)frame;
- (void)setFrame:(CGRect)frame;
@end

@implementation DBInterestingWindow

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DBInterestingWindow();
  [(DBInterestingWindow *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DBInterestingWindow();
  v7 = v9.receiver;
  [(DBInterestingWindow *)&v9 setFrame:x, y, width, height];
  v8 = *&v7[OBJC_IVAR____TtC9DashBoard19DBInterestingWindow__interestingView];
  [v7 bounds];
  [v8 setFrame_];
  [v7 layoutIfNeeded];
}

@end