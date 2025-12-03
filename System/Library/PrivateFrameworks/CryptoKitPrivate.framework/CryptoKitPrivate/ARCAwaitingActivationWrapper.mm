@interface ARCAwaitingActivationWrapper
- (_TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper)init;
- (_TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper)initWithRequestContext:(id)context serverPublicKeyData:(id)data error:(id *)error;
- (id)makeCredentialWithResponseData:(id)data error:(id *)error;
- (id)makeRequest;
@end

@implementation ARCAwaitingActivationWrapper

- (_TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper)initWithRequestContext:(id)context serverPublicKeyData:(id)data error:(id *)error
{
  contextCopy = context;
  dataCopy = data;
  v8 = sub_1C0D7832C();
  v10 = v9;

  v11 = sub_1C0D7832C();
  v13 = v12;

  return ARCAwaitingActivationWrapper.init(requestContext:serverPublicKeyData:)(v8, v10, v11, v13);
}

- (id)makeRequest
{
  v2 = *&self->precredential[OBJC_IVAR____TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper_precredential + 64];
  v3 = *&self->precredential[OBJC_IVAR____TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper_precredential + 72];
  v4 = *&self->precredential[OBJC_IVAR____TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper_precredential + 80];
  v5 = *&self->precredential[OBJC_IVAR____TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper_precredential + 88];
  v6 = *&self->precredential[OBJC_IVAR____TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper_precredential + 32];
  v7 = *&self->precredential[OBJC_IVAR____TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper_precredential + 40];
  selfCopy = self;
  v9 = sub_1C0D10F0C(v6, v7, v2, v3, v4, v5);
  v11 = v10;

  v12 = sub_1C0D7830C();
  sub_1C0CF448C(v9, v11);

  return v12;
}

- (id)makeCredentialWithResponseData:(id)data error:(id *)error
{
  dataCopy = data;
  selfCopy = self;
  v7 = sub_1C0D7832C();
  v9 = v8;

  v10 = sub_1C0D09D5C(v7, v9);
  sub_1C0CF448C(v7, v9);

  return v10;
}

- (_TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end