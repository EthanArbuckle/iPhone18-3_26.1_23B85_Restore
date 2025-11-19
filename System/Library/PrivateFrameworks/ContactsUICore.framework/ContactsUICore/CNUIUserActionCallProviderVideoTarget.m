@interface CNUIUserActionCallProviderVideoTarget
@end

@implementation CNUIUserActionCallProviderVideoTarget

id __98___CNUIUserActionCallProviderVideoTarget_actionsForEmailAddresses_contact_discoveringEnvironment___block_invoke(uint64_t a1, void *a2)
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
    v7 = [*(a1 + 32) callProvider];
    v8 = [v7 dialRequestForHandle:v6 contact:*(a1 + 40) video:1];

    v9 = [*(a1 + 32) callProvider];
    if ([v9 isEligibleDefaultApp])
    {
      v10 = 2;
    }

    else
    {
      v10 = 6;
    }

    v11 = MEMORY[0x1E695CE08];
    v12 = *(a1 + 40);
    v13 = *MEMORY[0x1E695C208];
    v14 = [v3 identifier];
    v15 = [v11 contactPropertyWithContactNoCopy:v12 propertyKey:v13 identifier:v14];

    v16 = *MEMORY[0x1E695C1B8];
    v17 = [*(a1 + 32) bundleIdentifier];
    v4 = [CNUIUserActionItem itemWithType:v16 contactProperty:v15 bundleIdentifier:v17 dialRequest:v8 group:v10 options:16];
  }

  return v4;
}

id __96___CNUIUserActionCallProviderVideoTarget_actionsForPhoneNumbers_contact_discoveringEnvironment___block_invoke(uint64_t a1, void *a2)
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

    v7 = 2;
    v8 = [[CNHandle alloc] initWithStringValue:v6 type:2];
    v9 = [*(a1 + 32) callProvider];
    v10 = [v9 dialRequestForHandle:v8 contact:*(a1 + 40) video:1];

    v11 = [*(a1 + 32) callProvider];
    if (![v11 isEligibleDefaultApp])
    {
      v7 = 6;
    }

    v12 = MEMORY[0x1E695CE08];
    v13 = *(a1 + 40);
    v14 = *MEMORY[0x1E695C330];
    v15 = [v3 identifier];
    v16 = [v12 contactPropertyWithContactNoCopy:v13 propertyKey:v14 identifier:v15];

    v17 = *MEMORY[0x1E695C1B8];
    v18 = [*(a1 + 32) bundleIdentifier];
    v4 = [CNUIUserActionItem itemWithType:v17 contactProperty:v16 bundleIdentifier:v18 dialRequest:v10 group:v7 options:16];
  }

  return v4;
}

uint64_t __98___CNUIUserActionCallProviderVideoTarget_actionsForSocialProfiles_contact_discoveringEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E6996570];
  v5 = [v3 value];
  v6 = [v5 username];
  LODWORD(v4) = (*(v4 + 16))(v4, v6);

  if (v4)
  {
    v7 = [v3 value];
    v8 = [v7 bundleIdentifiers];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __98___CNUIUserActionCallProviderVideoTarget_actionsForSocialProfiles_contact_discoveringEnvironment___block_invoke_2;
    v11[3] = &unk_1E76E7B00;
    v11[4] = *(a1 + 32);
    v9 = [v8 _cn_any:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __98___CNUIUserActionCallProviderVideoTarget_actionsForSocialProfiles_contact_discoveringEnvironment___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 bundleIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id __98___CNUIUserActionCallProviderVideoTarget_actionsForSocialProfiles_contact_discoveringEnvironment___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];
  v5 = [v4 username];

  v6 = [v3 value];
  v7 = [v6 userIdentifier];

  v8 = [[CNHandle alloc] initWithStringValue:v5 customIdentifier:v7 type:1];
  v9 = [*(a1 + 32) callProvider];
  v10 = [v9 dialRequestForHandle:v8 contact:*(a1 + 40) video:1];

  v11 = MEMORY[0x1E695CE08];
  v12 = *(a1 + 40);
  v13 = *MEMORY[0x1E695C3D0];
  v14 = [v3 identifier];
  v15 = [v11 contactPropertyWithContactNoCopy:v12 propertyKey:v13 identifier:v14];

  v16 = *MEMORY[0x1E695C1B8];
  v17 = [*(a1 + 32) bundleIdentifier];
  v18 = [v3 isSuggested];

  LOBYTE(v21) = 0;
  v19 = [CNUIUserActionItem itemWithType:v16 contactProperty:v15 bundleIdentifier:v17 dialRequest:v10 isSuggested:v18 options:16 isEligibleDefaultApp:v21];

  return v19;
}

uint64_t __107___CNUIUserActionCallProviderVideoTarget_actionsForInstantMessageAddresses_contact_discoveringEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E6996570];
  v5 = [v3 value];
  v6 = [v5 username];
  LODWORD(v4) = (*(v4 + 16))(v4, v6);

  if (v4)
  {
    v7 = [v3 value];
    v8 = [v7 bundleIdentifiers];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __107___CNUIUserActionCallProviderVideoTarget_actionsForInstantMessageAddresses_contact_discoveringEnvironment___block_invoke_2;
    v11[3] = &unk_1E76E7B00;
    v11[4] = *(a1 + 32);
    v9 = [v8 _cn_any:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __107___CNUIUserActionCallProviderVideoTarget_actionsForInstantMessageAddresses_contact_discoveringEnvironment___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 bundleIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id __107___CNUIUserActionCallProviderVideoTarget_actionsForInstantMessageAddresses_contact_discoveringEnvironment___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];
  v5 = [v4 username];

  v6 = [v3 value];
  v7 = [v6 userIdentifier];

  v8 = [[CNHandle alloc] initWithStringValue:v5 customIdentifier:v7 type:1];
  v9 = [*(a1 + 32) callProvider];
  v10 = [v9 dialRequestForHandle:v8 contact:*(a1 + 40) video:1];

  v11 = MEMORY[0x1E695CE08];
  v12 = *(a1 + 40);
  v13 = *MEMORY[0x1E695C2B0];
  v14 = [v3 identifier];
  v15 = [v11 contactPropertyWithContactNoCopy:v12 propertyKey:v13 identifier:v14];

  v16 = *MEMORY[0x1E695C1B8];
  v17 = [*(a1 + 32) bundleIdentifier];
  v18 = [v3 isSuggested];

  LOBYTE(v21) = 0;
  v19 = [CNUIUserActionItem itemWithType:v16 contactProperty:v15 bundleIdentifier:v17 dialRequest:v10 isSuggested:v18 options:16 isEligibleDefaultApp:v21];

  return v19;
}

@end