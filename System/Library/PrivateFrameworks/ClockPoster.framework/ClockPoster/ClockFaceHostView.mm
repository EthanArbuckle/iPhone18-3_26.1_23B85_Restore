@interface ClockFaceHostView
- (UIColor)tintColor;
- (_TtC11ClockPoster17ClockFaceHostView)initWithCoder:(id)coder;
- (_TtC11ClockPoster17ClockFaceHostView)initWithFrame:(CGRect)frame;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setTintColor:(id)color;
@end

@implementation ClockFaceHostView

- (_TtC11ClockPoster17ClockFaceHostView)initWithCoder:(id)coder
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
  superview = [v2 superview];
  if (superview)
  {
    v4 = superview;
    [(UIView *)superview bounds];
    [v2 setFrame_];
    UIView.cp_applyFullscreenConstraints(inContainer:)(v4);
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1E49122FC();
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ClockFaceHostView();
  tintColor = [(ClockFaceHostView *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for ClockFaceHostView();
  colorCopy = color;
  v5 = v8.receiver;
  [(ClockFaceHostView *)&v8 setTintColor:colorCopy];
  v6 = *&v5[OBJC_IVAR____TtC11ClockPoster17ClockFaceHostView_hostedClockFace];
  tintColor = [v5 tintColor];
  [v6 setTintColor_];
}

- (_TtC11ClockPoster17ClockFaceHostView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end