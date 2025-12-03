@interface MKFCKSharedUserDataRoot
+ (BOOL)_importInsertOrUpdateWithObjectID:(id)d context:(id)context;
+ (id)createWithHomeModelID:(id)d persistentStore:(id)store context:(id)context;
+ (id)entityDescriptionFromContext:(id)context;
- (BOOL)_importSharedUserProfileMetadataIntoLocalModel:(id)model context:(id)context;
- (BOOL)_importSharedUserSettingsIntoLocalModel:(id)model context:(id)context;
- (BOOL)importAccessorySettingsIntoLocalModel:(id)model context:(id)context;
- (BOOL)importIntoLocalModel:(id)model context:(id)context;
- (BOOL)importIntoLocalModelWithContext:(id)context;
- (BOOL)importPersonsIntoLocalModel:(id)model context:(id)context;
- (id)fetchEquivalentModels:(id *)models;
@end

@implementation MKFCKSharedUserDataRoot

- (BOOL)_importSharedUserProfileMetadataIntoLocalModel:(id)model context:(id)context
{
  modelCopy = model;
  if (_os_feature_enabled_impl())
  {
    iCloudAltDSID = [(MKFCKSharedUserDataRoot *)self iCloudAltDSID];
    if (iCloudAltDSID)
    {
      v7 = iCloudAltDSID;
      iCloudAltDSID2 = [(MKFCKSharedUserDataRoot *)self iCloudAltDSID];
      iCloudAltDSID3 = [modelCopy iCloudAltDSID];
      v10 = [iCloudAltDSID2 isEqual:iCloudAltDSID3];

      if ((v10 & 1) == 0)
      {
        iCloudAltDSID4 = [(MKFCKSharedUserDataRoot *)self iCloudAltDSID];
        [modelCopy setICloudAltDSID:iCloudAltDSID4];
      }
    }

    firstName = [(MKFCKSharedUserDataRoot *)self firstName];
    if (firstName)
    {
      v13 = firstName;
      firstName2 = [(MKFCKSharedUserDataRoot *)self firstName];
      firstName3 = [modelCopy firstName];
      v16 = [firstName2 isEqual:firstName3];

      if ((v16 & 1) == 0)
      {
        firstName4 = [(MKFCKSharedUserDataRoot *)self firstName];
        [modelCopy setFirstName:firstName4];
      }
    }

    lastName = [(MKFCKSharedUserDataRoot *)self lastName];
    if (lastName)
    {
      v19 = lastName;
      lastName2 = [(MKFCKSharedUserDataRoot *)self lastName];
      lastName3 = [modelCopy lastName];
      v22 = [lastName2 isEqual:lastName3];

      if ((v22 & 1) == 0)
      {
        lastName4 = [(MKFCKSharedUserDataRoot *)self lastName];
        [modelCopy setLastName:lastName4];
      }
    }
  }

  return 1;
}

- (BOOL)_importSharedUserSettingsIntoLocalModel:(id)model context:(id)context
{
  v5 = MEMORY[0x277CCABB0];
  modelCopy = model;
  v7 = [v5 numberWithBool:{-[MKFCKSharedUserDataRoot allowExplicitContent](self, "allowExplicitContent")}];
  [modelCopy setAllowExplicitContent:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKSharedUserDataRoot allowiTunesAccount](self, "allowiTunesAccount")}];
  [modelCopy setAllowiTunesAccount:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKSharedUserDataRoot dolbyAtmosEnabled](self, "dolbyAtmosEnabled")}];
  [modelCopy setDolbyAtmosEnabled:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKSharedUserDataRoot losslessMusicEnabled](self, "losslessMusicEnabled")}];
  [modelCopy setLosslessMusicEnabled:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKSharedUserDataRoot playbackInfluencesEnabled](self, "playbackInfluencesEnabled")}];
  [modelCopy setPlaybackInfluencesEnabled:v11];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKSharedUserDataRoot siriIdentifyVoiceEnabled](self, "siriIdentifyVoiceEnabled")}];
  [modelCopy setSiriIdentifyVoiceEnabled:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKSharedUserDataRoot activityNotificationsEnabledForPersonalRequests](self, "activityNotificationsEnabledForPersonalRequests")}];
  [modelCopy setActivityNotificationsEnabledForPersonalRequests:v13];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKSharedUserDataRoot sharePhotosFaceClassifications](self, "sharePhotosFaceClassifications")}];
  [modelCopy setSharePhotosFaceClassifications:v14];

  photosPersonDataZoneUUID = [(MKFCKSharedUserDataRoot *)self photosPersonDataZoneUUID];
  [modelCopy setPhotosPersonDataZoneUUID:photosPersonDataZoneUUID];

  matCredIPKExternalRepresentation = [(MKFCKSharedUserDataRoot *)self matCredIPKExternalRepresentation];
  [modelCopy setMatCredIPKExternalRepresentation:matCredIPKExternalRepresentation];

  return 1;
}

- (BOOL)importIntoLocalModel:(id)model context:(id)context
{
  modelCopy = model;
  contextCopy = context;
  v8 = [(MKFCKSharedUserDataRoot *)self _importSharedUserSettingsIntoLocalModel:modelCopy context:contextCopy]&& [(MKFCKSharedUserDataRoot *)self _importSharedUserProfileMetadataIntoLocalModel:modelCopy context:contextCopy]&& [(MKFCKSharedUserDataRoot *)self importPersonsIntoLocalModel:modelCopy context:contextCopy]&& [(MKFCKSharedUserDataRoot *)self importAccessorySettingsIntoLocalModel:modelCopy context:contextCopy];

  return v8;
}

- (BOOL)importIntoLocalModelWithContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  workingStoreHomeMember = [(MKFCKSharedUserData *)self workingStoreHomeMember];
  v6 = workingStoreHomeMember;
  if (workingStoreHomeMember)
  {
    castIfMemberIsGuest = [workingStoreHomeMember castIfMemberIsGuest];

    if (!castIfMemberIsGuest)
    {
      castIfMemberIsUser = [v6 castIfMemberIsUser];
      v16 = [(MKFCKSharedUserDataRoot *)self importIntoLocalModel:castIfMemberIsUser context:contextCopy];

      goto LABEL_11;
    }

    castIfMemberIsGuest2 = [v6 castIfMemberIsGuest];
    if (castIfMemberIsGuest2)
    {
      matCredIPKExternalRepresentation = [(MKFCKSharedUserDataRoot *)self matCredIPKExternalRepresentation];
      [castIfMemberIsGuest2 setMatCredIPKExternalRepresentation:matCredIPKExternalRepresentation];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      objectID = [(MKFCKSharedUserDataRoot *)selfCopy objectID];
      hmd_debugIdentifier = [objectID hmd_debugIdentifier];
      v20 = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = hmd_debugIdentifier;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to resolve working store user for shared settings import of %@, skipping import", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  LOBYTE(v16) = 1;
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)fetchEquivalentModels:(id *)models
{
  v18.receiver = self;
  v18.super_class = MKFCKSharedUserDataRoot;
  v5 = [(MKFCKModel *)&v18 fetchEquivalentModels:?];
  if (v5)
  {
    managedObjectContext = [(MKFCKSharedUserDataRoot *)self managedObjectContext];
    hmd_coreData = [managedObjectContext hmd_coreData];
    container = [hmd_coreData container];

    v9 = [v5 valueForKey:@"objectID"];
    v10 = [container fetchSharesMatchingObjectIDs:v9 error:models];
    if (v10)
    {
      objectID = [(MKFCKSharedUserDataRoot *)self objectID];
      v12 = [v10 objectForKeyedSubscript:objectID];

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __49__MKFCKSharedUserDataRoot_fetchEquivalentModels___block_invoke;
      v16[3] = &unk_278674170;
      v16[4] = v10;
      v17 = v12;
      v13 = v12;
      v14 = [v5 hmf_objectsPassingTest:v16];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __49__MKFCKSharedUserDataRoot_fetchEquivalentModels___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 objectID];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = *(a1 + 40);
  v7 = HMFEqualObjects();

  return v7;
}

+ (id)entityDescriptionFromContext:(id)context
{
  v3 = MEMORY[0x277CBE408];
  contextCopy = context;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 entityForName:v6 inManagedObjectContext:contextCopy];

  return v7;
}

+ (BOOL)_importInsertOrUpdateWithObjectID:(id)d context:(id)context
{
  dCopy = d;
  contextCopy = context;
  hmd_cloudPrivateStoreIdentifier = [contextCopy hmd_cloudPrivateStoreIdentifier];
  persistentStore = [dCopy persistentStore];
  identifier = [persistentStore identifier];
  v10 = [hmd_cloudPrivateStoreIdentifier isEqualToString:identifier];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v12 = [(MKFCKModel *)MKFCKSharedUserDataRoot modelWithObjectID:dCopy context:contextCopy error:0];
    v11 = [v12 importIntoLocalModelWithContext:contextCopy];
  }

  return v11;
}

+ (id)createWithHomeModelID:(id)d persistentStore:(id)store context:(id)context
{
  contextCopy = context;
  storeCopy = store;
  dCopy = d;
  v11 = [[self alloc] initWithContext:contextCopy];
  [contextCopy assignObject:v11 toPersistentStore:storeCopy];

  [v11 setModelID:dCopy];
  [v11 setHomeModelID:dCopy];

  return v11;
}

- (BOOL)importPersonsIntoLocalModel:(id)model context:(id)context
{
  v45 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  contextCopy = context;
  v7 = MEMORY[0x277CBEB58];
  personsFromPhotos = [(MKFCKSharedUserDataRoot *)self personsFromPhotos];
  v9 = [v7 setWithCapacity:{objc_msgSend(personsFromPhotos, "count")}];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(MKFCKSharedUserDataRoot *)self personsFromPhotos];
  v10 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        v14 = v9;
        if (*v41 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        modelID = [v15 modelID];
        v17 = [(_MKFModel *)_MKFPhotosPerson modelWithModelID:modelID context:contextCopy];

        if (!v17)
        {
          v17 = [[_MKFPhotosPerson alloc] initWithContext:contextCopy];
          modelID2 = [v15 modelID];
          [(_MKFPhotosPerson *)v17 setModelID:modelID2];

          writerTimestamp = [v15 writerTimestamp];
          [(_MKFPhotosPerson *)v17 setWriterTimestamp:writerTimestamp];

          [(_MKFPhotosPerson *)v17 setUser:modelCopy];
        }

        name = [(_MKFPhotosPerson *)v17 name];
        name2 = [v15 name];
        v22 = HMFEqualObjects();

        if ((v22 & 1) == 0)
        {
          name3 = [v15 name];
          [(_MKFPhotosPerson *)v17 setName:name3];
        }

        photoLibraryPersonUUID = [(_MKFPhotosPerson *)v17 photoLibraryPersonUUID];
        photoLibraryPersonUUID2 = [v15 photoLibraryPersonUUID];
        v26 = HMFEqualObjects();

        if ((v26 & 1) == 0)
        {
          photoLibraryPersonUUID3 = [v15 photoLibraryPersonUUID];
          [(_MKFPhotosPerson *)v17 setPhotoLibraryPersonUUID:photoLibraryPersonUUID3];
        }

        v9 = v14;
        [v14 addObject:v17];
      }

      v11 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v11);
  }

  personsFromPhotos2 = [modelCopy personsFromPhotos];
  v29 = [personsFromPhotos2 isEqualToSet:v9];

  if ((v29 & 1) == 0)
  {
    personsFromPhotos3 = [modelCopy personsFromPhotos];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __72__MKFCKSharedUserDataRoot_Persons__importPersonsIntoLocalModel_context___block_invoke;
    v37[3] = &unk_27867D180;
    v31 = v9;
    v38 = v31;
    v39 = contextCopy;
    [personsFromPhotos3 hmf_enumerateWithAutoreleasePoolUsingBlock:v37];

    v32 = [v31 copy];
    [modelCopy setPersonsFromPhotos_:v32];
  }

  v33 = *MEMORY[0x277D85DE8];
  return 1;
}

void __72__MKFCKSharedUserDataRoot_Persons__importPersonsIntoLocalModel_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) deleteObject:v3];
  }
}

- (BOOL)importAccessorySettingsIntoLocalModel:(id)model context:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  contextCopy = context;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  accessorySettings = [(MKFCKSharedUserDataRoot *)self accessorySettings];
  v9 = [accessorySettings countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(accessorySettings);
        }

        if (![*(*(&v16 + 1) + 8 * i) importIntoLocalUserModel:modelCopy context:contextCopy])
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v10 = [accessorySettings countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

@end