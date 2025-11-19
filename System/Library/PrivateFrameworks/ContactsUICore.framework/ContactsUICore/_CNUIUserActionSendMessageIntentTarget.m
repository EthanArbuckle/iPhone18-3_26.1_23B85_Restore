@interface _CNUIUserActionSendMessageIntentTarget
- (id)actionsForInstantMessageAddresses:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5;
- (id)actionsForSocialProfiles:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5;
@end

@implementation _CNUIUserActionSendMessageIntentTarget

- (id)actionsForSocialProfiles:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5
{
  v7 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98___CNUIUserActionSendMessageIntentTarget_actionsForSocialProfiles_contact_discoveringEnvironment___block_invoke;
  v15[3] = &unk_1E76E7B28;
  v15[4] = self;
  v8 = [a3 _cn_filter:v15];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98___CNUIUserActionSendMessageIntentTarget_actionsForSocialProfiles_contact_discoveringEnvironment___block_invoke_3;
  v12[3] = &unk_1E76E7AD8;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = [v8 _cn_map:v12];

  return v10;
}

- (id)actionsForInstantMessageAddresses:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5
{
  v7 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __107___CNUIUserActionSendMessageIntentTarget_actionsForInstantMessageAddresses_contact_discoveringEnvironment___block_invoke;
  v15[3] = &unk_1E76E7B28;
  v15[4] = self;
  v8 = [a3 _cn_filter:v15];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __107___CNUIUserActionSendMessageIntentTarget_actionsForInstantMessageAddresses_contact_discoveringEnvironment___block_invoke_3;
  v12[3] = &unk_1E76E7AD8;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = [v8 _cn_map:v12];

  return v10;
}

@end