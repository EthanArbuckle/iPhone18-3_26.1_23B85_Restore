@interface HMDOutgoingHomeInvitationModel
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
- (id)dependentUUIDs;
- (id)rgSettingsFromOutgoingInvitation:(id)invitation;
@end

@implementation HMDOutgoingHomeInvitationModel

- (id)dependentUUIDs
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v3 addObject:parentUUID2];
  }

  pendingUserUUID = [(HMDOutgoingHomeInvitationModel *)self pendingUserUUID];

  if (pendingUserUUID)
  {
    pendingUserUUID2 = [(HMDOutgoingHomeInvitationModel *)self pendingUserUUID];
    [v3 addObject:pendingUserUUID2];
  }

  uuidsOfAllowedAccessories = [(HMDOutgoingHomeInvitationModel *)self uuidsOfAllowedAccessories];
  v9 = [uuidsOfAllowedAccessories count];

  if (v9)
  {
    uuidsOfAllowedAccessories2 = [(HMDOutgoingHomeInvitationModel *)self uuidsOfAllowedAccessories];
    [v3 addObjectsFromArray:uuidsOfAllowedAccessories2];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(HMDOutgoingHomeInvitationModel *)self operations];
  v11 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        v16 = [v15 objectForKey:@"HM.user"];

        if (v16)
        {
          v17 = [v15 objectForKeyedSubscript:@"HM.user"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          v19 = [v15 objectForKeyedSubscript:@"HM.user"];
          if ((isKindOfClass & 1) == 0)
          {
            objc_opt_class();
            v20 = objc_opt_isKindOfClass();

            if ((v20 & 1) == 0)
            {
              goto LABEL_18;
            }

            v21 = objc_alloc(MEMORY[0x277CCAD78]);
            v22 = [v15 objectForKeyedSubscript:@"HM.user"];
            v19 = [v21 initWithUUIDString:v22];
          }

          if (v19)
          {
            [v3 addObject:v19];
          }
        }

LABEL_18:
        v23 = [v15 objectForKey:@"accessory"];

        if (!v23)
        {
          continue;
        }

        v24 = [v15 objectForKeyedSubscript:@"accessory"];
        objc_opt_class();
        v25 = objc_opt_isKindOfClass();

        v26 = [v15 objectForKeyedSubscript:@"accessory"];
        if ((v25 & 1) == 0)
        {
          objc_opt_class();
          v27 = objc_opt_isKindOfClass();

          if ((v27 & 1) == 0)
          {
            continue;
          }

          v28 = objc_alloc(MEMORY[0x277CCAD78]);
          v29 = [v15 objectForKeyedSubscript:@"accessory"];
          v26 = [v28 initWithUUIDString:v29];
        }

        if (v26)
        {
          [v3 addObject:v26];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v12);
  }

  v30 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)properties
{
  if (properties_onceToken_12758 != -1)
  {
    dispatch_once(&properties_onceToken_12758, &__block_literal_global_12759);
  }

  v3 = properties__properties_12760;

  return v3;
}

void __44__HMDOutgoingHomeInvitationModel_properties__block_invoke()
{
  v19[15] = *MEMORY[0x277D85DE8];
  v18[0] = @"user";
  v17 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v19[0] = v17;
  v18[1] = @"invitationState";
  v16 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v19[1] = v16;
  v18[2] = @"idsInvitationUUID";
  v15 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v19[2] = v15;
  v18[3] = @"dateSent";
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v19[3] = v14;
  v18[4] = @"accessCode";
  v13 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v19[4] = v13;
  v18[5] = @"announceAccessLevel";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v19[5] = v12;
  v18[6] = @"shareToken";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v19[6] = v0;
  v18[7] = @"pendingUserUUID";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v19[7] = v1;
  v18[8] = @"expiryDate";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v19[8] = v2;
  v18[9] = @"messageIdentifier";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v19[9] = v3;
  v18[10] = @"responseReceived";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v19[10] = v4;
  v18[11] = @"inviteeDestinationAddress";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class() logging:0];
  v19[11] = v5;
  v18[12] = @"operations";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v19[12] = v6;
  v18[13] = @"operationIdentifiers";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v19[13] = v7;
  v18[14] = @"uuidsOfAllowedAccessories";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v19[14] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:15];
  v10 = properties__properties_12760;
  properties__properties_12760 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

- (id)rgSettingsFromOutgoingInvitation:(id)invitation
{
  invitationCopy = invitation;
  v4 = [HMDRestrictedGuestHomeAccessSettings alloc];
  allowedAccessoryUUIDs = [invitationCopy allowedAccessoryUUIDs];
  restrictedGuestSchedule = [invitationCopy restrictedGuestSchedule];

  v7 = [(HMDRestrictedGuestHomeAccessSettings *)v4 initWithAllowedAccessories:allowedAccessoryUUIDs schedule:restrictedGuestSchedule];

  return v7;
}

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"privilege"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"user"])
    {
      user = [(HMDOutgoingHomeInvitationModel *)self user];

      if (user)
      {
        user2 = [(HMDOutgoingHomeInvitationModel *)self user];
        v13 = [HMDUser userWithDictionary:user2];

        v14 = MEMORY[0x277CCABB0];
        privilege = [v13 privilege];
LABEL_13:
        v20 = [v14 numberWithUnsignedInteger:privilege];
LABEL_14:
        v21 = v20;
LABEL_15:

        goto LABEL_44;
      }

      goto LABEL_24;
    }

    goto LABEL_43;
  }

  if ([fieldCopy isEqualToString:@"announceAccessLevel"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"user"])
    {
      user3 = [(HMDOutgoingHomeInvitationModel *)self user];

      if (user3)
      {
        user4 = [(HMDOutgoingHomeInvitationModel *)self user];
        v13 = [HMDUser userWithDictionary:user4];

        v14 = MEMORY[0x277CCABB0];
        privilege = [v13 announceAccessLevel];
        goto LABEL_13;
      }

      goto LABEL_24;
    }

    goto LABEL_43;
  }

  if (![fieldCopy isEqualToString:@"cameraAccessLevel"])
  {
    if ([fieldCopy isEqualToString:@"inviteeUserID"])
    {
      if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"user"])
      {
        goto LABEL_43;
      }

      user5 = [(HMDOutgoingHomeInvitationModel *)self user];

      if (user5)
      {
        user6 = [(HMDOutgoingHomeInvitationModel *)self user];
        v13 = [HMDUser userWithDictionary:user6];

        accountHandle = [v13 accountHandle];
        v21 = [HMDUser userIDForAccountHandle:accountHandle];

        goto LABEL_15;
      }
    }

    else
    {
      if (![fieldCopy isEqualToString:@"remoteAccessAllowed"])
      {
        if ([fieldCopy isEqualToString:@"idsIdentifier"])
        {
          if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"idsInvitationUUID"])
          {
            idsInvitationUUID = [(HMDOutgoingHomeInvitationModel *)self idsInvitationUUID];
            v13 = idsInvitationUUID;
            v29 = *MEMORY[0x277CBEEE8];
            if (idsInvitationUUID)
            {
              v29 = idsInvitationUUID;
            }

            v20 = v29;
            goto LABEL_14;
          }

          goto LABEL_43;
        }

        if ([fieldCopy isEqualToString:@"shareToken"])
        {
          if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"shareToken"])
          {
            goto LABEL_43;
          }

          v30 = objc_opt_class();
          shareToken = [(HMDOutgoingHomeInvitationModel *)self shareToken];
          v32 = [v30 shareTokenFromKeyedArchiveData:shareToken];
          v33 = v32;
          v34 = *MEMORY[0x277CBEEE8];
          if (v32)
          {
            v34 = v32;
          }

          v21 = v34;
        }

        else
        {
          if (![fieldCopy isEqualToString:@"pendingUser"])
          {
            if (![fieldCopy isEqualToString:@"allowedAccessories_"])
            {
              v40.receiver = self;
              v40.super_class = HMDOutgoingHomeInvitationModel;
              null = [(HMDBackingStoreModelObject *)&v40 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
              goto LABEL_25;
            }

            if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"uuidsOfAllowedAccessories"])
            {
              v42 = 0;
              v43 = &v42;
              v44 = 0x3032000000;
              v45 = __Block_byref_object_copy__99442;
              v46 = __Block_byref_object_dispose__99443;
              v36 = MEMORY[0x277CBEB58];
              uuidsOfAllowedAccessories = [(HMDOutgoingHomeInvitationModel *)self uuidsOfAllowedAccessories];
              v47 = [v36 setWithCapacity:{objc_msgSend(uuidsOfAllowedAccessories, "count")}];

              uuidsOfAllowedAccessories2 = [(HMDOutgoingHomeInvitationModel *)self uuidsOfAllowedAccessories];
              v41[0] = MEMORY[0x277D85DD0];
              v41[1] = 3221225472;
              v41[2] = __99__HMDOutgoingHomeInvitationModel_CoreData__cd_generateValueForProperty_managedObjectField_context___block_invoke;
              v41[3] = &unk_27867D970;
              v41[4] = &v42;
              [uuidsOfAllowedAccessories2 hmf_enumerateWithAutoreleasePoolUsingBlock:v41];

              v21 = v43[5];
              _Block_object_dispose(&v42, 8);

              goto LABEL_44;
            }

            goto LABEL_43;
          }

          if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"pendingUserUUID"])
          {
            goto LABEL_43;
          }

          v35 = objc_opt_class();
          shareToken = [(HMDOutgoingHomeInvitationModel *)self pendingUserUUID];
          v21 = [v35 cd_getMKFUserFromUUID:shareToken];
        }

        goto LABEL_44;
      }

      if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"user"])
      {
        goto LABEL_43;
      }

      user7 = [(HMDOutgoingHomeInvitationModel *)self user];

      if (user7)
      {
        user8 = [(HMDOutgoingHomeInvitationModel *)self user];
        v13 = [HMDUser userWithDictionary:user8];

        v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "isRemoteAccessAllowed")}];
        goto LABEL_14;
      }
    }

LABEL_24:
    null = [MEMORY[0x277CBEB68] null];
LABEL_25:
    v21 = null;
    goto LABEL_44;
  }

  if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"user"])
  {
    user9 = [(HMDOutgoingHomeInvitationModel *)self user];

    if (user9)
    {
      user10 = [(HMDOutgoingHomeInvitationModel *)self user];
      v13 = [HMDUser userWithDictionary:user10];

      v14 = MEMORY[0x277CCABB0];
      privilege = [v13 camerasAccessLevel];
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_43:
  v21 = 0;
LABEL_44:

  return v21;
}

void __99__HMDOutgoingHomeInvitationModel_CoreData__cd_generateValueForProperty_managedObjectField_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [objc_opt_class() cd_getMKFAccessoryFromAccessory:v3];

  v4 = v5;
  if (v5)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
    v4 = v5;
  }
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqualToString:@"user"])
  {
    inviteeUserID = [objectCopy inviteeUserID];
    [objectCopy privilege];
    v12 = v37 = fieldCopy;
    unsignedIntegerValue = [v12 unsignedIntegerValue];
    remoteAccessAllowed = [objectCopy remoteAccessAllowed];
    bOOLValue = [remoteAccessAllowed BOOLValue];
    [objectCopy cameraAccessLevel];
    v15 = v36 = infoCopy;
    unsignedIntegerValue2 = [v15 unsignedIntegerValue];
    announceAccessLevel = [objectCopy announceAccessLevel];
    unsignedIntegerValue3 = [announceAccessLevel unsignedIntegerValue];
    v19 = [(HMDOutgoingHomeInvitationModel *)self rgSettingsFromOutgoingInvitation:objectCopy];
    v20 = [HMDUser userDictionaryWithUserID:inviteeUserID privilege:unsignedIntegerValue remoteAccessAllowed:bOOLValue cameraAccessLevel:unsignedIntegerValue2 announceAccessAllowed:0 announceAccessLevel:unsignedIntegerValue3 audioAnalysisUserDropInAccessLevel:0 restrictedGuestAccessSettings:v19];

    infoCopy = v36;
    fieldCopy = v37;

    goto LABEL_14;
  }

  if ([fieldCopy isEqualToString:@"idsInvitationUUID"])
  {
    idsIdentifier = [objectCopy idsIdentifier];
    pendingUser = idsIdentifier;
    v23 = *MEMORY[0x277CBEEE8];
    if (idsIdentifier)
    {
      v23 = idsIdentifier;
    }

    v20 = v23;
LABEL_7:

    goto LABEL_14;
  }

  if ([fieldCopy isEqualToString:@"messageIdentifier"] & 1) != 0 || (objc_msgSend(fieldCopy, "isEqualToString:", @"responseReceived") & 1) != 0 || (objc_msgSend(fieldCopy, "isEqualToString:", @"inviteeDestinationAddress") & 1) != 0 || (objc_msgSend(fieldCopy, "isEqualToString:", @"operations") & 1) != 0 || (objc_msgSend(fieldCopy, "isEqualToString:", @"operationIdentifiers"))
  {
    v20 = 0;
  }

  else if ([fieldCopy isEqualToString:@"shareToken"])
  {
    v25 = objc_opt_class();
    shareToken = [objectCopy shareToken];
    v27 = [v25 keyedArchiveToken:shareToken];
    v28 = v27;
    v29 = *MEMORY[0x277CBEEE8];
    if (v27)
    {
      v29 = v27;
    }

    v20 = v29;
  }

  else
  {
    if ([fieldCopy isEqualToString:@"pendingUserUUID"])
    {
      pendingUser = [objectCopy pendingUser];
      modelID = [pendingUser modelID];
      v31 = modelID;
      v32 = *MEMORY[0x277CBEEE8];
      if (modelID)
      {
        v32 = modelID;
      }

      v20 = v32;

      goto LABEL_7;
    }

    if ([fieldCopy isEqualToString:@"uuidsOfAllowedAccessories"])
    {
      allowedAccessories = [objectCopy allowedAccessories];

      if (allowedAccessories)
      {
        [objectCopy allowedAccessoryUUIDs];
      }

      else
      {
        [MEMORY[0x277CBEB68] null];
      }
      v34 = ;
    }

    else
    {
      v38.receiver = self;
      v38.super_class = HMDOutgoingHomeInvitationModel;
      v34 = [(HMDBackingStoreModelObject *)&v38 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
    }

    v20 = v34;
  }

LABEL_14:

  return v20;
}

@end