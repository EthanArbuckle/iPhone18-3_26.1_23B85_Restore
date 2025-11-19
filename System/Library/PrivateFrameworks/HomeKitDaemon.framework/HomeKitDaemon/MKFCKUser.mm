@interface MKFCKUser
+ (int64_t)encodeMusicTransitionStyleValue:(int64_t)a3 withCrossfadeEnabled:(BOOL)a4;
- (BOOL)_importOutgoingInvitationRelationshipIntoLocalModel:(void *)a3 context:;
- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
- (BOOL)exportOwnerUserSettingsFromLocalModel:(id)a3 context:(id)a4;
- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
- (BOOL)importOwnerUserSettingsIntoLocalModel:(id)a3 context:(id)a4;
- (BOOL)importSharedUserSettingsIntoLocalModel:(id)a3 context:(id)a4;
- (BOOL)isOwner;
- (id)_resolveSharedUserDataRootWithContext:(id)a3;
@end

@implementation MKFCKUser

- (id)_resolveSharedUserDataRootWithContext:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[MKFCKSharedUserDataRoot fetchRequest];
  v6 = MEMORY[0x277CCAC30];
  v7 = [(MKFCKUser *)self homeModelID];
  v8 = [v6 predicateWithFormat:@"%K == %@", @"homeModelID", v7];
  [v5 setPredicate:v8];

  v50 = 0;
  v9 = [v4 executeFetchRequest:v5 error:&v50];
  v10 = v50;
  if (!v9)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      v33 = [(MKFCKUser *)v30 homeModelID];
      *buf = 138544130;
      v53 = v32;
      v54 = 2160;
      v55 = 1752392040;
      v56 = 2112;
      v57 = v33;
      v58 = 2114;
      v59 = v10;
      v34 = "%{public}@Failed to fetch shared user data roots for home %{mask.hash}@: %{public}@";
      v35 = v31;
      v36 = OS_LOG_TYPE_ERROR;
      v37 = 42;
LABEL_19:
      _os_log_impl(&dword_229538000, v35, v36, v34, buf, v37);
    }

LABEL_20:

    objc_autoreleasePoolPop(v29);
    v28 = 0;
    goto LABEL_23;
  }

  if (![v9 count])
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      v33 = [(MKFCKUser *)v30 homeModelID];
      *buf = 138543874;
      v53 = v32;
      v54 = 2160;
      v55 = 1752392040;
      v56 = 2112;
      v57 = v33;
      v34 = "%{public}@No shared user data roots for home %{mask.hash}@";
      v35 = v31;
      v36 = OS_LOG_TYPE_INFO;
      v37 = 32;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v45 = self;
  v41 = v10;
  v42 = v5;
  v43 = v4;
  v11 = [v4 hmd_coreData];
  v12 = [v11 container];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v40 = v9;
  obj = v9;
  v13 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v47;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v47 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v46 + 1) + 8 * i);
        v18 = [v17 objectID];
        v19 = [v12 recordForManagedObjectID:v18];

        if (v19)
        {
          v20 = [(MKFCKUser *)v45 reverseShareID];
          v21 = [v19 share];
          v22 = [v21 recordID];
          v23 = [v20 isEqual:v22];

          if (v23)
          {
            v28 = v17;

            goto LABEL_22;
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v24 = objc_autoreleasePoolPush();
  v25 = v45;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543362;
    v53 = v27;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Failed to find associated shared data root for user", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v24);
  v28 = 0;
LABEL_22:
  v5 = v42;
  v4 = v43;
  v9 = v40;
  v10 = v41;

LABEL_23:
  v38 = *MEMORY[0x277D85DE8];

  return v28;
}

- (BOOL)importSharedUserSettingsIntoLocalModel:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MKFCKUser *)self isOwner])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(MKFCKUser *)self _resolveSharedUserDataRootWithContext:v7];
    v10 = v9;
    if (v9)
    {
      v8 = [v9 importIntoLocalModel:v6 context:v7];
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (BOOL)importOwnerUserSettingsIntoLocalModel:(id)a3 context:(id)a4
{
  v5 = a3;
  if ([(MKFCKUser *)self isOwner])
  {
    v6 = [v5 allowExplicitContent];
    v7 = [v6 BOOLValue];
    v8 = [(MKFCKUser *)self ownerAllowExplicitContent];

    if (v7 != v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKUser ownerAllowExplicitContent](self, "ownerAllowExplicitContent")}];
      [v5 setAllowExplicitContent:v9];
    }

    v10 = [v5 allowiTunesAccount];
    v11 = [v10 BOOLValue];
    v12 = [(MKFCKUser *)self ownerAllowiTunesAccount];

    if (v11 != v12)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKUser ownerAllowiTunesAccount](self, "ownerAllowiTunesAccount")}];
      [v5 setAllowiTunesAccount:v13];
    }

    v14 = [v5 dolbyAtmosEnabled];
    v15 = [v14 BOOLValue];
    v16 = [(MKFCKUser *)self ownerDolbyAtmosEnabled];

    if (v15 != v16)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKUser ownerDolbyAtmosEnabled](self, "ownerDolbyAtmosEnabled")}];
      [v5 setDolbyAtmosEnabled:v17];
    }

    v18 = [v5 losslessMusicEnabled];
    v19 = [v18 BOOLValue];
    v20 = [(MKFCKUser *)self ownerLosslessMusicEnabled];

    if (v19 != v20)
    {
      v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKUser ownerLosslessMusicEnabled](self, "ownerLosslessMusicEnabled")}];
      [v5 setLosslessMusicEnabled:v21];
    }

    v22 = [v5 playbackInfluencesEnabled];
    v23 = [v22 BOOLValue];
    v24 = [(MKFCKUser *)self ownerPlaybackInfluencesEnabled];

    if (v23 != v24)
    {
      v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKUser ownerPlaybackInfluencesEnabled](self, "ownerPlaybackInfluencesEnabled")}];
      [v5 setPlaybackInfluencesEnabled:v25];
    }

    v26 = [v5 siriIdentifyVoiceEnabled];
    v27 = [v26 BOOLValue];
    v28 = [(MKFCKUser *)self ownerSiriIdentifyVoiceEnabled];

    if (v27 != v28)
    {
      v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKUser ownerSiriIdentifyVoiceEnabled](self, "ownerSiriIdentifyVoiceEnabled")}];
      [v5 setSiriIdentifyVoiceEnabled:v29];
    }

    v30 = [v5 crossfadeDuration];
    [v30 floatValue];
    v32 = v31;
    [(MKFCKUser *)self ownerCrossfadeDuration];
    v34 = v33;

    if (v32 != v34)
    {
      v35 = MEMORY[0x277CCABB0];
      [(MKFCKUser *)self ownerCrossfadeDuration];
      v36 = [v35 numberWithFloat:?];
      [v5 setCrossfadeDuration:v36];
    }

    v37 = [MKFCKUser decodeOwnerCrossfadeEnabled:[(MKFCKUser *)self ownerMusicTransitionStyle]];
    v38 = [v5 crossfadeEnabled];
    v39 = [v38 BOOLValue];

    if (v37 != v39)
    {
      v40 = [MEMORY[0x277CCABB0] numberWithBool:v37];
      [v5 setCrossfadeEnabled:v40];
    }

    v41 = [v5 activityNotificationsEnabledForPersonalRequests];
    v42 = [v41 BOOLValue];
    v43 = [(MKFCKUser *)self ownerActivityNotificationsEnabledForPersonalRequests];

    if (v42 != v43)
    {
      v44 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKUser ownerActivityNotificationsEnabledForPersonalRequests](self, "ownerActivityNotificationsEnabledForPersonalRequests")}];
      [v5 setActivityNotificationsEnabledForPersonalRequests:v44];
    }

    v45 = [v5 ownerCharacteristicAuthorizationData];
    v46 = [(MKFCKUser *)self ownerCharacteristicAuthorizationData];
    v47 = HMFEqualObjects();

    if ((v47 & 1) == 0)
    {
      v48 = [(MKFCKUser *)self ownerCharacteristicAuthorizationData];
      [v5 setOwnerCharacteristicAuthorizationData:v48];
    }

    v49 = [v5 sharePhotosFaceClassifications];
    v50 = [v49 BOOLValue];
    v51 = [(MKFCKUser *)self sharePhotosFaceClassifications];

    if (v50 != v51)
    {
      v52 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKUser sharePhotosFaceClassifications](self, "sharePhotosFaceClassifications")}];
      [v5 setSharePhotosFaceClassifications:v52];
    }

    v53 = [v5 photosPersonDataZoneUUID];
    v54 = [(MKFCKUser *)self photosPersonDataZoneUUID];
    v55 = HMFEqualObjects();

    if ((v55 & 1) == 0)
    {
      v56 = [(MKFCKUser *)self photosPersonDataZoneUUID];
      [v5 setPhotosPersonDataZoneUUID:v56];
    }

    v57 = [v5 matCredIPKExternalRepresentation];
    v58 = [(MKFCKUser *)self ownerMatCredIPKExternalRepresentation];
    v59 = HMFEqualObjects();

    if ((v59 & 1) == 0)
    {
      v60 = [(MKFCKUser *)self ownerMatCredIPKExternalRepresentation];
      [v5 setMatCredIPKExternalRepresentation:v60];
    }
  }

  return 1;
}

- (BOOL)exportOwnerUserSettingsFromLocalModel:(id)a3 context:(id)a4
{
  v5 = a3;
  if ([v5 isOwner])
  {
    v6 = [(MKFCKUser *)self ownerAllowExplicitContent];
    v7 = [v5 allowExplicitContent];
    v8 = [v7 BOOLValue];

    if (v6 != v8)
    {
      v9 = [v5 allowExplicitContent];
      -[MKFCKUser setOwnerAllowExplicitContent:](self, "setOwnerAllowExplicitContent:", [v9 BOOLValue]);
    }

    v10 = [(MKFCKUser *)self ownerAllowiTunesAccount];
    v11 = [v5 allowiTunesAccount];
    v12 = [v11 BOOLValue];

    if (v10 != v12)
    {
      v13 = [v5 allowiTunesAccount];
      -[MKFCKUser setOwnerAllowiTunesAccount:](self, "setOwnerAllowiTunesAccount:", [v13 BOOLValue]);
    }

    v14 = [(MKFCKUser *)self ownerDolbyAtmosEnabled];
    v15 = [v5 dolbyAtmosEnabled];
    v16 = [v15 BOOLValue];

    if (v14 != v16)
    {
      v17 = [v5 dolbyAtmosEnabled];
      -[MKFCKUser setOwnerDolbyAtmosEnabled:](self, "setOwnerDolbyAtmosEnabled:", [v17 BOOLValue]);
    }

    v18 = [(MKFCKUser *)self ownerLosslessMusicEnabled];
    v19 = [v5 losslessMusicEnabled];
    v20 = [v19 BOOLValue];

    if (v18 != v20)
    {
      v21 = [v5 losslessMusicEnabled];
      -[MKFCKUser setOwnerLosslessMusicEnabled:](self, "setOwnerLosslessMusicEnabled:", [v21 BOOLValue]);
    }

    v22 = [(MKFCKUser *)self ownerPlaybackInfluencesEnabled];
    v23 = [v5 playbackInfluencesEnabled];
    v24 = [v23 BOOLValue];

    if (v22 != v24)
    {
      v25 = [v5 playbackInfluencesEnabled];
      -[MKFCKUser setOwnerPlaybackInfluencesEnabled:](self, "setOwnerPlaybackInfluencesEnabled:", [v25 BOOLValue]);
    }

    v26 = [(MKFCKUser *)self ownerSiriIdentifyVoiceEnabled];
    v27 = [v5 siriIdentifyVoiceEnabled];
    v28 = [v27 BOOLValue];

    if (v26 != v28)
    {
      v29 = [v5 siriIdentifyVoiceEnabled];
      -[MKFCKUser setOwnerSiriIdentifyVoiceEnabled:](self, "setOwnerSiriIdentifyVoiceEnabled:", [v29 BOOLValue]);
    }

    [(MKFCKUser *)self ownerCrossfadeDuration];
    v31 = v30;
    v32 = [v5 crossfadeDuration];
    [v32 floatValue];
    v34 = v33;

    if (v31 != v34)
    {
      v35 = [v5 crossfadeDuration];
      [v35 floatValue];
      [(MKFCKUser *)self setOwnerCrossfadeDuration:?];
    }

    v36 = [v5 crossfadeEnabled];
    v37 = [v36 BOOLValue];

    v38 = [MKFCKUser encodeMusicTransitionStyleValue:[MKFCKUser decodeOwnerMusicTransitionStyleValue:[(MKFCKUser *)self ownerMusicTransitionStyle]] withCrossfadeEnabled:v37];
    if ([(MKFCKUser *)self ownerMusicTransitionStyle]!= v38)
    {
      [(MKFCKUser *)self setOwnerMusicTransitionStyle:v38];
    }

    v39 = [(MKFCKUser *)self ownerActivityNotificationsEnabledForPersonalRequests];
    v40 = [v5 activityNotificationsEnabledForPersonalRequests];
    v41 = [v40 BOOLValue];

    if (v39 != v41)
    {
      v42 = [v5 activityNotificationsEnabledForPersonalRequests];
      -[MKFCKUser setOwnerActivityNotificationsEnabledForPersonalRequests:](self, "setOwnerActivityNotificationsEnabledForPersonalRequests:", [v42 BOOLValue]);
    }

    v43 = [(MKFCKUser *)self ownerCharacteristicAuthorizationData];
    v44 = [v5 ownerCharacteristicAuthorizationData];
    v45 = HMFEqualObjects();

    if ((v45 & 1) == 0)
    {
      v46 = [v5 ownerCharacteristicAuthorizationData];
      [(MKFCKUser *)self setOwnerCharacteristicAuthorizationData:v46];
    }

    v47 = [(MKFCKUser *)self sharePhotosFaceClassifications];
    v48 = [v5 sharePhotosFaceClassifications];
    v49 = [v48 BOOLValue];

    if (v47 != v49)
    {
      v50 = [v5 sharePhotosFaceClassifications];
      -[MKFCKUser setSharePhotosFaceClassifications:](self, "setSharePhotosFaceClassifications:", [v50 BOOLValue]);
    }

    v51 = [(MKFCKUser *)self photosPersonDataZoneUUID];
    v52 = [v5 photosPersonDataZoneUUID];
    v53 = HMFEqualObjects();

    if ((v53 & 1) == 0)
    {
      v54 = [v5 photosPersonDataZoneUUID];
      [(MKFCKUser *)self setPhotosPersonDataZoneUUID:v54];
    }

    v55 = [(MKFCKUser *)self ownerMatCredIPKExternalRepresentation];
    v56 = [v5 matCredIPKExternalRepresentation];
    v57 = HMFEqualObjects();

    if ((v57 & 1) == 0)
    {
      v58 = [v5 matCredIPKExternalRepresentation];
      [(MKFCKUser *)self setOwnerMatCredIPKExternalRepresentation:v58];
    }
  }

  return 1;
}

+ (int64_t)encodeMusicTransitionStyleValue:(int64_t)a3 withCrossfadeEnabled:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x277D85DE8];
  if (a3 < 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v10;
      v16 = 2048;
      v17 = a3;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@musicTransitionStyle should not used the 63 bit. It's currently %lld", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = 0x8000000000000000;
  if (!v4)
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11 | a3;
}

- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v66 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([v9 hmf_isEmpty] & 1) == 0)
  {
    *v64 = 0;
    *&v64[8] = v64;
    *&v64[16] = 0x2020000000;
    LOBYTE(v65) = 1;
    v11 = MEMORY[0x277CBEB98];
    v63[0] = @"bulletinConditions_";
    v63[1] = @"bulletinRegistrations_";
    v63[2] = @"notificationRegistrations_";
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:3];
    v13 = [v11 setWithArray:v12];

    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __60__MKFCKUser_exportFromLocalModel_updatedProperties_context___block_invoke;
    v56[3] = &unk_278687A70;
    v14 = v13;
    v57 = v14;
    v58 = v64;
    [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v56];
    if (*(*&v64[8] + 24) == 1)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v60 = v18;
        v61 = 2112;
        v62 = v8;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Skipping cloud export from MKFUser %@ since all updated properties are non-cloud sync properties", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      _Block_object_dispose(v64, 8);
LABEL_26:
      v43 = 1;
      goto LABEL_27;
    }

    _Block_object_dispose(v64, 8);
  }

  if ([(MKFCKModel *)self copyPropertiesFromLocalModel:v8 context:v10])
  {
    v19 = ![(MKFCKUser *)self exportOwnerUserSettingsFromLocalModel:v8 context:v10];
    if (!self)
    {
      LOBYTE(v19) = 1;
    }

    if ((v19 & 1) == 0)
    {
      v20 = v10;
      v21 = v8;
      contextb = [v21 entity];
      v52 = [contextb relationshipsByName];
      v22 = [v52 objectForKeyedSubscript:@"personsFromPhotos_"];
      v51 = [(MKFCKUser *)self entity];
      v50 = [v51 relationshipsByName];
      v23 = [v50 objectForKeyedSubscript:@"personsFromPhotos"];
      v24 = v20;
      v25 = v23;
      v26 = v22;
      v27 = v21;
      v28 = [v25 name];
      v29 = [(MKFCKUser *)self valueForKey:v28];

      v30 = [(MKFCKUser *)self home];
      v49 = [v30 _exportRelationshipsFromLocalModel:v27 localRelationship:v26 cloudRelationship:v25 cloudModels:v29 context:v24];

      if (v49)
      {
        v31 = [v27 accessCode];
        v32 = v31;
        if (v31)
        {
          v33 = [v31 accessCode];
          [(MKFCKUser *)self setHomeAccessCode:v33];
        }

        v34 = v27;
        v35 = v24;
        v36 = [v34 invitation];
        if (v36)
        {
          v37 = [(MKFCKModel *)MKFCKOutgoingInvitation fetchWithLocalModel:v36 context:v35];
          if (v37)
          {
            v38 = [(MKFCKUser *)self invitation];
            v39 = v38 == v37;

            if (!v39)
            {
              context = objc_autoreleasePoolPush();
              v40 = self;
              v41 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                v42 = HMFGetLogIdentifier();
                *v64 = 138543874;
                *&v64[4] = v42;
                *&v64[12] = 2112;
                *&v64[14] = v37;
                *&v64[22] = 2112;
                v65 = v40;
                _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Linking invitation [%@] to pendingUser : [%@]", v64, 0x20u);
              }

              objc_autoreleasePoolPop(context);
              [(MKFCKUser *)v40 setInvitation:v37];
            }
          }

          else
          {
            contexta = objc_autoreleasePoolPush();
            v44 = self;
            v45 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              v46 = HMFGetLogIdentifier();
              *v64 = 138543874;
              *&v64[4] = v46;
              *&v64[12] = 2112;
              *&v64[14] = v34;
              *&v64[22] = 2112;
              v65 = v36;
              _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Cannot fulfill relationship between user and outgoing invitation yet: %@.invitation = %@", v64, 0x20u);
            }

            objc_autoreleasePoolPop(contexta);
          }
        }

        goto LABEL_26;
      }
    }
  }

  v43 = 0;
LABEL_27:

  v47 = *MEMORY[0x277D85DE8];
  return v43;
}

void __60__MKFCKUser_exportFromLocalModel_updatedProperties_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 name];
  LOBYTE(v5) = [v5 containsObject:v6];

  if ((v5 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }
}

- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v74 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if (![(MKFCKModel *)self copyPropertiesIntoLocalModel:v7 context:v8]|| ![(MKFCKUser *)self importOwnerUserSettingsIntoLocalModel:v7 context:v8]|| ![(MKFCKUser *)self importSharedUserSettingsIntoLocalModel:v7 context:v8])
  {
    goto LABEL_20;
  }

  v9 = v7;
  v10 = v9;
  if (!self)
  {

    goto LABEL_21;
  }

  v11 = [v9 accountHandle];
  v12 = [v11 remoteDestinationString];

  v13 = [v10 userID];
  v14 = HMFEqualObjects();

  if ((v14 & 1) == 0)
  {
    [v10 setUserID:v12];
  }

  v15 = v8;
  v16 = v10;
  v61 = [v16 entity];
  v60 = [v61 relationshipsByName];
  v17 = [v60 objectForKeyedSubscript:@"personsFromPhotos_"];
  v59 = [(MKFCKUser *)self entity];
  v58 = [v59 relationshipsByName];
  v18 = [v58 objectForKeyedSubscript:@"personsFromPhotos"];
  v19 = v16;
  v20 = v17;
  v21 = v18;
  v22 = v15;
  v57 = v20;
  v23 = [v20 name];
  v24 = [v19 valueForKey:v23];

  v25 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v24, "count")}];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __98__MKFCKHomeObject__importRelationshipsIntoLocalModel_localRelationship_cloudRelationship_context___block_invoke;
  v66[3] = &unk_278680DB0;
  v26 = v25;
  v67 = v26;
  [v24 hmf_enumerateWithAutoreleasePoolUsingBlock:v66];

  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 1;
  v27 = [v21 name];
  v28 = [(MKFCKUser *)self valueForKey:v27];

  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __98__MKFCKHomeObject__importRelationshipsIntoLocalModel_localRelationship_cloudRelationship_context___block_invoke_2;
  v69 = &unk_278673578;
  v29 = v22;
  v70 = v29;
  v71 = self;
  v30 = v26;
  v72 = v30;
  v73 = &v62;
  [v28 hmf_enumerateWithAutoreleasePoolUsingBlock:buf];
  v31 = *(v63 + 24);
  if (v31)
  {
    v32 = [(MKFCKUser *)self home];
    [v32 _maybeDeleteStaleLocalModels:v30 context:v29];
  }

  _Block_object_dispose(&v62, 8);
  if (v31)
  {
    v33 = v19;
    v34 = v29;
    v35 = [(MKFCKUser *)self homeAccessCode];
    v36 = [v35 length] == 0;

    v37 = [v33 accessCode];
    v38 = v37;
    if (v36)
    {

      if (v38)
      {
        v51 = objc_autoreleasePoolPush();
        v52 = self;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = HMFGetLogIdentifier();
          v55 = [v33 accessCode];
          *buf = 138543874;
          *&buf[4] = v54;
          *&buf[12] = 2112;
          *&buf[14] = v55;
          *&buf[22] = 2112;
          v69 = v33;
          _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Deleting the MKFUserAccessCode %@ for User %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v51);
        v56 = [v33 accessCode];
        [v34 deleteObject:v56];
      }
    }

    else
    {
      if (!v37)
      {
        v38 = [[_MKFUserAccessCode alloc] initWithContext:v34];
        v39 = [(MKFCKUser *)self modelID];
        v40 = [HMDUserAccessCodeModel modelUUIDWithUUID:v39];
        [(_MKFUserAccessCode *)v38 setModelID:v40];
      }

      v41 = [(_MKFUserAccessCode *)v38 accessCode];
      v42 = [(MKFCKUser *)self homeAccessCode];
      v43 = HMFEqualObjects();

      if ((v43 & 1) == 0)
      {
        v44 = [(MKFCKUser *)self homeAccessCode];
        [(_MKFUserAccessCode *)v38 setAccessCode:v44];
      }

      v45 = [(_MKFUserAccessCode *)v38 user];
      v46 = HMFEqualObjects();

      if ((v46 & 1) == 0)
      {
        [(_MKFUserAccessCode *)v38 setUser:v33];
      }

      v47 = [v33 accessCode];
      v48 = HMFEqualObjects();

      if ((v48 & 1) == 0)
      {
        [v33 setAccessCode:v38];
      }
    }

    LOBYTE(self) = [(MKFCKUser *)self _importOutgoingInvitationRelationshipIntoLocalModel:v33 context:v34];
  }

  else
  {
LABEL_20:
    LOBYTE(self) = 0;
  }

LABEL_21:

  v49 = *MEMORY[0x277D85DE8];
  return self;
}

- (BOOL)_importOutgoingInvitationRelationshipIntoLocalModel:(void *)a3 context:
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 invitation];
    if (v7)
    {
      v8 = [a1 invitation];
      v9 = [v8 fetchLocalModelWithContext:v6];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      if (v11)
      {
        v12 = [v5 invitation];

        if (v12 != v11)
        {
          [v5 setInvitation:v11];
        }
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        v14 = a1;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          v19 = 138543874;
          v20 = v16;
          v21 = 2112;
          v22 = v14;
          v23 = 2112;
          v24 = 0;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Cannot fulfill relationship between pending user and outgoing invitation yet: %@.invitation = %@", &v19, 0x20u);
        }

        objc_autoreleasePoolPop(v13);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return a1 != 0;
}

- (BOOL)isOwner
{
  v2 = [(MKFCKUser *)self ownedHome];
  v3 = v2 != 0;

  return v3;
}

@end