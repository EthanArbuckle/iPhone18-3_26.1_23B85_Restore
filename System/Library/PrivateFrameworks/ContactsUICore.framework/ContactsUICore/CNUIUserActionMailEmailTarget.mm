@interface CNUIUserActionMailEmailTarget
@end

@implementation CNUIUserActionMailEmailTarget

id __90___CNUIUserActionMailEmailTarget_actionsForEmailAddresses_contact_discoveringEnvironment___block_invoke(uint64_t a1, void *a2)
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
    v7 = [MEMORY[0x1E695DFF8] _cnui_mailURLFutureWithHandle:v6 contact:*(a1 + 32)];
    v8 = MEMORY[0x1E695CE08];
    v9 = *(a1 + 32);
    v10 = *MEMORY[0x1E695C208];
    v11 = [v3 identifier];
    v12 = [v8 contactPropertyWithContactNoCopy:v9 propertyKey:v10 identifier:v11];

    v13 = *MEMORY[0x1E695C170];
    v14 = [*(a1 + 40) bundleIdentifier];
    v4 = [CNUIUserActionItem itemWithType:v13 contactProperty:v12 bundleIdentifier:v14 url:v7 group:8 options:0];
  }

  return v4;
}

@end