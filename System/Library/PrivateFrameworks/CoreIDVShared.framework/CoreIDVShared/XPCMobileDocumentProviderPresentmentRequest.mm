@interface XPCMobileDocumentProviderPresentmentRequest
- (_TtC13CoreIDVShared43XPCMobileDocumentProviderPresentmentRequest)init;
- (_TtC13CoreIDVShared43XPCMobileDocumentProviderPresentmentRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCMobileDocumentProviderPresentmentRequest

- (_TtC13CoreIDVShared43XPCMobileDocumentProviderPresentmentRequest)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_225C57884(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s13CoreIDVShared43XPCMobileDocumentProviderPresentmentRequestC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (_TtC13CoreIDVShared43XPCMobileDocumentProviderPresentmentRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end