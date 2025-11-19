@interface GenerativePartnerServicePSSettingsManager
- (BOOL)handleDeepLinkWithResourceDictionary:(id)a3;
- (_TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager)initWithParentController:(id)a3 settings:(id)a4;
- (id)allowSetupRequests;
- (id)shouldConfirmRequests;
- (void)setAllowSetupRequests:(id)a3;
- (void)setShouldConfirmRequests:(id)a3;
- (void)showExternalAISetUpSelectionSheet;
@end

@implementation GenerativePartnerServicePSSettingsManager

- (_TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager)initWithParentController:(id)a3 settings:(id)a4
{
  v5 = a3;
  v6 = a4;
  GenerativePartnerServicePSSettingsManager.init(parentController:settings:)();
  return result;
}

- (BOOL)handleDeepLinkWithResourceDictionary:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1BE50DC0C(v4);

  return self & 1;
}

- (void)showExternalAISetUpSelectionSheet
{
  v2 = self;
  sub_1BE50E5D0();
}

- (id)allowSetupRequests
{
  v2 = self;
  v3 = sub_1BE50E624();

  return v3;
}

- (void)setAllowSetupRequests:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BE50E6C8(v4);
}

- (id)shouldConfirmRequests
{
  v2 = self;
  v3 = sub_1BE50E78C();

  return v3;
}

- (void)setShouldConfirmRequests:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BE50E810(v4);
}

@end