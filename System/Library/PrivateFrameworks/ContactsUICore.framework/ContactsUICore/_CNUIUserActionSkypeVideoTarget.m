@interface _CNUIUserActionSkypeVideoTarget
- (_CNUIUserActionSkypeVideoTarget)init;
- (id)actionsForEmailAddresses:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5;
- (id)actionsForPhoneNumbers:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5;
@end

@implementation _CNUIUserActionSkypeVideoTarget

- (_CNUIUserActionSkypeVideoTarget)init
{
  v3.receiver = self;
  v3.super_class = _CNUIUserActionSkypeVideoTarget;
  return [(CNUIUserActionTarget *)&v3 initWithName:@"Skype" bundleIdentifier:@"com.skype.skype" teamIdentifier:0];
}

- (id)actionsForEmailAddresses:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5
{
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91___CNUIUserActionSkypeVideoTarget_actionsForEmailAddresses_contact_discoveringEnvironment___block_invoke;
  v11[3] = &unk_1E76E7AD8;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = [a3 _cn_map:v11];

  return v9;
}

- (id)actionsForPhoneNumbers:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5
{
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89___CNUIUserActionSkypeVideoTarget_actionsForPhoneNumbers_contact_discoveringEnvironment___block_invoke;
  v11[3] = &unk_1E76E7AD8;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = [a3 _cn_map:v11];

  return v9;
}

@end