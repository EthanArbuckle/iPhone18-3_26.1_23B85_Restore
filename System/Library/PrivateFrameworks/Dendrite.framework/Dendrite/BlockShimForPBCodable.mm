@interface BlockShimForPBCodable
- (_TtC8Dendrite21BlockShimForPBCodable)init;
- (_TtC8Dendrite21BlockShimForPBCodable)initWithCoder:(id)a3;
- (_TtC8Dendrite21BlockShimForPBCodable)initWithData:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BlockShimForPBCodable

- (_TtC8Dendrite21BlockShimForPBCodable)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_error) = 0;
  result = sub_1B1A7CF28();
  __break(1u);
  return result;
}

- (void)writeTo:(id)a3
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_block);
  v4 = *&self->block[OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_block];
  v5 = self;
  v3();
}

- (_TtC8Dendrite21BlockShimForPBCodable)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8Dendrite21BlockShimForPBCodable)initWithData:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = sub_1B1A7C888();
    sub_1B1A4696C(v4, v5);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end