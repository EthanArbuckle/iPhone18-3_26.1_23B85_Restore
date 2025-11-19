@interface CNUIUserActionTarget
+ (id)descriptorForRequiredKeysForActionDiscovering;
+ (id)targetForDirections;
+ (id)targetForEmailWithMail;
+ (id)targetForPayWithWallet;
+ (id)targetForSendMessageIntentWithAppProxy:(id)a3;
+ (id)targetForStartAudioCallIntentWithAppProxy:(id)a3;
+ (id)targetForStartVideoCallIntentWithAppProxy:(id)a3;
+ (id)targetForTextWithAvailableDefaultAppProxy:(id)a3;
+ (id)targetForTextWithMessages;
+ (id)targetForTextWithSkype;
+ (id)targetForVideoWithCallProvider:(id)a3;
+ (id)targetForVideoWithFaceTime;
+ (id)targetForVideoWithSkype;
+ (id)targetForVoiceWithCallProvider:(id)a3;
+ (id)targetForVoiceWithFaceTime;
+ (id)targetForVoiceWithSkype;
+ (id)targetForVoiceWithTelephony;
- (BOOL)isEqual:(id)a3;
- (CNUIUserActionTarget)init;
- (CNUIUserActionTarget)initWithName:(id)a3 bundleIdentifier:(id)a4 teamIdentifier:(id)a5;
- (id)actionsForContact:(id)a3 discoveringEnvironment:(id)a4;
- (unint64_t)hash;
@end

@implementation CNUIUserActionTarget

+ (id)descriptorForRequiredKeysForActionDiscovering
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  v3 = *MEMORY[0x1E695C330];
  v10[0] = *MEMORY[0x1E695C208];
  v10[1] = v3;
  v4 = *MEMORY[0x1E695C3D0];
  v10[2] = *MEMORY[0x1E695C2B0];
  v10[3] = v4;
  v10[4] = *MEMORY[0x1E695C360];
  v5 = [MEMORY[0x1E695CEB0] descriptorForRequiredKeys];
  v10[5] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNUIUserActionTarget descriptorForRequiredKeysForActionDiscovering]"];
  v8 = [v2 descriptorWithKeyDescriptors:v6 description:v7];

  return v8;
}

+ (id)targetForEmailWithMail
{
  v2 = objc_alloc_init(_CNUIUserActionMailEmailTarget);

  return v2;
}

+ (id)targetForPayWithWallet
{
  v2 = objc_alloc_init(_CNUIUserActionWalletPayTarget);

  return v2;
}

+ (id)targetForDirections
{
  v2 = objc_alloc_init(_CNUIUserActionDirectionsTarget);

  return v2;
}

+ (id)targetForVoiceWithTelephony
{
  v2 = objc_alloc_init(_CNUIUserActionTelephonyVoiceTarget);

  return v2;
}

+ (id)targetForVoiceWithFaceTime
{
  v2 = objc_alloc_init(_CNUIUserActionFaceTimeVoiceTarget);

  return v2;
}

+ (id)targetForVoiceWithSkype
{
  v2 = objc_alloc_init(_CNUIUserActionSkypeVoiceTarget);

  return v2;
}

+ (id)targetForVoiceWithCallProvider:(id)a3
{
  v3 = a3;
  v4 = [_CNUIUserActionCallProviderVoiceTarget alloc];
  v5 = [v3 localizedName];
  v6 = [v3 bundleIdentifier];
  v7 = [(CNUIUserActionTarget *)v4 initWithName:v5 bundleIdentifier:v6 teamIdentifier:0];

  [(CNUIUserActionTarget *)v7 setCallProvider:v3];

  return v7;
}

+ (id)targetForStartAudioCallIntentWithAppProxy:(id)a3
{
  v3 = a3;
  v4 = [_CNUIUserActionStartAudioCallIntentTarget alloc];
  v5 = [v3 localizedName];
  v6 = [v3 bundleIdentifier];
  v7 = [v3 teamIdentifier];

  v8 = [(CNUIUserActionTarget *)v4 initWithName:v5 bundleIdentifier:v6 teamIdentifier:v7];

  return v8;
}

+ (id)targetForVideoWithFaceTime
{
  v2 = objc_alloc_init(_CNUIUserActionFaceTimeVideoTarget);

  return v2;
}

+ (id)targetForVideoWithSkype
{
  v2 = objc_alloc_init(_CNUIUserActionSkypeVideoTarget);

  return v2;
}

+ (id)targetForVideoWithCallProvider:(id)a3
{
  v3 = a3;
  v4 = [_CNUIUserActionCallProviderVideoTarget alloc];
  v5 = [v3 localizedName];
  v6 = [v3 bundleIdentifier];
  v7 = [(CNUIUserActionTarget *)v4 initWithName:v5 bundleIdentifier:v6 teamIdentifier:0];

  [(CNUIUserActionTarget *)v7 setCallProvider:v3];

  return v7;
}

+ (id)targetForStartVideoCallIntentWithAppProxy:(id)a3
{
  v3 = a3;
  v4 = [_CNUIUserActionStartVideoCallIntentTarget alloc];
  v5 = [v3 localizedName];
  v6 = [v3 bundleIdentifier];
  v7 = [v3 teamIdentifier];

  v8 = [(CNUIUserActionTarget *)v4 initWithName:v5 bundleIdentifier:v6 teamIdentifier:v7];

  return v8;
}

+ (id)targetForTextWithMessages
{
  v2 = objc_alloc_init(_CNUIUserActionMessagesTextTarget);

  return v2;
}

+ (id)targetForTextWithSkype
{
  v2 = objc_alloc_init(_CNUIUserActionSkypeTextTarget);

  return v2;
}

+ (id)targetForSendMessageIntentWithAppProxy:(id)a3
{
  v3 = a3;
  v4 = [_CNUIUserActionSendMessageIntentTarget alloc];
  v5 = [v3 localizedName];
  v6 = [v3 bundleIdentifier];
  v7 = [v3 teamIdentifier];

  v8 = [(CNUIUserActionTarget *)v4 initWithName:v5 bundleIdentifier:v6 teamIdentifier:v7];

  return v8;
}

+ (id)targetForTextWithAvailableDefaultAppProxy:(id)a3
{
  v3 = a3;
  v4 = [_CNUIUserActionAvailableDefaultAppTextTarget alloc];
  v5 = [v3 localizedName];
  v6 = [v3 bundleIdentifier];
  v7 = [v3 teamIdentifier];

  v8 = [(CNUIUserActionTarget *)v4 initWithName:v5 bundleIdentifier:v6 teamIdentifier:v7];

  return v8;
}

- (CNUIUserActionTarget)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 raise:@"CNUIInitializerException" format:{@"You can't instantiate the base class %@ without a name and bundle identifier", v5}];

  return [(CNUIUserActionTarget *)self initWithName:&stru_1F162C170 bundleIdentifier:&stru_1F162C170 teamIdentifier:&stru_1F162C170];
}

- (CNUIUserActionTarget)initWithName:(id)a3 bundleIdentifier:(id)a4 teamIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = CNUIUserActionTarget;
  v12 = [(CNUIUserActionTarget *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, a3);
    objc_storeStrong(&v13->_bundleIdentifier, a4);
    objc_storeStrong(&v13->_teamIdentifier, a5);
    v14 = v13;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __32__CNUIUserActionTarget_isEqual___block_invoke;
  v16[3] = &unk_1E76E7A88;
  v16[4] = self;
  v17 = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __32__CNUIUserActionTarget_isEqual___block_invoke_2;
  aBlock[3] = &unk_1E76E7A88;
  aBlock[4] = self;
  v7 = v17;
  v15 = v7;
  v8 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __32__CNUIUserActionTarget_isEqual___block_invoke_3;
  v12[3] = &unk_1E76E7A88;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  v10 = _Block_copy(v12);
  LOBYTE(self) = [v5 isObject:v9 kindOfClass:v6 andEqualToObject:self withBlocks:{v16, v8, v10, 0}];

  return self;
}

uint64_t __32__CNUIUserActionTarget_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) name];
  v4 = [*(a1 + 40) name];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __32__CNUIUserActionTarget_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) bundleIdentifier];
  v4 = [*(a1 + 40) bundleIdentifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __32__CNUIUserActionTarget_isEqual___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) teamIdentifier];
  v4 = [*(a1 + 40) teamIdentifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __28__CNUIUserActionTarget_hash__block_invoke;
  v10[3] = &unk_1E76E7AB0;
  v10[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __28__CNUIUserActionTarget_hash__block_invoke_2;
  aBlock[3] = &unk_1E76E7AB0;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__CNUIUserActionTarget_hash__block_invoke_3;
  v8[3] = &unk_1E76E7AB0;
  v8[4] = self;
  v5 = _Block_copy(v8);
  v6 = [v3 hashWithBlocks:{v10, v4, v5, 0}];

  return v6;
}

uint64_t __28__CNUIUserActionTarget_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) name];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __28__CNUIUserActionTarget_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __28__CNUIUserActionTarget_hash__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) teamIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (id)actionsForContact:(id)a3 discoveringEnvironment:(id)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v19 = MEMORY[0x1E6996798];
  v6 = a4;
  v7 = a3;
  v23 = [v7 emailAddresses];
  v22 = [(CNUIUserActionTarget *)self actionsForEmailAddresses:v23 contact:v7 discoveringEnvironment:v6];
  v24[0] = v22;
  v21 = [v7 phoneNumbers];
  v20 = [(CNUIUserActionTarget *)self actionsForPhoneNumbers:v21 contact:v7 discoveringEnvironment:v6];
  v24[1] = v20;
  v8 = [v7 instantMessageAddresses];
  v9 = [(CNUIUserActionTarget *)self actionsForInstantMessageAddresses:v8 contact:v7 discoveringEnvironment:v6];
  v24[2] = v9;
  v10 = [v7 socialProfiles];
  v11 = [(CNUIUserActionTarget *)self actionsForSocialProfiles:v10 contact:v7 discoveringEnvironment:v6];
  v24[3] = v11;
  v12 = [v7 postalAddresses];
  v13 = [(CNUIUserActionTarget *)self actionsForPostalAddresses:v12 contact:v7 discoveringEnvironment:v6];

  v24[4] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:5];
  v15 = [v14 _cn_flatten];
  v25[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v17 = [v19 observableWithResults:v16];

  return v17;
}

@end