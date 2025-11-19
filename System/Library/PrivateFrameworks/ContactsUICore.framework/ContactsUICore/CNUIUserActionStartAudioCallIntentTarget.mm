@interface CNUIUserActionStartAudioCallIntentTarget
@end

@implementation CNUIUserActionStartAudioCallIntentTarget

id __101___CNUIUserActionStartAudioCallIntentTarget_actionsForEmailAddresses_contact_discoveringEnvironment___block_invoke(uint64_t a1, void *a2)
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
    v7 = [MEMORY[0x1E696B090] _cnui_startAudioCallIntentWithHandle:v6 contact:*(a1 + 32)];
    v8 = MEMORY[0x1E695CE08];
    v9 = *(a1 + 32);
    v10 = *MEMORY[0x1E695C208];
    v11 = [v3 identifier];
    v12 = [v8 contactPropertyWithContactNoCopy:v9 propertyKey:v10 identifier:v11];

    v13 = *MEMORY[0x1E695C150];
    v14 = [*(a1 + 40) bundleIdentifier];
    v4 = [CNUIUserActionItem itemWithType:v13 contactProperty:v12 bundleIdentifier:v14 userActivity:v7 group:7 options:26];

    v15 = [*(a1 + 40) teamIdentifier];
    [v4 setTeamIdentifier:v15];
  }

  return v4;
}

id __99___CNUIUserActionStartAudioCallIntentTarget_actionsForPhoneNumbers_contact_discoveringEnvironment___block_invoke(uint64_t a1, void *a2)
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
    v8 = [MEMORY[0x1E696B090] _cnui_startAudioCallIntentWithHandle:v7 contact:*(a1 + 32)];
    v9 = MEMORY[0x1E695CE08];
    v10 = *(a1 + 32);
    v11 = *MEMORY[0x1E695C330];
    v12 = [v3 identifier];
    v13 = [v9 contactPropertyWithContactNoCopy:v10 propertyKey:v11 identifier:v12];

    v14 = *MEMORY[0x1E695C150];
    v15 = [*(a1 + 40) bundleIdentifier];
    v4 = [CNUIUserActionItem itemWithType:v14 contactProperty:v13 bundleIdentifier:v15 userActivity:v8 group:7 options:26];

    v16 = [*(a1 + 40) teamIdentifier];
    [v4 setTeamIdentifier:v16];
  }

  return v4;
}

uint64_t __101___CNUIUserActionStartAudioCallIntentTarget_actionsForSocialProfiles_contact_discoveringEnvironment___block_invoke(uint64_t a1, void *a2)
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
    v11[2] = __101___CNUIUserActionStartAudioCallIntentTarget_actionsForSocialProfiles_contact_discoveringEnvironment___block_invoke_2;
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

uint64_t __101___CNUIUserActionStartAudioCallIntentTarget_actionsForSocialProfiles_contact_discoveringEnvironment___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 bundleIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id __101___CNUIUserActionStartAudioCallIntentTarget_actionsForSocialProfiles_contact_discoveringEnvironment___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];
  v20 = [v4 username];

  v5 = [v3 value];
  v6 = [v5 userIdentifier];

  v7 = [[CNHandle alloc] initWithStringValue:v20 customIdentifier:v6 type:1];
  v8 = [MEMORY[0x1E696B090] _cnui_startAudioCallIntentWithHandle:v7 contact:*(a1 + 32)];
  v9 = MEMORY[0x1E695CE08];
  v10 = *(a1 + 32);
  v11 = *MEMORY[0x1E695C3D0];
  v12 = [v3 identifier];
  v13 = [v9 contactPropertyWithContactNoCopy:v10 propertyKey:v11 identifier:v12];

  v14 = *MEMORY[0x1E695C150];
  v15 = [*(a1 + 40) bundleIdentifier];
  v16 = [v3 isSuggested];

  v17 = [CNUIUserActionItem itemWithType:v14 contactProperty:v13 bundleIdentifier:v15 userActivity:v8 isSuggested:v16 options:26];

  v18 = [*(a1 + 40) teamIdentifier];
  [v17 setTeamIdentifier:v18];

  return v17;
}

uint64_t __110___CNUIUserActionStartAudioCallIntentTarget_actionsForInstantMessageAddresses_contact_discoveringEnvironment___block_invoke(uint64_t a1, void *a2)
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
    v11[2] = __110___CNUIUserActionStartAudioCallIntentTarget_actionsForInstantMessageAddresses_contact_discoveringEnvironment___block_invoke_2;
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

uint64_t __110___CNUIUserActionStartAudioCallIntentTarget_actionsForInstantMessageAddresses_contact_discoveringEnvironment___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 bundleIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id __110___CNUIUserActionStartAudioCallIntentTarget_actionsForInstantMessageAddresses_contact_discoveringEnvironment___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];
  v20 = [v4 username];

  v5 = [v3 value];
  v6 = [v5 userIdentifier];

  v7 = [[CNHandle alloc] initWithStringValue:v20 customIdentifier:v6 type:1];
  v8 = [MEMORY[0x1E696B090] _cnui_startAudioCallIntentWithHandle:v7 contact:*(a1 + 32)];
  v9 = MEMORY[0x1E695CE08];
  v10 = *(a1 + 32);
  v11 = *MEMORY[0x1E695C2B0];
  v12 = [v3 identifier];
  v13 = [v9 contactPropertyWithContactNoCopy:v10 propertyKey:v11 identifier:v12];

  v14 = *MEMORY[0x1E695C150];
  v15 = [*(a1 + 40) bundleIdentifier];
  v16 = [v3 isSuggested];

  v17 = [CNUIUserActionItem itemWithType:v14 contactProperty:v13 bundleIdentifier:v15 userActivity:v8 isSuggested:v16 options:26];

  v18 = [*(a1 + 40) teamIdentifier];
  [v17 setTeamIdentifier:v18];

  return v17;
}

@end