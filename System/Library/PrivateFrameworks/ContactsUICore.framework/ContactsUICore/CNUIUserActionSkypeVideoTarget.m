@interface CNUIUserActionSkypeVideoTarget
@end

@implementation CNUIUserActionSkypeVideoTarget

id __91___CNUIUserActionSkypeVideoTarget_actionsForEmailAddresses_contact_discoveringEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSuggested])
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v5 = [CNHandle alloc];
    v6 = [v3 value];
    v7 = [(CNHandle *)v5 initWithStringValue:v6 type:3];

    v8 = [MEMORY[0x1E695DFF8] _cnui_skypeVideoURLFutureWithHandle:v7];
    v9 = MEMORY[0x1E695CE08];
    v10 = *(a1 + 32);
    v11 = *MEMORY[0x1E695C208];
    v12 = [v3 identifier];
    v13 = [v9 contactPropertyWithContactNoCopy:v10 propertyKey:v11 identifier:v12];

    v14 = *MEMORY[0x1E695C1B8];
    v15 = [*(a1 + 40) bundleIdentifier];
    v4 = [CNUIUserActionItem itemWithType:v14 contactProperty:v13 bundleIdentifier:v15 url:v8 group:4 options:0];
  }

  return v4;
}

id __89___CNUIUserActionSkypeVideoTarget_actionsForPhoneNumbers_contact_discoveringEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSuggested])
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v5 = [CNHandle alloc];
    v6 = [v3 value];
    v7 = [v6 stringValue];
    v8 = [(CNHandle *)v5 initWithStringValue:v7 type:2];

    v9 = [MEMORY[0x1E695DFF8] _cnui_skypeVideoURLFutureWithHandle:v8];
    v10 = MEMORY[0x1E695CE08];
    v11 = *(a1 + 32);
    v12 = *MEMORY[0x1E695C330];
    v13 = [v3 identifier];
    v14 = [v10 contactPropertyWithContactNoCopy:v11 propertyKey:v12 identifier:v13];

    v15 = *MEMORY[0x1E695C1B8];
    v16 = [*(a1 + 40) bundleIdentifier];
    v4 = [CNUIUserActionItem itemWithType:v15 contactProperty:v14 bundleIdentifier:v16 url:v9 group:4 options:0];
  }

  return v4;
}

@end