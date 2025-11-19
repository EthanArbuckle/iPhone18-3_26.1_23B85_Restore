@interface CKMessageDisplayViewLayoutAttributes
- (BOOL)wantsFrameClamping;
- (CGSize)messageDisplayViewSize;
- (_TtC7ChatKit36CKMessageDisplayViewLayoutAttributes)init;
- (_TtC7ChatKit36CKMessageDisplayViewLayoutAttributes)initWithMessageDisplayViewSize:(CGSize)a3 wantsFrameClamping:(BOOL)a4;
- (void)setMessageDisplayViewSize:(CGSize)a3;
- (void)setWantsFrameClamping:(BOOL)a3;
@end

@implementation CKMessageDisplayViewLayoutAttributes

- (_TtC7ChatKit36CKMessageDisplayViewLayoutAttributes)initWithMessageDisplayViewSize:(CGSize)a3 wantsFrameClamping:(BOOL)a4
{
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit36CKMessageDisplayViewLayoutAttributes_messageDisplayViewSize) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit36CKMessageDisplayViewLayoutAttributes_wantsFrameClamping) = a4;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CKMessageDisplayViewLayoutAttributes();
  return [(CKMessageDisplayViewLayoutAttributes *)&v5 init];
}

- (CGSize)messageDisplayViewSize
{
  v2 = (self + OBJC_IVAR____TtC7ChatKit36CKMessageDisplayViewLayoutAttributes_messageDisplayViewSize);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setMessageDisplayViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = (self + OBJC_IVAR____TtC7ChatKit36CKMessageDisplayViewLayoutAttributes_messageDisplayViewSize);
  swift_beginAccess();
  *v5 = width;
  v5[1] = height;
}

- (BOOL)wantsFrameClamping
{
  v3 = OBJC_IVAR____TtC7ChatKit36CKMessageDisplayViewLayoutAttributes_wantsFrameClamping;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setWantsFrameClamping:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit36CKMessageDisplayViewLayoutAttributes_wantsFrameClamping;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (_TtC7ChatKit36CKMessageDisplayViewLayoutAttributes)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end