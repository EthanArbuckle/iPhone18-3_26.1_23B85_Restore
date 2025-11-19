@interface WidgetNamedImageProvider
- (CGSize)maxSize;
- (UIFont)font;
- (_TtC19ComplicationDisplay24WidgetNamedImageProvider)init;
- (_TtC19ComplicationDisplay24WidgetNamedImageProvider)initWithCoder:(id)a3;
- (_TtC19ComplicationDisplay24WidgetNamedImageProvider)initWithForegroundAccentImage:(id)a3;
- (_TtC19ComplicationDisplay24WidgetNamedImageProvider)initWithJSONObjectRepresentation:(id)a3 bundle:(id)a4;
- (id)copyWithZone:(void *)a3;
- (id)initPrivate;
- (int64_t)scale;
- (void)setFont:(id)a3;
- (void)setScale:(int64_t)a3;
@end

@implementation WidgetNamedImageProvider

- (UIFont)font
{
  v3 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFont:(id)a3
{
  v5 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (int64_t)scale
{
  v3 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setScale:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (_TtC19ComplicationDisplay24WidgetNamedImageProvider)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale) = 2;
  *(&self->super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized) = 0;
  v4 = (&self->super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
  type metadata accessor for WidgetNamedImageProvider(0);
  *v4 = 0;
  v4[1] = 0;
  v5 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0x30);
  v6 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_243DA8F5C(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_243DAE300();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (CGSize)maxSize
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
  v3 = *(&self->super._finalized + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC19ComplicationDisplay24WidgetNamedImageProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC19ComplicationDisplay24WidgetNamedImageProvider)initWithJSONObjectRepresentation:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initPrivate
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC19ComplicationDisplay24WidgetNamedImageProvider)initWithForegroundAccentImage:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end