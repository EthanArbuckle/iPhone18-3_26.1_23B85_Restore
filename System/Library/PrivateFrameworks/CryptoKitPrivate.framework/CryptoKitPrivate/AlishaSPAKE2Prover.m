@interface AlishaSPAKE2Prover
- (_TtC16CryptoKitPrivate18AlishaSPAKE2Prover)init;
- (id)getX;
- (id)processResponseWithY:(id)a3 M1:(id)a4;
@end

@implementation AlishaSPAKE2Prover

- (id)getX
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:*(&self->super.isa + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_X) + 32 length:(*(&self->super.isa + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_X))[2]];

  return v2;
}

- (id)processResponseWithY:(id)a3 M1:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1C0D319C0(v6, v7);

  return v9;
}

- (_TtC16CryptoKitPrivate18AlishaSPAKE2Prover)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end