@interface XPCIdentityDocumentProviderMetadata
- (_TtC13CoreIDVShared35XPCIdentityDocumentProviderMetadata)init;
- (_TtC13CoreIDVShared35XPCIdentityDocumentProviderMetadata)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCIdentityDocumentProviderMetadata

- (_TtC13CoreIDVShared35XPCIdentityDocumentProviderMetadata)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_225C570F4(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s13CoreIDVShared35XPCIdentityDocumentProviderMetadataC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (_TtC13CoreIDVShared35XPCIdentityDocumentProviderMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end