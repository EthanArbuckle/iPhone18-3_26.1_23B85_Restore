@interface RollingClockView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC11ClockPoster16RollingClockView)initWithCoder:(id)a3;
- (_TtC11ClockPoster16RollingClockView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation RollingClockView

- (_TtC11ClockPoster16RollingClockView)initWithCoder:(id)a3
{
  sub_1E4996F3C();
  v4 = OBJC_IVAR____TtC11ClockPoster16RollingClockView_model;
  v5 = type metadata accessor for RollingClockViewModel();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(&self->super.super.super.isa + v4) = sub_1E48B81A4();
  result = sub_1E49986DC();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for RollingClockView();
  [(RollingClockView *)&v2 layoutSubviews];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster16RollingClockView_viewController);
  v6 = self;
  v7 = [v5 view];
  if (v7)
  {
    v10 = v7;
    [v7 sizeThatFits_];
    v12 = v11;
    v14 = v13;

    v8 = v12;
    v9 = v14;
  }

  else
  {
    __break(1u);
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC11ClockPoster16RollingClockView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end