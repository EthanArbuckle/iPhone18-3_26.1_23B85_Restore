@interface CKMessageDisplayViewLayoutAttributes
- (BOOL)wantsFrameClamping;
- (CGSize)messageDisplayViewSize;
- (_TtC7ChatKit36CKMessageDisplayViewLayoutAttributes)init;
- (_TtC7ChatKit36CKMessageDisplayViewLayoutAttributes)initWithMessageDisplayViewSize:(CGSize)size wantsFrameClamping:(BOOL)clamping;
- (void)setMessageDisplayViewSize:(CGSize)size;
- (void)setWantsFrameClamping:(BOOL)clamping;
@end

@implementation CKMessageDisplayViewLayoutAttributes

- (_TtC7ChatKit36CKMessageDisplayViewLayoutAttributes)initWithMessageDisplayViewSize:(CGSize)size wantsFrameClamping:(BOOL)clamping
{
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit36CKMessageDisplayViewLayoutAttributes_messageDisplayViewSize) = size;
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit36CKMessageDisplayViewLayoutAttributes_wantsFrameClamping) = clamping;
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

- (void)setMessageDisplayViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (void)setWantsFrameClamping:(BOOL)clamping
{
  v5 = OBJC_IVAR____TtC7ChatKit36CKMessageDisplayViewLayoutAttributes_wantsFrameClamping;
  swift_beginAccess();
  *(&self->super.isa + v5) = clamping;
}

- (_TtC7ChatKit36CKMessageDisplayViewLayoutAttributes)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end