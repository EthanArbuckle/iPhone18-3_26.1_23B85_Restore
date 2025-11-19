@interface CNMCProfileConnection
- (BOOL)communicationServiceRulesExistForBundleID:(id)a3 forCommunicationServiceType:(id)a4;
- (id)defaultAppBundleIDForCommunicationServiceType:(id)a3 forAccountWithIdentifier:(id)a4;
- (id)observableForManagedConfigChanged;
@end

@implementation CNMCProfileConnection

- (id)defaultAppBundleIDForCommunicationServiceType:(id)a3 forAccountWithIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [getMCProfileConnectionClass() sharedConnection];
  v8 = [v7 defaultAppBundleIDForCommunicationServiceType:v6 forAccountWithIdentifier:v5];

  return v8;
}

- (BOOL)communicationServiceRulesExistForBundleID:(id)a3 forCommunicationServiceType:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [getMCProfileConnectionClass() sharedConnection];
  v8 = [v7 communicationServiceRulesExistForBundleID:v6 forCommunicationServiceType:v5];

  return v8;
}

- (id)observableForManagedConfigChanged
{
  v2 = MEMORY[0x1E6996798];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = getMCProfileListChangedNotificationSymbolLoc_ptr;
  v11 = getMCProfileListChangedNotificationSymbolLoc_ptr;
  if (!getMCProfileListChangedNotificationSymbolLoc_ptr)
  {
    v4 = ManagedConfigurationLibrary();
    v9[3] = dlsym(v4, "MCProfileListChangedNotification");
    getMCProfileListChangedNotificationSymbolLoc_ptr = v9[3];
    v3 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v3)
  {
    v7 = +[CNUIIDSRequest IDSServiceForService:];
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v5 = [v2 observableOnDarwinNotificationCenterWithName:*v3];

  return v5;
}

@end