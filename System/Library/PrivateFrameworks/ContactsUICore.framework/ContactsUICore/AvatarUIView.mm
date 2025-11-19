@interface AvatarUIView
+ (Class)layerClass;
- (_TtC14ContactsUICore12AvatarUIView)initWithCoder:(id)a3;
- (_TtC14ContactsUICore12AvatarUIView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation AvatarUIView

+ (Class)layerClass
{
  type metadata accessor for AvatarViewLayer(0);

  return swift_getObjCClassFromMetadata();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1A3397FAC();
}

- (_TtC14ContactsUICore12AvatarUIView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_borderStyle);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_listener);
  *v4 = 0;
  v4[1] = 0;
  result = sub_1A34CDC10();
  __break(1u);
  return result;
}

- (_TtC14ContactsUICore12AvatarUIView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end