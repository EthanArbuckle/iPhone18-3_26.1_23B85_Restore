@interface CNMCProfileConnection
- (BOOL)communicationServiceRulesExistForBundleID:(id)d forCommunicationServiceType:(id)type;
- (id)defaultAppBundleIDForCommunicationServiceType:(id)type forAccountWithIdentifier:(id)identifier;
- (id)observableForManagedConfigChanged;
@end

@implementation CNMCProfileConnection

- (id)defaultAppBundleIDForCommunicationServiceType:(id)type forAccountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  typeCopy = type;
  sharedConnection = [getMCProfileConnectionClass() sharedConnection];
  v8 = [sharedConnection defaultAppBundleIDForCommunicationServiceType:typeCopy forAccountWithIdentifier:identifierCopy];

  return v8;
}

- (BOOL)communicationServiceRulesExistForBundleID:(id)d forCommunicationServiceType:(id)type
{
  typeCopy = type;
  dCopy = d;
  sharedConnection = [getMCProfileConnectionClass() sharedConnection];
  v8 = [sharedConnection communicationServiceRulesExistForBundleID:dCopy forCommunicationServiceType:typeCopy];

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