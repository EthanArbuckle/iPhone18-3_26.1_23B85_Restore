@interface ARCPresentationWrapper
- (_TtC16CryptoKitPrivate22ARCPresentationWrapper)init;
- (_TtC16CryptoKitPrivate22ARCPresentationWrapper)initWithPresentationData:(id)a3 nonce:(int64_t)a4 error:(id *)a5;
- (id)getPresentationData;
@end

@implementation ARCPresentationWrapper

- (id)getPresentationData
{
  v10 = *(&self->super.isa + OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_presentation);
  v11 = *&self->presentation[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_presentation + 8];
  v12 = *&self->presentation[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_presentation + 24];
  v2 = *&self->presentation[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_ciphersuite + 16];
  v3 = *&self->presentation[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_ciphersuite + 24];
  v4 = self;
  v5 = sub_1C0D11AD4(v2, v3);
  v7 = v6;

  v8 = sub_1C0D7830C();
  sub_1C0CF448C(v5, v7);

  return v8;
}

- (_TtC16CryptoKitPrivate22ARCPresentationWrapper)initWithPresentationData:(id)a3 nonce:(int64_t)a4 error:(id *)a5
{
  v6 = a3;
  v7 = sub_1C0D7832C();
  v9 = v8;

  return ARCPresentationWrapper.init(presentationData:nonce:)(v7, v9, a4);
}

- (_TtC16CryptoKitPrivate22ARCPresentationWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end