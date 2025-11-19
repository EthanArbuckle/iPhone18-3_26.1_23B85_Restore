@interface CKBalloonBaseShapeLayer
- (_TtC7ChatKit23CKBalloonBaseShapeLayer)init;
- (_TtC7ChatKit23CKBalloonBaseShapeLayer)initWithCoder:(id)a3;
- (_TtC7ChatKit23CKBalloonBaseShapeLayer)initWithLayer:(id)a3;
- (id)actionForKey:(id)a3;
- (void)layoutSublayers;
@end

@implementation CKBalloonBaseShapeLayer

- (_TtC7ChatKit23CKBalloonBaseShapeLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_190D58140();
  swift_unknownObjectRelease();
  return sub_19090DB64(&v4);
}

- (void)layoutSublayers
{
  v2 = self;
  sub_19090DE1C();
}

- (id)actionForKey:(id)a3
{
  v4 = sub_190D56F10();
  v6 = v5;
  v7 = self;
  v8 = sub_19090E4E8(v4, v6);

  return v8;
}

- (_TtC7ChatKit23CKBalloonBaseShapeLayer)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (_TtC7ChatKit23CKBalloonBaseShapeLayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end