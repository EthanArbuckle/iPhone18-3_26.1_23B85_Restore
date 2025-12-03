@interface BlockShimForPBCodable
- (_TtC8Dendrite21BlockShimForPBCodable)init;
- (_TtC8Dendrite21BlockShimForPBCodable)initWithCoder:(id)coder;
- (_TtC8Dendrite21BlockShimForPBCodable)initWithData:(id)data;
- (void)writeTo:(id)to;
@end

@implementation BlockShimForPBCodable

- (_TtC8Dendrite21BlockShimForPBCodable)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_error) = 0;
  result = sub_1B1A7CF28();
  __break(1u);
  return result;
}

- (void)writeTo:(id)to
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_block);
  v4 = *&self->block[OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_block];
  selfCopy = self;
  v3();
}

- (_TtC8Dendrite21BlockShimForPBCodable)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8Dendrite21BlockShimForPBCodable)initWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v4 = sub_1B1A7C888();
    sub_1B1A4696C(v4, v5);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end