@interface HMIPersonDataSourceDisk
+ (id)getStoragePath;
- (HMIPersonDataSourceDisk)initWithHomeUUID:(id)a3 sourceUUID:(id)a4 error:(id *)a5;
- (void)addFaceprints:(id)a3 completion:(id)a4;
- (void)fetchAllFaceprintsWithCompletion:(id)a3;
- (void)fetchAllPersonFaceCropsWithCompletion:(id)a3;
- (void)fetchAllPersonsWithCompletion:(id)a3;
- (void)fetchFaceCropsForPersonsWithUUIDs:(id)a3 completion:(id)a4;
- (void)fetchFaceprintsForFaceCropsWithUUIDs:(id)a3 completion:(id)a4;
- (void)fetchPersonsWithUUIDs:(id)a3 completion:(id)a4;
- (void)performCloudPullWithCompletion:(id)a3;
- (void)removeFaceprintsWithUUIDs:(id)a3 completion:(id)a4;
@end

@implementation HMIPersonDataSourceDisk

- (HMIPersonDataSourceDisk)initWithHomeUUID:(id)a3 sourceUUID:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v36.receiver = self;
  v36.super_class = HMIPersonDataSourceDisk;
  v11 = [(HMIPersonDataSourceDisk *)&v36 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_4;
  }

  v13 = HMIDispatchQueueNameString(v11, 0);
  v14 = [v13 UTF8String];
  v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = dispatch_queue_create(v14, v15);
  workQueue = v12->_workQueue;
  v12->_workQueue = v16;

  objc_storeStrong(&v12->_homeUUID, a3);
  objc_storeStrong(&v12->_sourceUUID, a4);
  v18 = MEMORY[0x277CBEBC0];
  v19 = [objc_opt_class() getStoragePath];
  v20 = [v18 fileURLWithPath:v19];

  v21 = [v9 UUIDString];
  v22 = [v20 URLByAppendingPathComponent:v21];
  v23 = [v10 UUIDString];
  v24 = [v22 URLByAppendingPathComponent:v23];
  sourceURL = v12->_sourceURL;
  v12->_sourceURL = v24;

  v26 = [MEMORY[0x277CCAA00] defaultManager];
  v27 = [(NSURL *)v12->_sourceURL path];
  v35 = 0;
  LOBYTE(v15) = [v26 createDirectoryAtPath:v27 withIntermediateDirectories:1 attributes:0 error:&v35];
  v28 = v35;

  if (v15)
  {

LABEL_4:
    v29 = v12;
    goto LABEL_8;
  }

  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error initializing with home UUID: %@ source UUID:%@", v9, v10];
  v31 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1031 description:v30 underlyingError:v28];
  v32 = v31;
  if (a5)
  {
    v33 = v31;
    *a5 = v32;
  }

  HMIErrorLog(v12, v32);

  v29 = 0;
LABEL_8:

  return v29;
}

- (void)fetchAllPersonsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMIPersonDataSourceDisk *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMIPersonDataSourceDisk_fetchAllPersonsWithCompletion___block_invoke;
  v7[3] = &unk_278752DF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __57__HMIPersonDataSourceDisk_fetchAllPersonsWithCompletion___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v28 = [MEMORY[0x277CBEB58] set];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) sourceURL];
  v34 = 0;
  v4 = [v2 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:4 error:&v34];
  v5 = v34;

  if (v4)
  {
    v25 = a1;
    v26 = v4;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      while (2)
      {
        v9 = 0;
        v10 = v5;
        do
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = MEMORY[0x277CBEA90];
          v12 = [*(*(&v30 + 1) + 8 * v9) URLByAppendingPathComponent:@"person.json"];
          v13 = [v11 dataWithContentsOfURL:v12];

          v29 = v10;
          v14 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v13 options:0 error:&v29];
          v5 = v29;

          if (!v14)
          {
            v21 = *(v25 + 40);
            v22 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1031 description:@"Error loading person from JSON" underlyingError:v5];
            (*(v21 + 16))(v21, 0, v22);

            goto LABEL_12;
          }

          v15 = [HMIPerson alloc];
          v16 = objc_alloc(MEMORY[0x277CCAD78]);
          v17 = [v14 objectForKeyedSubscript:@"UUID"];
          v18 = [v16 initWithUUIDString:v17];
          v19 = [v14 objectForKeyedSubscript:@"displayName"];
          v20 = [(HMIPerson *)v15 initWithUUID:v18 name:v19];

          [v28 addObject:v20];
          ++v9;
          v10 = v5;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    (*(*(v25 + 40) + 16))();
LABEL_12:
    v4 = v26;
  }

  else
  {
    v23 = *(a1 + 40);
    v24 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1031 description:@"Error enumerating persons" underlyingError:v5];
    (*(v23 + 16))(v23, 0, v24);
  }
}

- (void)fetchFaceCropsForPersonsWithUUIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMIPersonDataSourceDisk *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMIPersonDataSourceDisk_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __72__HMIPersonDataSourceDisk_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v73 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_24;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v67;
  v49 = v3;
  v50 = *MEMORY[0x277CBE8E8];
  v55 = v2;
  v56 = *MEMORY[0x277CBE868];
  v48 = a1;
  v45 = *v67;
LABEL_3:
  v8 = 0;
  v46 = v5;
  while (1)
  {
    if (*v67 != v7)
    {
      objc_enumerationMutation(v3);
    }

    v47 = v8;
    v9 = *(*(&v66 + 1) + 8 * v8);
    v10 = [*(a1 + 40) sourceURL];
    v52 = v9;
    v11 = [v9 UUIDString];
    v12 = [v10 URLByAppendingPathComponent:v11];

    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v71[0] = v50;
    v71[1] = v56;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
    v65 = v6;
    v15 = [v13 contentsOfDirectoryAtURL:v12 includingPropertiesForKeys:v14 options:5 error:&v65];
    v16 = v65;

    if (!v15)
    {
      break;
    }

    v51 = v12;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v61 objects:v70 count:16];
    if (!v18)
    {
      v6 = v16;
      goto LABEL_20;
    }

    v19 = v18;
    v20 = *v62;
    v6 = v16;
    v21 = 0x277CBE000uLL;
    v54 = v17;
    while (2)
    {
      v22 = 0;
      v53 = v19;
      do
      {
        if (*v62 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v61 + 1) + 8 * v22);
        v60 = 0;
        [v23 getResourceValue:&v60 forKey:v56 error:0];
        v24 = v60;
        if ([v24 BOOLValue])
        {
          v25 = *(v21 + 2704);
          v26 = [v23 URLByAppendingPathComponent:@"facecrop.json"];
          v27 = [v25 dataWithContentsOfURL:v26];

          v59 = v6;
          v28 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v27 options:0 error:&v59];
          v16 = v59;

          if (v28)
          {
            v29 = objc_alloc(MEMORY[0x277CCAD78]);
            v30 = [v28 objectForKeyedSubscript:@"UUID"];
            v31 = [v29 initWithUUIDString:v30];

            v32 = *(v21 + 2704);
            v33 = [v23 URLByAppendingPathComponent:@"facecrop.jpeg"];
            v58 = v16;
            v34 = [v32 dataWithContentsOfURL:v33 options:0 error:&v58];
            v6 = v58;

            if (v34)
            {
              v35 = [v28 objectForKeyedSubscript:@"dateCreated"];
              memset(&rect, 0, sizeof(rect));
              v36 = [v28 objectForKeyedSubscript:@"faceBoundingBox"];
              CGRectMakeWithDictionaryRepresentation(v36, &rect);

              v37 = [HMIPersonFaceCrop alloc];
              v38 = [(HMIPersonFaceCrop *)v37 initWithUUID:v31 dataRepresentation:v34 dateCreated:v35 faceBoundingBox:v52 personUUID:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
              [v55 addObject:v38];

              v21 = 0x277CBE000;
              v19 = v53;
              v17 = v54;
              goto LABEL_16;
            }

            v40 = *(v48 + 48);
            v41 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1031 description:@"Error loading face crop image" underlyingError:v6];
            (*(v40 + 16))(v40, 0, v41);

            v16 = v6;
          }

          else
          {
            v39 = *(v48 + 48);
            v28 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1031 description:@"Error loading face crop from JSON" underlyingError:v16];
            (*(v39 + 16))(v39, 0, v28);
          }

          v42 = v54;
          v2 = v55;
          v43 = v54;
          v3 = v49;
          v12 = v51;
          goto LABEL_28;
        }

LABEL_16:

        ++v22;
      }

      while (v19 != v22);
      v19 = [v17 countByEnumeratingWithState:&v61 objects:v70 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }

LABEL_20:

    v8 = v47 + 1;
    v2 = v55;
    a1 = v48;
    v3 = v49;
    v7 = v45;
    if (v47 + 1 == v46)
    {
      v5 = [v49 countByEnumeratingWithState:&v66 objects:v72 count:16];
      if (!v5)
      {
LABEL_24:

        (*(*(a1 + 48) + 16))();
        v16 = v6;
        goto LABEL_29;
      }

      goto LABEL_3;
    }
  }

  v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error enumerating face crops for person UUID:%@", v52];
  v44 = *(a1 + 48);
  v42 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1031 description:v43 underlyingError:v16];
  (*(v44 + 16))(v44, 0, v42);
LABEL_28:

LABEL_29:
}

- (void)fetchAllFaceprintsWithCompletion:(id)a3
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = a3;
  v6 = [v4 hmfErrorWithCode:5];
  (*(a3 + 2))(v5, 0, v6);
}

- (void)fetchAllPersonFaceCropsWithCompletion:(id)a3
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = a3;
  v6 = [v4 hmfErrorWithCode:5];
  (*(a3 + 2))(v5, 0, v6);
}

- (void)fetchFaceprintsForFaceCropsWithUUIDs:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = [v5 hmfErrorWithCode:5];
  (*(a4 + 2))(v6, 0, v7);
}

- (void)fetchPersonsWithUUIDs:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = [v5 hmfErrorWithCode:5];
  (*(a4 + 2))(v6, 0, v7);
}

- (void)performCloudPullWithCompletion:(id)a3
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = a3;
  v6 = [v4 hmfErrorWithCode:5];
  (*(a3 + 2))(v5, v6);
}

- (void)addFaceprints:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = [v5 hmfErrorWithCode:5];
  (*(a4 + 2))(v6, v7);
}

- (void)removeFaceprintsWithUUIDs:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = [v5 hmfErrorWithCode:5];
  (*(a4 + 2))(v6, v7);
}

+ (id)getStoragePath
{
  v2 = +[HMIPreference sharedInstance];
  v3 = [v2 stringPreferenceForKey:@"personDataSourceDiskStoragePath" defaultValue:@"/tmp/com.apple.HomeAI/familiar-face-data"];

  return v3;
}

@end