@interface HMDOutgoingHomeInvitationModel
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
- (id)dependentUUIDs;
- (id)rgSettingsFromOutgoingInvitation:(id)a3;
@end

@implementation HMDOutgoingHomeInvitationModel

- (id)dependentUUIDs
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  v4 = [(HMDBackingStoreModelObject *)self parentUUID];

  if (v4)
  {
    v5 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v3 addObject:v5];
  }

  v6 = [(HMDOutgoingHomeInvitationModel *)self pendingUserUUID];

  if (v6)
  {
    v7 = [(HMDOutgoingHomeInvitationModel *)self pendingUserUUID];
    [v3 addObject:v7];
  }

  v8 = [(HMDOutgoingHomeInvitationModel *)self uuidsOfAllowedAccessories];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(HMDOutgoingHomeInvitationModel *)self uuidsOfAllowedAccessories];
    [v3 addObjectsFromArray:v10];
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

- (id)rgSettingsFromOutgoingInvitation:(id)a3
{
  v3 = a3;
  v4 = [HMDRestrictedGuestHomeAccessSettings alloc];
  v5 = [v3 allowedAccessoryUUIDs];
  v6 = [v3 restrictedGuestSchedule];

  v7 = [(HMDRestrictedGuestHomeAccessSettings *)v4 initWithAllowedAccessories:v5 schedule:v6];

  return v7;
}

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"privilege"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"user"])
    {
      v11 = [(HMDOutgoingHomeInvitationModel *)self user];

      if (v11)
      {
        v12 = [(HMDOutgoingHomeInvitationModel *)self user];
        v13 = [HMDUser userWithDictionary:v12];

        v14 = MEMORY[0x277CCABB0];
        v15 = [v13 privilege];
LABEL_13:
        v20 = [v14 numberWithUnsignedInteger:v15];
LABEL_14:
        v21 = v20;
LABEL_15:

        goto LABEL_44;
      }

      goto LABEL_24;
    }

    goto LABEL_43;
  }

  if ([v9 isEqualToString:@"announceAccessLevel"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"user"])
    {
      v16 = [(HMDOutgoingHomeInvitationModel *)self user];

      if (v16)
      {
        v17 = [(HMDOutgoingHomeInvitationModel *)self user];
        v13 = [HMDUser userWithDictionary:v17];

        v14 = MEMORY[0x277CCABB0];
        v15 = [v13 announceAccessLevel];
        goto LABEL_13;
      }

      goto LABEL_24;
    }

    goto LABEL_43;
  }

  if (![v9 isEqualToString:@"cameraAccessLevel"])
  {
    if ([v9 isEqualToString:@"inviteeUserID"])
    {
      if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"user"])
      {
        goto LABEL_43;
      }

      v22 = [(HMDOutgoingHomeInvitationModel *)self user];

      if (v22)
      {
        v23 = [(HMDOutgoingHomeInvitationModel *)self user];
        v13 = [HMDUser userWithDictionary:v23];

        v24 = [v13 accountHandle];
        v21 = [HMDUser userIDForAccountHandle:v24];

        goto LABEL_15;
      }
    }

    else
    {
      if (![v9 isEqualToString:@"remoteAccessAllowed"])
      {
        if ([v9 isEqualToString:@"idsIdentifier"])
        {
          if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"idsInvitationUUID"])
          {
            v28 = [(HMDOutgoingHomeInvitationModel *)self idsInvitationUUID];
            v13 = v28;
            v29 = *MEMORY[0x277CBEEE8];
            if (v28)
            {
              v29 = v28;
            }

            v20 = v29;
            goto LABEL_14;
          }

          goto LABEL_43;
        }

        if ([v9 isEqualToString:@"shareToken"])
        {
          if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"shareToken"])
          {
            goto LABEL_43;
          }

          v30 = objc_opt_class();
          v31 = [(HMDOutgoingHomeInvitationModel *)self shareToken];
          v32 = [v30 shareTokenFromKeyedArchiveData:v31];
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
          if (![v9 isEqualToString:@"pendingUser"])
          {
            if (![v9 isEqualToString:@"allowedAccessories_"])
            {
              v40.receiver = self;
              v40.super_class = HMDOutgoingHomeInvitationModel;
              v27 = [(HMDBackingStoreModelObject *)&v40 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
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
              v37 = [(HMDOutgoingHomeInvitationModel *)self uuidsOfAllowedAccessories];
              v47 = [v36 setWithCapacity:{objc_msgSend(v37, "count")}];

              v38 = [(HMDOutgoingHomeInvitationModel *)self uuidsOfAllowedAccessories];
              v41[0] = MEMORY[0x277D85DD0];
              v41[1] = 3221225472;
              v41[2] = __99__HMDOutgoingHomeInvitationModel_CoreData__cd_generateValueForProperty_managedObjectField_context___block_invoke;
              v41[3] = &unk_27867D970;
              v41[4] = &v42;
              [v38 hmf_enumerateWithAutoreleasePoolUsingBlock:v41];

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
          v31 = [(HMDOutgoingHomeInvitationModel *)self pendingUserUUID];
          v21 = [v35 cd_getMKFUserFromUUID:v31];
        }

        goto LABEL_44;
      }

      if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"user"])
      {
        goto LABEL_43;
      }

      v25 = [(HMDOutgoingHomeInvitationModel *)self user];

      if (v25)
      {
        v26 = [(HMDOutgoingHomeInvitationModel *)self user];
        v13 = [HMDUser userWithDictionary:v26];

        v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "isRemoteAccessAllowed")}];
        goto LABEL_14;
      }
    }

LABEL_24:
    v27 = [MEMORY[0x277CBEB68] null];
LABEL_25:
    v21 = v27;
    goto LABEL_44;
  }

  if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"user"])
  {
    v18 = [(HMDOutgoingHomeInvitationModel *)self user];

    if (v18)
    {
      v19 = [(HMDOutgoingHomeInvitationModel *)self user];
      v13 = [HMDUser userWithDictionary:v19];

      v14 = MEMORY[0x277CCABB0];
      v15 = [v13 camerasAccessLevel];
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

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"user"])
  {
    v11 = [v8 inviteeUserID];
    [v8 privilege];
    v12 = v37 = v9;
    v35 = [v12 unsignedIntegerValue];
    v13 = [v8 remoteAccessAllowed];
    v14 = [v13 BOOLValue];
    [v8 cameraAccessLevel];
    v15 = v36 = v10;
    v16 = [v15 unsignedIntegerValue];
    v17 = [v8 announceAccessLevel];
    v18 = [v17 unsignedIntegerValue];
    v19 = [(HMDOutgoingHomeInvitationModel *)self rgSettingsFromOutgoingInvitation:v8];
    v20 = [HMDUser userDictionaryWithUserID:v11 privilege:v35 remoteAccessAllowed:v14 cameraAccessLevel:v16 announceAccessAllowed:0 announceAccessLevel:v18 audioAnalysisUserDropInAccessLevel:0 restrictedGuestAccessSettings:v19];

    v10 = v36;
    v9 = v37;

    goto LABEL_14;
  }

  if ([v9 isEqualToString:@"idsInvitationUUID"])
  {
    v21 = [v8 idsIdentifier];
    v22 = v21;
    v23 = *MEMORY[0x277CBEEE8];
    if (v21)
    {
      v23 = v21;
    }

    v20 = v23;
LABEL_7:

    goto LABEL_14;
  }

  if ([v9 isEqualToString:@"messageIdentifier"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"responseReceived") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"inviteeDestinationAddress") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"operations") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"operationIdentifiers"))
  {
    v20 = 0;
  }

  else if ([v9 isEqualToString:@"shareToken"])
  {
    v25 = objc_opt_class();
    v26 = [v8 shareToken];
    v27 = [v25 keyedArchiveToken:v26];
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
    if ([v9 isEqualToString:@"pendingUserUUID"])
    {
      v22 = [v8 pendingUser];
      v30 = [v22 modelID];
      v31 = v30;
      v32 = *MEMORY[0x277CBEEE8];
      if (v30)
      {
        v32 = v30;
      }

      v20 = v32;

      goto LABEL_7;
    }

    if ([v9 isEqualToString:@"uuidsOfAllowedAccessories"])
    {
      v33 = [v8 allowedAccessories];

      if (v33)
      {
        [v8 allowedAccessoryUUIDs];
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
      v34 = [(HMDBackingStoreModelObject *)&v38 cd_generateValueForModelObjectFromManagedObject:v8 modelObjectField:v9 modelFieldInfo:v10];
    }

    v20 = v34;
  }

LABEL_14:

  return v20;
}

@end