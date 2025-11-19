@interface CNUIUserActionSkypeVoiceTarget
@end

@implementation CNUIUserActionSkypeVoiceTarget

id __91___CNUIUserActionSkypeVoiceTarget_actionsForEmailAddresses_contact_discoveringEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSuggested])
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v5 = [v3 value];
    v6 = [[CNHandle alloc] initWithStringValue:v5 type:3];
    v7 = [MEMORY[0x1E695DFF8] _cnui_skypeVoiceURLFutureWithHandle:v6];
    v8 = MEMORY[0x1E695CE08];
    v9 = *(a1 + 32);
    v10 = *MEMORY[0x1E695C208];
    v11 = [v3 identifier];
    v12 = [v8 contactPropertyWithContactNoCopy:v9 propertyKey:v10 identifier:v11];

    v13 = *MEMORY[0x1E695C150];
    v14 = [*(a1 + 40) bundleIdentifier];
    v4 = [CNUIUserActionItem itemWithType:v13 contactProperty:v12 bundleIdentifier:v14 url:v7 group:4 options:0];
  }

  return v4;
}

id __89___CNUIUserActionSkypeVoiceTarget_actionsForPhoneNumbers_contact_discoveringEnvironment___block_invoke(uint64_t a1, void *a2)
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

    v7 = [[CNHandle alloc] initWithStringValue:v6 type:2];
    v8 = [MEMORY[0x1E695DFF8] _cnui_skypeVoiceURLFutureWithHandle:v7];
    v9 = MEMORY[0x1E695CE08];
    v10 = *(a1 + 32);
    v11 = *MEMORY[0x1E695C330];
    v12 = [v3 identifier];
    v13 = [v9 contactPropertyWithContactNoCopy:v10 propertyKey:v11 identifier:v12];

    v14 = *MEMORY[0x1E695C150];
    v15 = [*(a1 + 40) bundleIdentifier];
    v4 = [CNUIUserActionItem itemWithType:v14 contactProperty:v13 bundleIdentifier:v15 url:v8 group:4 options:0];
  }

  return v4;
}

@end