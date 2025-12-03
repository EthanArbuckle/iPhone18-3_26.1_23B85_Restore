@interface HMDPhotoLibraryPersonImporter
+ (id)logCategory;
- (BOOL)isThisDesignatedFMFDevice;
- (HMDPersonDataSource)dataSource;
- (HMDPhotoLibraryPersonImporter)initWithUUID:(id)d;
- (HMDPhotoLibraryPersonImporter)initWithUUID:(id)d fmfHandler:(id)handler photoLibrary:(id)library workQueue:(id)queue cloudPhotosSettingObserver:(id)observer logEventSubmitter:(id)submitter;
- (id)_importFaceCropsForPersons:(id)persons usingFaceCropUUIDsByPersonUUID:(id)d batchChange:(id)change;
- (id)_importPersonsUsingBatchChange:(id)change;
- (id)logIdentifier;
- (void)_configure;
- (void)_handleFMFDeviceChanged;
- (void)_handleUpdatedCloudPhotosSetting;
- (void)_import;
- (void)_importFaceCropsForPerson:(id)person usingCurrentHomeKitFaceCropUUIDs:(id)ds batchChange:(id)change;
- (void)_reconfigure;
- (void)_registerForNotifications;
- (void)_submitLogEventForFaceCrops:(id)crops;
- (void)_submitLogEventsForUpdatedPersonsWithCurrentPersons:(id)persons previousPersons:(id)previousPersons;
- (void)_unconfigure;
- (void)configureWithDataSource:(id)source home:(id)home;
- (void)handleCloudPhotosEnabledDidChangeNotification:(id)notification;
- (void)handleFMFDeviceChangedNotification:(id)notification;
- (void)observerDidObserveChange:(id)change;
@end

@implementation HMDPhotoLibraryPersonImporter

- (HMDPersonDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  uUID = [(HMDPhotoLibraryPersonImporter *)self UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (void)observerDidObserveChange:(id)change
{
  workQueue = [(HMDPhotoLibraryPersonImporter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDPhotoLibraryPersonImporter *)self _import];
}

- (void)handleFMFDeviceChangedNotification:(id)notification
{
  workQueue = [(HMDPhotoLibraryPersonImporter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDPhotoLibraryPersonImporter_handleFMFDeviceChangedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)handleCloudPhotosEnabledDidChangeNotification:(id)notification
{
  workQueue = [(HMDPhotoLibraryPersonImporter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDPhotoLibraryPersonImporter_handleCloudPhotosEnabledDidChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (BOOL)isThisDesignatedFMFDevice
{
  fmfHandler = [(HMDPhotoLibraryPersonImporter *)self fmfHandler];
  isThisDesignatedFMFDevice = [fmfHandler isThisDesignatedFMFDevice];

  return isThisDesignatedFMFDevice;
}

- (void)configureWithDataSource:(id)source home:(id)home
{
  sourceCopy = source;
  workQueue = [(HMDPhotoLibraryPersonImporter *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__HMDPhotoLibraryPersonImporter_configureWithDataSource_home___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = sourceCopy;
  v7 = sourceCopy;
  dispatch_async(workQueue, v8);
}

void __62__HMDPhotoLibraryPersonImporter_configureWithDataSource_home___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setDataSource:*(a1 + 40)];
  [*(a1 + 32) _registerForNotifications];
  v2 = [*(a1 + 32) cloudPhotosSettingObserver];
  v3 = [v2 isCloudPhotosEnabled];

  if ((v3 & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      v10 = "%{public}@Not configuring photo library person importer because cloud photos is disabled";
LABEL_10:
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, v10, &v12, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v6);
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  if (([*(a1 + 32) isThisDesignatedFMFDevice] & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      v10 = "%{public}@Not configuring photo library person importer because this device is not the designated FMF device";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v4 = *(a1 + 32);
  v5 = *MEMORY[0x277D85DE8];

  [v4 _configure];
}

- (void)_reconfigure
{
  cloudPhotosSettingObserver = [(HMDPhotoLibraryPersonImporter *)self cloudPhotosSettingObserver];
  isCloudPhotosEnabled = [cloudPhotosSettingObserver isCloudPhotosEnabled];

  if (isCloudPhotosEnabled && [(HMDPhotoLibraryPersonImporter *)self isThisDesignatedFMFDevice])
  {

    [(HMDPhotoLibraryPersonImporter *)self _configure];
  }

  else
  {

    [(HMDPhotoLibraryPersonImporter *)self _unconfigure];
  }
}

- (void)_handleFMFDeviceChanged
{
  v14 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDPhotoLibraryPersonImporter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    [(HMDPhotoLibraryPersonImporter *)selfCopy isThisDesignatedFMFDevice];
    v8 = HMFBooleanToString();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@FMF device changed, isThisDesignatedFMFDevice: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDPhotoLibraryPersonImporter *)selfCopy _reconfigure];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdatedCloudPhotosSetting
{
  v15 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDPhotoLibraryPersonImporter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  cloudPhotosSettingObserver = [(HMDPhotoLibraryPersonImporter *)self cloudPhotosSettingObserver];
  [cloudPhotosSettingObserver isCloudPhotosEnabled];

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Cloud photos enabled changed to %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDPhotoLibraryPersonImporter *)selfCopy _reconfigure];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_unconfigure
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDPhotoLibraryPersonImporter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Unconfiguring photo library person importer", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  photoLibraryObserver = [(HMDPhotoLibraryPersonImporter *)selfCopy photoLibraryObserver];
  [photoLibraryObserver invalidate];

  [(HMDPhotoLibraryPersonImporter *)selfCopy setPhotoLibraryObserver:0];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_configure
{
  v15 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDPhotoLibraryPersonImporter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Configuring photo library person importer", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  photoLibraryObserverFactory = [(HMDPhotoLibraryPersonImporter *)selfCopy photoLibraryObserverFactory];
  v9 = photoLibraryObserverFactory[2]();
  [(HMDPhotoLibraryPersonImporter *)selfCopy setPhotoLibraryObserver:v9];

  photoLibraryObserver = [(HMDPhotoLibraryPersonImporter *)selfCopy photoLibraryObserver];
  [photoLibraryObserver setDelegate:selfCopy];

  photoLibraryObserver2 = [(HMDPhotoLibraryPersonImporter *)selfCopy photoLibraryObserver];
  [photoLibraryObserver2 configure];

  [(HMDPhotoLibraryPersonImporter *)selfCopy _import];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_registerForNotifications
{
  workQueue = [(HMDPhotoLibraryPersonImporter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  cloudPhotosSettingObserver = [(HMDPhotoLibraryPersonImporter *)self cloudPhotosSettingObserver];
  [defaultCenter addObserver:self selector:sel_handleCloudPhotosEnabledDidChangeNotification_ name:@"HMDCloudPhotoSettingChangedNotification" object:cloudPhotosSettingObserver];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  fmfHandler = [(HMDPhotoLibraryPersonImporter *)self fmfHandler];
  [defaultCenter2 addObserver:self selector:sel_handleFMFDeviceChangedNotification_ name:@"HMDFMFStatusUpdateNotification" object:fmfHandler];
}

- (void)_submitLogEventForFaceCrops:(id)crops
{
  cropsCopy = crops;
  workQueue = [(HMDPhotoLibraryPersonImporter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  logEventSubmitter = [(HMDPhotoLibraryPersonImporter *)self logEventSubmitter];
  v6 = [HMDPhotoLibraryImportingFaceCropsImportedLogEvent alloc];
  allKeys = [cropsCopy allKeys];

  v8 = -[HMDPhotoLibraryImportingFaceCropsImportedLogEvent initWithNumberOfImportedFaceCrops:](v6, "initWithNumberOfImportedFaceCrops:", [allKeys count]);
  [logEventSubmitter submitLogEvent:v8];
}

- (void)_submitLogEventsForUpdatedPersonsWithCurrentPersons:(id)persons previousPersons:(id)previousPersons
{
  v34 = *MEMORY[0x277D85DE8];
  personsCopy = persons;
  previousPersonsCopy = previousPersons;
  workQueue = [(HMDPhotoLibraryPersonImporter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = [personsCopy na_map:&__block_literal_global_26_144939];
  v10 = [v9 count];

  logEventSubmitter = [(HMDPhotoLibraryPersonImporter *)self logEventSubmitter];
  v12 = -[HMDPhotoLibraryImportingPersonsImportedLogEvent initWithTotalNumberOfImportedPersons:numberOfNamedImportedPersons:]([HMDPhotoLibraryImportingPersonsImportedLogEvent alloc], "initWithTotalNumberOfImportedPersons:numberOfNamedImportedPersons:", [personsCopy count], v10);
  [logEventSubmitter submitLogEvent:v12];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = previousPersonsCopy;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * i);
        uUID = [v19 UUID];
        [dictionary setObject:v19 forKeyedSubscript:uUID];
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __101__HMDPhotoLibraryPersonImporter__submitLogEventsForUpdatedPersonsWithCurrentPersons_previousPersons___block_invoke_2;
  v27[3] = &unk_27867B290;
  v28 = dictionary;
  v21 = dictionary;
  v22 = [personsCopy na_filter:v27];
  v23 = [v22 count];

  logEventSubmitter2 = [(HMDPhotoLibraryPersonImporter *)self logEventSubmitter];
  v25 = [[HMDPhotoLibraryImportingPhotoLibraryRenamedPersonsLogEvent alloc] initWithNumberOfRenamedPersons:v23];
  [logEventSubmitter2 submitLogEvent:v25];

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __101__HMDPhotoLibraryPersonImporter__submitLogEventsForUpdatedPersonsWithCurrentPersons_previousPersons___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 UUID];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 name];
  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v3 UUID];
    v10 = [v8 objectForKeyedSubscript:v9];
    v11 = [v10 name];
    v12 = [v3 name];
    v13 = [v11 isEqualToString:v12] ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_importFaceCropsForPerson:(id)person usingCurrentHomeKitFaceCropUUIDs:(id)ds batchChange:(id)change
{
  v95 = *MEMORY[0x277D85DE8];
  personCopy = person;
  dsCopy = ds;
  changeCopy = change;
  workQueue = [(HMDPhotoLibraryPersonImporter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  photoLibrary = [(HMDPhotoLibraryPersonImporter *)self photoLibrary];
  v76 = personCopy;
  externalPersonUUID = [personCopy externalPersonUUID];
  v13 = [photoLibrary fetchFaceCropDataByUUIDForPersonUUID:externalPersonUUID];

  if (v13)
  {
    [(HMDPhotoLibraryPersonImporter *)self _submitLogEventForFaceCrops:v13];
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      uUID = [v76 UUID];
      *buf = 138544130;
      v88 = v17;
      v89 = 2112;
      v90 = uUID;
      v91 = 2048;
      v92 = [v13 count];
      v93 = 2048;
      v94 = [dsCopy count];
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Importing face crops for person with uuid: %@ which has %lu current photos face crops, and %lu previous face crops in HomeKit", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    v19 = MEMORY[0x277CBEB98];
    v72 = v13;
    allKeys = [v13 allKeys];
    v21 = [v19 setWithArray:allKeys];

    v22 = [v21 na_setByRemovingObjectsFromSet:dsCopy];
    v68 = v21;
    v69 = dsCopy;
    v67 = [dsCopy na_setByRemovingObjectsFromSet:v21];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    obj = v22;
    v73 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
    if (v73)
    {
      v71 = *v82;
      do
      {
        for (i = 0; i != v73; i = i + 1)
        {
          if (*v82 != v71)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v81 + 1) + 8 * i);
          v25 = objc_autoreleasePoolPush();
          photoLibrary2 = [(HMDPhotoLibraryPersonImporter *)selfCopy photoLibrary];
          v27 = [v72 objectForKeyedSubscript:v24];
          v28 = [photoLibrary2 faceCropFromFaceCropData:v27];

          if (v28)
          {
            v29 = objc_alloc(MEMORY[0x277CD1C78]);
            dataRepresentation = [v28 dataRepresentation];
            date = [MEMORY[0x277CBEAA8] date];
            [v28 faceBoundingBox];
            v33 = v32;
            v35 = v34;
            v37 = v36;
            v39 = v38;
            uUID2 = [v76 UUID];
            v41 = [v29 initWithUUID:v24 dataRepresentation:dataRepresentation dateCreated:date faceBoundingBox:uUID2 personUUID:{v33, v35, v37, v39}];

            [v41 setSource:1];
            v42 = objc_autoreleasePoolPush();
            v43 = selfCopy;
            v44 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
            {
              v45 = HMFGetLogIdentifier();
              uUID3 = [v76 UUID];
              *buf = 138543874;
              v88 = v45;
              v89 = 2112;
              v90 = uUID3;
              v91 = 2112;
              v92 = v41;
              _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Adding new face crop for person with uuid %@: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v42);
            [changeCopy addOrUpdateFaceCrop:v41];
          }

          else
          {
            v47 = objc_autoreleasePoolPush();
            v48 = selfCopy;
            v49 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              v50 = HMFGetLogIdentifier();
              uUID4 = [v76 UUID];
              *buf = 138543874;
              v88 = v50;
              v89 = 2112;
              v90 = v24;
              v91 = 2112;
              v92 = uUID4;
              _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Did not receive a valid face crop from HomeAI for photos face crop with uuid: %@ for person with uuid: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v47);
          }

          objc_autoreleasePoolPop(v25);
        }

        v73 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
      }

      while (v73);
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v74 = v67;
    v52 = [v74 countByEnumeratingWithState:&v77 objects:v85 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v78;
      do
      {
        for (j = 0; j != v53; ++j)
        {
          if (*v78 != v54)
          {
            objc_enumerationMutation(v74);
          }

          v56 = *(*(&v77 + 1) + 8 * j);
          v57 = objc_autoreleasePoolPush();
          v58 = selfCopy;
          v59 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            v60 = HMFGetLogIdentifier();
            uUID5 = [v76 UUID];
            *buf = 138543874;
            v88 = v60;
            v89 = 2112;
            v90 = uUID5;
            v91 = 2112;
            v92 = v56;
            _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@Removing old face crop for person with uuid %@: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v57);
          [changeCopy removeFaceCropWithUUID:v56];
        }

        v53 = [v74 countByEnumeratingWithState:&v77 objects:v85 count:16];
      }

      while (v53);
    }

    dsCopy = v69;
    v13 = v72;
  }

  else
  {
    v62 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v64 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      v65 = HMFGetLogIdentifier();
      *buf = 138543618;
      v88 = v65;
      v89 = 2112;
      v90 = v76;
      _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_INFO, "%{public}@Photo library query returned nil when querying face crops for person %@, so not modifying their face crops.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v62);
  }

  v66 = *MEMORY[0x277D85DE8];
}

- (id)_importFaceCropsForPersons:(id)persons usingFaceCropUUIDsByPersonUUID:(id)d batchChange:(id)change
{
  v43 = *MEMORY[0x277D85DE8];
  personsCopy = persons;
  dCopy = d;
  changeCopy = change;
  workQueue = [(HMDPhotoLibraryPersonImporter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v40 = v13;
    v41 = 2112;
    v42 = personsCopy;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Importing face crops for Photos persons: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  array = [MEMORY[0x277CBEB18] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = personsCopy;
  v15 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v34 + 1) + 8 * i);
        v20 = MEMORY[0x277D2C900];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __103__HMDPhotoLibraryPersonImporter__importFaceCropsForPersons_usingFaceCropUUIDsByPersonUUID_batchChange___block_invoke;
        v31[3] = &unk_27867B248;
        v31[4] = selfCopy;
        v31[5] = v19;
        v32 = dCopy;
        v33 = changeCopy;
        v21 = MEMORY[0x277D2C938];
        workQueue2 = [(HMDPhotoLibraryPersonImporter *)selfCopy workQueue];
        v23 = [v21 schedulerWithDispatchQueue:workQueue2];
        v24 = [v20 lazyFutureWithBlock:v31 scheduler:v23];

        [array addObject:v24];
      }

      v16 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v16);
  }

  v25 = [MEMORY[0x277D2C900] chainFutures:array];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

void __103__HMDPhotoLibraryPersonImporter__importFaceCropsForPersons_usingFaceCropUUIDsByPersonUUID_batchChange___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2;
  v7 = [v4 UUID];
  v8 = [v5 objectForKeyedSubscript:v7];
  if (v8)
  {
    v10 = a1[7];
    v9 = (a1 + 7);
    [v3 _importFaceCropsForPerson:v4 usingCurrentHomeKitFaceCropUUIDs:v8 batchChange:v10];
  }

  else
  {
    v11 = [MEMORY[0x277CBEB98] set];
    v12 = a1[7];
    v9 = (a1 + 7);
    [v3 _importFaceCropsForPerson:v4 usingCurrentHomeKitFaceCropUUIDs:v11 batchChange:v12];
  }

  v15 = [*v9 commitIfNeeded];
  v13 = [v6 completionHandlerAdapter];

  v14 = [v15 addCompletionBlock:v13];
}

- (id)_importPersonsUsingBatchChange:(id)change
{
  v105 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  workQueue = [(HMDPhotoLibraryPersonImporter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v102 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Importing persons from Photos", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  photoLibrary = [(HMDPhotoLibraryPersonImporter *)selfCopy photoLibrary];
  [photoLibrary fetchPersons];

  photoLibrary2 = [(HMDPhotoLibraryPersonImporter *)selfCopy photoLibrary];
  persons = [photoLibrary2 persons];

  v12 = objc_autoreleasePoolPush();
  v13 = selfCopy;
  v14 = HMFGetOSLogHandle();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (persons)
  {
    if (v15)
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v102 = v16;
      v103 = 2112;
      v104 = persons;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Current Photo Library persons: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v18 = [MEMORY[0x277CBEB58] set];
    v19 = [MEMORY[0x277CBEB58] set];
    dataSource = [(HMDPhotoLibraryPersonImporter *)v13 dataSource];
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __64__HMDPhotoLibraryPersonImporter__importPersonsUsingBatchChange___block_invoke;
    v93[3] = &unk_27867B200;
    v21 = v19;
    v94 = v21;
    v22 = dictionary;
    v95 = v22;
    v96 = v13;
    v71 = v18;
    v97 = v71;
    [dataSource enumeratePersonsUsingBlock:v93];

    v23 = objc_autoreleasePoolPush();
    v24 = v13;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      allValues = [v22 allValues];
      *buf = 138543618;
      v102 = v26;
      v103 = 2112;
      v104 = allValues;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Previous HomeKit persons: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v79 = v24;
    [(HMDPhotoLibraryPersonImporter *)v24 _submitLogEventsForUpdatedPersonsWithCurrentPersons:persons previousPersons:v21];
    v78 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(persons, "count")}];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v73 = persons;
    obj = persons;
    v28 = [obj countByEnumeratingWithState:&v89 objects:v100 count:16];
    v74 = v22;
    if (v28)
    {
      v29 = v28;
      v30 = *v90;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v90 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v89 + 1) + 8 * i);
          uUID = [v32 UUID];
          v34 = [v22 objectForKeyedSubscript:uUID];

          if ([v21 containsObject:v32])
          {
            createHMPerson = [v34 mutableCopy];
            uUID2 = [v32 UUID];
            [createHMPerson setExternalPersonUUID:uUID2];

            [v78 addObject:createHMPerson];
            goto LABEL_22;
          }

          if (v34)
          {
            createHMPerson = [v34 mutableCopy];
            [v32 updateHMPerson:createHMPerson];
            [v78 addObject:createHMPerson];
            v37 = objc_autoreleasePoolPush();
            v38 = v79;
            v39 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              v40 = HMFGetLogIdentifier();
              *buf = 138543618;
              v102 = v40;
              v103 = 2112;
              v104 = createHMPerson;
              v41 = v39;
              v42 = "%{public}@Updating person: %@";
LABEL_20:
              _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, v42, buf, 0x16u);

              v22 = v74;
            }
          }

          else
          {
            createHMPerson = [v32 createHMPerson];
            [v78 addObject:createHMPerson];
            v37 = objc_autoreleasePoolPush();
            v38 = v79;
            v39 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              v40 = HMFGetLogIdentifier();
              *buf = 138543618;
              v102 = v40;
              v103 = 2112;
              v104 = createHMPerson;
              v41 = v39;
              v42 = "%{public}@Adding person: %@";
              goto LABEL_20;
            }
          }

          objc_autoreleasePoolPop(v37);
          [changeCopy addOrUpdatePerson:createHMPerson];
LABEL_22:
        }

        v29 = [obj countByEnumeratingWithState:&v89 objects:v100 count:16];
      }

      while (v29);
    }

    v72 = v21;

    obja = [obj na_map:&__block_literal_global_144966];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    allValues2 = [v22 allValues];
    v43 = [allValues2 countByEnumeratingWithState:&v85 objects:v99 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v86;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v86 != v45)
          {
            objc_enumerationMutation(allValues2);
          }

          v47 = *(*(&v85 + 1) + 8 * j);
          v48 = [[HMDPhotoLibraryPerson alloc] initWithHMPerson:v47];
          uUID3 = [(HMDPhotoLibraryPerson *)v48 UUID];
          v50 = [obja containsObject:uUID3];

          if ((v50 & 1) == 0)
          {
            v51 = objc_autoreleasePoolPush();
            v52 = v79;
            v53 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              v54 = HMFGetLogIdentifier();
              *buf = 138543618;
              v102 = v54;
              v103 = 2112;
              v104 = v47;
              _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Removing person: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v51);
            uUID4 = [v47 UUID];
            [changeCopy removePersonWithUUID:uUID4];
          }
        }

        v44 = [allValues2 countByEnumeratingWithState:&v85 objects:v99 count:16];
      }

      while (v44);
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v56 = v71;
    v57 = [v56 countByEnumeratingWithState:&v81 objects:v98 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v82;
      do
      {
        for (k = 0; k != v58; ++k)
        {
          if (*v82 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v61 = *(*(&v81 + 1) + 8 * k);
          v62 = objc_autoreleasePoolPush();
          v63 = v79;
          v64 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            v65 = HMFGetLogIdentifier();
            *buf = 138543618;
            v102 = v65;
            v103 = 2112;
            v104 = v61;
            _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_INFO, "%{public}@Removing duplicate person: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v62);
          uUID5 = [v61 UUID];
          [changeCopy removePersonWithUUID:uUID5];
        }

        v58 = [v56 countByEnumeratingWithState:&v81 objects:v98 count:16];
      }

      while (v58);
    }

    v67 = [v78 copy];
    persons = v73;
  }

  else
  {
    if (v15)
    {
      v68 = HMFGetLogIdentifier();
      *buf = 138543362;
      v102 = v68;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Photo library query returned nil when querying current photo library persons, so aborting import process", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v67 = 0;
  }

  v69 = *MEMORY[0x277D85DE8];

  return v67;
}

void __64__HMDPhotoLibraryPersonImporter__importPersonsUsingBatchChange___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [[HMDPhotoLibraryPerson alloc] initWithHMPerson:v3];
  [*(a1 + 32) addObject:v4];
  v5 = *(a1 + 40);
  v6 = [(HMDPhotoLibraryPerson *)v4 UUID];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v7 UUID];
    v9 = [v3 UUID];
    v10 = [v8 compare:v9];

    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 48);
    v13 = HMFGetOSLogHandle();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v10 == 1)
    {
      if (v14)
      {
        v15 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v15;
        v26 = 2112;
        v27 = v3;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Ignoring person with duplicate external person UUID: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v16 = *(a1 + 56);
      v17 = v3;
    }

    else
    {
      if (v14)
      {
        v20 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v20;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Ignoring person with duplicate external person UUID: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v21 = *(a1 + 40);
      v22 = [(HMDPhotoLibraryPerson *)v4 UUID];
      [v21 setObject:v3 forKeyedSubscript:v22];

      v16 = *(a1 + 56);
      v17 = v7;
    }

    [v16 addObject:v17];
  }

  else
  {
    v18 = *(a1 + 40);
    v19 = [(HMDPhotoLibraryPerson *)v4 UUID];
    [v18 setObject:v3 forKeyedSubscript:v19];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_import
{
  v40 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDPhotoLibraryPersonImporter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDPhotoLibraryPersonImporter *)self dataSource];
  v5 = dataSource;
  if (dataSource)
  {
    createBatchChange = [dataSource createBatchChange];
    if (createBatchChange)
    {
      if ([(HMDPhotoLibraryPersonImporter *)self hasActiveImport])
      {
        v7 = objc_autoreleasePoolPush();
        selfCopy = self;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          *buf = 138543362;
          v39 = v10;
          _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Queueing import because active import exists", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v7);
        [(HMDPhotoLibraryPersonImporter *)selfCopy setHasQueuedImport:1];
      }

      else
      {
        [(HMDPhotoLibraryPersonImporter *)self setHasActiveImport:1];
        v19 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543362;
          v39 = v22;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Importing persons and face crops from Photos", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        fetchFaceCropUUIDsByPersonUUID = [v5 fetchFaceCropUUIDsByPersonUUID];
        v24 = MEMORY[0x277D2C938];
        workQueue2 = [(HMDPhotoLibraryPersonImporter *)selfCopy2 workQueue];
        v26 = [v24 schedulerWithDispatchQueue:workQueue2];
        v27 = [fetchFaceCropUUIDsByPersonUUID reschedule:v26];
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __40__HMDPhotoLibraryPersonImporter__import__block_invoke;
        v36[3] = &unk_27867B1D8;
        v36[4] = selfCopy2;
        v28 = createBatchChange;
        v37 = v28;
        v29 = [v27 flatMap:v36];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __40__HMDPhotoLibraryPersonImporter__import__block_invoke_9;
        v34[3] = &unk_278680EA0;
        v34[4] = selfCopy2;
        v35 = v28;
        v30 = [v29 flatMap:v34];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __40__HMDPhotoLibraryPersonImporter__import__block_invoke_11;
        v33[3] = &unk_278687CC0;
        v33[4] = selfCopy2;
        v31 = [v30 addCompletionBlock:v33];
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to create batch change for person and face crop import", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Not importing persons and face crops because data source is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v32 = *MEMORY[0x277D85DE8];
}

id __40__HMDPhotoLibraryPersonImporter__import__block_invoke(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v51 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Importing persons and face crops from Photos after fetching current HomeKit persons and face crops", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) _importPersonsUsingBatchChange:*(a1 + 40)];
  if (v8)
  {
    v36 = v3;
    v9 = [v3 mutableCopy];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v35 = v8;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v46;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v46 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v45 + 1) + 8 * i) UUID];
          [v9 setObject:0 forKeyedSubscript:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v12);
    }

    v34 = v10;

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v41 objects:v54 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v42;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v42 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v41 + 1) + 8 * j);
          v22 = objc_autoreleasePoolPush();
          v23 = *(a1 + 32);
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = HMFGetLogIdentifier();
            *buf = 138543618;
            v51 = v25;
            v52 = 2112;
            v53 = v21;
            _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Removing face crops for person that no longer exists: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v22);
          v26 = [v16 objectForKeyedSubscript:v21];
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v27 = [v26 countByEnumeratingWithState:&v37 objects:v49 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v38;
            do
            {
              for (k = 0; k != v28; ++k)
              {
                if (*v38 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                [*(a1 + 40) removeFaceCropWithUUID:*(*(&v37 + 1) + 8 * k)];
              }

              v28 = [v26 countByEnumeratingWithState:&v37 objects:v49 count:16];
            }

            while (v28);
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v41 objects:v54 count:16];
      }

      while (v18);
    }

    v3 = v36;
    v31 = [*(a1 + 32) _importFaceCropsForPersons:v34 usingFaceCropUUIDsByPersonUUID:v36 batchChange:*(a1 + 40)];

    v8 = v35;
  }

  else
  {
    v31 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

id __40__HMDPhotoLibraryPersonImporter__import__block_invoke_9(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v16 = 138543618;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Committing batch change: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [*(a1 + 40) commit];
  v10 = MEMORY[0x277D2C938];
  v11 = [*(a1 + 32) workQueue];
  v12 = [v10 schedulerWithDispatchQueue:v11];
  v13 = [v9 reschedule:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __40__HMDPhotoLibraryPersonImporter__import__block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setHasActiveImport:0];
  if ([*(a1 + 32) hasQueuedImport])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Starting queued import after finishing import", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) setHasQueuedImport:0];
    [*(a1 + 32) _import];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDPhotoLibraryPersonImporter)initWithUUID:(id)d fmfHandler:(id)handler photoLibrary:(id)library workQueue:(id)queue cloudPhotosSettingObserver:(id)observer logEventSubmitter:(id)submitter
{
  dCopy = d;
  handlerCopy = handler;
  libraryCopy = library;
  queueCopy = queue;
  observerCopy = observer;
  submitterCopy = submitter;
  v30.receiver = self;
  v30.super_class = HMDPhotoLibraryPersonImporter;
  v18 = [(HMDPhotoLibraryPersonImporter *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_UUID, d);
    objc_storeStrong(&v19->_workQueue, queue);
    objc_storeStrong(&v19->_fmfHandler, handler);
    objc_storeStrong(&v19->_photoLibrary, library);
    objc_storeStrong(&v19->_cloudPhotosSettingObserver, observer);
    objc_storeStrong(&v19->_logEventSubmitter, submitter);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __125__HMDPhotoLibraryPersonImporter_initWithUUID_fmfHandler_photoLibrary_workQueue_cloudPhotosSettingObserver_logEventSubmitter___block_invoke;
    aBlock[3] = &unk_27867B1B0;
    v27 = dCopy;
    v28 = queueCopy;
    v29 = libraryCopy;
    v20 = _Block_copy(aBlock);
    photoLibraryObserverFactory = v19->_photoLibraryObserverFactory;
    v19->_photoLibraryObserverFactory = v20;
  }

  return v19;
}

HMDPhotoLibraryObserver *__125__HMDPhotoLibraryPersonImporter_initWithUUID_fmfHandler_photoLibrary_workQueue_cloudPhotosSettingObserver_logEventSubmitter___block_invoke(void *a1)
{
  v1 = [[HMDPhotoLibraryObserver alloc] initWithUUID:a1[4] workQueue:a1[5] photoLibrary:a1[6]];

  return v1;
}

- (HMDPhotoLibraryPersonImporter)initWithUUID:(id)d
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dCopy = d;
  v7 = dispatch_queue_create("com.apple.homed.photos.person.importer", v5);

  v8 = [[HMDPhotoLibrary alloc] initWithWorkQueue:v7];
  v9 = +[HMDFMFHandlerFactory sharedHandler];
  v10 = +[HMDCloudPhotosSettingObserver sharedInstance];
  v11 = +[HMDMetricsManager sharedLogEventSubmitter];
  v12 = [(HMDPhotoLibraryPersonImporter *)self initWithUUID:dCopy fmfHandler:v9 photoLibrary:v8 workQueue:v7 cloudPhotosSettingObserver:v10 logEventSubmitter:v11];

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t30_144996 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t30_144996, &__block_literal_global_38_144997);
  }

  v3 = logCategory__hmf_once_v31_144998;

  return v3;
}

void __44__HMDPhotoLibraryPersonImporter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v31_144998;
  logCategory__hmf_once_v31_144998 = v1;
}

@end