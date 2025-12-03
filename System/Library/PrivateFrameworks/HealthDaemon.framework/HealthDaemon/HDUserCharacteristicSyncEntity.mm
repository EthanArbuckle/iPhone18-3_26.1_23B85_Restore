@interface HDUserCharacteristicSyncEntity
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
@end

@implementation HDUserCharacteristicSyncEntity

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  v72 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  storeCopy = store;
  profileCopy = profile;
  v68.receiver = self;
  v68.super_class = &OBJC_METACLASS___HDUserCharacteristicSyncEntity;
  v47 = objectsCopy;
  v45 = storeCopy;
  v46 = objc_msgSendSuper2(&v68, sel_receiveSyncObjects_version_syncStore_profile_error_, objectsCopy, version, storeCopy, profileCopy, error);
  if (v46)
  {
    goto LABEL_2;
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v18 = objectsCopy;
  v50 = [v18 countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (!v50)
  {

    goto LABEL_2;
  }

  v19 = *v65;
  v20 = 1;
  v21 = off_27860F000;
  v53 = *MEMORY[0x277CCBB18];
  errorCopy = error;
  v48 = *v65;
  v49 = v18;
  v52 = profileCopy;
  do
  {
    v22 = 0;
    do
    {
      if (*v65 != v19)
      {
        v23 = v22;
        objc_enumerationMutation(v18);
        v22 = v23;
      }

      v51 = v22;
      v24 = *(*(&v64 + 1) + 8 * v22);
      if ([v24 hasCategory])
      {
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        obj = [v24 keyValuePairs];
        v59 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
        if (!v59)
        {
          goto LABEL_35;
        }

        v58 = *v61;
        v25 = v53;
        while (1)
        {
          for (i = 0; i != v59; ++i)
          {
            if (*v61 != v58)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v60 + 1) + 8 * i);
            v28 = [v27 key];

            if (v28)
            {
              v29 = v21[48];
              v30 = [v27 key];
              v31 = [(__objc2_class *)v29 userCharacteristicTypeForKey:v30];

              date = [MEMORY[0x277CBEAA8] date];
              if ([v27 hasTimestamp])
              {
                decodedTimestamp = [v27 decodedTimestamp];

                [decodedTimestamp timeIntervalSinceReferenceDate];
                v35 = v34;
                date = decodedTimestamp;
              }

              else
              {
                v35 = 2.22507386e-308;
              }

              decodedValue = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:v25];
              if (v31 != decodedValue || ([profileCopy daemon], v57 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v57, "behavior"), v56 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v56, "futureMigrationsEnabled")))
              {
                _relatedQuantityType = [v31 _relatedQuantityType];

                if (v31 == decodedValue)
                {
                }

                if (!_relatedQuantityType)
                {
                  decodedValue = [v27 decodedValue];
                  v38 = [v31 _relatedSampleForInsertionWithCharacteristicValue:decodedValue date:date];
                  if (v38)
                  {
                    dataProvenanceManager = [profileCopy dataProvenanceManager];
                    defaultLocalDataProvenance = [dataProvenanceManager defaultLocalDataProvenance];

                    if (defaultLocalDataProvenance)
                    {
                      dataManager = [profileCopy dataManager];
                      v69 = v38;
                      [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
                      v43 = v42 = v20;
                      v44 = [dataManager insertDataObjects:v43 withProvenance:defaultLocalDataProvenance creationDate:errorCopy error:v35];

                      LODWORD(v43) = v42;
                      v25 = v53;

                      v20 = v44 & v43;
                      profileCopy = v52;
                    }

                    else
                    {
                      [MEMORY[0x277CCA9B8] hk_assignError:errorCopy code:100 description:@"Failed to get local device data provenance"];
                    }

                    v21 = off_27860F000;
LABEL_30:
                  }
                }

                continue;
              }

              defaultLocalDataProvenance = v56;
              v38 = v57;
              goto LABEL_30;
            }
          }

          v59 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
          if (!v59)
          {
LABEL_35:

            v19 = v48;
            v18 = v49;
            break;
          }
        }
      }

      v22 = v51 + 1;
    }

    while (v51 + 1 != v50);
    v50 = [v18 countByEnumeratingWithState:&v64 objects:v71 count:16];
  }

  while (v50);

  if ((v20 & 1) == 0)
  {
    v46 = 1;
    goto LABEL_3;
  }

LABEL_2:
  userCharacteristicsManager = [profileCopy userCharacteristicsManager];
  [(HDUserCharacteristicsManager *)userCharacteristicsManager _userCharacteristicsDidChangeShouldUpdateUserProfile:0 shouldSync:?];

LABEL_3:
  v16 = *MEMORY[0x277D85DE8];
  return v46;
}

@end