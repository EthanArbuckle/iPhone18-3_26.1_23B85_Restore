@interface _CNUIUserActionTelephonyVoiceTarget
- (_CNUIUserActionTelephonyVoiceTarget)init;
- (id)TTYCallActionWithDestinationID:(id)a3 contactProperty:(id)a4 discoveringEnvironment:(id)a5;
- (id)TTYRelayCallActionWithDestinationID:(id)a3 contactProperty:(id)a4 discoveringEnvironment:(id)a5;
- (id)actionsForContact:(id)a3 discoveringEnvironment:(id)a4;
- (id)actionsForPhoneNumbers:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5;
- (id)phoneCallActionWithDestinationID:(id)a3 contactProperty:(id)a4 discoveringEnvironment:(id)a5;
- (id)ttyActionsForPhoneNumbers:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5;
- (id)ttyActionsFutureForPhoneNumbers:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5;
@end

@implementation _CNUIUserActionTelephonyVoiceTarget

- (_CNUIUserActionTelephonyVoiceTarget)init
{
  v2 = *MEMORY[0x1E695C140];
  v4.receiver = self;
  v4.super_class = _CNUIUserActionTelephonyVoiceTarget;
  return [(CNUIUserActionTarget *)&v4 initWithName:@"Phone" bundleIdentifier:v2 teamIdentifier:0];
}

- (id)actionsForContact:(id)a3 discoveringEnvironment:(id)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = _CNUIUserActionTelephonyVoiceTarget;
  v6 = a4;
  v7 = a3;
  v8 = [(CNUIUserActionTarget *)&v18 actionsForContact:v7 discoveringEnvironment:v6];
  v9 = [v7 phoneNumbers];
  v10 = [(_CNUIUserActionTelephonyVoiceTarget *)self ttyActionsForPhoneNumbers:v9 contact:v7 discoveringEnvironment:v6];

  v11 = [v10 startWith:&unk_1F1646030];

  v12 = MEMORY[0x1E6996798];
  v19[0] = v8;
  v19[1] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v14 = [v6 schedulerProvider];

  v15 = [v12 combineLatest:v13 schedulerProvider:v14];
  v16 = [v15 map:*MEMORY[0x1E6996460]];

  return v16;
}

- (id)actionsForPhoneNumbers:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93___CNUIUserActionTelephonyVoiceTarget_actionsForPhoneNumbers_contact_discoveringEnvironment___block_invoke;
  v14[3] = &unk_1E76E9080;
  v15 = v8;
  v16 = self;
  v17 = v9;
  v10 = v9;
  v11 = v8;
  v12 = [a3 _cn_flatMap:v14];

  return v12;
}

- (id)ttyActionsForPhoneNumbers:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x1E6996798];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96___CNUIUserActionTelephonyVoiceTarget_ttyActionsForPhoneNumbers_contact_discoveringEnvironment___block_invoke;
  v17[3] = &unk_1E76E90D0;
  v18 = v10;
  v19 = self;
  v20 = v8;
  v21 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  v15 = [v11 observableWithBlock:v17];

  return v15;
}

- (id)ttyActionsFutureForPhoneNumbers:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 ttyUtilities];
  v12 = [v11 contactIsTTYContact:v9];

  if (v12)
  {
    v13 = [v10 ttyUtilities];
    v14 = [v13 relayIsSupported];

    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __102___CNUIUserActionTelephonyVoiceTarget_ttyActionsFutureForPhoneNumbers_contact_discoveringEnvironment___block_invoke;
    v22 = &unk_1E76E90F8;
    v23 = v9;
    v24 = self;
    v25 = v10;
    v26 = v14;
    v15 = [v8 _cn_flatMap:&v19];
    v16 = [v15 _cn_flatten];

    v17 = [MEMORY[0x1E6996720] futureWithResult:v16];
  }

  else
  {
    v17 = [MEMORY[0x1E6996720] futureWithResult:MEMORY[0x1E695E0F0]];
  }

  return v17;
}

- (id)phoneCallActionWithDestinationID:(id)a3 contactProperty:(id)a4 discoveringEnvironment:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[CNHandle alloc] initWithStringValue:v8 type:2];

  v10 = MEMORY[0x1E695DFF8];
  v11 = [v7 contact];
  v12 = [v10 _cnui_telephonyURLFutureWithHandle:v9 contact:v11 preferDefaultApp:0];

  v13 = *MEMORY[0x1E695C150];
  v14 = [(CNUIUserActionTarget *)self bundleIdentifier];
  v15 = [CNUIUserActionItem itemWithType:v13 contactProperty:v7 bundleIdentifier:v14 url:v12 group:2 options:0];

  return v15;
}

- (id)TTYCallActionWithDestinationID:(id)a3 contactProperty:(id)a4 discoveringEnvironment:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[CNHandle alloc] initWithStringValue:v8 type:2];

  v10 = MEMORY[0x1E695DFF8];
  v11 = [v7 contact];
  v12 = [v10 _cnui_ttyURLFutureWithHandle:v9 contact:v11];

  v13 = *MEMORY[0x1E695C190];
  v14 = [(CNUIUserActionTarget *)self bundleIdentifier];
  v15 = [CNUIUserActionItem itemWithType:v13 contactProperty:v7 bundleIdentifier:v14 url:v12 group:2 options:0];

  return v15;
}

- (id)TTYRelayCallActionWithDestinationID:(id)a3 contactProperty:(id)a4 discoveringEnvironment:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[CNHandle alloc] initWithStringValue:v8 type:2];

  v10 = MEMORY[0x1E695DFF8];
  v11 = [v7 contact];
  v12 = [v10 _cnui_ttyRelayURLFutureWithHandle:v9 contact:v11];

  v13 = *MEMORY[0x1E695C1A8];
  v14 = [(CNUIUserActionTarget *)self bundleIdentifier];
  v15 = [CNUIUserActionItem itemWithType:v13 contactProperty:v7 bundleIdentifier:v14 url:v12 group:2 options:0];

  return v15;
}

@end