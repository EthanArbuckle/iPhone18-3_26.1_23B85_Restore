@interface VibrantSegmentedControl
- (_TtC14FitnessAppRoot23VibrantSegmentedControl)initWithCoder:(id)a3;
- (_TtC14FitnessAppRoot23VibrantSegmentedControl)initWithItems:(id)a3;
- (void)_highlightSegment:(int64_t)a3;
- (void)insertSegmentWithImage:(id)a3 atIndex:(int64_t)a4 animated:(BOOL)a5;
- (void)setImage:(id)a3 forSegmentAtIndex:(int64_t)a4;
- (void)setTitleTextAttributes:(id)a3 forState:(unint64_t)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation VibrantSegmentedControl

- (_TtC14FitnessAppRoot23VibrantSegmentedControl)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC14FitnessAppRoot23VibrantSegmentedControl_lastTouchStayedOnSelectedSegment) = 0;
  result = sub_1E5AD0168();
  __break(1u);
  return result;
}

- (void)insertSegmentWithImage:(id)a3 atIndex:(int64_t)a4 animated:(BOOL)a5
{
  v9 = a3;
  v10 = self;
  sub_1E5A9D1F0(a3, a4, a5);
}

- (void)setImage:(id)a3 forSegmentAtIndex:(int64_t)a4
{
  v7 = a3;
  v8 = self;
  sub_1E5A9D420(a3, a4);
}

- (void)setTitleTextAttributes:(id)a3 forState:(unint64_t)a4
{
  v5 = a3;
  if (a3)
  {
    type metadata accessor for Key(0);
    sub_1E5A9E124();
    v5 = sub_1E5ACFAF8();
    v7 = self;
    v8 = sub_1E5ACFAE8();
  }

  else
  {
    v9 = self;
    v8 = 0;
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for VibrantSegmentedControl();
  [(VibrantSegmentedControl *)&v10 setTitleTextAttributes:v8 forState:a4];

  sub_1E5A9DD68(v5, a4);
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  sub_1E5A7C10C(0, &qword_1ED027020, 0x1E69DD190);
  sub_1E5A9E17C();
  v6 = sub_1E5ACFE28();
  v7 = a4;
  v8 = self;
  sub_1E5A9D764(v6, a4);
}

- (void)_highlightSegment:(int64_t)a3
{
  v4 = self;
  v5 = v4;
  if (a3 >= 1 && [(VibrantSegmentedControl *)v4 selectedSegmentIndex]!= a3)
  {
    *(&v5->super.super.super.super.super.isa + OBJC_IVAR____TtC14FitnessAppRoot23VibrantSegmentedControl_lastTouchStayedOnSelectedSegment) = 0;
  }

  v6.receiver = v5;
  v6.super_class = type metadata accessor for VibrantSegmentedControl();
  [(VibrantSegmentedControl *)&v6 _highlightSegment:a3];
}

- (_TtC14FitnessAppRoot23VibrantSegmentedControl)initWithItems:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end