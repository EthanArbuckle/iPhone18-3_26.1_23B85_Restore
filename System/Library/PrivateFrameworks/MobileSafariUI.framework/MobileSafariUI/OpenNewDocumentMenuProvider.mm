@interface OpenNewDocumentMenuProvider
- (OpenNewDocumentMenuProvider)init;
- (id)makeMenuElementsForPersona:(int64_t)persona;
@end

@implementation OpenNewDocumentMenuProvider

- (OpenNewDocumentMenuProvider)init
{
  v3.receiver = self;
  v3.super_class = OpenNewDocumentMenuProvider;
  return [(OpenNewDocumentMenuProvider *)&v3 init];
}

- (id)makeMenuElementsForPersona:(int64_t)persona
{
  _sSo27OpenNewDocumentMenuProviderC14MobileSafariUIE04makeD8Elements3forSaySo13UIMenuElementCGSo16SFBrowserPersonaV_tF_0();
  sub_2159F7DA8(0, &unk_2811A25B0);
  v3 = sub_215A705D0();

  return v3;
}

@end