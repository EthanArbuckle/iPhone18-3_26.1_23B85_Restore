@interface _CNUIUserActionCallProviderVoiceTarget
- (BOOL)isCallProviderManagedUsingDiscoveringEnvironment:(id)environment;
- (id)actionsForContact:(id)contact discoveringEnvironment:(id)environment;
- (id)actionsForEmailAddresses:(id)addresses contact:(id)contact discoveringEnvironment:(id)environment;
- (id)actionsForInstantMessageAddresses:(id)addresses contact:(id)contact discoveringEnvironment:(id)environment;
- (id)actionsForPhoneNumbers:(id)numbers contact:(id)contact discoveringEnvironment:(id)environment;
- (id)actionsForPhoneNumbers:(id)numbers contact:(id)contact group:(int64_t)group options:(unint64_t)options discoveringEnvironment:(id)environment;
- (id)actionsForSocialProfiles:(id)profiles contact:(id)contact discoveringEnvironment:(id)environment;
- (id)externalAccountIdentifierForContact:(id)contact contactStore:(id)store;
- (id)managedBundleIdentifierForContact:(id)contact discoveringEnvironment:(id)environment;
@end

@implementation _CNUIUserActionCallProviderVoiceTarget

- (id)actionsForContact:(id)contact discoveringEnvironment:(id)environment
{
  v34[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  environmentCopy = environment;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2;
  v31 = __Block_byref_object_dispose__2;
  v32 = 0;
  if ([contactCopy isUnified])
  {
    [contactCopy linkedContacts];
  }

  else
  {
    v34[0] = contactCopy;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  }
  v8 = ;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __83___CNUIUserActionCallProviderVoiceTarget_actionsForContact_discoveringEnvironment___block_invoke;
  v24[3] = &unk_1E76E87E8;
  v24[4] = self;
  v9 = environmentCopy;
  v25 = v9;
  v26 = &v27;
  v10 = [v8 _cn_filter:v24];
  v11 = v28[5];
  if (v11)
  {
    v12 = MEMORY[0x1E6996798];
    phoneNumbers = [v11 phoneNumbers];
    v14 = [(_CNUIUserActionCallProviderVoiceTarget *)self actionsForPhoneNumbers:phoneNumbers contact:v28[5] group:1 options:0 discoveringEnvironment:v9];
    v33 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    v16 = [v12 observableWithResults:v15];

LABEL_6:
    goto LABEL_13;
  }

  if ([(_CNUIUserActionCallProviderVoiceTarget *)self isCallProviderManagedUsingDiscoveringEnvironment:v9])
  {
    selfCopy = self;
    v17 = &selfCopy;
LABEL_11:
    v17->super_class = _CNUIUserActionCallProviderVoiceTarget;
    emptyObservable = [(objc_super *)v17 actionsForContact:contactCopy discoveringEnvironment:v9];
    goto LABEL_12;
  }

  v18 = [v10 count];
  if (v18 == [v8 count])
  {
    v22.receiver = self;
    v17 = &v22;
    goto LABEL_11;
  }

  if ([v10 count])
  {
    phoneNumbers = [MEMORY[0x1E695CD58] unifyContacts:v10];
    v21.receiver = self;
    v21.super_class = _CNUIUserActionCallProviderVoiceTarget;
    v16 = [(CNUIUserActionTarget *)&v21 actionsForContact:phoneNumbers discoveringEnvironment:v9];
    goto LABEL_6;
  }

  emptyObservable = [MEMORY[0x1E6996798] emptyObservable];
LABEL_12:
  v16 = emptyObservable;
LABEL_13:

  _Block_object_dispose(&v27, 8);

  return v16;
}

- (id)managedBundleIdentifierForContact:(id)contact discoveringEnvironment:(id)environment
{
  environmentCopy = environment;
  contactCopy = contact;
  contactStore = [environmentCopy contactStore];
  v9 = [(_CNUIUserActionCallProviderVoiceTarget *)self externalAccountIdentifierForContact:contactCopy contactStore:contactStore];

  if (v9)
  {
    profileConnection = [environmentCopy profileConnection];
    v11 = getkMCCommunicationServiceTypeAudioCall();
    v12 = [profileConnection defaultAppBundleIDForCommunicationServiceType:v11 forAccountWithIdentifier:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)externalAccountIdentifierForContact:(id)contact contactStore:(id)store
{
  storeCopy = store;
  v6 = MEMORY[0x1E695CE48];
  identifier = [contact identifier];
  v8 = [v6 predicateForContainerOfContactWithIdentifier:identifier];

  v9 = [storeCopy containersMatchingPredicate:v8 error:0];
  firstObject = [v9 firstObject];

  if (firstObject)
  {
    firstObject2 = [v9 firstObject];
    v12 = MEMORY[0x1E695CD10];
    identifier2 = [firstObject2 identifier];
    v14 = [v12 predicateForAccountForContainerWithIdentifier:identifier2];

    v15 = [storeCopy accountsMatchingPredicate:v14 error:0];
    firstObject3 = [v15 firstObject];
    firstObject = [firstObject3 externalIdentifierString];
  }

  return firstObject;
}

- (BOOL)isCallProviderManagedUsingDiscoveringEnvironment:(id)environment
{
  profileConnection = [environment profileConnection];
  callProvider = [(CNUIUserActionTarget *)self callProvider];
  bundleIdentifier = [callProvider bundleIdentifier];
  v7 = getkMCCommunicationServiceTypeAudioCall();
  v8 = [profileConnection communicationServiceRulesExistForBundleID:bundleIdentifier forCommunicationServiceType:v7];

  return v8;
}

- (id)actionsForEmailAddresses:(id)addresses contact:(id)contact discoveringEnvironment:(id)environment
{
  addressesCopy = addresses;
  contactCopy = contact;
  callProvider = [(CNUIUserActionTarget *)self callProvider];
  supportedHandleTypes = [callProvider supportedHandleTypes];
  v11 = [supportedHandleTypes containsObject:&unk_1F1645CD0];

  if (v11)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __98___CNUIUserActionCallProviderVoiceTarget_actionsForEmailAddresses_contact_discoveringEnvironment___block_invoke;
    v14[3] = &unk_1E76E7AD8;
    v14[4] = self;
    v15 = contactCopy;
    v12 = [addressesCopy _cn_map:v14];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (id)actionsForPhoneNumbers:(id)numbers contact:(id)contact discoveringEnvironment:(id)environment
{
  numbersCopy = numbers;
  contactCopy = contact;
  environmentCopy = environment;
  callProvider = [(CNUIUserActionTarget *)self callProvider];
  supportedHandleTypes = [callProvider supportedHandleTypes];
  v13 = [supportedHandleTypes containsObject:&unk_1F1645CE8];

  if (v13)
  {
    v14 = [(_CNUIUserActionCallProviderVoiceTarget *)self actionsForPhoneNumbers:numbersCopy contact:contactCopy group:6 options:16 discoveringEnvironment:environmentCopy];
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

- (id)actionsForPhoneNumbers:(id)numbers contact:(id)contact group:(int64_t)group options:(unint64_t)options discoveringEnvironment:(id)environment
{
  contactCopy = contact;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __110___CNUIUserActionCallProviderVoiceTarget_actionsForPhoneNumbers_contact_group_options_discoveringEnvironment___block_invoke;
  v15[3] = &unk_1E76E8810;
  v15[4] = self;
  v16 = contactCopy;
  groupCopy = group;
  optionsCopy = options;
  v12 = contactCopy;
  v13 = [numbers _cn_map:v15];

  return v13;
}

- (id)actionsForSocialProfiles:(id)profiles contact:(id)contact discoveringEnvironment:(id)environment
{
  contactCopy = contact;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98___CNUIUserActionCallProviderVoiceTarget_actionsForSocialProfiles_contact_discoveringEnvironment___block_invoke;
  v14[3] = &unk_1E76E7B28;
  v14[4] = self;
  v8 = [profiles _cn_filter:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98___CNUIUserActionCallProviderVoiceTarget_actionsForSocialProfiles_contact_discoveringEnvironment___block_invoke_3;
  v12[3] = &unk_1E76E7AD8;
  v12[4] = self;
  v13 = contactCopy;
  v9 = contactCopy;
  v10 = [v8 _cn_map:v12];

  return v10;
}

- (id)actionsForInstantMessageAddresses:(id)addresses contact:(id)contact discoveringEnvironment:(id)environment
{
  contactCopy = contact;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __107___CNUIUserActionCallProviderVoiceTarget_actionsForInstantMessageAddresses_contact_discoveringEnvironment___block_invoke;
  v14[3] = &unk_1E76E7B28;
  v14[4] = self;
  v8 = [addresses _cn_filter:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __107___CNUIUserActionCallProviderVoiceTarget_actionsForInstantMessageAddresses_contact_discoveringEnvironment___block_invoke_3;
  v12[3] = &unk_1E76E7AD8;
  v12[4] = self;
  v13 = contactCopy;
  v9 = contactCopy;
  v10 = [v8 _cn_map:v12];

  return v10;
}

@end