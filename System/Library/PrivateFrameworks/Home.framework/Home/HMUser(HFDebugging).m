@interface HMUser(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMUser(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [a3 copyWithOutputStyle:3];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HOME"];

  if (!v6)
  {
    v7 = +[HFHomeKitDispatcher sharedDispatcher];
    v8 = [v7 homeManager];
    v9 = [v8 homes];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __54__HMUser_HFDebugging__hf_stateDumpBuilderWithContext___block_invoke;
    v37[3] = &unk_277DF5E78;
    v37[4] = a1;
    v6 = [v9 na_firstObjectPassingTest:v37];
  }

  v10 = [HFStateDumpBuilder builderWithObject:a1 context:v4];
  v11 = [a1 uniqueIdentifier];
  [v10 appendObject:v11 withName:@"UUID" options:2];

  v12 = [a1 name];
  [v10 setObject:v12 forKeyedSubscript:@"name"];

  v13 = [v6 currentUser];

  if (v13 == a1)
  {
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isCurrentUserOnHome"];
    if ([v6 hf_currentUserIsOwner])
    {
      v14 = @"isOwner";
    }

    else if ([v6 hf_currentUserIsAdministrator])
    {
      v14 = @"isAdminUser";
    }

    else
    {
      v14 = @"isSharedUser";
    }

    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v14];
  }

  if ([v6 hf_userIsRestrictedGuest:a1])
  {
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isRestrictedGuest"];
    v15 = [v6 homeAccessControlForUser:a1];
    v16 = [v15 restrictedGuestAccessSettings];

    v17 = [v16 guestAccessSchedule];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = @"Always allowed";
    }

    [v10 setObject:v19 forKeyedSubscript:@"restrictedGuestSchedule"];
    v20 = [v16 accessAllowedToAccessories];
    v21 = [v20 na_map:&__block_literal_global_458];

    v22 = MEMORY[0x277CCACA8];
    v23 = [v16 accessAllowedToAccessories];
    v24 = [v22 stringWithFormat:@"(%lu accessories) %@", objc_msgSend(v23, "count"), v21];
    [v10 setObject:v24 forKeyedSubscript:@"restrictedGuestAccessAllowedToAccessories"];

    if ([v4 detailLevel] == 2)
    {
      v25 = [v16 locksWithReducedFunctionalityDueToSchedule];
      v26 = [v25 na_map:&__block_literal_global_458];

      v27 = MEMORY[0x277CCACA8];
      v28 = [v16 locksWithReducedFunctionalityDueToSchedule];
      v29 = [v27 stringWithFormat:@"(%lu accessories) %@", objc_msgSend(v28, "count"), v26];
      [v10 setObject:v29 forKeyedSubscript:@"restrictedGuestLocksWithReducedFunctionalityDueToSchedule"];

      v21 = v26;
    }
  }

  if ([v4 detailLevel] == 2)
  {
    v30 = [a1 userID];
    [v10 setObject:v30 forKeyedSubscript:@"userID"];

    v31 = [a1 pendingAccessoryInvitations];
    v32 = [v4 copyWithDetailLevel:0];
    [v10 appendObject:v31 withName:@"pendingAccessoryInvitations" context:v32 options:1];

    v33 = [a1 userSettingsForHome:v6];
    v34 = [v33 settings];
    [v10 setObject:v34 forKeyedSubscript:@"settings"];

    v35 = [v33 privateSettings];
    [v10 setObject:v35 forKeyedSubscript:@"privateSettings"];
  }

  return v10;
}

@end