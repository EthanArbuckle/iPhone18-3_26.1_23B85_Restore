@interface _CNUIUserActionCallProviderVideoTarget
- (id)actionsForEmailAddresses:(id)addresses contact:(id)contact discoveringEnvironment:(id)environment;
- (id)actionsForInstantMessageAddresses:(id)addresses contact:(id)contact discoveringEnvironment:(id)environment;
- (id)actionsForPhoneNumbers:(id)numbers contact:(id)contact discoveringEnvironment:(id)environment;
- (id)actionsForSocialProfiles:(id)profiles contact:(id)contact discoveringEnvironment:(id)environment;
@end

@implementation _CNUIUserActionCallProviderVideoTarget

- (id)actionsForEmailAddresses:(id)addresses contact:(id)contact discoveringEnvironment:(id)environment
{
  addressesCopy = addresses;
  contactCopy = contact;
  callProvider = [(CNUIUserActionTarget *)self callProvider];
  supportedHandleTypes = [callProvider supportedHandleTypes];
  v11 = [supportedHandleTypes containsObject:&unk_1F1645D18];

  if (v11)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __98___CNUIUserActionCallProviderVideoTarget_actionsForEmailAddresses_contact_discoveringEnvironment___block_invoke;
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
  callProvider = [(CNUIUserActionTarget *)self callProvider];
  supportedHandleTypes = [callProvider supportedHandleTypes];
  v11 = [supportedHandleTypes containsObject:&unk_1F1645D30];

  if (v11)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __96___CNUIUserActionCallProviderVideoTarget_actionsForPhoneNumbers_contact_discoveringEnvironment___block_invoke;
    v14[3] = &unk_1E76E7AD8;
    v14[4] = self;
    v15 = contactCopy;
    v12 = [numbersCopy _cn_map:v14];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (id)actionsForSocialProfiles:(id)profiles contact:(id)contact discoveringEnvironment:(id)environment
{
  contactCopy = contact;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98___CNUIUserActionCallProviderVideoTarget_actionsForSocialProfiles_contact_discoveringEnvironment___block_invoke;
  v14[3] = &unk_1E76E7B28;
  v14[4] = self;
  v8 = [profiles _cn_filter:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98___CNUIUserActionCallProviderVideoTarget_actionsForSocialProfiles_contact_discoveringEnvironment___block_invoke_3;
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
  v14[2] = __107___CNUIUserActionCallProviderVideoTarget_actionsForInstantMessageAddresses_contact_discoveringEnvironment___block_invoke;
  v14[3] = &unk_1E76E7B28;
  v14[4] = self;
  v8 = [addresses _cn_filter:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __107___CNUIUserActionCallProviderVideoTarget_actionsForInstantMessageAddresses_contact_discoveringEnvironment___block_invoke_3;
  v12[3] = &unk_1E76E7AD8;
  v12[4] = self;
  v13 = contactCopy;
  v9 = contactCopy;
  v10 = [v8 _cn_map:v12];

  return v10;
}

@end