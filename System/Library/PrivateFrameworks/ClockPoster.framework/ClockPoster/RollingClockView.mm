@interface RollingClockView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC11ClockPoster16RollingClockView)initWithCoder:(id)coder;
- (_TtC11ClockPoster16RollingClockView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation RollingClockView

- (_TtC11ClockPoster16RollingClockView)initWithCoder:(id)coder
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster16RollingClockView_viewController);
  selfCopy = self;
  view = [v5 view];
  if (view)
  {
    v10 = view;
    [view sizeThatFits_];
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

- (_TtC11ClockPoster16RollingClockView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end