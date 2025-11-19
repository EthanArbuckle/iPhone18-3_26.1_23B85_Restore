@interface JSCampaignAttribution
- (_TtC12GameStoreKit21JSCampaignAttribution)init;
- (id)processRedirectURL:(id)a3;
@end

@implementation JSCampaignAttribution

- (id)processRedirectURL:(id)a3
{
  sub_24F92B0D8();
  sub_24E9B9C28();
  v4 = self;
  v5 = sub_24F92C448();
  sub_24E615E00(v4 + OBJC_IVAR____TtC12GameStoreKit21JSCampaignAttribution_accounts, v8);
  v6 = sub_24F92C458();

  __swift_destroy_boxed_opaque_existential_1(v8);

  return v6;
}

- (_TtC12GameStoreKit21JSCampaignAttribution)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end