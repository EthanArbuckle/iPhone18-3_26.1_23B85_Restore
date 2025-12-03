@interface AlishaSPAKE2Prover
- (_TtC16CryptoKitPrivate18AlishaSPAKE2Prover)init;
- (id)getX;
- (id)processResponseWithY:(id)y M1:(id)m1;
@end

@implementation AlishaSPAKE2Prover

- (id)getX
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:*(&self->super.isa + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_X) + 32 length:(*(&self->super.isa + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_X))[2]];

  return v2;
}

- (id)processResponseWithY:(id)y M1:(id)m1
{
  yCopy = y;
  m1Copy = m1;
  selfCopy = self;
  v9 = sub_1C0D319C0(yCopy, m1Copy);

  return v9;
}

- (_TtC16CryptoKitPrivate18AlishaSPAKE2Prover)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end