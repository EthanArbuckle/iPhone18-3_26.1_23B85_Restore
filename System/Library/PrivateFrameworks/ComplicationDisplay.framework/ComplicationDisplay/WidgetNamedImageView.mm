@interface WidgetNamedImageView
- (_TtC19ComplicationDisplay20WidgetNamedImageView)initWithCoder:(id)coder;
- (_TtC19ComplicationDisplay20WidgetNamedImageView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setColor:(id)color;
- (void)setImageProvider:(id)provider;
- (void)setOverrideColor:(id)color;
@end

@implementation WidgetNamedImageView

- (_TtC19ComplicationDisplay20WidgetNamedImageView)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_243DAA31C();
}

- (void)setImageProvider:(id)provider
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_imageProvider);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_imageProvider) = provider;
  providerCopy = provider;
  selfCopy = self;
  sub_243DAA490(v6);
}

- (void)setColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_243DAA750(color);
}

- (void)setOverrideColor:(id)color
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_overrideColor);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_overrideColor) = color;
  colorCopy = color;
}

- (_TtC19ComplicationDisplay20WidgetNamedImageView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end