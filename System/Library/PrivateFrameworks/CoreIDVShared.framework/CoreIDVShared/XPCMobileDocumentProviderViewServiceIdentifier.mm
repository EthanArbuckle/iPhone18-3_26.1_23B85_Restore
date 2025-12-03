@interface XPCMobileDocumentProviderViewServiceIdentifier
- (_TtC13CoreIDVShared46XPCMobileDocumentProviderViewServiceIdentifier)init;
- (_TtC13CoreIDVShared46XPCMobileDocumentProviderViewServiceIdentifier)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCMobileDocumentProviderViewServiceIdentifier

- (_TtC13CoreIDVShared46XPCMobileDocumentProviderViewServiceIdentifier)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_225C58094(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s13CoreIDVShared46XPCMobileDocumentProviderViewServiceIdentifierC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (_TtC13CoreIDVShared46XPCMobileDocumentProviderViewServiceIdentifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end