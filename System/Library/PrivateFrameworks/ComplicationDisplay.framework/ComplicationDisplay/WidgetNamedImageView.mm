@interface WidgetNamedImageView
- (_TtC19ComplicationDisplay20WidgetNamedImageView)initWithCoder:(id)a3;
- (_TtC19ComplicationDisplay20WidgetNamedImageView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setColor:(id)a3;
- (void)setImageProvider:(id)a3;
- (void)setOverrideColor:(id)a3;
@end

@implementation WidgetNamedImageView

- (_TtC19ComplicationDisplay20WidgetNamedImageView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_baseline) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_imageProvider) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_monochromeFraction) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_color) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_usesLegibility) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_overrideColor) = 0;
  result = sub_243DAE2D0();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_243DAA31C();
}

- (void)setImageProvider:(id)a3
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_imageProvider);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_imageProvider) = a3;
  v4 = a3;
  v5 = self;
  sub_243DAA490(v6);
}

- (void)setColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_243DAA750(a3);
}

- (void)setOverrideColor:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_overrideColor);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_overrideColor) = a3;
  v3 = a3;
}

- (_TtC19ComplicationDisplay20WidgetNamedImageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end