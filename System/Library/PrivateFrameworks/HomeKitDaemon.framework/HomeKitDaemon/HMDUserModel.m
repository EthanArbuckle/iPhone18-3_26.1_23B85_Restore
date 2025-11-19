@interface HMDUserModel
+ (id)cd_getHMDUserFromMKFUser:(id)a3;
+ (id)cd_getMKFUserFromUUID:(id)a3;
+ (id)keyedArchiveToken:(id)a3;
+ (id)properties;
+ (id)shareTokenFromKeyedArchiveData:(id)a3;
- (id)cd_fetchManagedObjectInContext:(id)a3 error:(id *)a4;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
@end

@implementation HMDUserModel

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v9 isEqualToString:@"pairingIdentity"])
  {
    if ([v9 isEqualToString:@"photosPersonDataZoneUUID"])
    {
      if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"photosPersonDataZoneUUIDString"])
      {
        v13 = [(HMDUserModel *)self photosPersonDataZoneUUIDString];
        if (v13)
        {
          v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v13];
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

        v11 = v22;

        goto LABEL_28;
      }

LABEL_15:
      v11 = 0;
      goto LABEL_29;
    }

    if ([v9 isEqualToString:@"reverseShareToken"])
    {
      if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"reverseShareToken"])
      {
        v15 = objc_opt_class();
        v12 = [(HMDUserModel *)self reverseShareToken];
        v16 = [v15 shareTokenFromKeyedArchiveData:v12];
        v17 = v16;
        v18 = *MEMORY[0x277CBEEE8];
        if (v16)
        {
          v18 = v16;
        }

        v11 = v18;

        goto LABEL_21;
      }

      goto LABEL_15;
    }

    if (![v9 isEqualToString:@"ownedHome"])
    {
      v41.receiver = self;
      v41.super_class = HMDUserModel;
      v21 = [(HMDBackingStoreModelObject *)&v41 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
      goto LABEL_23;
    }

    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"privilege"])
    {
      v19 = [(HMDUserModel *)self privilege];
      v20 = [v19 unsignedIntegerValue];

      if (v20 != 3)
      {
        v21 = [MEMORY[0x277CBEB68] null];
LABEL_23:
        v11 = v21;
        goto LABEL_29;
      }

LABEL_35:
      v29 = [(HMDBackingStoreModelObject *)self parentUUID];
      v42 = 0;
      v11 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:v29 ofManagedObjectType:objc_opt_class() error:&v42];
      v14 = v42;

      if (v11)
      {
        v30 = v11;
      }

      else
      {
        v36 = objc_autoreleasePoolPush();
        v37 = self;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = HMFGetLogIdentifier();
          v40 = [(HMDBackingStoreModelObject *)v37 parentUUID];
          *buf = 138543874;
          v45 = v39;
          v46 = 2112;
          v47 = v40;
          v48 = 2112;
          v49 = v14;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Unable to find MKFHome with UUID %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v36);
      }

      goto LABEL_28;
    }

    v25 = [(HMDBackingStoreModelObject *)self uuid];
    v43 = 0;
    v26 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:v25 ofManagedObjectType:objc_opt_class() error:&v43];
    v14 = v43;

    if (v26)
    {
      v27 = [v26 privilege];
      v28 = [v27 unsignedIntegerValue];

      if (v28 == 3)
      {

        goto LABEL_35;
      }

      v11 = [MEMORY[0x277CBEB68] null];
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        v35 = [(HMDBackingStoreModelObject *)v32 uuid];
        *buf = 138543874;
        v45 = v34;
        v46 = 2112;
        v47 = v35;
        v48 = 2112;
        v49 = v14;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Unable to find MKFUser with UUID %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v31);
      v11 = 0;
    }

LABEL_28:
    goto LABEL_29;
  }

  v11 = 0;
  if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"pairingIdentity"]&& self)
  {
    v12 = [(HMDUserModel *)self pairingIdentity];
    if (v12)
    {
      v11 = [MEMORY[0x277CFEC20] hmd_pairingIdentityWithDictionary:v12];
    }

    else
    {
      v11 = 0;
    }

LABEL_21:
  }

LABEL_29:

  v23 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v9 isEqualToString:@"pairingIdentity"])
  {
    if ([v9 isEqualToString:@"photosPersonDataZoneUUIDString"])
    {
      v16 = [v8 photosPersonDataZoneUUID];
      v17 = [v16 UUIDString];
      v18 = v17;
      v19 = *MEMORY[0x277CBEEE8];
      if (v17)
      {
        v19 = v17;
      }

      v20 = v19;
    }

    else
    {
      if (![v9 isEqualToString:@"reverseShareToken"])
      {
        v24.receiver = self;
        v24.super_class = HMDUserModel;
        v20 = [(HMDBackingStoreModelObject *)&v24 cd_generateValueForModelObjectFromManagedObject:v8 modelObjectField:v9 modelFieldInfo:v10];
        goto LABEL_17;
      }

      v21 = objc_opt_class();
      v16 = [v8 reverseShareToken];
      v20 = [v21 keyedArchiveToken:v16];
    }

    goto LABEL_17;
  }

  v11 = v8;
  v12 = v11;
  if (self)
  {
    v13 = [v11 pairingIdentity];
    if (v13)
    {
      v14 = [v12 pairingIdentity];
      v15 = [v14 hmd_dictionaryEncoding];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v22 = *MEMORY[0x277CBEEE8];
  if (v15)
  {
    v22 = v15;
  }

  v20 = v22;

LABEL_17:

  return v20;
}

- (id)cd_fetchManagedObjectInContext:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HMDBackingStoreModelObject *)self managedObject];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 managedObjectContext];

    if (!v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v12 = HMFGetLogIdentifier();
        v13 = [(HMDBackingStoreModelObject *)v10 uuid];
        v14 = [(HMDBackingStoreModelObject *)v10 parentUUID];
        v26 = 138544130;
        v27 = v12;
        v28 = 2112;
        v29 = v7;
        v30 = 2112;
        v31 = v13;
        v32 = 2112;
        v33 = v14;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_FAULT, "%{public}@[User/Guest] Managed object context appears to be reset on this object %@, someone did something very bad: %@/%@", &v26, 0x2Au);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  else
  {
    v15 = [(HMDBackingStoreModelObject *)self uuid];
    v16 = [_MKFHome findHomeMemberWithUUID:v15 context:v5];

    if (v16)
    {
      v17 = [v16 castIfMemberIsUser];

      if (v17)
      {
        v7 = [v16 castIfMemberIsUser];
        [(HMDBackingStoreModelObject *)self setManagedObject:v7];
      }

      else
      {
        v18 = [v16 castIfMemberIsGuest];

        if (v18)
        {
          v19 = [v16 castIfMemberIsGuest];
          v7 = HMDCastIfManagedObjectBSORepresentable(v19);
          [(HMDBackingStoreModelObject *)self setManagedObject:v7];
        }

        else
        {
          v20 = objc_autoreleasePoolPush();
          v21 = self;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = HMFGetLogIdentifier();
            v26 = 138543362;
            v27 = v23;
            _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Got the home member which is neither User nor Guest.", &v26, 0xCu);
          }

          objc_autoreleasePoolPop(v20);
          v7 = 0;
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)shareTokenFromKeyedArchiveData:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = MEMORY[0x277CCAAC8];
    v6 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v16 = 0;
    v7 = [v5 _strictlyUnarchivedObjectOfClasses:v6 fromData:v4 error:&v16];
    v8 = v16;

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = a1;
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

+ (id)keyedArchiveToken:(id)a3
{
  if (a3)
  {
    v4 = encodeRootObject();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)cd_getHMDUserFromMKFUser:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [HMDUserModel alloc];
  v7 = [v5 modelID];
  v8 = [v5 home];
  v9 = [v8 modelID];
  v10 = [(HMDBackingStoreModelObject *)v6 initWithUUID:v7 parentUUID:v9];

  v20 = 0;
  LOBYTE(v8) = [(HMDBackingStoreModelObject *)v10 cd_populateFromManagedObject:v5 error:&v20];
  v11 = v20;
  if (v8)
  {
    v12 = [[HMDUser alloc] initWithModelObject:v10];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1;
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

+ (id)cd_getMKFUserFromUUID:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v17 = 0;
  v6 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:v4 ofManagedObjectType:objc_opt_class() error:&v17];
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
    v11 = a1;
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