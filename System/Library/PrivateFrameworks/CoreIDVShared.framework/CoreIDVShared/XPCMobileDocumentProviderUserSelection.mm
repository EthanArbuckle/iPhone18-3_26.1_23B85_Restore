@interface XPCMobileDocumentProviderUserSelection
- (_TtC13CoreIDVShared38XPCMobileDocumentProviderUserSelection)init;
- (_TtC13CoreIDVShared38XPCMobileDocumentProviderUserSelection)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCMobileDocumentProviderUserSelection

- (_TtC13CoreIDVShared38XPCMobileDocumentProviderUserSelection)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_225C57EF4(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s13CoreIDVShared38XPCMobileDocumentProviderUserSelectionC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (_TtC13CoreIDVShared38XPCMobileDocumentProviderUserSelection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end