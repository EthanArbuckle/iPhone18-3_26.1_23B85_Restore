@interface CNUIUserActionTelephonyVoiceTarget
@end

@implementation CNUIUserActionTelephonyVoiceTarget

id __93___CNUIUserActionTelephonyVoiceTarget_actionsForPhoneNumbers_contact_discoveringEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSuggested])
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v5 = [v3 value];
    v6 = [v5 stringValue];

    v7 = MEMORY[0x1E695CE08];
    v8 = *(a1 + 32);
    v9 = *MEMORY[0x1E695C330];
    v10 = [v3 identifier];
    v11 = [v7 contactPropertyWithContactNoCopy:v8 propertyKey:v9 identifier:v10];

    v4 = [MEMORY[0x1E695DF70] array];
    v12 = [*(a1 + 40) phoneCallActionWithDestinationID:v6 contactProperty:v11 discoveringEnvironment:*(a1 + 48)];
    [v4 addObject:v12];
  }

  return v4;
}

id __96___CNUIUserActionTelephonyVoiceTarget_ttyActionsForPhoneNumbers_contact_discoveringEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) highLatencySchedulerProvider];
  v5 = [v4 backgroundScheduler];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96___CNUIUserActionTelephonyVoiceTarget_ttyActionsForPhoneNumbers_contact_discoveringEnvironment___block_invoke_2;
  v15[3] = &unk_1E76E90A8;
  v14 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v14;
  *(&v10 + 1) = v6;
  v16 = v10;
  v17 = v9;
  v18 = v3;
  v11 = v3;
  v12 = [v5 performCancelableBlock:v15 qualityOfService:2];

  return v12;
}

void __96___CNUIUserActionTelephonyVoiceTarget_ttyActionsForPhoneNumbers_contact_discoveringEnvironment___block_invoke_2(void *a1, void *a2)
{
  v3 = MEMORY[0x1E6996798];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a2;
  v9 = [v4 ttyActionsFutureForPhoneNumbers:v5 contact:v6 discoveringEnvironment:v7];
  v10 = [v3 observableWithFuture:v9];
  v11 = [v10 subscribe:a1[8]];

  [v8 addCancelable:v11];
}

id __102___CNUIUserActionTelephonyVoiceTarget_ttyActionsFutureForPhoneNumbers_contact_discoveringEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSuggested])
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v5 = [v3 value];
    v6 = [v5 stringValue];

    v7 = MEMORY[0x1E695CE08];
    v8 = *(a1 + 32);
    v9 = *MEMORY[0x1E695C330];
    v10 = [v3 identifier];
    v11 = [v7 contactPropertyWithContactNoCopy:v8 propertyKey:v9 identifier:v10];

    v4 = [MEMORY[0x1E695DF70] array];
    v12 = [*(a1 + 40) TTYCallActionWithDestinationID:v6 contactProperty:v11 discoveringEnvironment:*(a1 + 48)];
    [v4 addObject:v12];

    if (*(a1 + 56) == 1)
    {
      v13 = [*(a1 + 40) TTYRelayCallActionWithDestinationID:v6 contactProperty:v11 discoveringEnvironment:*(a1 + 48)];
      [v4 addObject:v13];
    }
  }

  return v4;
}

@end