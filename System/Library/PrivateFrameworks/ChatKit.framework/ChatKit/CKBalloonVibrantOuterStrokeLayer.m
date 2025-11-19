@interface CKBalloonVibrantOuterStrokeLayer
- (_TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer)init;
- (_TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer)initWithCoder:(id)a3;
- (_TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer)initWithLayer:(id)a3;
- (id)actionForKey:(id)a3;
- (void)layoutSublayers;
@end

@implementation CKBalloonVibrantOuterStrokeLayer

- (_TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_190D58140();
  swift_unknownObjectRelease();
  return sub_190C09F58(&v4);
}

- (void)layoutSublayers
{
  v2 = self;
  sub_190C0A338();
}

- (id)actionForKey:(id)a3
{
  v4 = sub_190D56F10();
  v6 = v5;
  v7 = self;
  v8 = sub_190C0ABE4(v4, v6);

  return v8;
}

- (_TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_stroke;
  v5 = type metadata accessor for CKBalloonLayer.Stroke(0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (_TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end