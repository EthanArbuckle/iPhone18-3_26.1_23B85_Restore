@interface DOCHorizontalBarProgressView
- (_TtC26DocumentManagerExecutables28DOCHorizontalBarProgressView)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutables28DOCHorizontalBarProgressView)initWithFrame:(CGRect)frame;
@end

@implementation DOCHorizontalBarProgressView

- (_TtC26DocumentManagerExecutables28DOCHorizontalBarProgressView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCHorizontalBarProgressView_changeAnimationDuration;
  *v7 = 0;
  v7[8] = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCHorizontalBarProgressView();
  return [(DOCHorizontalBarProgressView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC26DocumentManagerExecutables28DOCHorizontalBarProgressView)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCHorizontalBarProgressView_changeAnimationDuration;
  *v4 = 0;
  v4[8] = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCHorizontalBarProgressView();
  coderCopy = coder;
  v6 = [(DOCHorizontalBarProgressView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end