@interface _CNUIUserActionTelephonyVoiceTarget
- (_CNUIUserActionTelephonyVoiceTarget)init;
- (id)TTYCallActionWithDestinationID:(id)d contactProperty:(id)property discoveringEnvironment:(id)environment;
- (id)TTYRelayCallActionWithDestinationID:(id)d contactProperty:(id)property discoveringEnvironment:(id)environment;
- (id)actionsForContact:(id)contact discoveringEnvironment:(id)environment;
- (id)actionsForPhoneNumbers:(id)numbers contact:(id)contact discoveringEnvironment:(id)environment;
- (id)phoneCallActionWithDestinationID:(id)d contactProperty:(id)property discoveringEnvironment:(id)environment;
- (id)ttyActionsForPhoneNumbers:(id)numbers contact:(id)contact discoveringEnvironment:(id)environment;
- (id)ttyActionsFutureForPhoneNumbers:(id)numbers contact:(id)contact discoveringEnvironment:(id)environment;
@end

@implementation _CNUIUserActionTelephonyVoiceTarget

- (_CNUIUserActionTelephonyVoiceTarget)init
{
  v2 = *MEMORY[0x1E695C140];
  v4.receiver = self;
  v4.super_class = _CNUIUserActionTelephonyVoiceTarget;
  return [(CNUIUserActionTarget *)&v4 initWithName:@"Phone" bundleIdentifier:v2 teamIdentifier:0];
}

- (id)actionsForContact:(id)contact discoveringEnvironment:(id)environment
{
  v19[2] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = _CNUIUserActionTelephonyVoiceTarget;
  environmentCopy = environment;
  contactCopy = contact;
  v8 = [(CNUIUserActionTarget *)&v18 actionsForContact:contactCopy discoveringEnvironment:environmentCopy];
  phoneNumbers = [contactCopy phoneNumbers];
  v10 = [(_CNUIUserActionTelephonyVoiceTarget *)self ttyActionsForPhoneNumbers:phoneNumbers contact:contactCopy discoveringEnvironment:environmentCopy];

  v11 = [v10 startWith:&unk_1F1646030];

  v12 = MEMORY[0x1E6996798];
  v19[0] = v8;
  v19[1] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  schedulerProvider = [environmentCopy schedulerProvider];

  v15 = [v12 combineLatest:v13 schedulerProvider:schedulerProvider];
  v16 = [v15 map:*MEMORY[0x1E6996460]];

  return v16;
}

- (id)actionsForPhoneNumbers:(id)numbers contact:(id)contact discoveringEnvironment:(id)environment
{
  contactCopy = contact;
  environmentCopy = environment;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93___CNUIUserActionTelephonyVoiceTarget_actionsForPhoneNumbers_contact_discoveringEnvironment___block_invoke;
  v14[3] = &unk_1E76E9080;
  v15 = contactCopy;
  selfCopy = self;
  v17 = environmentCopy;
  v10 = environmentCopy;
  v11 = contactCopy;
  v12 = [numbers _cn_flatMap:v14];

  return v12;
}

- (id)ttyActionsForPhoneNumbers:(id)numbers contact:(id)contact discoveringEnvironment:(id)environment
{
  numbersCopy = numbers;
  contactCopy = contact;
  environmentCopy = environment;
  v11 = MEMORY[0x1E6996798];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96___CNUIUserActionTelephonyVoiceTarget_ttyActionsForPhoneNumbers_contact_discoveringEnvironment___block_invoke;
  v17[3] = &unk_1E76E90D0;
  v18 = environmentCopy;
  selfCopy = self;
  v20 = numbersCopy;
  v21 = contactCopy;
  v12 = contactCopy;
  v13 = numbersCopy;
  v14 = environmentCopy;
  v15 = [v11 observableWithBlock:v17];

  return v15;
}

- (id)ttyActionsFutureForPhoneNumbers:(id)numbers contact:(id)contact discoveringEnvironment:(id)environment
{
  numbersCopy = numbers;
  contactCopy = contact;
  environmentCopy = environment;
  ttyUtilities = [environmentCopy ttyUtilities];
  v12 = [ttyUtilities contactIsTTYContact:contactCopy];

  if (v12)
  {
    ttyUtilities2 = [environmentCopy ttyUtilities];
    relayIsSupported = [ttyUtilities2 relayIsSupported];

    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __102___CNUIUserActionTelephonyVoiceTarget_ttyActionsFutureForPhoneNumbers_contact_discoveringEnvironment___block_invoke;
    v22 = &unk_1E76E90F8;
    v23 = contactCopy;
    selfCopy = self;
    v25 = environmentCopy;
    v26 = relayIsSupported;
    v15 = [numbersCopy _cn_flatMap:&v19];
    _cn_flatten = [v15 _cn_flatten];

    v17 = [MEMORY[0x1E6996720] futureWithResult:_cn_flatten];
  }

  else
  {
    v17 = [MEMORY[0x1E6996720] futureWithResult:MEMORY[0x1E695E0F0]];
  }

  return v17;
}

- (id)phoneCallActionWithDestinationID:(id)d contactProperty:(id)property discoveringEnvironment:(id)environment
{
  propertyCopy = property;
  dCopy = d;
  v9 = [[CNHandle alloc] initWithStringValue:dCopy type:2];

  v10 = MEMORY[0x1E695DFF8];
  contact = [propertyCopy contact];
  v12 = [v10 _cnui_telephonyURLFutureWithHandle:v9 contact:contact preferDefaultApp:0];

  v13 = *MEMORY[0x1E695C150];
  bundleIdentifier = [(CNUIUserActionTarget *)self bundleIdentifier];
  v15 = [CNUIUserActionItem itemWithType:v13 contactProperty:propertyCopy bundleIdentifier:bundleIdentifier url:v12 group:2 options:0];

  return v15;
}

- (id)TTYCallActionWithDestinationID:(id)d contactProperty:(id)property discoveringEnvironment:(id)environment
{
  propertyCopy = property;
  dCopy = d;
  v9 = [[CNHandle alloc] initWithStringValue:dCopy type:2];

  v10 = MEMORY[0x1E695DFF8];
  contact = [propertyCopy contact];
  v12 = [v10 _cnui_ttyURLFutureWithHandle:v9 contact:contact];

  v13 = *MEMORY[0x1E695C190];
  bundleIdentifier = [(CNUIUserActionTarget *)self bundleIdentifier];
  v15 = [CNUIUserActionItem itemWithType:v13 contactProperty:propertyCopy bundleIdentifier:bundleIdentifier url:v12 group:2 options:0];

  return v15;
}

- (id)TTYRelayCallActionWithDestinationID:(id)d contactProperty:(id)property discoveringEnvironment:(id)environment
{
  propertyCopy = property;
  dCopy = d;
  v9 = [[CNHandle alloc] initWithStringValue:dCopy type:2];

  v10 = MEMORY[0x1E695DFF8];
  contact = [propertyCopy contact];
  v12 = [v10 _cnui_ttyRelayURLFutureWithHandle:v9 contact:contact];

  v13 = *MEMORY[0x1E695C1A8];
  bundleIdentifier = [(CNUIUserActionTarget *)self bundleIdentifier];
  v15 = [CNUIUserActionItem itemWithType:v13 contactProperty:propertyCopy bundleIdentifier:bundleIdentifier url:v12 group:2 options:0];

  return v15;
}

@end