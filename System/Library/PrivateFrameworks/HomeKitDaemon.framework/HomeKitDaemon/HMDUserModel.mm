@interface HMDUserModel
+ (id)cd_getHMDUserFromMKFUser:(id)user;
+ (id)cd_getMKFUserFromUUID:(id)d;
+ (id)keyedArchiveToken:(id)token;
+ (id)properties;
+ (id)shareTokenFromKeyedArchiveData:(id)data;
- (id)cd_fetchManagedObjectInContext:(id)context error:(id *)error;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
@end

@implementation HMDUserModel

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  v50 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if (![fieldCopy isEqualToString:@"pairingIdentity"])
  {
    if ([fieldCopy isEqualToString:@"photosPersonDataZoneUUID"])
    {
      if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"photosPersonDataZoneUUIDString"])
      {
        photosPersonDataZoneUUIDString = [(HMDUserModel *)self photosPersonDataZoneUUIDString];
        if (photosPersonDataZoneUUIDString)
        {
          v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:photosPersonDataZoneUUIDString];
        }

        else
        {
          v14 = 0;
        }

        v22 = *MEMORY[0x277CBEEE8];
        if (v14)
        {
          v22 = v14;
        }

        null2 = v22;

        goto LABEL_28;
      }

LABEL_15:
      null2 = 0;
      goto LABEL_29;
    }

    if ([fieldCopy isEqualToString:@"reverseShareToken"])
    {
      if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"reverseShareToken"])
      {
        v15 = objc_opt_class();
        reverseShareToken = [(HMDUserModel *)self reverseShareToken];
        v16 = [v15 shareTokenFromKeyedArchiveData:reverseShareToken];
        v17 = v16;
        v18 = *MEMORY[0x277CBEEE8];
        if (v16)
        {
          v18 = v16;
        }

        null2 = v18;

        goto LABEL_21;
      }

      goto LABEL_15;
    }

    if (![fieldCopy isEqualToString:@"ownedHome"])
    {
      v41.receiver = self;
      v41.super_class = HMDUserModel;
      null = [(HMDBackingStoreModelObject *)&v41 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
      goto LABEL_23;
    }

    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"privilege"])
    {
      privilege = [(HMDUserModel *)self privilege];
      unsignedIntegerValue = [privilege unsignedIntegerValue];

      if (unsignedIntegerValue != 3)
      {
        null = [MEMORY[0x277CBEB68] null];
LABEL_23:
        null2 = null;
        goto LABEL_29;
      }

LABEL_35:
      parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];
      v42 = 0;
      null2 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:parentUUID ofManagedObjectType:objc_opt_class() error:&v42];
      v14 = v42;

      if (null2)
      {
        v30 = null2;
      }

      else
      {
        v36 = objc_autoreleasePoolPush();
        selfCopy = self;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = HMFGetLogIdentifier();
          parentUUID2 = [(HMDBackingStoreModelObject *)selfCopy parentUUID];
          *buf = 138543874;
          v45 = v39;
          v46 = 2112;
          v47 = parentUUID2;
          v48 = 2112;
          v49 = v14;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Unable to find MKFHome with UUID %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v36);
      }

      goto LABEL_28;
    }

    uuid = [(HMDBackingStoreModelObject *)self uuid];
    v43 = 0;
    v26 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:uuid ofManagedObjectType:objc_opt_class() error:&v43];
    v14 = v43;

    if (v26)
    {
      privilege2 = [v26 privilege];
      unsignedIntegerValue2 = [privilege2 unsignedIntegerValue];

      if (unsignedIntegerValue2 == 3)
      {

        goto LABEL_35;
      }

      null2 = [MEMORY[0x277CBEB68] null];
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        uuid2 = [(HMDBackingStoreModelObject *)selfCopy2 uuid];
        *buf = 138543874;
        v45 = v34;
        v46 = 2112;
        v47 = uuid2;
        v48 = 2112;
        v49 = v14;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Unable to find MKFUser with UUID %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v31);
      null2 = 0;
    }

LABEL_28:
    goto LABEL_29;
  }

  null2 = 0;
  if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"pairingIdentity"]&& self)
  {
    reverseShareToken = [(HMDUserModel *)self pairingIdentity];
    if (reverseShareToken)
    {
      null2 = [MEMORY[0x277CFEC20] hmd_pairingIdentityWithDictionary:reverseShareToken];
    }

    else
    {
      null2 = 0;
    }

LABEL_21:
  }

LABEL_29:

  v23 = *MEMORY[0x277D85DE8];

  return null2;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if (![fieldCopy isEqualToString:@"pairingIdentity"])
  {
    if ([fieldCopy isEqualToString:@"photosPersonDataZoneUUIDString"])
    {
      photosPersonDataZoneUUID = [objectCopy photosPersonDataZoneUUID];
      uUIDString = [photosPersonDataZoneUUID UUIDString];
      v18 = uUIDString;
      v19 = *MEMORY[0x277CBEEE8];
      if (uUIDString)
      {
        v19 = uUIDString;
      }

      v20 = v19;
    }

    else
    {
      if (![fieldCopy isEqualToString:@"reverseShareToken"])
      {
        v24.receiver = self;
        v24.super_class = HMDUserModel;
        v20 = [(HMDBackingStoreModelObject *)&v24 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
        goto LABEL_17;
      }

      v21 = objc_opt_class();
      photosPersonDataZoneUUID = [objectCopy reverseShareToken];
      v20 = [v21 keyedArchiveToken:photosPersonDataZoneUUID];
    }

    goto LABEL_17;
  }

  v11 = objectCopy;
  v12 = v11;
  if (self)
  {
    pairingIdentity = [v11 pairingIdentity];
    if (pairingIdentity)
    {
      pairingIdentity2 = [v12 pairingIdentity];
      hmd_dictionaryEncoding = [pairingIdentity2 hmd_dictionaryEncoding];
    }

    else
    {
      hmd_dictionaryEncoding = 0;
    }
  }

  else
  {
    hmd_dictionaryEncoding = 0;
  }

  v22 = *MEMORY[0x277CBEEE8];
  if (hmd_dictionaryEncoding)
  {
    v22 = hmd_dictionaryEncoding;
  }

  v20 = v22;

LABEL_17:

  return v20;
}

- (id)cd_fetchManagedObjectInContext:(id)context error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  managedObject = [(HMDBackingStoreModelObject *)self managedObject];
  if (managedObject)
  {
    castIfMemberIsUser2 = managedObject;
    managedObjectContext = [managedObject managedObjectContext];

    if (!managedObjectContext)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v12 = HMFGetLogIdentifier();
        uuid = [(HMDBackingStoreModelObject *)selfCopy uuid];
        parentUUID = [(HMDBackingStoreModelObject *)selfCopy parentUUID];
        v26 = 138544130;
        v27 = v12;
        v28 = 2112;
        v29 = castIfMemberIsUser2;
        v30 = 2112;
        v31 = uuid;
        v32 = 2112;
        v33 = parentUUID;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_FAULT, "%{public}@[User/Guest] Managed object context appears to be reset on this object %@, someone did something very bad: %@/%@", &v26, 0x2Au);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  else
  {
    uuid2 = [(HMDBackingStoreModelObject *)self uuid];
    v16 = [_MKFHome findHomeMemberWithUUID:uuid2 context:contextCopy];

    if (v16)
    {
      castIfMemberIsUser = [v16 castIfMemberIsUser];

      if (castIfMemberIsUser)
      {
        castIfMemberIsUser2 = [v16 castIfMemberIsUser];
        [(HMDBackingStoreModelObject *)self setManagedObject:castIfMemberIsUser2];
      }

      else
      {
        castIfMemberIsGuest = [v16 castIfMemberIsGuest];

        if (castIfMemberIsGuest)
        {
          castIfMemberIsGuest2 = [v16 castIfMemberIsGuest];
          castIfMemberIsUser2 = HMDCastIfManagedObjectBSORepresentable(castIfMemberIsGuest2);
          [(HMDBackingStoreModelObject *)self setManagedObject:castIfMemberIsUser2];
        }

        else
        {
          v20 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = HMFGetLogIdentifier();
            v26 = 138543362;
            v27 = v23;
            _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Got the home member which is neither User nor Guest.", &v26, 0xCu);
          }

          objc_autoreleasePoolPop(v20);
          castIfMemberIsUser2 = 0;
        }
      }
    }

    else
    {
      castIfMemberIsUser2 = 0;
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return castIfMemberIsUser2;
}

+ (id)shareTokenFromKeyedArchiveData:(id)data
{
  v21 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy)
  {
    v5 = MEMORY[0x277CCAAC8];
    v6 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v16 = 0;
    v7 = [v5 _strictlyUnarchivedObjectOfClasses:v6 fromData:dataCopy error:&v16];
    v8 = v16;

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v18 = v13;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to unarchive share token : %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)keyedArchiveToken:(id)token
{
  if (token)
  {
    v4 = encodeRootObject();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)cd_getHMDUserFromMKFUser:(id)user
{
  v27 = *MEMORY[0x277D85DE8];
  userCopy = user;
  if (!userCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = userCopy;
  v6 = [HMDUserModel alloc];
  modelID = [v5 modelID];
  home = [v5 home];
  modelID2 = [home modelID];
  v10 = [(HMDBackingStoreModelObject *)v6 initWithUUID:modelID parentUUID:modelID2];

  v20 = 0;
  LOBYTE(home) = [(HMDBackingStoreModelObject *)v10 cd_populateFromManagedObject:v5 error:&v20];
  v11 = v20;
  if (home)
  {
    v12 = [[HMDUser alloc] initWithModelObject:v10];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543874;
      v22 = v16;
      v23 = 2112;
      v24 = v5;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to populate HMDUserModel from %@, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = *MEMORY[0x277CBEEE8];
  }

  v17 = v12;

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)cd_getMKFUserFromUUID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = dCopy;
  v17 = 0;
  v6 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:dCopy ofManagedObjectType:objc_opt_class() error:&v17];
  v7 = v17;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v14 = v6;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v19 = v13;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to find mkfUser with UUID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)properties
{
  if (properties_onceToken_1771 != -1)
  {
    dispatch_once(&properties_onceToken_1771, &__block_literal_global_1774);
  }

  v3 = properties__properties_1772;

  return v3;
}

void __26__HMDUserModel_properties__block_invoke()
{
  v62[58] = *MEMORY[0x277D85DE8];
  v61[0] = @"accountHandle";
  v60 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[0] = v60;
  v61[1] = @"accountIdentifier";
  v59 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[1] = v59;
  v61[2] = @"pairingIdentity";
  v58 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[2] = v58;
  v61[3] = @"privilege";
  v57 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[3] = v57;
  v61[4] = @"remoteAccessAllowed";
  v56 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[4] = v56;
  v61[5] = @"presenceAuthorizationStatus";
  v55 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[5] = v55;
  v61[6] = @"changeTag";
  v54 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[6] = v54;
  v61[7] = @"userID";
  v53 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class() logging:0];
  v62[7] = v53;
  v61[8] = @"camerasAccessLevel";
  v52 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[8] = v52;
  v61[9] = @"announceAccessAllowed";
  v51 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[9] = v51;
  v61[10] = @"announceAccessLevel";
  v50 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[10] = v50;
  v61[11] = @"analysisAccessSelection";
  v49 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[11] = v49;
  v61[12] = @"matterCASEAuthenticatedTagID";
  v48 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[12] = v48;
  v61[13] = @"matCredIPKExternalRepresentation";
  v47 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[13] = v47;
  v61[14] = @"uniqueIDForAccessories";
  v46 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[14] = v46;
  v61[15] = @"idsMergeIdentifier";
  v45 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[15] = v45;
  v61[16] = @"reverseShareID";
  v44 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[16] = v44;
  v61[17] = @"reverseShareToken";
  v43 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[17] = v43;
  v61[18] = @"allowExplicitContent";
  v42 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[18] = v42;
  v61[19] = @"allowiTunesAccount";
  v41 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[19] = v41;
  v61[20] = @"dolbyAtmosEnabled";
  v40 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[20] = v40;
  v61[21] = @"losslessMusicEnabled";
  v39 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[21] = v39;
  v61[22] = @"playbackInfluencesEnabled";
  v38 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[22] = v38;
  v61[23] = @"siriIdentifyVoiceEnabled";
  v37 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[23] = v37;
  v61[24] = @"crossfadeEnabled";
  v36 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[24] = v36;
  v61[25] = @"crossfadeDuration";
  v35 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[25] = v35;
  v61[26] = @"ownerAddSceneButtonPresentedCount";
  v34 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[26] = v34;
  v61[27] = @"ownerCompletedSwitchingHomesOnboardingUI";
  v33 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[27] = v33;
  v61[28] = @"ownerDismissed2024EnergyOnboarding";
  v32 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[28] = v32;
  v61[29] = @"ownerDismissedAccessCodeOnboarding";
  v31 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[29] = v31;
  v61[30] = @"ownerDismissedAccessoryFirmwareUpdateOnboarding";
  v30 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[30] = v30;
  v61[31] = @"ownerDismissedAnnounceOnboarding";
  v29 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[31] = v29;
  v61[32] = @"ownerDismissedCameraRecordingOnboarding";
  v28 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[32] = v28;
  v61[33] = @"ownerDismissedCameraRecordingSetupBanner";
  v27 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[33] = v27;
  v61[34] = @"ownerDismissedCameraUpgradeOfferBanner";
  v26 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[34] = v26;
  v61[35] = @"ownerDismissedHomeTheaterOnboarding";
  v25 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[35] = v25;
  v61[36] = @"ownerDismissedIdentifyVoiceOnboarding";
  v24 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[36] = v24;
  v61[37] = @"ownerDismissedIdentifyVoiceSetupBanner";
  v23 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[37] = v23;
  v61[38] = @"ownerDismissedNaturalLightingOnboarding";
  v22 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[38] = v22;
  v61[39] = @"ownerDismissedTVViewingProfileOnboarding";
  v21 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[39] = v21;
  v61[40] = @"ownerDismissedTVViewingProfileSetupBanner";
  v20 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[40] = v20;
  v61[41] = @"ownerDismissedUserSplitMediaAccountWarning";
  v19 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[41] = v19;
  v61[42] = @"ownerDismissedWalletKeyExpressModeOnboarding";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[42] = v18;
  v61[43] = @"ownerDismissedWelcomeUI";
  v17 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[43] = v17;
  v61[44] = @"ownerHasUserSeenRMVNewLanguageNotification";
  v16 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[44] = v16;
  v61[45] = @"activityNotificationsEnabledForPersonalRequests";
  v15 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[45] = v15;
  v61[46] = @"accessoriesWithPersonalRequestsEnabled";
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[46] = v14;
  v61[47] = @"accessoriesWithMediaContentProfileEnabled";
  v13 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[47] = v13;
  v61[48] = @"accessoriesWithListeningHistoryEnabled";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[48] = v12;
  v61[49] = @"photosPersonDataZoneUUIDString";
  v11 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[49] = v11;
  v61[50] = @"sharePhotosFaceClassifications";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[50] = v0;
  v61[51] = @"ownerCharacteristicAuthorizationData";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[51] = v1;
  v61[52] = @"presenceRegionStatus";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[52] = v2;
  v61[53] = @"presenceUpdateTimeStamp";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[53] = v3;
  v61[54] = @"iCloudAltDSID";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[54] = v4;
  v61[55] = @"firstName";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[55] = v5;
  v61[56] = @"lastName";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[56] = v6;
  v61[57] = @"adaptiveTemperatureAutomationsDisclosureStatus";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v62[57] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:58];
  v9 = properties__properties_1772;
  properties__properties_1772 = v8;

  v10 = *MEMORY[0x277D85DE8];
}

@end