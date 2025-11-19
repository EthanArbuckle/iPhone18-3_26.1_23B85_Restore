@interface XPCCredentialPresentmentRequest
- (_TtC10CoreIDCred31XPCCredentialPresentmentRequest)init;
- (_TtC10CoreIDCred31XPCCredentialPresentmentRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation XPCCredentialPresentmentRequest

- (_TtC10CoreIDCred31XPCCredentialPresentmentRequest)initWithCoder:(id)a3
{
  swift_getObjectType();
  v4 = sub_245651810(a3);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  _s10CoreIDCred31XPCCredentialPresentmentRequestC6encode4withySo7NSCoderC_tF_0(v4);
}

- (_TtC10CoreIDCred31XPCCredentialPresentmentRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end