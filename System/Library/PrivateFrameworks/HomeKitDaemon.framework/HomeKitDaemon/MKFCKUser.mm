@interface MKFCKUser
+ (int64_t)encodeMusicTransitionStyleValue:(int64_t)value withCrossfadeEnabled:(BOOL)enabled;
- (BOOL)_importOutgoingInvitationRelationshipIntoLocalModel:(void *)model context:;
- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)exportOwnerUserSettingsFromLocalModel:(id)model context:(id)context;
- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)importOwnerUserSettingsIntoLocalModel:(id)model context:(id)context;
- (BOOL)importSharedUserSettingsIntoLocalModel:(id)model context:(id)context;
- (BOOL)isOwner;
- (id)_resolveSharedUserDataRootWithContext:(id)context;
@end

@implementation MKFCKUser

- (id)_resolveSharedUserDataRootWithContext:(id)context
{
  v60 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = +[MKFCKSharedUserDataRoot fetchRequest];
  v6 = MEMORY[0x277CCAC30];
  homeModelID = [(MKFCKUser *)self homeModelID];
  v8 = [v6 predicateWithFormat:@"%K == %@", @"homeModelID", homeModelID];
  [v5 setPredicate:v8];

  v50 = 0;
  v9 = [contextCopy executeFetchRequest:v5 error:&v50];
  v10 = v50;
  if (!v9)
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      homeModelID2 = [(MKFCKUser *)selfCopy2 homeModelID];
      *buf = 138544130;
      v53 = v32;
      v54 = 2160;
      v55 = 1752392040;
      v56 = 2112;
      v57 = homeModelID2;
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
    selfCopy2 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      homeModelID2 = [(MKFCKUser *)selfCopy2 homeModelID];
      *buf = 138543874;
      v53 = v32;
      v54 = 2160;
      v55 = 1752392040;
      v56 = 2112;
      v57 = homeModelID2;
      v34 = "%{public}@No shared user data roots for home %{mask.hash}@";
      v35 = v31;
      v36 = OS_LOG_TYPE_INFO;
      v37 = 32;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  selfCopy3 = self;
  v41 = v10;
  v42 = v5;
  v43 = contextCopy;
  hmd_coreData = [contextCopy hmd_coreData];
  container = [hmd_coreData container];

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
        objectID = [v17 objectID];
        v19 = [container recordForManagedObjectID:objectID];

        if (v19)
        {
          reverseShareID = [(MKFCKUser *)selfCopy3 reverseShareID];
          share = [v19 share];
          recordID = [share recordID];
          v23 = [reverseShareID isEqual:recordID];

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
  v25 = selfCopy3;
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
  contextCopy = v43;
  v9 = v40;
  v10 = v41;

LABEL_23:
  v38 = *MEMORY[0x277D85DE8];

  return v28;
}

- (BOOL)importSharedUserSettingsIntoLocalModel:(id)model context:(id)context
{
  modelCopy = model;
  contextCopy = context;
  if ([(MKFCKUser *)self isOwner])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(MKFCKUser *)self _resolveSharedUserDataRootWithContext:contextCopy];
    v10 = v9;
    if (v9)
    {
      v8 = [v9 importIntoLocalModel:modelCopy context:contextCopy];
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (BOOL)importOwnerUserSettingsIntoLocalModel:(id)model context:(id)context
{
  modelCopy = model;
  if ([(MKFCKUser *)self isOwner])
  {
    allowExplicitContent = [modelCopy allowExplicitContent];
    bOOLValue = [allowExplicitContent BOOLValue];
    ownerAllowExplicitContent = [(MKFCKUser *)self ownerAllowExplicitContent];

    if (bOOLValue != ownerAllowExplicitContent)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKUser ownerAllowExplicitContent](self, "ownerAllowExplicitContent")}];
      [modelCopy setAllowExplicitContent:v9];
    }

    allowiTunesAccount = [modelCopy allowiTunesAccount];
    bOOLValue2 = [allowiTunesAccount BOOLValue];
    ownerAllowiTunesAccount = [(MKFCKUser *)self ownerAllowiTunesAccount];

    if (bOOLValue2 != ownerAllowiTunesAccount)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKUser ownerAllowiTunesAccount](self, "ownerAllowiTunesAccount")}];
      [modelCopy setAllowiTunesAccount:v13];
    }

    dolbyAtmosEnabled = [modelCopy dolbyAtmosEnabled];
    bOOLValue3 = [dolbyAtmosEnabled BOOLValue];
    ownerDolbyAtmosEnabled = [(MKFCKUser *)self ownerDolbyAtmosEnabled];

    if (bOOLValue3 != ownerDolbyAtmosEnabled)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKUser ownerDolbyAtmosEnabled](self, "ownerDolbyAtmosEnabled")}];
      [modelCopy setDolbyAtmosEnabled:v17];
    }

    losslessMusicEnabled = [modelCopy losslessMusicEnabled];
    bOOLValue4 = [losslessMusicEnabled BOOLValue];
    ownerLosslessMusicEnabled = [(MKFCKUser *)self ownerLosslessMusicEnabled];

    if (bOOLValue4 != ownerLosslessMusicEnabled)
    {
      v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKUser ownerLosslessMusicEnabled](self, "ownerLosslessMusicEnabled")}];
      [modelCopy setLosslessMusicEnabled:v21];
    }

    playbackInfluencesEnabled = [modelCopy playbackInfluencesEnabled];
    bOOLValue5 = [playbackInfluencesEnabled BOOLValue];
    ownerPlaybackInfluencesEnabled = [(MKFCKUser *)self ownerPlaybackInfluencesEnabled];

    if (bOOLValue5 != ownerPlaybackInfluencesEnabled)
    {
      v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKUser ownerPlaybackInfluencesEnabled](self, "ownerPlaybackInfluencesEnabled")}];
      [modelCopy setPlaybackInfluencesEnabled:v25];
    }

    siriIdentifyVoiceEnabled = [modelCopy siriIdentifyVoiceEnabled];
    bOOLValue6 = [siriIdentifyVoiceEnabled BOOLValue];
    ownerSiriIdentifyVoiceEnabled = [(MKFCKUser *)self ownerSiriIdentifyVoiceEnabled];

    if (bOOLValue6 != ownerSiriIdentifyVoiceEnabled)
    {
      v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKUser ownerSiriIdentifyVoiceEnabled](self, "ownerSiriIdentifyVoiceEnabled")}];
      [modelCopy setSiriIdentifyVoiceEnabled:v29];
    }

    crossfadeDuration = [modelCopy crossfadeDuration];
    [crossfadeDuration floatValue];
    v32 = v31;
    [(MKFCKUser *)self ownerCrossfadeDuration];
    v34 = v33;

    if (v32 != v34)
    {
      v35 = MEMORY[0x277CCABB0];
      [(MKFCKUser *)self ownerCrossfadeDuration];
      v36 = [v35 numberWithFloat:?];
      [modelCopy setCrossfadeDuration:v36];
    }

    v37 = [MKFCKUser decodeOwnerCrossfadeEnabled:[(MKFCKUser *)self ownerMusicTransitionStyle]];
    crossfadeEnabled = [modelCopy crossfadeEnabled];
    bOOLValue7 = [crossfadeEnabled BOOLValue];

    if (v37 != bOOLValue7)
    {
      v40 = [MEMORY[0x277CCABB0] numberWithBool:v37];
      [modelCopy setCrossfadeEnabled:v40];
    }

    activityNotificationsEnabledForPersonalRequests = [modelCopy activityNotificationsEnabledForPersonalRequests];
    bOOLValue8 = [activityNotificationsEnabledForPersonalRequests BOOLValue];
    ownerActivityNotificationsEnabledForPersonalRequests = [(MKFCKUser *)self ownerActivityNotificationsEnabledForPersonalRequests];

    if (bOOLValue8 != ownerActivityNotificationsEnabledForPersonalRequests)
    {
      v44 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKUser ownerActivityNotificationsEnabledForPersonalRequests](self, "ownerActivityNotificationsEnabledForPersonalRequests")}];
      [modelCopy setActivityNotificationsEnabledForPersonalRequests:v44];
    }

    ownerCharacteristicAuthorizationData = [modelCopy ownerCharacteristicAuthorizationData];
    ownerCharacteristicAuthorizationData2 = [(MKFCKUser *)self ownerCharacteristicAuthorizationData];
    v47 = HMFEqualObjects();

    if ((v47 & 1) == 0)
    {
      ownerCharacteristicAuthorizationData3 = [(MKFCKUser *)self ownerCharacteristicAuthorizationData];
      [modelCopy setOwnerCharacteristicAuthorizationData:ownerCharacteristicAuthorizationData3];
    }

    sharePhotosFaceClassifications = [modelCopy sharePhotosFaceClassifications];
    bOOLValue9 = [sharePhotosFaceClassifications BOOLValue];
    sharePhotosFaceClassifications2 = [(MKFCKUser *)self sharePhotosFaceClassifications];

    if (bOOLValue9 != sharePhotosFaceClassifications2)
    {
      v52 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKUser sharePhotosFaceClassifications](self, "sharePhotosFaceClassifications")}];
      [modelCopy setSharePhotosFaceClassifications:v52];
    }

    photosPersonDataZoneUUID = [modelCopy photosPersonDataZoneUUID];
    photosPersonDataZoneUUID2 = [(MKFCKUser *)self photosPersonDataZoneUUID];
    v55 = HMFEqualObjects();

    if ((v55 & 1) == 0)
    {
      photosPersonDataZoneUUID3 = [(MKFCKUser *)self photosPersonDataZoneUUID];
      [modelCopy setPhotosPersonDataZoneUUID:photosPersonDataZoneUUID3];
    }

    matCredIPKExternalRepresentation = [modelCopy matCredIPKExternalRepresentation];
    ownerMatCredIPKExternalRepresentation = [(MKFCKUser *)self ownerMatCredIPKExternalRepresentation];
    v59 = HMFEqualObjects();

    if ((v59 & 1) == 0)
    {
      ownerMatCredIPKExternalRepresentation2 = [(MKFCKUser *)self ownerMatCredIPKExternalRepresentation];
      [modelCopy setMatCredIPKExternalRepresentation:ownerMatCredIPKExternalRepresentation2];
    }
  }

  return 1;
}

- (BOOL)exportOwnerUserSettingsFromLocalModel:(id)model context:(id)context
{
  modelCopy = model;
  if ([modelCopy isOwner])
  {
    ownerAllowExplicitContent = [(MKFCKUser *)self ownerAllowExplicitContent];
    allowExplicitContent = [modelCopy allowExplicitContent];
    bOOLValue = [allowExplicitContent BOOLValue];

    if (ownerAllowExplicitContent != bOOLValue)
    {
      allowExplicitContent2 = [modelCopy allowExplicitContent];
      -[MKFCKUser setOwnerAllowExplicitContent:](self, "setOwnerAllowExplicitContent:", [allowExplicitContent2 BOOLValue]);
    }

    ownerAllowiTunesAccount = [(MKFCKUser *)self ownerAllowiTunesAccount];
    allowiTunesAccount = [modelCopy allowiTunesAccount];
    bOOLValue2 = [allowiTunesAccount BOOLValue];

    if (ownerAllowiTunesAccount != bOOLValue2)
    {
      allowiTunesAccount2 = [modelCopy allowiTunesAccount];
      -[MKFCKUser setOwnerAllowiTunesAccount:](self, "setOwnerAllowiTunesAccount:", [allowiTunesAccount2 BOOLValue]);
    }

    ownerDolbyAtmosEnabled = [(MKFCKUser *)self ownerDolbyAtmosEnabled];
    dolbyAtmosEnabled = [modelCopy dolbyAtmosEnabled];
    bOOLValue3 = [dolbyAtmosEnabled BOOLValue];

    if (ownerDolbyAtmosEnabled != bOOLValue3)
    {
      dolbyAtmosEnabled2 = [modelCopy dolbyAtmosEnabled];
      -[MKFCKUser setOwnerDolbyAtmosEnabled:](self, "setOwnerDolbyAtmosEnabled:", [dolbyAtmosEnabled2 BOOLValue]);
    }

    ownerLosslessMusicEnabled = [(MKFCKUser *)self ownerLosslessMusicEnabled];
    losslessMusicEnabled = [modelCopy losslessMusicEnabled];
    bOOLValue4 = [losslessMusicEnabled BOOLValue];

    if (ownerLosslessMusicEnabled != bOOLValue4)
    {
      losslessMusicEnabled2 = [modelCopy losslessMusicEnabled];
      -[MKFCKUser setOwnerLosslessMusicEnabled:](self, "setOwnerLosslessMusicEnabled:", [losslessMusicEnabled2 BOOLValue]);
    }

    ownerPlaybackInfluencesEnabled = [(MKFCKUser *)self ownerPlaybackInfluencesEnabled];
    playbackInfluencesEnabled = [modelCopy playbackInfluencesEnabled];
    bOOLValue5 = [playbackInfluencesEnabled BOOLValue];

    if (ownerPlaybackInfluencesEnabled != bOOLValue5)
    {
      playbackInfluencesEnabled2 = [modelCopy playbackInfluencesEnabled];
      -[MKFCKUser setOwnerPlaybackInfluencesEnabled:](self, "setOwnerPlaybackInfluencesEnabled:", [playbackInfluencesEnabled2 BOOLValue]);
    }

    ownerSiriIdentifyVoiceEnabled = [(MKFCKUser *)self ownerSiriIdentifyVoiceEnabled];
    siriIdentifyVoiceEnabled = [modelCopy siriIdentifyVoiceEnabled];
    bOOLValue6 = [siriIdentifyVoiceEnabled BOOLValue];

    if (ownerSiriIdentifyVoiceEnabled != bOOLValue6)
    {
      siriIdentifyVoiceEnabled2 = [modelCopy siriIdentifyVoiceEnabled];
      -[MKFCKUser setOwnerSiriIdentifyVoiceEnabled:](self, "setOwnerSiriIdentifyVoiceEnabled:", [siriIdentifyVoiceEnabled2 BOOLValue]);
    }

    [(MKFCKUser *)self ownerCrossfadeDuration];
    v31 = v30;
    crossfadeDuration = [modelCopy crossfadeDuration];
    [crossfadeDuration floatValue];
    v34 = v33;

    if (v31 != v34)
    {
      crossfadeDuration2 = [modelCopy crossfadeDuration];
      [crossfadeDuration2 floatValue];
      [(MKFCKUser *)self setOwnerCrossfadeDuration:?];
    }

    crossfadeEnabled = [modelCopy crossfadeEnabled];
    bOOLValue7 = [crossfadeEnabled BOOLValue];

    v38 = [MKFCKUser encodeMusicTransitionStyleValue:[MKFCKUser decodeOwnerMusicTransitionStyleValue:[(MKFCKUser *)self ownerMusicTransitionStyle]] withCrossfadeEnabled:bOOLValue7];
    if ([(MKFCKUser *)self ownerMusicTransitionStyle]!= v38)
    {
      [(MKFCKUser *)self setOwnerMusicTransitionStyle:v38];
    }

    ownerActivityNotificationsEnabledForPersonalRequests = [(MKFCKUser *)self ownerActivityNotificationsEnabledForPersonalRequests];
    activityNotificationsEnabledForPersonalRequests = [modelCopy activityNotificationsEnabledForPersonalRequests];
    bOOLValue8 = [activityNotificationsEnabledForPersonalRequests BOOLValue];

    if (ownerActivityNotificationsEnabledForPersonalRequests != bOOLValue8)
    {
      activityNotificationsEnabledForPersonalRequests2 = [modelCopy activityNotificationsEnabledForPersonalRequests];
      -[MKFCKUser setOwnerActivityNotificationsEnabledForPersonalRequests:](self, "setOwnerActivityNotificationsEnabledForPersonalRequests:", [activityNotificationsEnabledForPersonalRequests2 BOOLValue]);
    }

    ownerCharacteristicAuthorizationData = [(MKFCKUser *)self ownerCharacteristicAuthorizationData];
    ownerCharacteristicAuthorizationData2 = [modelCopy ownerCharacteristicAuthorizationData];
    v45 = HMFEqualObjects();

    if ((v45 & 1) == 0)
    {
      ownerCharacteristicAuthorizationData3 = [modelCopy ownerCharacteristicAuthorizationData];
      [(MKFCKUser *)self setOwnerCharacteristicAuthorizationData:ownerCharacteristicAuthorizationData3];
    }

    sharePhotosFaceClassifications = [(MKFCKUser *)self sharePhotosFaceClassifications];
    sharePhotosFaceClassifications2 = [modelCopy sharePhotosFaceClassifications];
    bOOLValue9 = [sharePhotosFaceClassifications2 BOOLValue];

    if (sharePhotosFaceClassifications != bOOLValue9)
    {
      sharePhotosFaceClassifications3 = [modelCopy sharePhotosFaceClassifications];
      -[MKFCKUser setSharePhotosFaceClassifications:](self, "setSharePhotosFaceClassifications:", [sharePhotosFaceClassifications3 BOOLValue]);
    }

    photosPersonDataZoneUUID = [(MKFCKUser *)self photosPersonDataZoneUUID];
    photosPersonDataZoneUUID2 = [modelCopy photosPersonDataZoneUUID];
    v53 = HMFEqualObjects();

    if ((v53 & 1) == 0)
    {
      photosPersonDataZoneUUID3 = [modelCopy photosPersonDataZoneUUID];
      [(MKFCKUser *)self setPhotosPersonDataZoneUUID:photosPersonDataZoneUUID3];
    }

    ownerMatCredIPKExternalRepresentation = [(MKFCKUser *)self ownerMatCredIPKExternalRepresentation];
    matCredIPKExternalRepresentation = [modelCopy matCredIPKExternalRepresentation];
    v57 = HMFEqualObjects();

    if ((v57 & 1) == 0)
    {
      matCredIPKExternalRepresentation2 = [modelCopy matCredIPKExternalRepresentation];
      [(MKFCKUser *)self setOwnerMatCredIPKExternalRepresentation:matCredIPKExternalRepresentation2];
    }
  }

  return 1;
}

+ (int64_t)encodeMusicTransitionStyleValue:(int64_t)value withCrossfadeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v18 = *MEMORY[0x277D85DE8];
  if (value < 0)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v10;
      v16 = 2048;
      valueCopy = value;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@musicTransitionStyle should not used the 63 bit. It's currently %lld", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = 0x8000000000000000;
  if (!enabledCopy)
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11 | value;
}

- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  v66 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  propertiesCopy = properties;
  contextCopy = context;
  if (([propertiesCopy hmf_isEmpty] & 1) == 0)
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
    [propertiesCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v56];
    if (*(*&v64[8] + 24) == 1)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v60 = v18;
        v61 = 2112;
        v62 = modelCopy;
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

  if ([(MKFCKModel *)self copyPropertiesFromLocalModel:modelCopy context:contextCopy])
  {
    v19 = ![(MKFCKUser *)self exportOwnerUserSettingsFromLocalModel:modelCopy context:contextCopy];
    if (!self)
    {
      LOBYTE(v19) = 1;
    }

    if ((v19 & 1) == 0)
    {
      v20 = contextCopy;
      v21 = modelCopy;
      contextb = [v21 entity];
      relationshipsByName = [contextb relationshipsByName];
      v22 = [relationshipsByName objectForKeyedSubscript:@"personsFromPhotos_"];
      entity = [(MKFCKUser *)self entity];
      relationshipsByName2 = [entity relationshipsByName];
      v23 = [relationshipsByName2 objectForKeyedSubscript:@"personsFromPhotos"];
      v24 = v20;
      v25 = v23;
      v26 = v22;
      v27 = v21;
      name = [v25 name];
      v29 = [(MKFCKUser *)self valueForKey:name];

      home = [(MKFCKUser *)self home];
      v49 = [home _exportRelationshipsFromLocalModel:v27 localRelationship:v26 cloudRelationship:v25 cloudModels:v29 context:v24];

      if (v49)
      {
        accessCode = [v27 accessCode];
        v32 = accessCode;
        if (accessCode)
        {
          v31AccessCode = [accessCode accessCode];
          [(MKFCKUser *)self setHomeAccessCode:v31AccessCode];
        }

        v34 = v27;
        v35 = v24;
        invitation = [v34 invitation];
        if (invitation)
        {
          v37 = [(MKFCKModel *)MKFCKOutgoingInvitation fetchWithLocalModel:invitation context:v35];
          if (v37)
          {
            invitation2 = [(MKFCKUser *)self invitation];
            v39 = invitation2 == v37;

            if (!v39)
            {
              context = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v41 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                v42 = HMFGetLogIdentifier();
                *v64 = 138543874;
                *&v64[4] = v42;
                *&v64[12] = 2112;
                *&v64[14] = v37;
                *&v64[22] = 2112;
                v65 = selfCopy2;
                _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Linking invitation [%@] to pendingUser : [%@]", v64, 0x20u);
              }

              objc_autoreleasePoolPop(context);
              [(MKFCKUser *)selfCopy2 setInvitation:v37];
            }
          }

          else
          {
            contexta = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v45 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              v46 = HMFGetLogIdentifier();
              *v64 = 138543874;
              *&v64[4] = v46;
              *&v64[12] = 2112;
              *&v64[14] = v34;
              *&v64[22] = 2112;
              v65 = invitation;
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

- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  v74 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  contextCopy = context;
  if (![(MKFCKModel *)self copyPropertiesIntoLocalModel:modelCopy context:contextCopy]|| ![(MKFCKUser *)self importOwnerUserSettingsIntoLocalModel:modelCopy context:contextCopy]|| ![(MKFCKUser *)self importSharedUserSettingsIntoLocalModel:modelCopy context:contextCopy])
  {
    goto LABEL_20;
  }

  v9 = modelCopy;
  v10 = v9;
  if (!self)
  {

    goto LABEL_21;
  }

  accountHandle = [v9 accountHandle];
  remoteDestinationString = [accountHandle remoteDestinationString];

  userID = [v10 userID];
  v14 = HMFEqualObjects();

  if ((v14 & 1) == 0)
  {
    [v10 setUserID:remoteDestinationString];
  }

  v15 = contextCopy;
  v16 = v10;
  entity = [v16 entity];
  relationshipsByName = [entity relationshipsByName];
  v17 = [relationshipsByName objectForKeyedSubscript:@"personsFromPhotos_"];
  entity2 = [(MKFCKUser *)self entity];
  relationshipsByName2 = [entity2 relationshipsByName];
  v18 = [relationshipsByName2 objectForKeyedSubscript:@"personsFromPhotos"];
  v19 = v16;
  v20 = v17;
  v21 = v18;
  v22 = v15;
  v57 = v20;
  name = [v20 name];
  v24 = [v19 valueForKey:name];

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
  name2 = [v21 name];
  v28 = [(MKFCKUser *)self valueForKey:name2];

  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __98__MKFCKHomeObject__importRelationshipsIntoLocalModel_localRelationship_cloudRelationship_context___block_invoke_2;
  v69 = &unk_278673578;
  v29 = v22;
  v70 = v29;
  selfCopy = self;
  v30 = v26;
  v72 = v30;
  v73 = &v62;
  [v28 hmf_enumerateWithAutoreleasePoolUsingBlock:buf];
  v31 = *(v63 + 24);
  if (v31)
  {
    home = [(MKFCKUser *)self home];
    [home _maybeDeleteStaleLocalModels:v30 context:v29];
  }

  _Block_object_dispose(&v62, 8);
  if (v31)
  {
    v33 = v19;
    v34 = v29;
    homeAccessCode = [(MKFCKUser *)self homeAccessCode];
    v36 = [homeAccessCode length] == 0;

    accessCode = [v33 accessCode];
    v38 = accessCode;
    if (v36)
    {

      if (v38)
      {
        v51 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = HMFGetLogIdentifier();
          accessCode2 = [v33 accessCode];
          *buf = 138543874;
          *&buf[4] = v54;
          *&buf[12] = 2112;
          *&buf[14] = accessCode2;
          *&buf[22] = 2112;
          v69 = v33;
          _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Deleting the MKFUserAccessCode %@ for User %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v51);
        accessCode3 = [v33 accessCode];
        [v34 deleteObject:accessCode3];
      }
    }

    else
    {
      if (!accessCode)
      {
        v38 = [[_MKFUserAccessCode alloc] initWithContext:v34];
        modelID = [(MKFCKUser *)self modelID];
        v40 = [HMDUserAccessCodeModel modelUUIDWithUUID:modelID];
        [(_MKFUserAccessCode *)v38 setModelID:v40];
      }

      accessCode4 = [(_MKFUserAccessCode *)v38 accessCode];
      homeAccessCode2 = [(MKFCKUser *)self homeAccessCode];
      v43 = HMFEqualObjects();

      if ((v43 & 1) == 0)
      {
        homeAccessCode3 = [(MKFCKUser *)self homeAccessCode];
        [(_MKFUserAccessCode *)v38 setAccessCode:homeAccessCode3];
      }

      user = [(_MKFUserAccessCode *)v38 user];
      v46 = HMFEqualObjects();

      if ((v46 & 1) == 0)
      {
        [(_MKFUserAccessCode *)v38 setUser:v33];
      }

      accessCode5 = [v33 accessCode];
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

- (BOOL)_importOutgoingInvitationRelationshipIntoLocalModel:(void *)model context:
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  modelCopy = model;
  if (self)
  {
    invitation = [self invitation];
    if (invitation)
    {
      invitation2 = [self invitation];
      v9 = [invitation2 fetchLocalModelWithContext:modelCopy];

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
        invitation3 = [v5 invitation];

        if (invitation3 != v11)
        {
          [v5 setInvitation:v11];
        }
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        selfCopy = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          v19 = 138543874;
          v20 = v16;
          v21 = 2112;
          v22 = selfCopy;
          v23 = 2112;
          v24 = 0;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Cannot fulfill relationship between pending user and outgoing invitation yet: %@.invitation = %@", &v19, 0x20u);
        }

        objc_autoreleasePoolPop(v13);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return self != 0;
}

- (BOOL)isOwner
{
  ownedHome = [(MKFCKUser *)self ownedHome];
  v3 = ownedHome != 0;

  return v3;
}

@end