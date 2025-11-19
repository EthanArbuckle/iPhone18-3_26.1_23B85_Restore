@interface DOCHorizontalBarProgressView
- (_TtC26DocumentManagerExecutables28DOCHorizontalBarProgressView)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables28DOCHorizontalBarProgressView)initWithFrame:(CGRect)a3;
@end

@implementation DOCHorizontalBarProgressView

- (_TtC26DocumentManagerExecutables28DOCHorizontalBarProgressView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCHorizontalBarProgressView_changeAnimationDuration;
  *v7 = 0;
  v7[8] = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCHorizontalBarProgressView();
  return [(DOCHorizontalBarProgressView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC26DocumentManagerExecutables28DOCHorizontalBarProgressView)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCHorizontalBarProgressView_changeAnimationDuration;
  *v4 = 0;
  v4[8] = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCHorizontalBarProgressView();
  v5 = a3;
  v6 = [(DOCHorizontalBarProgressView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end