@interface XPCWebPresentmentRequest
- (_TtC13CoreIDVShared24XPCWebPresentmentRequest)init;
- (_TtC13CoreIDVShared24XPCWebPresentmentRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCWebPresentmentRequest

- (_TtC13CoreIDVShared24XPCWebPresentmentRequest)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_225C58704(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s13CoreIDVShared24XPCWebPresentmentRequestC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (_TtC13CoreIDVShared24XPCWebPresentmentRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end