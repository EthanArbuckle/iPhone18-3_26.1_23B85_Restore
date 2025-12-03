@interface XPCCredentialPresentmentRequest
- (_TtC10CoreIDCred31XPCCredentialPresentmentRequest)init;
- (_TtC10CoreIDCred31XPCCredentialPresentmentRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCCredentialPresentmentRequest

- (_TtC10CoreIDCred31XPCCredentialPresentmentRequest)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_245651810(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s10CoreIDCred31XPCCredentialPresentmentRequestC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (_TtC10CoreIDCred31XPCCredentialPresentmentRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end