@interface XPCPartialWebPresentmentRequest
- (_TtC13CoreIDVShared31XPCPartialWebPresentmentRequest)init;
- (_TtC13CoreIDVShared31XPCPartialWebPresentmentRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCPartialWebPresentmentRequest

- (_TtC13CoreIDVShared31XPCPartialWebPresentmentRequest)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_225C583CC(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s13CoreIDVShared31XPCPartialWebPresentmentRequestC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (_TtC13CoreIDVShared31XPCPartialWebPresentmentRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end