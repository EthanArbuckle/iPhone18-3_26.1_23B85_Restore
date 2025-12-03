@interface XPCWebPresentmentResponse
- (_TtC13CoreIDVShared25XPCWebPresentmentResponse)init;
- (_TtC13CoreIDVShared25XPCWebPresentmentResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCWebPresentmentResponse

- (_TtC13CoreIDVShared25XPCWebPresentmentResponse)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_225C58A3C(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s13CoreIDVShared25XPCWebPresentmentResponseC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (_TtC13CoreIDVShared25XPCWebPresentmentResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end