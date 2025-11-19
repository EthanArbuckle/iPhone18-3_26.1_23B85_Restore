@interface _CNUIUserActionCallProviderVoiceTarget
- (BOOL)isCallProviderManagedUsingDiscoveringEnvironment:(id)a3;
- (id)actionsForContact:(id)a3 discoveringEnvironment:(id)a4;
- (id)actionsForEmailAddresses:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5;
- (id)actionsForInstantMessageAddresses:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5;
- (id)actionsForPhoneNumbers:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5;
- (id)actionsForPhoneNumbers:(id)a3 contact:(id)a4 group:(int64_t)a5 options:(unint64_t)a6 discoveringEnvironment:(id)a7;
- (id)actionsForSocialProfiles:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5;
- (id)externalAccountIdentifierForContact:(id)a3 contactStore:(id)a4;
- (id)managedBundleIdentifierForContact:(id)a3 discoveringEnvironment:(id)a4;
@end

@implementation _CNUIUserActionCallProviderVoiceTarget

- (id)actionsForContact:(id)a3 discoveringEnvironment:(id)a4
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2;
  v31 = __Block_byref_object_dispose__2;
  v32 = 0;
  if ([v6 isUnified])
  {
    [v6 linkedContacts];
  }

  else
  {
    v34[0] = v6;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  }
  v8 = ;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __83___CNUIUserActionCallProviderVoiceTarget_actionsForContact_discoveringEnvironment___block_invoke;
  v24[3] = &unk_1E76E87E8;
  v24[4] = self;
  v9 = v7;
  v25 = v9;
  v26 = &v27;
  v10 = [v8 _cn_filter:v24];
  v11 = v28[5];
  if (v11)
  {
    v12 = MEMORY[0x1E6996798];
    v13 = [v11 phoneNumbers];
    v14 = [(_CNUIUserActionCallProviderVoiceTarget *)self actionsForPhoneNumbers:v13 contact:v28[5] group:1 options:0 discoveringEnvironment:v9];
    v33 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    v16 = [v12 observableWithResults:v15];

LABEL_6:
    goto LABEL_13;
  }

  if ([(_CNUIUserActionCallProviderVoiceTarget *)self isCallProviderManagedUsingDiscoveringEnvironment:v9])
  {
    v23 = self;
    v17 = &v23;
LABEL_11:
    v17->super_class = _CNUIUserActionCallProviderVoiceTarget;
    v19 = [(objc_super *)v17 actionsForContact:v6 discoveringEnvironment:v9];
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
    v13 = [MEMORY[0x1E695CD58] unifyContacts:v10];
    v21.receiver = self;
    v21.super_class = _CNUIUserActionCallProviderVoiceTarget;
    v16 = [(CNUIUserActionTarget *)&v21 actionsForContact:v13 discoveringEnvironment:v9];
    goto LABEL_6;
  }

  v19 = [MEMORY[0x1E6996798] emptyObservable];
LABEL_12:
  v16 = v19;
LABEL_13:

  _Block_object_dispose(&v27, 8);

  return v16;
}

- (id)managedBundleIdentifierForContact:(id)a3 discoveringEnvironment:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 contactStore];
  v9 = [(_CNUIUserActionCallProviderVoiceTarget *)self externalAccountIdentifierForContact:v7 contactStore:v8];

  if (v9)
  {
    v10 = [v6 profileConnection];
    v11 = getkMCCommunicationServiceTypeAudioCall();
    v12 = [v10 defaultAppBundleIDForCommunicationServiceType:v11 forAccountWithIdentifier:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)externalAccountIdentifierForContact:(id)a3 contactStore:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695CE48];
  v7 = [a3 identifier];
  v8 = [v6 predicateForContainerOfContactWithIdentifier:v7];

  v9 = [v5 containersMatchingPredicate:v8 error:0];
  v10 = [v9 firstObject];

  if (v10)
  {
    v11 = [v9 firstObject];
    v12 = MEMORY[0x1E695CD10];
    v13 = [v11 identifier];
    v14 = [v12 predicateForAccountForContainerWithIdentifier:v13];

    v15 = [v5 accountsMatchingPredicate:v14 error:0];
    v16 = [v15 firstObject];
    v10 = [v16 externalIdentifierString];
  }

  return v10;
}

- (BOOL)isCallProviderManagedUsingDiscoveringEnvironment:(id)a3
{
  v4 = [a3 profileConnection];
  v5 = [(CNUIUserActionTarget *)self callProvider];
  v6 = [v5 bundleIdentifier];
  v7 = getkMCCommunicationServiceTypeAudioCall();
  v8 = [v4 communicationServiceRulesExistForBundleID:v6 forCommunicationServiceType:v7];

  return v8;
}

- (id)actionsForEmailAddresses:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(CNUIUserActionTarget *)self callProvider];
  v10 = [v9 supportedHandleTypes];
  v11 = [v10 containsObject:&unk_1F1645CD0];

  if (v11)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __98___CNUIUserActionCallProviderVoiceTarget_actionsForEmailAddresses_contact_discoveringEnvironment___block_invoke;
    v14[3] = &unk_1E76E7AD8;
    v14[4] = self;
    v15 = v8;
    v12 = [v7 _cn_map:v14];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (id)actionsForPhoneNumbers:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CNUIUserActionTarget *)self callProvider];
  v12 = [v11 supportedHandleTypes];
  v13 = [v12 containsObject:&unk_1F1645CE8];

  if (v13)
  {
    v14 = [(_CNUIUserActionCallProviderVoiceTarget *)self actionsForPhoneNumbers:v8 contact:v9 group:6 options:16 discoveringEnvironment:v10];
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

- (id)actionsForPhoneNumbers:(id)a3 contact:(id)a4 group:(int64_t)a5 options:(unint64_t)a6 discoveringEnvironment:(id)a7
{
  v11 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __110___CNUIUserActionCallProviderVoiceTarget_actionsForPhoneNumbers_contact_group_options_discoveringEnvironment___block_invoke;
  v15[3] = &unk_1E76E8810;
  v15[4] = self;
  v16 = v11;
  v17 = a5;
  v18 = a6;
  v12 = v11;
  v13 = [a3 _cn_map:v15];

  return v13;
}

- (id)actionsForSocialProfiles:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5
{
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98___CNUIUserActionCallProviderVoiceTarget_actionsForSocialProfiles_contact_discoveringEnvironment___block_invoke;
  v14[3] = &unk_1E76E7B28;
  v14[4] = self;
  v8 = [a3 _cn_filter:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98___CNUIUserActionCallProviderVoiceTarget_actionsForSocialProfiles_contact_discoveringEnvironment___block_invoke_3;
  v12[3] = &unk_1E76E7AD8;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  v10 = [v8 _cn_map:v12];

  return v10;
}

- (id)actionsForInstantMessageAddresses:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5
{
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __107___CNUIUserActionCallProviderVoiceTarget_actionsForInstantMessageAddresses_contact_discoveringEnvironment___block_invoke;
  v14[3] = &unk_1E76E7B28;
  v14[4] = self;
  v8 = [a3 _cn_filter:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __107___CNUIUserActionCallProviderVoiceTarget_actionsForInstantMessageAddresses_contact_discoveringEnvironment___block_invoke_3;
  v12[3] = &unk_1E76E7AD8;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  v10 = [v8 _cn_map:v12];

  return v10;
}

@end