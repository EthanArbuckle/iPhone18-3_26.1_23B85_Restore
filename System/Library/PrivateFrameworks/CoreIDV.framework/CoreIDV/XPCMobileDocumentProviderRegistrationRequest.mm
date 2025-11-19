@interface XPCMobileDocumentProviderRegistrationRequest
- (_TtC7CoreIDV44XPCMobileDocumentProviderRegistrationRequest)init;
- (_TtC7CoreIDV44XPCMobileDocumentProviderRegistrationRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation XPCMobileDocumentProviderRegistrationRequest

- (_TtC7CoreIDV44XPCMobileDocumentProviderRegistrationRequest)initWithCoder:(id)a3
{
  swift_getObjectType();
  v5 = sub_21CD16690(a3);
  v6 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x30);
  v7 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  _s7CoreIDV44XPCMobileDocumentProviderRegistrationRequestC6encode4withySo7NSCoderC_tF_0(v4);
}

- (_TtC7CoreIDV44XPCMobileDocumentProviderRegistrationRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end