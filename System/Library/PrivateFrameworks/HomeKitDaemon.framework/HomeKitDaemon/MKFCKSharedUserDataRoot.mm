@interface MKFCKSharedUserDataRoot
+ (BOOL)_importInsertOrUpdateWithObjectID:(id)a3 context:(id)a4;
+ (id)createWithHomeModelID:(id)a3 persistentStore:(id)a4 context:(id)a5;
+ (id)entityDescriptionFromContext:(id)a3;
- (BOOL)_importSharedUserProfileMetadataIntoLocalModel:(id)a3 context:(id)a4;
- (BOOL)_importSharedUserSettingsIntoLocalModel:(id)a3 context:(id)a4;
- (BOOL)importAccessorySettingsIntoLocalModel:(id)a3 context:(id)a4;
- (BOOL)importIntoLocalModel:(id)a3 context:(id)a4;
- (BOOL)importIntoLocalModelWithContext:(id)a3;
- (BOOL)importPersonsIntoLocalModel:(id)a3 context:(id)a4;
- (id)fetchEquivalentModels:(id *)a3;
@end

@implementation MKFCKSharedUserDataRoot

- (BOOL)_importSharedUserProfileMetadataIntoLocalModel:(id)a3 context:(id)a4
{
  v5 = a3;
  if (_os_feature_enabled_impl())
  {
    v6 = [(MKFCKSharedUserDataRoot *)self iCloudAltDSID];
    if (v6)
    {
      v7 = v6;
      v8 = [(MKFCKSharedUserDataRoot *)self iCloudAltDSID];
      v9 = [v5 iCloudAltDSID];
      v10 = [v8 isEqual:v9];

      if ((v10 & 1) == 0)
      {
        v11 = [(MKFCKSharedUserDataRoot *)self iCloudAltDSID];
        [v5 setICloudAltDSID:v11];
      }
    }

    v12 = [(MKFCKSharedUserDataRoot *)self firstName];
    if (v12)
    {
      v13 = v12;
      v14 = [(MKFCKSharedUserDataRoot *)self firstName];
      v15 = [v5 firstName];
      v16 = [v14 isEqual:v15];

      if ((v16 & 1) == 0)
      {
        v17 = [(MKFCKSharedUserDataRoot *)self firstName];
        [v5 setFirstName:v17];
      }
    }

    v18 = [(MKFCKSharedUserDataRoot *)self lastName];
    if (v18)
    {
      v19 = v18;
      v20 = [(MKFCKSharedUserDataRoot *)self lastName];
      v21 = [v5 lastName];
      v22 = [v20 isEqual:v21];

      if ((v22 & 1) == 0)
      {
        v23 = [(MKFCKSharedUserDataRoot *)self lastName];
        [v5 setLastName:v23];
      }
    }
  }

  return 1;
}

- (BOOL)_importSharedUserSettingsIntoLocalModel:(id)a3 context:(id)a4
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithBool:{-[MKFCKSharedUserDataRoot allowExplicitContent](self, "allowExplicitContent")}];
  [v6 setAllowExplicitContent:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKSharedUserDataRoot allowiTunesAccount](self, "allowiTunesAccount")}];
  [v6 setAllowiTunesAccount:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKSharedUserDataRoot dolbyAtmosEnabled](self, "dolbyAtmosEnabled")}];
  [v6 setDolbyAtmosEnabled:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKSharedUserDataRoot losslessMusicEnabled](self, "losslessMusicEnabled")}];
  [v6 setLosslessMusicEnabled:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKSharedUserDataRoot playbackInfluencesEnabled](self, "playbackInfluencesEnabled")}];
  [v6 setPlaybackInfluencesEnabled:v11];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKSharedUserDataRoot siriIdentifyVoiceEnabled](self, "siriIdentifyVoiceEnabled")}];
  [v6 setSiriIdentifyVoiceEnabled:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKSharedUserDataRoot activityNotificationsEnabledForPersonalRequests](self, "activityNotificationsEnabledForPersonalRequests")}];
  [v6 setActivityNotificationsEnabledForPersonalRequests:v13];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKSharedUserDataRoot sharePhotosFaceClassifications](self, "sharePhotosFaceClassifications")}];
  [v6 setSharePhotosFaceClassifications:v14];

  v15 = [(MKFCKSharedUserDataRoot *)self photosPersonDataZoneUUID];
  [v6 setPhotosPersonDataZoneUUID:v15];

  v16 = [(MKFCKSharedUserDataRoot *)self matCredIPKExternalRepresentation];
  [v6 setMatCredIPKExternalRepresentation:v16];

  return 1;
}

- (BOOL)importIntoLocalModel:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MKFCKSharedUserDataRoot *)self _importSharedUserSettingsIntoLocalModel:v6 context:v7]&& [(MKFCKSharedUserDataRoot *)self _importSharedUserProfileMetadataIntoLocalModel:v6 context:v7]&& [(MKFCKSharedUserDataRoot *)self importPersonsIntoLocalModel:v6 context:v7]&& [(MKFCKSharedUserDataRoot *)self importAccessorySettingsIntoLocalModel:v6 context:v7];

  return v8;
}

- (BOOL)importIntoLocalModelWithContext:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MKFCKSharedUserData *)self workingStoreHomeMember];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 castIfMemberIsGuest];

    if (!v7)
    {
      v17 = [v6 castIfMemberIsUser];
      v16 = [(MKFCKSharedUserDataRoot *)self importIntoLocalModel:v17 context:v4];

      goto LABEL_11;
    }

    v8 = [v6 castIfMemberIsGuest];
    if (v8)
    {
      v9 = [(MKFCKSharedUserDataRoot *)self matCredIPKExternalRepresentation];
      [v8 setMatCredIPKExternalRepresentation:v9];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(MKFCKSharedUserDataRoot *)v11 objectID];
      v15 = [v14 hmd_debugIdentifier];
      v20 = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to resolve working store user for shared settings import of %@, skipping import", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  LOBYTE(v16) = 1;
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)fetchEquivalentModels:(id *)a3
{
  v18.receiver = self;
  v18.super_class = MKFCKSharedUserDataRoot;
  v5 = [(MKFCKModel *)&v18 fetchEquivalentModels:?];
  if (v5)
  {
    v6 = [(MKFCKSharedUserDataRoot *)self managedObjectContext];
    v7 = [v6 hmd_coreData];
    v8 = [v7 container];

    v9 = [v5 valueForKey:@"objectID"];
    v10 = [v8 fetchSharesMatchingObjectIDs:v9 error:a3];
    if (v10)
    {
      v11 = [(MKFCKSharedUserDataRoot *)self objectID];
      v12 = [v10 objectForKeyedSubscript:v11];

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

+ (id)entityDescriptionFromContext:(id)a3
{
  v3 = MEMORY[0x277CBE408];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 entityForName:v6 inManagedObjectContext:v4];

  return v7;
}

+ (BOOL)_importInsertOrUpdateWithObjectID:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 hmd_cloudPrivateStoreIdentifier];
  v8 = [v5 persistentStore];
  v9 = [v8 identifier];
  v10 = [v7 isEqualToString:v9];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v12 = [(MKFCKModel *)MKFCKSharedUserDataRoot modelWithObjectID:v5 context:v6 error:0];
    v11 = [v12 importIntoLocalModelWithContext:v6];
  }

  return v11;
}

+ (id)createWithHomeModelID:(id)a3 persistentStore:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithContext:v8];
  [v8 assignObject:v11 toPersistentStore:v9];

  [v11 setModelID:v10];
  [v11 setHomeModelID:v10];

  return v11;
}

- (BOOL)importPersonsIntoLocalModel:(id)a3 context:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CBEB58];
  v8 = [(MKFCKSharedUserDataRoot *)self personsFromPhotos];
  v9 = [v7 setWithCapacity:{objc_msgSend(v8, "count")}];

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
        v16 = [v15 modelID];
        v17 = [(_MKFModel *)_MKFPhotosPerson modelWithModelID:v16 context:v6];

        if (!v17)
        {
          v17 = [[_MKFPhotosPerson alloc] initWithContext:v6];
          v18 = [v15 modelID];
          [(_MKFPhotosPerson *)v17 setModelID:v18];

          v19 = [v15 writerTimestamp];
          [(_MKFPhotosPerson *)v17 setWriterTimestamp:v19];

          [(_MKFPhotosPerson *)v17 setUser:v35];
        }

        v20 = [(_MKFPhotosPerson *)v17 name];
        v21 = [v15 name];
        v22 = HMFEqualObjects();

        if ((v22 & 1) == 0)
        {
          v23 = [v15 name];
          [(_MKFPhotosPerson *)v17 setName:v23];
        }

        v24 = [(_MKFPhotosPerson *)v17 photoLibraryPersonUUID];
        v25 = [v15 photoLibraryPersonUUID];
        v26 = HMFEqualObjects();

        if ((v26 & 1) == 0)
        {
          v27 = [v15 photoLibraryPersonUUID];
          [(_MKFPhotosPerson *)v17 setPhotoLibraryPersonUUID:v27];
        }

        v9 = v14;
        [v14 addObject:v17];
      }

      v11 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v11);
  }

  v28 = [v35 personsFromPhotos];
  v29 = [v28 isEqualToSet:v9];

  if ((v29 & 1) == 0)
  {
    v30 = [v35 personsFromPhotos];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __72__MKFCKSharedUserDataRoot_Persons__importPersonsIntoLocalModel_context___block_invoke;
    v37[3] = &unk_27867D180;
    v31 = v9;
    v38 = v31;
    v39 = v6;
    [v30 hmf_enumerateWithAutoreleasePoolUsingBlock:v37];

    v32 = [v31 copy];
    [v35 setPersonsFromPhotos_:v32];
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

- (BOOL)importAccessorySettingsIntoLocalModel:(id)a3 context:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(MKFCKSharedUserDataRoot *)self accessorySettings];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v8);
        }

        if (![*(*(&v16 + 1) + 8 * i) importIntoLocalUserModel:v6 context:v7])
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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