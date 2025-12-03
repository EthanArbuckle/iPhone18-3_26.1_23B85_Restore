@interface GenerativePartnerServicePSSettingsManager
- (BOOL)handleDeepLinkWithResourceDictionary:(id)dictionary;
- (_TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager)initWithParentController:(id)controller settings:(id)settings;
- (id)allowSetupRequests;
- (id)shouldConfirmRequests;
- (void)setAllowSetupRequests:(id)requests;
- (void)setShouldConfirmRequests:(id)requests;
- (void)showExternalAISetUpSelectionSheet;
@end

@implementation GenerativePartnerServicePSSettingsManager

- (_TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager)initWithParentController:(id)controller settings:(id)settings
{
  controllerCopy = controller;
  settingsCopy = settings;
  GenerativePartnerServicePSSettingsManager.init(parentController:settings:)();
  return result;
}

- (BOOL)handleDeepLinkWithResourceDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  selfCopy = self;
  LOBYTE(self) = sub_1BE50DC0C(dictionaryCopy);

  return self & 1;
}

- (void)showExternalAISetUpSelectionSheet
{
  selfCopy = self;
  sub_1BE50E5D0();
}

- (id)allowSetupRequests
{
  selfCopy = self;
  v3 = sub_1BE50E624();

  return v3;
}

- (void)setAllowSetupRequests:(id)requests
{
  requestsCopy = requests;
  selfCopy = self;
  sub_1BE50E6C8(requestsCopy);
}

- (id)shouldConfirmRequests
{
  selfCopy = self;
  v3 = sub_1BE50E78C();

  return v3;
}

- (void)setShouldConfirmRequests:(id)requests
{
  requestsCopy = requests;
  selfCopy = self;
  sub_1BE50E810(requestsCopy);
}

@end