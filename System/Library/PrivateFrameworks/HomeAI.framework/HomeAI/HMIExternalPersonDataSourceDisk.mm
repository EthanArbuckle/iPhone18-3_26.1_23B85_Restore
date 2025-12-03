@interface HMIExternalPersonDataSourceDisk
- (void)addPerson:(id)person completion:(id)completion;
- (void)addPersonFaceCrops:(id)crops completion:(id)completion;
- (void)fetchSettingsWithCompletion:(id)completion;
@end

@implementation HMIExternalPersonDataSourceDisk

- (void)addPerson:(id)person completion:(id)completion
{
  personCopy = person;
  completionCopy = completion;
  workQueue = [(HMIPersonDataSourceDisk *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMIExternalPersonDataSourceDisk_addPerson_completion___block_invoke;
  block[3] = &unk_2787526C0;
  block[4] = self;
  v12 = personCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = personCopy;
  dispatch_async(workQueue, block);
}

void __56__HMIExternalPersonDataSourceDisk_addPerson_completion___block_invoke(uint64_t a1)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) sourceURL];
  v3 = [*(a1 + 40) UUID];
  v4 = [v3 UUIDString];
  v5 = [v2 URLByAppendingPathComponent:v4];

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v5 path];
  v21 = 0;
  v8 = [v6 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v21];
  v9 = v21;

  if (v8)
  {
    v23[0] = @"0.1";
    v22[0] = @"version";
    v22[1] = @"UUID";
    v10 = [*(a1 + 40) UUID];
    v11 = [v10 UUIDString];
    v23[1] = v11;
    v22[2] = @"displayName";
    v12 = [*(a1 + 40) name];
    v23[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];

    v14 = [v5 URLByAppendingPathComponent:@"person.json"];
    v20 = v9;
    LOBYTE(v12) = [HMIFaceUtilities serializeJSONObject:v13 url:v14 error:&v20];
    v15 = v20;

    if (v12)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error saving metadata to disk for person:%@", *(a1 + 40)];
      v18 = *(a1 + 48);
      v19 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1031 description:v17 underlyingError:v15];
      (*(v18 + 16))(v18, v19);
    }

    v9 = v15;
  }

  else
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error creating directory for person:%@", *(a1 + 40)];
    v16 = *(a1 + 48);
    v14 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1031 description:v13 underlyingError:v9];
    (*(v16 + 16))(v16, v14);
  }
}

- (void)addPersonFaceCrops:(id)crops completion:(id)completion
{
  cropsCopy = crops;
  completionCopy = completion;
  workQueue = [(HMIPersonDataSourceDisk *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMIExternalPersonDataSourceDisk_addPersonFaceCrops_completion___block_invoke;
  block[3] = &unk_2787526C0;
  v12 = cropsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = cropsCopy;
  dispatch_async(workQueue, block);
}

void __65__HMIExternalPersonDataSourceDisk_addPersonFaceCrops_completion___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = *(a1 + 32);
  v31 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v31)
  {
    v32 = *v38;
LABEL_3:
    v1 = 0;
    while (1)
    {
      if (*v38 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v2 = *(*(&v37 + 1) + 8 * v1);
      v3 = [*(a1 + 40) sourceURL];
      v4 = [v2 personUUID];
      v5 = [v4 UUIDString];
      v6 = [v3 URLByAppendingPathComponent:v5];

      v7 = [v2 UUID];
      v8 = [v7 UUIDString];
      v9 = [v6 URLByAppendingPathComponent:v8];

      v10 = [MEMORY[0x277CCAA00] defaultManager];
      v11 = [v9 path];
      v36 = 0;
      v12 = [v10 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v36];
      v13 = v36;

      if ((v12 & 1) == 0)
      {
        break;
      }

      v34 = v6;
      v42[0] = @"0.1";
      v41[0] = @"version";
      v41[1] = @"UUID";
      v14 = [v2 UUID];
      v15 = [v14 UUIDString];
      v42[1] = v15;
      v41[2] = @"faceBoundingBox";
      [v2 faceBoundingBox];
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v45);
      v42[2] = DictionaryRepresentation;
      v41[3] = @"dateCreated";
      v17 = [v2 dateCreated];
      v18 = HMIJSONFormattedStringForDate(v17);
      v42[3] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:4];

      v20 = [v9 URLByAppendingPathComponent:@"facecrop.json"];
      v35 = v13;
      LOBYTE(DictionaryRepresentation) = [HMIFaceUtilities serializeJSONObject:v19 url:v20 error:&v35];
      v21 = v35;

      if ((DictionaryRepresentation & 1) == 0)
      {
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error saving metadata to disk for person face crop:%@", v2];
        v27 = *(a1 + 48);
        v28 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1031 description:v26 underlyingError:v21];
        goto LABEL_15;
      }

      v22 = [v2 dataRepresentation];
      v23 = [v9 URLByAppendingPathComponent:@"facecrop.jpeg"];
      v24 = [v22 writeToURL:v23 atomically:0];

      if ((v24 & 1) == 0)
      {
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error saving face crop image to disk for person face crop:%@", v2];
        v27 = *(a1 + 48);
        v28 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1031 description:v26];
LABEL_15:
        v29 = v28;
        (*(v27 + 16))(v27, v28);

        v6 = v34;
LABEL_16:

        return;
      }

      if (v31 == ++v1)
      {
        v31 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
        if (v31)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error creating directory for person face crop:%@", v2];
    v25 = *(a1 + 48);
    v20 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1031 description:v19 underlyingError:v13];
    (*(v25 + 16))(v25, v20);
    v21 = v13;
    goto LABEL_16;
  }

LABEL_11:

  (*(*(a1 + 48) + 16))();
}

- (void)fetchSettingsWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v6 = [v4 hmfErrorWithCode:5];
  (*(completion + 2))(completionCopy, 0, v6);
}

@end