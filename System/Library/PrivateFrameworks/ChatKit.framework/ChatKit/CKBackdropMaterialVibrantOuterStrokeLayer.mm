@interface CKBackdropMaterialVibrantOuterStrokeLayer
- (_TtC7ChatKit41CKBackdropMaterialVibrantOuterStrokeLayer)init;
- (_TtC7ChatKit41CKBackdropMaterialVibrantOuterStrokeLayer)initWithCoder:(id)a3;
- (_TtC7ChatKit41CKBackdropMaterialVibrantOuterStrokeLayer)initWithLayer:(id)a3;
- (_TtC7ChatKit41CKBackdropMaterialVibrantOuterStrokeLayer)initWithUserInterfaceStyle:(int64_t)a3;
- (int64_t)userInterfaceStyle;
- (void)layoutSublayers;
- (void)setUserInterfaceStyle:(int64_t)a3;
@end

@implementation CKBackdropMaterialVibrantOuterStrokeLayer

- (_TtC7ChatKit41CKBackdropMaterialVibrantOuterStrokeLayer)initWithUserInterfaceStyle:(int64_t)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit41CKBackdropMaterialVibrantOuterStrokeLayer_userInterfaceStyle) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CKBackdropMaterialVibrantOuterStrokeLayer();
  v3 = [(CKBackdropMaterialVibrantOuterStrokeLayer *)&v6 init];
  v4 = sub_190D56ED0();
  [(CKBackdropMaterialVibrantOuterStrokeLayer *)v3 setName:v4];

  [(CKBackdropMaterialVibrantOuterStrokeLayer *)v3 setNeedsLayout];
  return v3;
}

- (_TtC7ChatKit41CKBackdropMaterialVibrantOuterStrokeLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_190D58140();
  swift_unknownObjectRelease();
  return sub_190A3FF20(&v4);
}

- (_TtC7ChatKit41CKBackdropMaterialVibrantOuterStrokeLayer)initWithCoder:(id)a3
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (int64_t)userInterfaceStyle
{
  v3 = OBJC_IVAR____TtC7ChatKit41CKBackdropMaterialVibrantOuterStrokeLayer_userInterfaceStyle;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setUserInterfaceStyle:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit41CKBackdropMaterialVibrantOuterStrokeLayer_userInterfaceStyle;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
  [(CKBackdropMaterialVibrantOuterStrokeLayer *)self setNeedsLayout];
}

- (void)layoutSublayers
{
  v2 = self;
  sub_190A402BC();
}

- (_TtC7ChatKit41CKBackdropMaterialVibrantOuterStrokeLayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end