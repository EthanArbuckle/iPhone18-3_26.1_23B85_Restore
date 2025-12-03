@interface HMHome(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMHome(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  uniqueIdentifier = [self uniqueIdentifier];
  [v5 appendObject:uniqueIdentifier withName:@"UUID" options:2];

  name = [self name];
  [v5 setObject:name forKeyedSubscript:@"name"];

  v8 = +[HFHomeKitDispatcher sharedDispatcher];
  home = [v8 home];
  [v5 appendBool:home == self withName:@"selected" ifEqualTo:1];

  if ([v4 detailLevel] == 2)
  {
    [v5 appendBool:objc_msgSend(self withName:"isPrimary") ifEqualTo:{@"primary", 1}];
    [v5 appendBool:objc_msgSend(self withName:"hf_isCurrentLocationHome") ifEqualTo:{@"currentLocation", 1}];
    [v5 appendBool:objc_msgSend(self withName:"hf_shouldBlockCurrentUserFromHome") ifEqualTo:{@"userBlockedFromHome", 1}];
    accessories = [self accessories];
    [v5 setObject:accessories forKeyedSubscript:@"accessories"];

    v11 = [v4 copy];
    v12 = [MEMORY[0x277CBEB38] dictionaryWithObject:self forKey:@"HOME"];
    [v11 setUserInfo:v12];
    v13 = objc_opt_self();
    hf_allUsersIncludingCurrentUser = [v13 hf_allUsersIncludingCurrentUser];
    [v5 appendObject:hf_allUsersIncludingCurrentUser withName:@"users" context:v11];

    residentDevices = [self residentDevices];
    [v5 setObject:residentDevices forKeyedSubscript:@"residentDevices"];

    outgoingInvitations = [self outgoingInvitations];
    [v5 setObject:outgoingInvitations forKeyedSubscript:@"outgoingInvitations"];

    serviceGroups = [self serviceGroups];
    [v5 setObject:serviceGroups forKeyedSubscript:@"serviceGroups"];

    actionSets = [self actionSets];
    [v5 setObject:actionSets forKeyedSubscript:@"actionSets"];

    triggers = [self triggers];
    [v5 setObject:triggers forKeyedSubscript:@"triggers"];

    mediaSystems = [self mediaSystems];
    [v5 setObject:mediaSystems forKeyedSubscript:@"mediaSystems"];

    hf_allRooms = [self hf_allRooms];
    v22 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:hf_allRooms withName:@"rooms" context:v22];

    hf_personalRequestAccessories = [self hf_personalRequestAccessories];
    v24 = [hf_personalRequestAccessories na_map:&__block_literal_global_150_0];

    v25 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:v24 withName:@"personalRequestsAccessories" context:v25];

    hf_tvViewingProfilesAccessories = [self hf_tvViewingProfilesAccessories];
    v27 = [hf_tvViewingProfilesAccessories na_map:&__block_literal_global_158_0];

    v28 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:v27 withName:@"tvViewingProfilesAccessories" context:v28];

    [v5 appendBool:objc_msgSend(self withName:"isMultiUserEnabled") ifEqualTo:{@"isMultiUserEnabled", 0}];
    [v5 appendBool:objc_msgSend(self withName:"hf_homeHasMigratedIntoHomeApp") ifEqualTo:{@"hasMigratedIntoHomeApp", 0}];
    [v5 appendBool:objc_msgSend(self withName:"hf_homeHasMigratedServicesToAccessories") ifEqualTo:{@"hasMigratedServiceNames", 0}];
    [v5 appendBool:objc_msgSend(self withName:"areBulletinNotificationsSupported") ifEqualTo:{@"bulletinNotificationSupport", 0}];
    [v5 appendBool:objc_msgSend(self withName:"isEventLogEnabled") ifEqualTo:{@"eventLogEnabled", 1}];
  }

  return v5;
}

@end