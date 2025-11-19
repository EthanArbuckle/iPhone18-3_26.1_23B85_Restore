@interface ActionBar
- (_TtC10MapsDesign9ActionBar)initWithCoder:(id)a3;
- (_TtC10MapsDesign9ActionBar)initWithFrame:(CGRect)a3;
- (void)buttonSelectedWithSender:(id)a3;
- (void)directionSelectedWithSender:(id)a3;
- (void)layoutSubviews;
@end

@implementation ActionBar

- (_TtC10MapsDesign9ActionBar)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10MapsDesign9ActionBar_lastWidth) = 0xBFF0000000000000;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC10MapsDesign9ActionBar_onSelect);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10MapsDesign9ActionBar_showAddedToast) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10MapsDesign9ActionBar_showFavoritedToast) = 0;
  result = sub_213F4F7C0();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(ActionBar *)&v7 layoutSubviews];
  v3 = OBJC_IVAR____TtC10MapsDesign9ActionBar_lastWidth;
  v4 = *&v2[OBJC_IVAR____TtC10MapsDesign9ActionBar_lastWidth];
  [v2 frame];
  if (v4 != v5)
  {
    sub_213E105E4();
    [v2 frame];
    *&v2[v3] = v6;
  }
}

- (void)buttonSelectedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_213E13364(v4);
}

- (void)directionSelectedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_213E13728(v4);
}

- (_TtC10MapsDesign9ActionBar)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end