@interface CKBalloonBaseShapeLayer
- (_TtC7ChatKit23CKBalloonBaseShapeLayer)init;
- (_TtC7ChatKit23CKBalloonBaseShapeLayer)initWithCoder:(id)coder;
- (_TtC7ChatKit23CKBalloonBaseShapeLayer)initWithLayer:(id)layer;
- (id)actionForKey:(id)key;
- (void)layoutSublayers;
@end

@implementation CKBalloonBaseShapeLayer

- (_TtC7ChatKit23CKBalloonBaseShapeLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_190D58140();
  swift_unknownObjectRelease();
  return sub_19090DB64(&v4);
}

- (void)layoutSublayers
{
  selfCopy = self;
  sub_19090DE1C();
}

- (id)actionForKey:(id)key
{
  v4 = sub_190D56F10();
  v6 = v5;
  selfCopy = self;
  v8 = sub_19090E4E8(v4, v6);

  return v8;
}

- (_TtC7ChatKit23CKBalloonBaseShapeLayer)initWithCoder:(id)coder
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