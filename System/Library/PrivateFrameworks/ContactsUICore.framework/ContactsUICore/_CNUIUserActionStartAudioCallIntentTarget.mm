@interface _CNUIUserActionStartAudioCallIntentTarget
- (id)actionsForEmailAddresses:(id)addresses contact:(id)contact discoveringEnvironment:(id)environment;
- (id)actionsForInstantMessageAddresses:(id)addresses contact:(id)contact discoveringEnvironment:(id)environment;
- (id)actionsForPhoneNumbers:(id)numbers contact:(id)contact discoveringEnvironment:(id)environment;
- (id)actionsForSocialProfiles:(id)profiles contact:(id)contact discoveringEnvironment:(id)environment;
@end

@implementation _CNUIUserActionStartAudioCallIntentTarget

- (id)actionsForEmailAddresses:(id)addresses contact:(id)contact discoveringEnvironment:(id)environment
{
  contactCopy = contact;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __101___CNUIUserActionStartAudioCallIntentTarget_actionsForEmailAddresses_contact_discoveringEnvironment___block_invoke;
  v11[3] = &unk_1E76E7AD8;
  v12 = contactCopy;
  selfCopy = self;
  v8 = contactCopy;
  v9 = [addresses _cn_map:v11];

  return v9;
}

- (id)actionsForPhoneNumbers:(id)numbers contact:(id)contact discoveringEnvironment:(id)environment
{
  contactCopy = contact;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __99___CNUIUserActionStartAudioCallIntentTarget_actionsForPhoneNumbers_contact_discoveringEnvironment___block_invoke;
  v11[3] = &unk_1E76E7AD8;
  v12 = contactCopy;
  selfCopy = self;
  v8 = contactCopy;
  v9 = [numbers _cn_map:v11];

  return v9;
}

- (id)actionsForSocialProfiles:(id)profiles contact:(id)contact discoveringEnvironment:(id)environment
{
  contactCopy = contact;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __101___CNUIUserActionStartAudioCallIntentTarget_actionsForSocialProfiles_contact_discoveringEnvironment___block_invoke;
  v15[3] = &unk_1E76E7B28;
  v15[4] = self;
  v8 = [profiles _cn_filter:v15];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __101___CNUIUserActionStartAudioCallIntentTarget_actionsForSocialProfiles_contact_discoveringEnvironment___block_invoke_3;
  v12[3] = &unk_1E76E7AD8;
  v13 = contactCopy;
  selfCopy = self;
  v9 = contactCopy;
  v10 = [v8 _cn_map:v12];

  return v10;
}

- (id)actionsForInstantMessageAddresses:(id)addresses contact:(id)contact discoveringEnvironment:(id)environment
{
  contactCopy = contact;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __110___CNUIUserActionStartAudioCallIntentTarget_actionsForInstantMessageAddresses_contact_discoveringEnvironment___block_invoke;
  v15[3] = &unk_1E76E7B28;
  v15[4] = self;
  v8 = [addresses _cn_filter:v15];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __110___CNUIUserActionStartAudioCallIntentTarget_actionsForInstantMessageAddresses_contact_discoveringEnvironment___block_invoke_3;
  v12[3] = &unk_1E76E7AD8;
  v13 = contactCopy;
  selfCopy = self;
  v9 = contactCopy;
  v10 = [v8 _cn_map:v12];

  return v10;
}

@end