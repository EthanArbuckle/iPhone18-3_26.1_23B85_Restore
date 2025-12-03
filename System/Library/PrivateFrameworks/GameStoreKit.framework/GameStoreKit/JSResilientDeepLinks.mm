@interface JSResilientDeepLinks
- (BOOL)hasResilientDeepLinks;
- (BOOL)isResilientDeepLink:(id)link;
- (_TtC12GameStoreKit20JSResilientDeepLinks)init;
- (void)removeAllDeepLinks;
- (void)removeDeepLink:(id)link;
@end

@implementation JSResilientDeepLinks

- (BOOL)isResilientDeepLink:(id)link
{
  v4 = sub_24F92B0D8();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_24F1B21D0(v4, v6);

  return v4 & 1;
}

- (BOOL)hasResilientDeepLinks
{
  selfCopy = self;

  v4 = _s12GameStoreKit27ResilientDeepLinkControllerO03hasdE5Links3bagSbAA14ASKBagContractC_tFZ_0(v3);

  return v4 & 1;
}

- (void)removeDeepLink:(id)link
{
  v3 = sub_24F92B0D8();
  _s12GameStoreKit27ResilientDeepLinkControllerO06removeeF0yySSFZ_0(v3, v4);
}

- (void)removeAllDeepLinks
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  v2[3] = &type metadata for ResilientDeepLinkController.DeepLinkPreferenceKey;
  v2[4] = sub_24EDABC54();
  v2[0] = 0xD000000000000014;
  v2[1] = 0x800000024FA5D340;
  sub_24F929358();

  __swift_destroy_boxed_opaque_existential_1(v2);
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  sub_24F929368();
}

- (_TtC12GameStoreKit20JSResilientDeepLinks)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end