@interface HMUser(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMUser(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [a3 copyWithOutputStyle:3];
  userInfo = [v4 userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HOME"];

  if (!v6)
  {
    v7 = +[HFHomeKitDispatcher sharedDispatcher];
    homeManager = [v7 homeManager];
    homes = [homeManager homes];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __54__HMUser_HFDebugging__hf_stateDumpBuilderWithContext___block_invoke;
    v37[3] = &unk_277DF5E78;
    v37[4] = self;
    v6 = [homes na_firstObjectPassingTest:v37];
  }

  v10 = [HFStateDumpBuilder builderWithObject:self context:v4];
  uniqueIdentifier = [self uniqueIdentifier];
  [v10 appendObject:uniqueIdentifier withName:@"UUID" options:2];

  name = [self name];
  [v10 setObject:name forKeyedSubscript:@"name"];

  currentUser = [v6 currentUser];

  if (currentUser == self)
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

  if ([v6 hf_userIsRestrictedGuest:self])
  {
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isRestrictedGuest"];
    v15 = [v6 homeAccessControlForUser:self];
    restrictedGuestAccessSettings = [v15 restrictedGuestAccessSettings];

    guestAccessSchedule = [restrictedGuestAccessSettings guestAccessSchedule];
    v18 = guestAccessSchedule;
    if (guestAccessSchedule)
    {
      v19 = guestAccessSchedule;
    }

    else
    {
      v19 = @"Always allowed";
    }

    [v10 setObject:v19 forKeyedSubscript:@"restrictedGuestSchedule"];
    accessAllowedToAccessories = [restrictedGuestAccessSettings accessAllowedToAccessories];
    v21 = [accessAllowedToAccessories na_map:&__block_literal_global_458];

    v22 = MEMORY[0x277CCACA8];
    accessAllowedToAccessories2 = [restrictedGuestAccessSettings accessAllowedToAccessories];
    v24 = [v22 stringWithFormat:@"(%lu accessories) %@", objc_msgSend(accessAllowedToAccessories2, "count"), v21];
    [v10 setObject:v24 forKeyedSubscript:@"restrictedGuestAccessAllowedToAccessories"];

    if ([v4 detailLevel] == 2)
    {
      locksWithReducedFunctionalityDueToSchedule = [restrictedGuestAccessSettings locksWithReducedFunctionalityDueToSchedule];
      v26 = [locksWithReducedFunctionalityDueToSchedule na_map:&__block_literal_global_458];

      v27 = MEMORY[0x277CCACA8];
      locksWithReducedFunctionalityDueToSchedule2 = [restrictedGuestAccessSettings locksWithReducedFunctionalityDueToSchedule];
      v29 = [v27 stringWithFormat:@"(%lu accessories) %@", objc_msgSend(locksWithReducedFunctionalityDueToSchedule2, "count"), v26];
      [v10 setObject:v29 forKeyedSubscript:@"restrictedGuestLocksWithReducedFunctionalityDueToSchedule"];

      v21 = v26;
    }
  }

  if ([v4 detailLevel] == 2)
  {
    userID = [self userID];
    [v10 setObject:userID forKeyedSubscript:@"userID"];

    pendingAccessoryInvitations = [self pendingAccessoryInvitations];
    v32 = [v4 copyWithDetailLevel:0];
    [v10 appendObject:pendingAccessoryInvitations withName:@"pendingAccessoryInvitations" context:v32 options:1];

    v33 = [self userSettingsForHome:v6];
    settings = [v33 settings];
    [v10 setObject:settings forKeyedSubscript:@"settings"];

    privateSettings = [v33 privateSettings];
    [v10 setObject:privateSettings forKeyedSubscript:@"privateSettings"];
  }

  return v10;
}

@end