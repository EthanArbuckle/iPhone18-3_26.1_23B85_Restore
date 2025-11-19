@interface ClockFaceHostView
- (UIColor)tintColor;
- (_TtC11ClockPoster17ClockFaceHostView)initWithCoder:(id)a3;
- (_TtC11ClockPoster17ClockFaceHostView)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setTintColor:(id)a3;
@end

@implementation ClockFaceHostView

- (_TtC11ClockPoster17ClockFaceHostView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster17ClockFaceHostView_wasUnsupportedPortraitInterface) = 0;
  result = sub_1E49986DC();
  __break(1u);
  return result;
}

- (void)didMoveToSuperview
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ClockFaceHostView();
  v2 = v5.receiver;
  [(ClockFaceHostView *)&v5 didMoveToSuperview];
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v3;
    [(UIView *)v3 bounds];
    [v2 setFrame_];
    UIView.cp_applyFullscreenConstraints(inContainer:)(v4);
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1E49122FC();
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ClockFaceHostView();
  v2 = [(ClockFaceHostView *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for ClockFaceHostView();
  v4 = a3;
  v5 = v8.receiver;
  [(ClockFaceHostView *)&v8 setTintColor:v4];
  v6 = *&v5[OBJC_IVAR____TtC11ClockPoster17ClockFaceHostView_hostedClockFace];
  v7 = [v5 tintColor];
  [v6 setTintColor_];
}

- (_TtC11ClockPoster17ClockFaceHostView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end