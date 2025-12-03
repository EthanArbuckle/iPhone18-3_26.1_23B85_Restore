@interface HMIPersonsModelManager
+ (BOOL)persistModel:(id)model toPath:(id)path error:(id *)error;
+ (BOOL)persistTorsoToFaceCrop:(id)crop forHomeUUID:(id)d error:(id *)error;
+ (BOOL)persistTorsoprinterVersionForHomeUUID:(id)d error:(id *)error;
+ (BOOL)persistUserDefinedPersonLinks:(id)links forHomeUUID:(id)d error:(id *)error;
+ (HMIPersonsModelManager)sharedInstance;
+ (id)faceObservationFromTorsoprint:(id)torsoprint;
+ (id)getModelStoragePathForHome:(id)home error:(id *)error;
+ (id)getModelStoragePathForModel:(id)model error:(id *)error;
+ (id)getRootModelStoragePathWithError:(id *)error;
+ (id)getTorsoModelStoragePathForHomeUUID:(id)d error:(id *)error;
+ (id)getTorsoSubdirectoryPathForHomeUUID:(id)d error:(id *)error;
+ (id)getTorsoToFaceCropStoragePathForHomeUUID:(id)d error:(id *)error;
+ (id)getTorsoprinterVersionStoragePathForHomeUUID:(id)d error:(id *)error;
+ (id)getUserDefinedPersonLinksStoragePathForHomeUUID:(id)d error:(id *)error;
+ (id)loadModelAtPath:(id)path error:(id *)error;
+ (id)loadTorsoToFaceCrop:(id)crop error:(id *)error;
+ (id)loadTorsoprinterVersion:(id)version error:(id *)error;
+ (id)loadUserDefinedPersonLinksForHomeUUID:(id)d error:(id *)error;
+ (id)minimumUUIDInEquivalencyCell:(id)cell;
+ (id)personsModelWithFaceObservationsByID:(id)d error:(id *)error;
- (BOOL)_hasTorsoprinterVersionChangedForHome:(id)home;
- (BOOL)_isTorsoFaceCropMapStale:(id)stale;
- (BOOL)_resetStaleTorsoStateForHome:(id)home torsoToFaceCropMap:(id)map;
- (BOOL)buildPersonsModelForHomeUUID:(id)d sourceUUID:(id)iD externalLibrary:(BOOL)library faceObservationsByPerson:(id)person error:(id *)error;
- (BOOL)loadModelsWithError:(id *)error;
- (BOOL)removePersonsModelForHomeUUID:(id)d sourceUUID:(id)iD error:(id *)error;
- (BOOL)updateTorsoModelForHome:(id)home torsoAnnotations:(id)annotations error:(id *)error;
- (HMIPersonsModelManager)init;
- (id)buildEquivalencyMapForPersonsModels:(id)models userDefinedPersonLinks:(id)links error:(id *)error;
- (id)equivalencyCellForPerson:(id)person homeUUID:(id)d error:(id *)error;
- (id)faceCropFromTorsoModelForHomeUUID:(id)d personUUID:(id)iD sourceUUID:(id)uID;
- (id)homePersonsModelForHomeWithUUID:(id)d;
- (id)linkedPredictionsForPrediction:(id)prediction homeUUID:(id)d error:(id *)error;
- (id)loadPersonsModelFromURL:(id)l externalLibrary:(BOOL)library homeUUID:(id)d error:(id *)error;
- (id)modelURLsFromPath:(id)path error:(id *)error;
- (id)personsModelWithFaceObservations:(id)observations error:(id *)error;
- (id)predictHomePersonFromFaceObservation:(id)observation homeUUID:(id)d error:(id *)error;
- (id)predictPersonFromFaceObservation:(id)observation homeUUID:(id)d error:(id *)error;
- (id)predictPersonFromTorsoObservation:(id)observation homeUUID:(id)d error:(id *)error;
- (id)summaryForHomeUUID:(id)d error:(id *)error;
- (void)_loadTorsoDataForHomeUUID:(id)d intoTorsoModelsByHome:(id)home torsoToFaceCropByHome:(id)byHome;
- (void)_reset;
- (void)reset;
- (void)timerDidFire:(id)fire;
@end

@implementation HMIPersonsModelManager

- (HMIPersonsModelManager)init
{
  v13.receiver = self;
  v13.super_class = HMIPersonsModelManager;
  v2 = [(HMIPersonsModelManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:12 options:30.0];
    watchdogTimer = v3->_watchdogTimer;
    v3->_watchdogTimer = v4;

    [(HMFTimer *)v3->_watchdogTimer setDelegate:v3];
    personsModelsByHome = v3->_personsModelsByHome;
    v3->_personsModelsByHome = 0;

    equivalencyTablesByHome = v3->_equivalencyTablesByHome;
    v3->_equivalencyTablesByHome = 0;

    torsoModelsByHome = v3->_torsoModelsByHome;
    v3->_torsoModelsByHome = 0;

    torsoToFaceCropByHome = v3->_torsoToFaceCropByHome;
    v3->_torsoToFaceCropByHome = 0;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    userDefinedPersonLinksByHome = v3->_userDefinedPersonLinksByHome;
    v3->_userDefinedPersonLinksByHome = dictionary;
  }

  return v3;
}

+ (HMIPersonsModelManager)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[HMIPersonsModelManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __40__HMIPersonsModelManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(HMIPersonsModelManager);

  return MEMORY[0x2821F96F8]();
}

- (id)buildEquivalencyMapForPersonsModels:(id)models userDefinedPersonLinks:(id)links error:(id *)error
{
  linksCopy = links;
  modelsCopy = models;
  v9 = [[HMIPersonsModelEquivalencyTable alloc] initWithPersonsModels:modelsCopy userDefinedPersonLinks:linksCopy error:error];

  return v9;
}

- (id)homePersonsModelForHomeWithUUID:(id)d
{
  dCopy = d;
  personsModelsByHome = [(HMIPersonsModelManager *)self personsModelsByHome];
  v6 = [personsModelsByHome objectForKeyedSubscript:dCopy];

  if (v6)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__6;
    v14 = __Block_byref_object_dispose__6;
    v15 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__HMIPersonsModelManager_homePersonsModelForHomeWithUUID___block_invoke;
    v9[3] = &unk_278754BD0;
    v9[4] = &v10;
    [v6 enumerateKeysAndObjectsUsingBlock:v9];
    v7 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __58__HMIPersonsModelManager_homePersonsModelForHomeWithUUID___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if (([v7 isExternalLibrary] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (id)personsModelWithFaceObservations:(id)observations error:(id *)error
{
  v5 = MEMORY[0x277CBEB38];
  observationsCopy = observations;
  dictionary = [v5 dictionary];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__HMIPersonsModelManager_personsModelWithFaceObservations_error___block_invoke;
  v11[3] = &unk_278754BF8;
  v12 = dictionary;
  v8 = dictionary;
  [observationsCopy enumerateKeysAndObjectsUsingBlock:v11];

  v9 = [HMIPersonsModelManager personsModelWithFaceObservationsByID:v8 error:error];

  return v9;
}

void __65__HMIPersonsModelManager_personsModelWithFaceObservations_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = [a3 allObjects];
  v6 = *(a1 + 32);
  v7 = [v5 UUID];

  v8 = [v7 UUIDString];
  [v6 setObject:v9 forKeyedSubscript:v8];
}

+ (id)personsModelWithFaceObservationsByID:(id)d error:(id *)error
{
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__6;
  v22 = __Block_byref_object_dispose__6;
  v23 = 0;
  v6 = objc_alloc_init(MEMORY[0x277CE2D80]);
  [v6 setMaximumIdentities:80];
  [v6 setMaximumTrainingFaceprintsPerIdentity:20];
  v7 = [objc_alloc(MEMORY[0x277CE2D68]) initWithConfiguration:v6];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__HMIPersonsModelManager_personsModelWithFaceObservationsByID_error___block_invoke;
  v15[3] = &unk_278754C20;
  v8 = v7;
  v16 = v8;
  v17 = &v18;
  [dCopy enumerateKeysAndObjectsUsingBlock:v15];
  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
    v11 = v10;
    if (error)
    {
      v12 = v10;
      *error = v11;
    }

    HMIErrorLogC(v11);

    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  _Block_object_dispose(&v18, 8);

  return v13;
}

void __69__HMIPersonsModelManager_personsModelWithFaceObservationsByID_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v15 = 0;
  v9 = [v8 addFaceObservations:a3 toPersonWithUniqueIdentifier:v7 error:&v15];
  v10 = v15;
  if ((v9 & 1) == 0)
  {
    *a4 = 1;
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error adding faceprints to model for personUUID: %@", v7];
    v12 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1033 description:v11 underlyingError:v10];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

- (BOOL)buildPersonsModelForHomeUUID:(id)d sourceUUID:(id)iD externalLibrary:(BOOL)library faceObservationsByPerson:(id)person error:(id *)error
{
  libraryCopy = library;
  v132 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  personCopy = person;
  if (libraryCopy)
  {
    v13 = 0;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    allKeys = [personCopy allKeys];
    v123[0] = MEMORY[0x277D85DD0];
    v123[1] = 3221225472;
    v123[2] = __113__HMIPersonsModelManager_buildPersonsModelForHomeUUID_sourceUUID_externalLibrary_faceObservationsByPerson_error___block_invoke;
    v123[3] = &unk_278754158;
    v124 = iDCopy;
    v16 = dictionary;
    v125 = v16;
    [allKeys na_each:v123];

    userDefinedPersonLinksByHome = [(HMIPersonsModelManager *)self userDefinedPersonLinksByHome];
    v18 = [userDefinedPersonLinksByHome objectForKeyedSubscript:dCopy];

    if ([v18 isEqualToDictionary:v16])
    {
      v13 = 0;
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v127 = v22;
        v128 = 2112;
        v129 = dCopy;
        _os_log_impl(&dword_22D12F000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Writing updated userDefinedPersonLinksByHome[%@] to disk", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      userDefinedPersonLinksByHome2 = [(HMIPersonsModelManager *)selfCopy userDefinedPersonLinksByHome];
      v24 = [userDefinedPersonLinksByHome2 mutableCopy];

      v25 = [v16 copy];
      [(NSDictionary *)v24 setObject:v25 forKeyedSubscript:dCopy];

      userDefinedPersonLinksByHome = selfCopy->_userDefinedPersonLinksByHome;
      selfCopy->_userDefinedPersonLinksByHome = v24;
      v27 = v24;

      v122 = 0;
      [HMIPersonsModelManager persistUserDefinedPersonLinks:v16 forHomeUUID:dCopy error:&v122];
      v13 = v122;
    }
  }

  v121 = v13;
  v28 = [(HMIPersonsModelManager *)self personsModelWithFaceObservations:personCopy error:&v121];
  v29 = v121;

  if (v28)
  {
    v111 = [[HMIPersonsModel alloc] initWithPersonsModel:v28 homeUUID:dCopy sourceUUID:iDCopy externalLibrary:libraryCopy];
    os_unfair_lock_lock_with_options();
    v120 = v29;
    v30 = [(HMIPersonsModelManager *)self loadModelsWithError:&v120];
    v31 = v120;

    if (!v30)
    {
      v60 = v31;
      v33 = v60;
      if (error)
      {
        v61 = v60;
        *error = v33;
      }

      HMIErrorLog(self, v33);
      v59 = 0;
      v29 = v33;
      goto LABEL_51;
    }

    v32 = [(HMIPersonsModelManager *)self homePersonsModelForHomeWithUUID:dCopy];
    v33 = v32;
    if (libraryCopy || !v32 || ([v32 sourceUUID], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isEqual:", iDCopy), v34, (v35 & 1) != 0))
    {
      v36 = v31;
    }

    else
    {
      v70 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        v72 = HMFGetLogIdentifier();
        sourceUUID = [v33 sourceUUID];
        *buf = 138543874;
        v127 = v72;
        v128 = 2112;
        v129 = dCopy;
        v130 = 2112;
        v131 = sourceUUID;
        _os_log_impl(&dword_22D12F000, v71, OS_LOG_TYPE_INFO, "%{public}@Stale Home VNPersonsModel with homeUUID: %@ sourceUUID: %@ detected, attempting to remove...", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v70);
      v119 = 0;
      v110 = [HMIPersonsModelManager getModelStoragePathForModel:v33 error:&v119];
      v38 = v119;
      if (!v110)
      {
        v84 = MEMORY[0x277CCACA8];
        sourceUUID2 = [v33 sourceUUID];
        v108 = [v84 stringWithFormat:@"Failed to remove stale Home VNPersonsModel with homeUUID: %@ sourceUUID: %@, error getting model storage path", dCopy, sourceUUID2];

        v86 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1033 description:v108 underlyingError:v38];

        v87 = v86;
        v43 = v87;
        if (error)
        {
          v88 = v87;
          *error = v43;
        }

        HMIErrorLog(selfCopy2, v43);
        goto LABEL_47;
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v75 = [defaultManager fileExistsAtPath:v110];

      if (v75)
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v118 = v38;
        v77 = [defaultManager2 removeItemAtPath:v110 error:&v118];
        v78 = v118;

        if ((v77 & 1) == 0)
        {
          v98 = MEMORY[0x277CCACA8];
          sourceUUID3 = [v33 sourceUUID];
          v108 = [v98 stringWithFormat:@"Failed to remove stale Home VNPersonsModel with homeUUID: %@ sourceUUID: %@", dCopy, sourceUUID3];

          v100 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1033 description:v108 underlyingError:v78];

          v101 = v100;
          v43 = v101;
          if (error)
          {
            v102 = v101;
            *error = v43;
          }

          HMIErrorLog(selfCopy2, v43);
          v59 = 0;
          v38 = v78;
          goto LABEL_48;
        }

        v38 = v78;
      }

      else
      {
        v109 = objc_autoreleasePoolPush();
        v90 = selfCopy2;
        v91 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
        {
          v92 = HMFGetLogIdentifier();
          *buf = 138543362;
          v127 = v92;
          _os_log_impl(&dword_22D12F000, v91, OS_LOG_TYPE_INFO, "%{public}@Stale model path no longer on disk, proceeding with building persons model...", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v109);
      }

      personsModelsByHome = selfCopy2->_personsModelsByHome;
      selfCopy2->_personsModelsByHome = 0;

      equivalencyTablesByHome = selfCopy2->_equivalencyTablesByHome;
      selfCopy2->_equivalencyTablesByHome = 0;

      v117 = v31;
      v95 = [(HMIPersonsModelManager *)selfCopy2 loadModelsWithError:&v117];
      v36 = v117;

      if (!v95)
      {
        v96 = v36;
        v29 = v96;
        if (error)
        {
          v97 = v96;
          *error = v29;
        }

        HMIErrorLog(selfCopy2, v29);
        v59 = 0;

        goto LABEL_50;
      }
    }

    v116 = 0;
    v37 = [HMIPersonsModelManager getModelStoragePathForModel:v111 error:&v116];
    v38 = v116;
    v110 = v37;
    if (v37)
    {
      v115 = v38;
      v39 = [HMIPersonsModelManager persistModel:v28 toPath:v37 error:&v115];
      v106 = v115;

      if (v39)
      {
        personsModelsByHome = [(HMIPersonsModelManager *)self personsModelsByHome];
        v41 = [personsModelsByHome objectForKeyedSubscript:dCopy];

        if (v41)
        {
          v42 = v41;
        }

        else
        {
          v42 = MEMORY[0x277CBEC10];
        }

        v43 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v42];
        [v43 setObject:v111 forKeyedSubscript:iDCopy];
        v108 = v42;
        v44 = objc_alloc(MEMORY[0x277CBEB38]);
        personsModelsByHome2 = [(HMIPersonsModelManager *)self personsModelsByHome];
        v105 = [v44 initWithDictionary:personsModelsByHome2];

        v46 = [v43 copy];
        [v105 setObject:v46 forKeyedSubscript:dCopy];

        v47 = [v105 copy];
        v48 = self->_personsModelsByHome;
        self->_personsModelsByHome = v47;

        personsModelsByHome3 = [(HMIPersonsModelManager *)self personsModelsByHome];
        v50 = [personsModelsByHome3 objectForKeyedSubscript:dCopy];
        userDefinedPersonLinksByHome3 = [(HMIPersonsModelManager *)self userDefinedPersonLinksByHome];
        v52 = [userDefinedPersonLinksByHome3 objectForKeyedSubscript:dCopy];
        v114 = v36;
        v104 = [(HMIPersonsModelManager *)self buildEquivalencyMapForPersonsModels:v50 userDefinedPersonLinks:v52 error:&v114];
        v53 = v114;
        v54 = v36;
        v29 = v53;

        v55 = objc_alloc(MEMORY[0x277CBEB38]);
        equivalencyTablesByHome = [(HMIPersonsModelManager *)self equivalencyTablesByHome];
        v57 = [v55 initWithDictionary:equivalencyTablesByHome];

        if (v104)
        {
          [v57 setObject:v104 forKeyedSubscript:dCopy];
        }

        else
        {
          [v57 removeObjectForKey:dCopy];
        }

        v79 = [v57 copy];
        v80 = self->_equivalencyTablesByHome;
        self->_equivalencyTablesByHome = v79;

        context = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v82 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
        {
          v83 = HMFGetLogIdentifier();
          *buf = 138543874;
          v127 = v83;
          v128 = 2112;
          v129 = dCopy;
          v130 = 2112;
          v131 = iDCopy;
          _os_log_impl(&dword_22D12F000, v82, OS_LOG_TYPE_INFO, "%{public}@Persisted VNPersonsModel for homeUUID: %@ sourceUUID: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(context);
        v59 = 1;
        v38 = v106;
        goto LABEL_49;
      }

      v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to persist VNPersonsModel for homeUUID: %@ sourceUUID: %@, path: %@", dCopy, iDCopy, v37];
      v67 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1033 description:v66 underlyingError:v106];
      v108 = v66;

      v68 = v67;
      v43 = v68;
      if (error)
      {
        v69 = v68;
        *error = v43;
      }

      HMIErrorLog(self, v43);
      v59 = 0;
      v38 = v106;
LABEL_48:
      v29 = v43;
LABEL_49:

LABEL_50:
LABEL_51:

      os_unfair_lock_unlock(&self->_lock);
      goto LABEL_52;
    }

    iDCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to persist VNPersonsModel for homeUUID: %@ sourceUUID: %@, error getting model storage path", dCopy, iDCopy];
    v63 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1033 description:iDCopy underlyingError:v38];
    v108 = iDCopy;

    v64 = v63;
    v43 = v64;
    if (error)
    {
      v65 = v64;
      *error = v43;
    }

    HMIErrorLog(self, v43);
LABEL_47:
    v59 = 0;
    goto LABEL_48;
  }

  if (error)
  {
    v58 = v29;
    *error = v29;
  }

  HMIErrorLog(self, v29);
  v59 = 0;
LABEL_52:

  return v59;
}

void __113__HMIPersonsModelManager_buildPersonsModelForHomeUUID_sourceUUID_externalLibrary_faceObservationsByPerson_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 personLinks];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [HMIPersonSourceUUIDPair alloc];
    v6 = [v9 UUID];
    v7 = [(HMIPersonSourceUUIDPair *)v5 initWithPersonUUID:v6 sourceUUID:*(a1 + 32)];

    v8 = [v9 personLinks];
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v7];
  }
}

- (BOOL)removePersonsModelForHomeUUID:(id)d sourceUUID:(id)iD error:(id *)error
{
  v87 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  os_unfair_lock_lock_with_options();
  v80 = 0;
  v10 = [(HMIPersonsModelManager *)self loadModelsWithError:&v80];
  v11 = v80;
  v12 = v11;
  if (v10)
  {
    personsModelsByHome = [(HMIPersonsModelManager *)self personsModelsByHome];
    v14 = [personsModelsByHome objectForKeyedSubscript:dCopy];

    if (v14)
    {
      v15 = [v14 objectForKeyedSubscript:iDCopy];
      if (v15)
      {
        v79 = 0;
        v70 = v15;
        v71 = [HMIPersonsModelManager getModelStoragePathForModel:v15 error:&v79];
        v72 = v79;
        if (v71)
        {
          if (([v70 isExternalLibrary] & 1) == 0)
          {
            v78 = 0;
            v68 = [HMIPersonsModelManager getUserDefinedPersonLinksStoragePathForHomeUUID:dCopy error:&v78];
            v16 = v78;
            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            v77 = v16;
            v18 = [defaultManager removeItemAtPath:v68 error:&v77];
            v66 = v77;

            context = objc_autoreleasePoolPush();
            selfCopy = self;
            if (v18)
            {
              v20 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                v21 = HMFGetLogIdentifier();
                *buf = 138543618;
                v82 = v21;
                v83 = 2112;
                v84 = dCopy;
                _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_INFO, "%{public}@Removed userDefinedPersonLinksByHome for homeUUID: %@", buf, 0x16u);
              }
            }

            else
            {
              v20 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v34 = HMFGetLogIdentifier();
                *buf = 138543618;
                v82 = v34;
                v83 = 2112;
                v84 = v66;
                _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_ERROR, "%{public}@Error removing user defined person links file: %@", buf, 0x16u);
              }
            }

            objc_autoreleasePoolPop(context);
            userDefinedPersonLinksByHome = [(HMIPersonsModelManager *)selfCopy userDefinedPersonLinksByHome];
            v36 = [userDefinedPersonLinksByHome mutableCopy];

            [v36 removeObjectForKey:dCopy];
            v37 = [v36 copy];
            userDefinedPersonLinksByHome = selfCopy->_userDefinedPersonLinksByHome;
            selfCopy->_userDefinedPersonLinksByHome = v37;
          }

          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          v76 = v72;
          v40 = [defaultManager2 removeItemAtPath:v71 error:&v76];
          v67 = v76;

          if (v40)
          {
            v41 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v14];
            [v41 removeObjectForKey:iDCopy];
            v69 = v41;
            v42 = objc_alloc(MEMORY[0x277CBEB38]);
            personsModelsByHome2 = [(HMIPersonsModelManager *)self personsModelsByHome];
            v32 = [v42 initWithDictionary:personsModelsByHome2];

            v44 = [v69 copy];
            [v32 setObject:v44 forKeyedSubscript:dCopy];

            v45 = [v32 copy];
            personsModelsByHome = self->_personsModelsByHome;
            self->_personsModelsByHome = v45;

            personsModelsByHome3 = [(HMIPersonsModelManager *)self personsModelsByHome];
            v47 = [personsModelsByHome3 objectForKeyedSubscript:dCopy];
            userDefinedPersonLinksByHome2 = [(HMIPersonsModelManager *)self userDefinedPersonLinksByHome];
            v49 = [userDefinedPersonLinksByHome2 objectForKeyedSubscript:dCopy];
            v75 = v12;
            contexta = [(HMIPersonsModelManager *)self buildEquivalencyMapForPersonsModels:v47 userDefinedPersonLinks:v49 error:&v75];
            v63 = v75;

            v50 = objc_alloc(MEMORY[0x277CBEB38]);
            equivalencyTablesByHome = [(HMIPersonsModelManager *)self equivalencyTablesByHome];
            v52 = [v50 initWithDictionary:equivalencyTablesByHome];

            if (contexta)
            {
              [v52 setObject:contexta forKeyedSubscript:dCopy];
            }

            else
            {
              [v52 removeObjectForKey:dCopy];
            }

            v57 = [v52 copy];
            equivalencyTablesByHome = self->_equivalencyTablesByHome;
            self->_equivalencyTablesByHome = v57;

            v74 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v60 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
            {
              v61 = HMFGetLogIdentifier();
              *buf = 138543874;
              v82 = v61;
              v83 = 2112;
              v84 = dCopy;
              v85 = 2112;
              v86 = iDCopy;
              _os_log_impl(&dword_22D12F000, v60, OS_LOG_TYPE_INFO, "%{public}@Removed VNPersonsModel for homeUUID: %@ sourceUUID:%@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v74);
            v24 = 1;
            v72 = v67;
            v12 = v63;
            goto LABEL_32;
          }

          v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to remove VNPersonsModel for homeUUID: %@ sourceUUID: %@, path: %@", dCopy, iDCopy, v71];
          v54 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1034 description:v53 underlyingError:v67];
          v69 = v53;

          v55 = v54;
          v32 = v55;
          if (error)
          {
            v56 = v55;
            *error = v32;
          }

          HMIErrorLog(self, v32);
          v24 = 0;
          v72 = v67;
        }

        else
        {
          iDCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to remove VNPersonsModel for homeUUID: %@ sourceUUID: %@, error getting model storage path", dCopy, iDCopy];
          v30 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1034 description:iDCopy underlyingError:v72];
          v69 = iDCopy;

          v31 = v30;
          v32 = v31;
          if (error)
          {
            v33 = v31;
            *error = v32;
          }

          HMIErrorLog(self, v32);
          v24 = 0;
        }

        v12 = v32;
LABEL_32:

        goto LABEL_33;
      }
    }

    v25 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543874;
      v82 = v28;
      v83 = 2112;
      v84 = dCopy;
      v85 = 2112;
      v86 = iDCopy;
      _os_log_impl(&dword_22D12F000, v27, OS_LOG_TYPE_INFO, "%{public}@Did not remove VNPersonsModel for homeUUID: %@ sourceUUID: %@, no model found", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
    v24 = 1;
  }

  else
  {
    v22 = v11;
    v14 = v22;
    if (error)
    {
      v23 = v22;
      *error = v14;
    }

    HMIErrorLog(self, v14);
    v24 = 0;
    v12 = v14;
  }

LABEL_33:

  os_unfair_lock_unlock(&self->_lock);
  return v24;
}

- (id)predictHomePersonFromFaceObservation:(id)observation homeUUID:(id)d error:(id *)error
{
  observationCopy = observation;
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v40 = 0;
  LOBYTE(d) = [(HMIPersonsModelManager *)self loadModelsWithError:&v40];
  v10 = v40;
  v11 = v10;
  if (d)
  {
    v12 = [(HMIPersonsModelManager *)self homePersonsModelForHomeWithUUID:dCopy];
    v13 = v12;
    if (v12)
    {
      visionPersonsModel = [v12 visionPersonsModel];
      v39 = v11;
      v15 = [visionPersonsModel predictPersonFromFaceObservation:observationCopy limit:10 canceller:0 error:&v39];
      v16 = observationCopy;
      v17 = v39;

      if (v15)
      {
        v38 = v15;
        firstObject = [v15 firstObject];
        v19 = objc_alloc(MEMORY[0x277CCAD78]);
        predictedPersonUniqueIdentifier = [firstObject predictedPersonUniqueIdentifier];
        v21 = [v19 initWithUUIDString:predictedPersonUniqueIdentifier];

        v22 = MEMORY[0x277CCABB0];
        [firstObject confidence];
        v23 = [v22 numberWithFloat:?];
        v24 = [HMIPersonsModelPrediction alloc];
        sourceUUID = [v13 sourceUUID];
        v26 = [(HMIPersonsModelPrediction *)v24 initWithSourceUUID:sourceUUID personUUID:v21 confidence:v23 linkedEntityUUID:0];

        v27 = v38;
      }

      else
      {
        v27 = 0;
        firstObject = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to predict using VNPersonsModel for home persons model"];
        v34 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1035 description:firstObject underlyingError:v17];

        v35 = v34;
        v21 = v35;
        if (error)
        {
          v36 = v35;
          *error = v21;
        }

        HMIErrorLog(self, v21);
        v26 = 0;
        v17 = v21;
      }
    }

    else
    {
      dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Home persons model not found for homeUUID: %@", dCopy];
      v31 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1037 description:dCopy];
      v27 = dCopy;

      v32 = v31;
      firstObject = v32;
      if (error)
      {
        v33 = v32;
        *error = firstObject;
      }

      v16 = observationCopy;
      HMIErrorLog(self, firstObject);
      v26 = 0;
      v17 = firstObject;
    }
  }

  else
  {
    v28 = v10;
    v13 = v28;
    if (error)
    {
      v29 = v28;
      *error = v13;
    }

    v16 = observationCopy;
    HMIErrorLog(self, v13);
    v26 = 0;
    v17 = v13;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v26;
}

- (id)equivalencyCellForPerson:(id)person homeUUID:(id)d error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  personCopy = person;
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v35 = 0;
  v9 = [(HMIPersonsModelManager *)self loadModelsWithError:&v35];
  v10 = v35;
  v11 = v10;
  if (v9)
  {
    equivalencyTablesByHome = [(HMIPersonsModelManager *)self equivalencyTablesByHome];
    v13 = [equivalencyTablesByHome objectForKeyedSubscript:dCopy];

    if (v13)
    {
      v14 = v11;
LABEL_9:
      v27 = [v13 equivalencyCellForPerson:personCopy];
      v18 = [v27 copy];

      v16 = v13;
      goto LABEL_10;
    }

    personsModelsByHome = [(HMIPersonsModelManager *)self personsModelsByHome];
    v20 = [personsModelsByHome objectForKeyedSubscript:dCopy];
    userDefinedPersonLinksByHome = [(HMIPersonsModelManager *)self userDefinedPersonLinksByHome];
    v22 = [userDefinedPersonLinksByHome objectForKeyedSubscript:dCopy];
    v34 = v11;
    v13 = [(HMIPersonsModelManager *)self buildEquivalencyMapForPersonsModels:v20 userDefinedPersonLinks:v22 error:&v34];
    v14 = v34;

    v23 = objc_alloc(MEMORY[0x277CBEB38]);
    equivalencyTablesByHome2 = [(HMIPersonsModelManager *)self equivalencyTablesByHome];
    v16 = [v23 initWithDictionary:equivalencyTablesByHome2];

    if (v13)
    {
      [v16 setObject:v13 forKeyedSubscript:dCopy];
      v25 = [v16 copy];
      equivalencyTablesByHome = self->_equivalencyTablesByHome;
      self->_equivalencyTablesByHome = v25;

      goto LABEL_9;
    }

    v29 = objc_autoreleasePoolPush();
    selfCopy = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543874;
      v37 = v32;
      v38 = 2112;
      v39 = dCopy;
      v40 = 2112;
      v41 = v14;
      _os_log_impl(&dword_22D12F000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to build equivalency map for homeUUID: %@, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
    v18 = 0;
  }

  else
  {
    v15 = v10;
    v16 = v15;
    if (error)
    {
      v17 = v15;
      *error = v16;
    }

    HMIErrorLog(self, v16);
    v18 = 0;
    v14 = v16;
  }

LABEL_10:

  os_unfair_lock_unlock(&self->_lock);

  return v18;
}

- (id)predictPersonFromFaceObservation:(id)observation homeUUID:(id)d error:(id *)error
{
  v97 = *MEMORY[0x277D85DE8];
  observationCopy = observation;
  dCopy = d;
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = __Block_byref_object_copy__6;
  v89 = __Block_byref_object_dispose__6;
  v90 = 0;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 1;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__6;
  v79 = __Block_byref_object_dispose__6;
  v80 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__6;
  v73 = __Block_byref_object_dispose__6;
  v74 = 0;
  os_unfair_lock_lock_with_options();
  v10 = v86;
  obj = v86[5];
  v11 = [(HMIPersonsModelManager *)self loadModelsWithError:&obj];
  objc_storeStrong(v10 + 5, obj);
  if (!v11)
  {
    v25 = v86[5];
    v26 = v25;
    if (error)
    {
      v27 = v25;
      *error = v26;
    }

    HMIErrorLog(self, v26);

    goto LABEL_16;
  }

  personsModelsByHome = [(HMIPersonsModelManager *)self personsModelsByHome];
  v13 = [personsModelsByHome objectForKeyedSubscript:dCopy];

  if (!v13)
  {
    v28 = MEMORY[0x277CCACA8];
    personsModelsByHome2 = [(HMIPersonsModelManager *)self personsModelsByHome];
    v30 = @"not";
    if (!personsModelsByHome2)
    {
      v30 = &stru_284057FB8;
    }

    v31 = [v28 stringWithFormat:@"Unable to get person model for homeUUID: %@ (self.personsModelsByHome is %@ nil)", dCopy, v30];

    v32 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1035 description:v31];
    v33 = v86[5];
    v86[5] = v32;

    v34 = v86[5];
    v35 = v34;
    if (error)
    {
      v36 = v34;
      *error = v35;
    }

    HMIErrorLog(self, v35);

LABEL_16:
    os_unfair_lock_unlock(&self->_lock);
LABEL_17:
    v37 = 0;
    goto LABEL_18;
  }

  equivalencyTablesByHome = [(HMIPersonsModelManager *)self equivalencyTablesByHome];
  v15 = [equivalencyTablesByHome objectForKeyedSubscript:dCopy];

  v16 = 0x277CBE000;
  if (!v15)
  {
    userDefinedPersonLinksByHome = [(HMIPersonsModelManager *)self userDefinedPersonLinksByHome];
    v18 = [userDefinedPersonLinksByHome objectForKeyedSubscript:dCopy];

    if (!v18)
    {
      v18 = MEMORY[0x277CBEC10];
    }

    v19 = v86;
    v67 = v86[5];
    v15 = [(HMIPersonsModelManager *)self buildEquivalencyMapForPersonsModels:v13 userDefinedPersonLinks:v18 error:&v67];
    objc_storeStrong(v19 + 5, v67);
    v20 = objc_alloc(MEMORY[0x277CBEB38]);
    equivalencyTablesByHome2 = [(HMIPersonsModelManager *)self equivalencyTablesByHome];
    v22 = [v20 initWithDictionary:equivalencyTablesByHome2];

    if (v15)
    {
      [v22 setObject:v15 forKeyedSubscript:dCopy];
      v23 = [v22 copy];
      equivalencyTablesByHome = self->_equivalencyTablesByHome;
      self->_equivalencyTablesByHome = v23;
    }

    else
    {
      context = objc_autoreleasePoolPush();
      selfCopy = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        v41 = v86[5];
        *buf = 138543874;
        v92 = v40;
        v93 = 2112;
        v94 = dCopy;
        v95 = 2112;
        v96 = v41;
        v53 = v40;
        _os_log_impl(&dword_22D12F000, v39, OS_LOG_TYPE_ERROR, "%{public}@Unable to build equivalency map for homeUUID: %@, error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(context);
    }

    v16 = 0x277CBE000uLL;
  }

  dictionary = [*(v16 + 2872) dictionary];
  v43 = v76[5];
  v76[5] = dictionary;

  v44 = [MEMORY[0x277CBEB58] set];
  v45 = v70[5];
  v70[5] = v44;

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __74__HMIPersonsModelManager_predictPersonFromFaceObservation_homeUUID_error___block_invoke;
  v58[3] = &unk_278754C48;
  v59 = observationCopy;
  v60 = dCopy;
  v63 = &v85;
  v64 = &v81;
  v65 = &v69;
  v46 = v15;
  v61 = v46;
  selfCopy2 = self;
  v66 = &v75;
  [v13 enumerateKeysAndObjectsUsingBlock:v58];

  os_unfair_lock_unlock(&self->_lock);
  if ((v82[3] & 1) == 0)
  {
    v50 = v86[5];
    v51 = v50;
    if (error)
    {
      v52 = v50;
      *error = v51;
    }

    HMIErrorLog(self, v51);

    goto LABEL_17;
  }

  v47 = [MEMORY[0x277CBEB58] set];
  v48 = v76[5];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __74__HMIPersonsModelManager_predictPersonFromFaceObservation_homeUUID_error___block_invoke_280;
  v56[3] = &unk_278754C98;
  v49 = v47;
  v57 = v49;
  [v48 enumerateKeysAndObjectsUsingBlock:v56];
  [v49 unionSet:v70[5]];
  v37 = [v49 copy];

LABEL_18:
  _Block_object_dispose(&v69, 8);

  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(&v85, 8);

  return v37;
}

void __74__HMIPersonsModelManager_predictPersonFromFaceObservation_homeUUID_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [v8 visionPersonsModel];
  v10 = *(a1 + 32);
  v48 = 0;
  v11 = [v9 predictPersonFromFaceObservation:v10 limit:10 canceller:0 error:&v48];
  v12 = v48;

  if (v11)
  {
    v13 = [v11 firstObject];
    if (v13)
    {
      v46 = v12;
      v47 = v8;
      v14 = objc_alloc(MEMORY[0x277CCAD78]);
      v15 = [v13 predictedPersonUniqueIdentifier];
      v16 = [v14 initWithUUIDString:v15];

      v45 = v16;
      v17 = [[HMIPersonSourceUUIDPair alloc] initWithPersonUUID:v16 sourceUUID:v7];
      v18 = [*(a1 + 48) equivalencyCellForPerson:v17];
      if (!v18)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = *(a1 + 56);
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          v23 = *(a1 + 48);
          *buf = 138543874;
          v50 = v22;
          if (v23)
          {
            v24 = @" not";
          }

          else
          {
            v24 = &stru_284057FB8;
          }

          v51 = 2112;
          v52 = v17;
          v53 = 2112;
          v54 = v24;
          _os_log_impl(&dword_22D12F000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failure to lookup equivalency cell for %@ (equivalencyCellForHome is%@ nil)", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v19);
        v18 = [MEMORY[0x277CBEB98] setWithObject:v17];
      }

      v44 = v17;
      v25 = [*(*(*(a1 + 88) + 8) + 40) objectForKeyedSubscript:v18];
      v26 = v25;
      if (!v25 || ([v25 confidence], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "floatValue"), v29 = v28, objc_msgSend(v13, "confidence"), v31 = v30, v27, v29 < v31))
      {
        v32 = objc_alloc(MEMORY[0x277CCAD78]);
        v33 = [v13 predictedPersonUniqueIdentifier];
        v34 = [v32 initWithUUIDString:v33];

        v35 = MEMORY[0x277CCABB0];
        [v13 confidence];
        v36 = [v35 numberWithFloat:?];
        if (v26)
        {
          [v26 linkedEntityUUID];
        }

        else
        {
          [HMIPersonsModelManager minimumUUIDInEquivalencyCell:v18];
        }
        v42 = ;
        v43 = [[HMIPersonsModelPrediction alloc] initWithSourceUUID:v7 personUUID:v34 confidence:v36 linkedEntityUUID:v42];
        [*(*(*(a1 + 88) + 8) + 40) setObject:v43 forKeyedSubscript:v18];
      }

      v12 = v46;
      v8 = v47;
      v41 = v45;
    }

    else
    {
      v40 = *(*(*(a1 + 80) + 8) + 40);
      v41 = [[HMIPersonsModelPrediction alloc] initWithSourceUUID:v7 personUUID:0 confidence:0 linkedEntityUUID:0];
      [v40 addObject:v41];
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to predict using VNPersonsModel for homeUUID: %@ sourceUUID: %@", *(a1 + 40), v7];
    v37 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1035 description:v13 underlyingError:v12];
    v38 = *(*(a1 + 64) + 8);
    v39 = *(v38 + 40);
    *(v38 + 40) = v37;

    *(*(*(a1 + 72) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __74__HMIPersonsModelManager_predictPersonFromFaceObservation_homeUUID_error___block_invoke_280(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__HMIPersonsModelManager_predictPersonFromFaceObservation_homeUUID_error___block_invoke_2;
  v7[3] = &unk_278754C70;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  [a2 enumerateObjectsUsingBlock:v7];
}

void __74__HMIPersonsModelManager_predictPersonFromFaceObservation_homeUUID_error___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 personUUID];
  v4 = [*(a1 + 32) personUUID];
  v5 = [v3 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    v6 = *(a1 + 40);
    v7 = [HMIPersonsModelPrediction alloc];
    v8 = [v13 sourceUUID];
    v9 = [v13 personUUID];
    v10 = [*(a1 + 32) confidence];
    v11 = [*(a1 + 32) linkedEntityUUID];
    v12 = [(HMIPersonsModelPrediction *)v7 initWithSourceUUID:v8 personUUID:v9 confidence:v10 linkedEntityUUID:v11];
    [v6 addObject:v12];
  }

  [*(a1 + 40) addObject:*(a1 + 32)];
}

+ (id)faceObservationFromTorsoprint:(id)torsoprint
{
  v3 = MEMORY[0x277CE2CE0];
  torsoprintCopy = torsoprint;
  v5 = [v3 alloc];
  data = [torsoprintCopy data];

  bytes = [data bytes];
  LODWORD(v8) = 1.0;
  v9 = [v5 initWithData:bytes elementCount:128 elementType:1 lengthInBytes:512 confidence:3 requestRevision:v8];

  v10 = [MEMORY[0x277CE2CD0] faceObservationWithRequestRevision:3 boundingBox:0.0 andAlignedBoundingBox:{0.0, 1.0, 1.0, 0.0, 0.0, 1.0, 1.0}];
  [v10 setFaceprint:v9];

  return v10;
}

- (BOOL)updateTorsoModelForHome:(id)home torsoAnnotations:(id)annotations error:(id *)error
{
  v99 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  annotationsCopy = annotations;
  os_unfair_lock_lock_with_options();
  v90 = 0;
  LOBYTE(annotations) = [(HMIPersonsModelManager *)self loadModelsWithError:&v90];
  v9 = v90;
  v10 = v9;
  if (annotations)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    torsoModelsByHome = [(HMIPersonsModelManager *)self torsoModelsByHome];
    v14 = [torsoModelsByHome objectForKeyedSubscript:homeCopy];

    if (!v14)
    {
      v71 = dictionary2;
LABEL_9:
      v23 = [dictionary mutableCopy];
      v24 = [v71 mutableCopy];
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke_290;
      v83[3] = &unk_278754D80;
      v83[4] = self;
      v25 = v23;
      v84 = v25;
      v69 = v24;
      v85 = v69;
      [annotationsCopy na_each:v83];
      v82 = v10;
      v70 = [HMIPersonsModelManager personsModelWithFaceObservationsByID:v25 error:&v82];
      v26 = v82;

      if (!v70)
      {
        v55 = v26;
        v10 = v55;
        if (error)
        {
          v56 = v55;
          *error = v10;
        }

        HMIErrorLog(self, v10);

        v22 = 0;
        goto LABEL_35;
      }

      v78 = 0;
      v79 = &v78;
      v80 = 0x2020000000;
      v81 = 0;
      allValues = [v25 allValues];
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke_2_297;
      v77[3] = &unk_278754DA8;
      v77[4] = &v78;
      [allValues na_each:v77];

      v28 = objc_autoreleasePoolPush();
      selfCopy = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [v25 count];
        v33 = *(v79 + 6);
        *buf = 138544130;
        v92 = v31;
        v93 = 2048;
        v94 = v32;
        v95 = 1024;
        v96 = v33;
        v97 = 2112;
        v98 = homeCopy;
        _os_log_impl(&dword_22D12F000, v30, OS_LOG_TYPE_INFO, "%{public}@Created new torso model with %lu persons and %d total torsoprints for home: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v28);
      v76 = v26;
      v68 = [HMIPersonsModelManager getTorsoModelStoragePathForHomeUUID:homeCopy error:&v76];
      v34 = v76;

      v75 = v34;
      v35 = [HMIPersonsModelManager persistModel:v70 toPath:v68 error:&v75];
      v36 = v75;

      if (v35)
      {
        v74 = v36;
        v37 = [HMIPersonsModelManager persistTorsoToFaceCrop:v69 forHomeUUID:homeCopy error:&v74];
        v38 = v74;

        if (v37)
        {
          v73 = v38;
          v39 = [HMIPersonsModelManager persistTorsoprinterVersionForHomeUUID:homeCopy error:&v73];
          v10 = v73;

          if (v39)
          {
            v40 = objc_autoreleasePoolPush();
            v41 = selfCopy;
            v42 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              v43 = HMFGetLogIdentifier();
              *buf = 138543618;
              v92 = v43;
              v93 = 2112;
              v94 = homeCopy;
              _os_log_impl(&dword_22D12F000, v42, OS_LOG_TYPE_INFO, "%{public}@Successfully updated torso model and face crop map for home: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v40);
            v44 = MEMORY[0x277CBEB38];
            torsoModelsByHome2 = [(HMIPersonsModelManager *)v41 torsoModelsByHome];
            v46 = [v44 dictionaryWithDictionary:torsoModelsByHome2];

            v47 = MEMORY[0x277CBEB38];
            torsoToFaceCropByHome = [(HMIPersonsModelManager *)v41 torsoToFaceCropByHome];
            v49 = [v47 dictionaryWithDictionary:torsoToFaceCropByHome];

            [v46 setObject:v70 forKeyedSubscript:homeCopy];
            v50 = [v69 copy];
            [v49 setObject:v50 forKeyedSubscript:homeCopy];

            v51 = [v46 copy];
            torsoModelsByHome = v41->_torsoModelsByHome;
            v41->_torsoModelsByHome = v51;

            v53 = [v49 copy];
            torsoToFaceCropByHome = v41->_torsoToFaceCropByHome;
            v41->_torsoToFaceCropByHome = v53;

            v22 = 1;
            goto LABEL_34;
          }

          v65 = v10;
          v46 = v65;
          if (error)
          {
            v66 = v65;
            *error = v46;
          }

          HMIErrorLog(selfCopy, v46);
        }

        else
        {
          v63 = v38;
          v46 = v63;
          if (error)
          {
            v64 = v63;
            *error = v46;
          }

          HMIErrorLog(selfCopy, v46);
        }
      }

      else
      {
        v57 = v36;
        v46 = v57;
        if (error)
        {
          v58 = v57;
          *error = v46;
        }

        HMIErrorLog(selfCopy, v46);
      }

      v22 = 0;
      v10 = v46;
LABEL_34:

      _Block_object_dispose(&v78, 8);
LABEL_35:

      goto LABEL_36;
    }

    torsoToFaceCropByHome2 = [(HMIPersonsModelManager *)self torsoToFaceCropByHome];
    v71 = [torsoToFaceCropByHome2 objectForKeyedSubscript:homeCopy];

    if (v71)
    {
      torsoModelsByHome3 = [(HMIPersonsModelManager *)self torsoModelsByHome];
      v17 = [torsoModelsByHome3 objectForKeyedSubscript:homeCopy];

      personUniqueIdentifiers = [v17 personUniqueIdentifiers];
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke;
      v86[3] = &unk_278754CE0;
      v19 = v17;
      v87 = v19;
      selfCopy2 = self;
      v89 = dictionary;
      [personUniqueIdentifiers na_each:v86];

      goto LABEL_9;
    }

    v59 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v61 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = HMFGetLogIdentifier();
      *buf = 138543618;
      v92 = v62;
      v93 = 2112;
      v94 = homeCopy;
      _os_log_impl(&dword_22D12F000, v61, OS_LOG_TYPE_ERROR, "%{public}@Found nil torsoToFaceCrop for home %@ with non-nil model!", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v59);
    v22 = 0;
  }

  else
  {
    v20 = v9;
    dictionary = v20;
    if (error)
    {
      v21 = v20;
      *error = dictionary;
    }

    HMIErrorLog(self, dictionary);
    v22 = 0;
    v10 = dictionary;
  }

LABEL_36:

  os_unfair_lock_unlock(&self->_lock);
  return v22;
}

void __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v20 = 0;
  v5 = [v4 trainingFaceObservationsForPersonWithUniqueIdentifier:v3 canceller:0 error:&v20];
  v6 = v20;
  if (v5)
  {
    v7 = [v5 sortedArrayUsingComparator:&__block_literal_global_288];

    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v7 count];
      *buf = 138543874;
      v22 = v11;
      v23 = 2112;
      v24 = v3;
      v25 = 2048;
      v26 = v12;
      _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_INFO, "%{public}@Person %@ has %lu torsoprints", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [[HMIPersonSourceUUIDPair alloc] initWithUUIDPairString:v3];
    v14 = *(a1 + 48);
    v15 = [(HMIPersonSourceUUIDPair *)v13 UUIDPairString];
    [v14 setObject:v7 forKeyedSubscript:v15];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 40);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543874;
      v22 = v19;
      v23 = 2112;
      v24 = v3;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_22D12F000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to retrieve torsoprints for person: %@, %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
  }
}

uint64_t __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke_285(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 faceId];
  if (v6 >= [v5 faceId])
  {
    v8 = [v4 faceId];
    v7 = v8 > [v5 faceId];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke_290(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 faceRecognition];
  v43 = [v3 torsoprints];
  v5 = [v4 predictedLinkedEntityUUIDs];
  if (v5 && ([v4 predictedLinkedEntityUUIDs], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hmf_isEmpty"), v6, v5, !v7))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v56 = __Block_byref_object_copy__6;
    v57 = __Block_byref_object_dispose__6;
    v58 = 0;
    v12 = [v4 predictedLinkedEntityUUIDs];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke_291;
    v52[3] = &unk_278754D08;
    v52[4] = buf;
    [v12 na_each:v52];

    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__6;
    v50 = __Block_byref_object_dispose__6;
    v51 = 0;
    v13 = [v4 classifications];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke_2;
    v45[3] = &unk_278754D30;
    v45[4] = buf;
    v45[5] = &v46;
    [v13 enumerateObjectsUsingBlock:v45];

    if (v47[5])
    {
      v14 = [HMIPersonSourceUUIDPair alloc];
      v15 = [v47[5] personUUID];
      v16 = [v47[5] sourceUUID];
      v17 = [(HMIPersonSourceUUIDPair *)v14 initWithPersonUUID:v15 sourceUUID:v16];

      *v53 = 0;
      *&v53[8] = v53;
      *&v53[16] = 0x2020000000;
      v18 = *(a1 + 40);
      v19 = [(HMIPersonSourceUUIDPair *)v17 UUIDPairString];
      v20 = [v18 objectForKeyedSubscript:v19];
      if ([v20 hmf_isEmpty])
      {
        v21 = 0;
      }

      else
      {
        v26 = *(a1 + 40);
        v27 = [(HMIPersonSourceUUIDPair *)v17 UUIDPairString];
        v28 = [v26 objectForKeyedSubscript:v27];
        v29 = [v28 lastObject];
        v21 = [v29 faceId];
      }

      v54 = v21;
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke_294;
      v44[3] = &unk_278754D58;
      v44[4] = v53;
      v30 = [v43 na_map:v44];
      v31 = *(a1 + 40);
      v32 = [(HMIPersonSourceUUIDPair *)v17 UUIDPairString];
      v33 = [v31 objectForKeyedSubscript:v32];

      v34 = *(a1 + 40);
      v35 = [(HMIPersonSourceUUIDPair *)v17 UUIDPairString];
      if (v33)
      {
        v36 = [v34 objectForKeyedSubscript:v35];
        v37 = [v36 arrayByAddingObjectsFromArray:v30];
        v38 = *(a1 + 40);
        v39 = [(HMIPersonSourceUUIDPair *)v17 UUIDPairString];
        [v38 setObject:v37 forKeyedSubscript:v39];
      }

      else
      {
        [v34 setObject:v30 forKeyedSubscript:v35];
      }

      v40 = [*(a1 + 48) objectForKeyedSubscript:v17];
      v41 = v40 == 0;

      if (v41)
      {
        v42 = [v4 faceCrop];
        [*(a1 + 48) setObject:v42 forKeyedSubscript:v17];
      }

      _Block_object_dispose(v53, 8);
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *v53 = 138543618;
        *&v53[4] = v25;
        *&v53[12] = 2112;
        *&v53[14] = v4;
        _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_ERROR, "%{public}@Received torso annotation with no classification corresponding to the linkedEntityUUID: %@", v53, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
    }

    _Block_object_dispose(&v46, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_ERROR, "%{public}@Received torso annotation with no identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

void __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke_291(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  v10 = v4;
  if (v6)
  {
    v7 = [v6 UUIDString];
    v8 = [v10 UUIDString];
    v9 = [v7 compare:v8];

    if (v9 != -1)
    {
      goto LABEL_5;
    }

    v5 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((v5 + 40), a2);
LABEL_5:
}

void __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 personUUID];
  v7 = [v6 isEqual:*(*(*(a1 + 32) + 8) + 40)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

id __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke_294(uint64_t a1, uint64_t a2)
{
  v3 = [HMIPersonsModelManager faceObservationFromTorsoprint:a2];
  ++*(*(*(a1 + 32) + 8) + 24);
  [v3 setFaceId:?];

  return v3;
}

uint64_t __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke_2_297(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (id)faceCropFromTorsoModelForHomeUUID:(id)d personUUID:(id)iD sourceUUID:(id)uID
{
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  os_unfair_lock_lock_with_options();
  v11 = [[HMIPersonSourceUUIDPair alloc] initWithPersonUUID:iDCopy sourceUUID:uIDCopy];
  torsoToFaceCropByHome = [(HMIPersonsModelManager *)self torsoToFaceCropByHome];
  v13 = [torsoToFaceCropByHome objectForKeyedSubscript:dCopy];
  v14 = [v13 objectForKeyedSubscript:v11];

  os_unfair_lock_unlock(&self->_lock);

  return v14;
}

- (BOOL)_resetStaleTorsoStateForHome:(id)home torsoToFaceCropMap:(id)map
{
  v36 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  mapCopy = map;
  if (![(HMIPersonsModelManager *)self _isTorsoFaceCropMapStale:mapCopy]&& ![(HMIPersonsModelManager *)self _hasTorsoprinterVersionChangedForHome:homeCopy])
  {
    v26 = 0;
    goto LABEL_13;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v11;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_INFO, "%{public}@Resetting torso model and wiping data", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v29 = 0;
  v12 = [HMIPersonsModelManager getTorsoModelStoragePathForHomeUUID:homeCopy error:&v29];
  v13 = v29;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v28 = v13;
  v15 = [defaultManager removeItemAtPath:v12 error:&v28];
  v16 = v28;

  v17 = objc_autoreleasePoolPush();
  v18 = selfCopy;
  v19 = HMFGetOSLogHandle();
  v20 = v19;
  if (v15)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v21;
      v32 = 2112;
      v33 = v12;
      v22 = "%{public}@Successfully deleted torso data at path: %@";
      v23 = v20;
      v24 = OS_LOG_TYPE_INFO;
      v25 = 22;
LABEL_10:
      _os_log_impl(&dword_22D12F000, v23, v24, v22, buf, v25);
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543874;
    v31 = v21;
    v32 = 2112;
    v33 = v12;
    v34 = 2112;
    v35 = v16;
    v22 = "%{public}@Failed to delete torso directory at path: %@, error: %@";
    v23 = v20;
    v24 = OS_LOG_TYPE_ERROR;
    v25 = 32;
    goto LABEL_10;
  }

  objc_autoreleasePoolPop(v17);
  v26 = 1;
LABEL_13:

  return v26;
}

- (BOOL)_hasTorsoprinterVersionChangedForHome:(id)home
{
  v18 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v15 = 0;
  v5 = [HMIPersonsModelManager loadTorsoprinterVersion:homeCopy error:&v15];
  v6 = v15;
  if (v5 && (+[HMITorsoprinter currentModelUUID](HMITorsoprinter, "currentModelUUID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v5 hmf_isEqualToUUID:v7], v7, (v8 & 1) != 0))
  {
    v9 = 0;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_INFO, "%{public}@Torso model version on disk doesn't match current version", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 1;
  }

  return v9;
}

- (BOOL)_isTorsoFaceCropMapStale:(id)stale
{
  v25 = *MEMORY[0x277D85DE8];
  staleCopy = stale;
  v5 = staleCopy;
  if (staleCopy)
  {
    allValues = [staleCopy allValues];
    if ([allValues count])
    {
      [MEMORY[0x277CBEAA8] date];
      v17 = 0;
      v18 = &v17;
      v19 = 0x3032000000;
      v20 = __Block_byref_object_copy__6;
      v7 = v21 = __Block_byref_object_dispose__6;
      v22 = v7;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __51__HMIPersonsModelManager__isTorsoFaceCropMapStale___block_invoke;
      v16[3] = &unk_278754DD0;
      v16[4] = &v17;
      [allValues na_each:v16];
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v9 = [currentCalendar isDate:v18[5] inSameDayAsDate:v7];

      if ((v9 & 1) == 0)
      {
        v10 = objc_autoreleasePoolPush();
        selfCopy = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543362;
          v24 = v13;
          _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_INFO, "%{public}@Found stale torso_to_facecrop file", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v10);
      }

      _Block_object_dispose(&v17, 8);

      v14 = v9 ^ 1;
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

void __51__HMIPersonsModelManager__isTorsoFaceCropMapStale___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 dateCreated];
  v3 = [v6 earlierDate:*(*(*(a1 + 32) + 8) + 40)];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)predictPersonFromTorsoObservation:(id)observation homeUUID:(id)d error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  observationCopy = observation;
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v44 = 0;
  LOBYTE(d) = [(HMIPersonsModelManager *)self loadModelsWithError:&v44];
  v8 = v44;
  v9 = v8;
  if (d)
  {
    torsoModelsByHome = [(HMIPersonsModelManager *)self torsoModelsByHome];
    v11 = [torsoModelsByHome objectForKeyedSubscript:dCopy];

    if (v11)
    {
      v38 = [HMIPersonsModelManager faceObservationFromTorsoprint:observationCopy];
      v12 = [v11 predictPersonFromFaceObservation:? limit:? canceller:? error:?];
      v39 = v12;
      v40 = 0;
      if (v12)
      {
        firstObject = [v12 firstObject];
        predictedPersonUniqueIdentifier = [firstObject predictedPersonUniqueIdentifier];
        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          [firstObject confidence];
          *buf = 138543874;
          v46 = v17;
          v47 = 2112;
          v48 = predictedPersonUniqueIdentifier;
          v49 = 2048;
          v50 = v18;
          _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_INFO, "%{public}@Torso model predicted person %@ with confidence %f", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v14);
        v19 = [[HMIPersonSourceUUIDPair alloc] initWithUUIDPairString:predictedPersonUniqueIdentifier];
        v20 = [HMIPersonsModelPrediction alloc];
        sourceUUID = [(HMIPersonSourceUUIDPair *)v19 sourceUUID];
        personUUID = [(HMIPersonSourceUUIDPair *)v19 personUUID];
        v23 = MEMORY[0x277CCABB0];
        [firstObject confidence];
        v24 = [v23 numberWithFloat:?];
        personUUID2 = [(HMIPersonSourceUUIDPair *)v19 personUUID];
        v26 = [(HMIPersonsModelPrediction *)v20 initWithSourceUUID:sourceUUID personUUID:personUUID confidence:v24 linkedEntityUUID:personUUID2];
      }

      else
      {
        dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to predict using torso model for homeUUID: %@", dCopy];
        v34 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1035 description:dCopy underlyingError:v40];
        firstObject = dCopy;

        v35 = v34;
        predictedPersonUniqueIdentifier = v35;
        if (error)
        {
          v36 = v35;
          *error = predictedPersonUniqueIdentifier;
        }

        HMIErrorLog(self, predictedPersonUniqueIdentifier);
        v26 = 0;
        v9 = predictedPersonUniqueIdentifier;
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v46 = v32;
        v47 = 2112;
        v48 = dCopy;
        _os_log_impl(&dword_22D12F000, v31, OS_LOG_TYPE_DEBUG, "%{public}@There is no current torso model for home: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      v26 = 0;
    }
  }

  else
  {
    v27 = v8;
    v11 = v27;
    if (error)
    {
      v28 = v27;
      *error = v11;
    }

    HMIErrorLog(self, v11);
    v26 = 0;
    v9 = v11;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v26;
}

- (id)linkedPredictionsForPrediction:(id)prediction homeUUID:(id)d error:(id *)error
{
  predictionCopy = prediction;
  dCopy = d;
  v10 = [HMIPersonSourceUUIDPair alloc];
  personUUID = [predictionCopy personUUID];
  sourceUUID = [predictionCopy sourceUUID];
  v13 = [(HMIPersonSourceUUIDPair *)v10 initWithPersonUUID:personUUID sourceUUID:sourceUUID];

  v14 = [(HMIPersonsModelManager *)self equivalencyCellForPerson:v13 homeUUID:dCopy error:error];

  if (v14)
  {
    v15 = [HMIPersonsModelManager minimumUUIDInEquivalencyCell:v14];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __72__HMIPersonsModelManager_linkedPredictionsForPrediction_homeUUID_error___block_invoke;
    v19[3] = &unk_278754DF8;
    v20 = predictionCopy;
    v21 = v15;
    v16 = v15;
    v17 = [v14 na_map:v19];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

HMIPersonsModelPrediction *__72__HMIPersonsModelManager_linkedPredictionsForPrediction_homeUUID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMIPersonsModelPrediction alloc];
  v5 = [v3 sourceUUID];
  v6 = [v3 personUUID];

  v7 = [*(a1 + 32) confidence];
  v8 = [(HMIPersonsModelPrediction *)v4 initWithSourceUUID:v5 personUUID:v6 confidence:v7 linkedEntityUUID:*(a1 + 40)];

  return v8;
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  v4 = objc_autoreleasePoolPush();
  os_unfair_lock_lock_with_options();
  [(HMIPersonsModelManager *)self _reset];
  watchdogTimer = [(HMIPersonsModelManager *)self watchdogTimer];
  [watchdogTimer suspend];

  [(HMIPersonsModelManager *)self setTransaction:0];
  os_unfair_lock_unlock(&self->_lock);
  objc_autoreleasePoolPop(v4);
}

+ (id)loadModelAtPath:(id)path error:(id *)error
{
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];
  v6 = objc_opt_new();
  v7 = [MEMORY[0x277CE2D78] modelFromURL:v5 options:v6 error:error];

  return v7;
}

+ (BOOL)persistModel:(id)model toPath:(id)path error:(id *)error
{
  modelCopy = model;
  pathCopy = path;
  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
  uRLByDeletingLastPathComponent = [v9 URLByDeletingLastPathComponent];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [uRLByDeletingLastPathComponent path];
  v13 = [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:error];

  if (v13)
  {
    v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
    v15 = objc_alloc_init(MEMORY[0x277CE2D90]);
    [v15 setReadOnly:0];
    v16 = [modelCopy writeToURL:v14 options:v15 error:error];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)getModelStoragePathForHome:(id)home error:(id *)error
{
  v13[2] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v6 = [HMIPersonsModelManager getRootModelStoragePathWithError:error];
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x277CCACA8];
    v13[0] = v6;
    uUIDString = [homeCopy UUIDString];
    v13[1] = uUIDString;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v11 = [v8 pathWithComponents:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)getModelStoragePathForModel:(id)model error:(id *)error
{
  v17[3] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  homeUUID = [modelCopy homeUUID];
  v7 = [HMIPersonsModelManager getModelStoragePathForHome:homeUUID error:error];

  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v17[0] = v7;
    isExternalLibrary = [modelCopy isExternalLibrary];
    v10 = @"home";
    if (isExternalLibrary)
    {
      v10 = @"external";
    }

    v17[1] = v10;
    v11 = MEMORY[0x277CCACA8];
    sourceUUID = [modelCopy sourceUUID];
    v13 = [v11 stringWithFormat:@"%@.bin", sourceUUID];
    v17[2] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
    v15 = [v8 pathWithComponents:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)getRootModelStoragePathWithError:(id *)error
{
  v3 = HMIURLForCacheDirectory(error);
  if (v3)
  {
    v4 = +[HMIPreference sharedInstance];
    path = [v3 path];
    v6 = [v4 stringPreferenceForKey:@"personsModelStoragePath" defaultValue:path];

    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
    v8 = [v7 URLByAppendingPathComponent:@"personsmodels" isDirectory:1];

    absoluteURL = [v8 absoluteURL];
    path2 = [absoluteURL path];
  }

  else
  {
    path2 = 0;
  }

  return path2;
}

+ (id)getUserDefinedPersonLinksStoragePathForHomeUUID:(id)d error:(id *)error
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = [HMIPersonsModelManager getModelStoragePathForHome:d error:error];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277CCACA8];
    v10[0] = v4;
    v10[1] = @"user_defined_person_links.bin";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    v8 = [v6 pathWithComponents:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)persistUserDefinedPersonLinks:(id)links forHomeUUID:(id)d error:(id *)error
{
  linksCopy = links;
  v8 = [HMIPersonsModelManager getUserDefinedPersonLinksStoragePathForHomeUUID:d error:error];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
    uRLByDeletingLastPathComponent = [v9 URLByDeletingLastPathComponent];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [uRLByDeletingLastPathComponent path];
    v13 = [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:error];

    if (v13)
    {
      v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
      v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:linksCopy requiringSecureCoding:1 error:error];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 writeToURL:v14 atomically:1];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)loadUserDefinedPersonLinksForHomeUUID:(id)d error:(id *)error
{
  v15[4] = *MEMORY[0x277D85DE8];
  v5 = [HMIPersonsModelManager getUserDefinedPersonLinksStoragePathForHomeUUID:d error:?];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v7 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v6 error:error];
    if (v7)
    {
      v8 = MEMORY[0x277CBEB98];
      v15[0] = objc_opt_class();
      v15[1] = objc_opt_class();
      v15[2] = objc_opt_class();
      v15[3] = objc_opt_class();
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
      v10 = [v8 setWithArray:v9];

      v11 = MEMORY[0x277CCAAC8];
      readDataToEndOfFile = [v7 readDataToEndOfFile];
      v13 = [v11 unarchivedObjectOfClasses:v10 fromData:readDataToEndOfFile error:error];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)getTorsoSubdirectoryPathForHomeUUID:(id)d error:(id *)error
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = [HMIPersonsModelManager getModelStoragePathForHome:d error:error];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277CCACA8];
    v10[0] = v4;
    v10[1] = @"torso";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    v8 = [v6 pathWithComponents:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)getTorsoModelStoragePathForHomeUUID:(id)d error:(id *)error
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = [HMIPersonsModelManager getTorsoSubdirectoryPathForHomeUUID:d error:error];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277CCACA8];
    v10[0] = v4;
    v10[1] = @"torso.bin";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    v8 = [v6 pathWithComponents:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)getTorsoToFaceCropStoragePathForHomeUUID:(id)d error:(id *)error
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = [HMIPersonsModelManager getTorsoSubdirectoryPathForHomeUUID:d error:error];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277CCACA8];
    v10[0] = v4;
    v10[1] = @"torso_to_facecrop.bin";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    v8 = [v6 pathWithComponents:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)getTorsoprinterVersionStoragePathForHomeUUID:(id)d error:(id *)error
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = [HMIPersonsModelManager getTorsoSubdirectoryPathForHomeUUID:d error:error];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277CBEBC0];
    v10[0] = v4;
    v10[1] = @"torsoprinter_version.bin";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    v8 = [v6 fileURLWithPathComponents:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)persistTorsoToFaceCrop:(id)crop forHomeUUID:(id)d error:(id *)error
{
  cropCopy = crop;
  v8 = [HMIPersonsModelManager getTorsoToFaceCropStoragePathForHomeUUID:d error:error];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
    uRLByDeletingLastPathComponent = [v9 URLByDeletingLastPathComponent];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [uRLByDeletingLastPathComponent path];
    v13 = [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:error];

    if (v13)
    {
      v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
      v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:cropCopy requiringSecureCoding:1 error:error];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 writeToURL:v14 atomically:1];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (BOOL)persistTorsoprinterVersionForHomeUUID:(id)d error:(id *)error
{
  v5 = [HMIPersonsModelManager getTorsoprinterVersionStoragePathForHomeUUID:d error:?];
  v6 = v5;
  if (v5)
  {
    uRLByDeletingLastPathComponent = [v5 URLByDeletingLastPathComponent];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [uRLByDeletingLastPathComponent path];
    v10 = [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:error];

    if (v10)
    {
      v11 = +[HMITorsoprinter currentModelUUID];
      v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:error];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 writeToURL:v6 atomically:1];
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
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)loadTorsoToFaceCrop:(id)crop error:(id *)error
{
  v15[6] = *MEMORY[0x277D85DE8];
  v5 = [HMIPersonsModelManager getTorsoToFaceCropStoragePathForHomeUUID:crop error:?];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v7 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v6 error:error];
    if (v7)
    {
      v8 = MEMORY[0x277CBEB98];
      v15[0] = objc_opt_class();
      v15[1] = objc_opt_class();
      v15[2] = objc_opt_class();
      v15[3] = objc_opt_class();
      v15[4] = objc_opt_class();
      v15[5] = objc_opt_class();
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:6];
      v10 = [v8 setWithArray:v9];

      v11 = MEMORY[0x277CCAAC8];
      readDataToEndOfFile = [v7 readDataToEndOfFile];
      v13 = [v11 unarchivedObjectOfClasses:v10 fromData:readDataToEndOfFile error:error];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)loadTorsoprinterVersion:(id)version error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = [HMIPersonsModelManager getTorsoprinterVersionStoragePathForHomeUUID:version error:?];
  if (v5)
  {
    v6 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v5 error:error];
    if (v6)
    {
      v7 = MEMORY[0x277CBEB98];
      v14[0] = objc_opt_class();
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
      v9 = [v7 setWithArray:v8];

      v10 = MEMORY[0x277CCAAC8];
      readDataToEndOfFile = [v6 readDataToEndOfFile];
      v12 = [v10 unarchivedObjectOfClasses:v9 fromData:readDataToEndOfFile error:error];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)modelURLsFromPath:(id)path error:(id *)error
{
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v27 = 0;
  v8 = [defaultManager createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:0 error:&v27];
  v9 = v27;
  if (v8)
  {
    pathCopy2 = [MEMORY[0x277CBEBC0] URLWithString:pathCopy];
    v26 = v9;
    v11 = [defaultManager contentsOfDirectoryAtURL:pathCopy2 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:4 error:&v26];
    v12 = v26;

    if (v11)
    {
      v25 = v12;
      v13 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\A[A-F0-9]{8}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{12}\\.bin\\Z" options:0 error:&v25];
      v14 = v25;

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __50__HMIPersonsModelManager_modelURLsFromPath_error___block_invoke;
      v23[3] = &unk_278754E20;
      v24 = v13;
      pathCopy = v13;
      v16 = [v11 na_filter:v23];
      v17 = v24;
      v12 = v14;
    }

    else
    {
      pathCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to enumerate persons models at path (%@)", pathCopy];
      v20 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1032 description:pathCopy underlyingError:v12];
      v17 = v20;
      if (error)
      {
        v21 = v20;
        *error = v17;
      }

      HMIErrorLog(self, v17);
      v16 = 0;
    }

    v9 = v12;
  }

  else
  {
    pathCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Directory to load/store persons models (%@) does not exist", pathCopy];
    v18 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1032 description:pathCopy2 underlyingError:v9];
    v11 = v18;
    if (error)
    {
      v19 = v18;
      *error = v11;
    }

    HMIErrorLog(self, v11);
    v16 = 0;
  }

  return v16;
}

BOOL __50__HMIPersonsModelManager_modelURLsFromPath_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lastPathComponent];
  v4 = [*(a1 + 32) numberOfMatchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}] == 1;

  return v4;
}

- (BOOL)loadModelsWithError:(id *)error
{
  v160 = *MEMORY[0x277D85DE8];
  v5 = +[HMIPreference sharedInstance];
  shouldEnableTorsoRecognition = [v5 shouldEnableTorsoRecognition];

  if (shouldEnableTorsoRecognition)
  {
    torsoModelsByHome = [(HMIPersonsModelManager *)self torsoModelsByHome];
    if (torsoModelsByHome)
    {
      torsoToFaceCropByHome = [(HMIPersonsModelManager *)self torsoToFaceCropByHome];
      v9 = torsoToFaceCropByHome != 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  personsModelsByHome = [(HMIPersonsModelManager *)self personsModelsByHome];

  if (personsModelsByHome && v9)
  {
    watchdogTimer = [(HMIPersonsModelManager *)self watchdogTimer];
    [watchdogTimer kick];

    return 1;
  }

  else
  {
    errorCopy = error;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    v151 = 0;
    v15 = [HMIPersonsModelManager getRootModelStoragePathWithError:&v151];
    v16 = v151;
    v17 = v16;
    if (v15)
    {
      v122 = shouldEnableTorsoRecognition;
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v153 = v21;
        v154 = 2112;
        v155 = v15;
        _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Persons Model Storage Path:%@", buf, 0x16u);
      }

      v130 = selfCopy;
      objc_autoreleasePoolPop(v18);
      v117 = v15;
      v22 = [MEMORY[0x277CBEBC0] URLWithString:v15];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      path = [v22 path];
      v150 = v17;
      v25 = [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v150];
      v26 = v150;

      if (v25)
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v149 = v26;
        v104 = [defaultManager2 contentsOfDirectoryAtURL:v22 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:4 error:&v149];
        v29 = v149;

        if (v104)
        {
          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          v104 = v104;
          v125 = [v104 countByEnumeratingWithState:&v145 objects:v159 count:16];
          if (v125)
          {
            v124 = *v146;
            v119 = dictionary3;
            v120 = dictionary2;
            v118 = v22;
            v121 = v104;
            while (2)
            {
              for (i = 0; i != v125; ++i)
              {
                if (*v146 != v124)
                {
                  objc_enumerationMutation(v104);
                }

                v31 = *(*(&v145 + 1) + 8 * i);
                v32 = objc_alloc(MEMORY[0x277CCAD78]);
                lastPathComponent = [v31 lastPathComponent];
                v34 = [v32 initWithUUIDString:lastPathComponent];

                v133 = v31;
                if (v34)
                {
                  v126 = i;
                  v132 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  v35 = [v31 URLByAppendingPathComponent:@"external"];
                  path2 = [v35 path];

                  v144 = v29;
                  v127 = path2;
                  v37 = [(HMIPersonsModelManager *)v130 modelURLsFromPath:path2 error:&v144];
                  v26 = v144;

                  if (!v37)
                  {
                    if (errorCopy)
                    {
                      v110 = v26;
                      *errorCopy = v26;
                    }

                    HMIErrorLog(v130, v26);
                    goto LABEL_88;
                  }

                  v135 = v34;
                  v142 = 0u;
                  v143 = 0u;
                  v140 = 0u;
                  v141 = 0u;
                  obj = v37;
                  v38 = [obj countByEnumeratingWithState:&v140 objects:v158 count:16];
                  if (v38)
                  {
                    v39 = v38;
                    v40 = *v141;
                    v41 = v130;
                    do
                    {
                      v42 = 0;
                      v43 = v26;
                      do
                      {
                        if (*v141 != v40)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v44 = *(*(&v140 + 1) + 8 * v42);
                        v139 = v43;
                        v45 = [(HMIPersonsModelManager *)v41 loadPersonsModelFromURL:v44 externalLibrary:1 homeUUID:v135 error:&v139];
                        v26 = v139;

                        v46 = objc_autoreleasePoolPush();
                        v47 = v41;
                        v48 = HMFGetOSLogHandle();
                        v49 = v48;
                        if (v45)
                        {
                          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
                          {
                            v50 = HMFGetLogIdentifier();
                            sourceUUID = [v45 sourceUUID];
                            *buf = 138543874;
                            v153 = v50;
                            v154 = 2112;
                            v155 = v135;
                            v156 = 2112;
                            v157 = sourceUUID;
                            _os_log_impl(&dword_22D12F000, v49, OS_LOG_TYPE_INFO, "%{public}@Loaded External HMIPersonsModel for homeUUID: %@ sourceUUID: %@", buf, 0x20u);

                            v41 = v130;
                          }

                          objc_autoreleasePoolPop(v46);
                          sourceUUID2 = [v45 sourceUUID];
                          [v132 setObject:v45 forKeyedSubscript:sourceUUID2];
                        }

                        else
                        {
                          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                          {
                            v53 = HMFGetLogIdentifier();
                            *buf = 138543874;
                            v153 = v53;
                            v154 = 2112;
                            v155 = v44;
                            v156 = 2112;
                            v157 = v26;
                            _os_log_impl(&dword_22D12F000, v49, OS_LOG_TYPE_ERROR, "%{public}@Failed to load External HMIPersonsModel at path: %@, error: %@", buf, 0x20u);

                            v41 = v130;
                          }

                          objc_autoreleasePoolPop(v46);
                        }

                        ++v42;
                        v43 = v26;
                        v54 = v133;
                      }

                      while (v39 != v42);
                      v39 = [obj countByEnumeratingWithState:&v140 objects:v158 count:16];
                    }

                    while (v39);
                  }

                  else
                  {
                    v41 = v130;
                    v54 = v31;
                  }

                  v60 = [v54 URLByAppendingPathComponent:@"home"];
                  path3 = [v60 path];

                  v138 = v26;
                  v62 = [(HMIPersonsModelManager *)v41 modelURLsFromPath:path3 error:&v138];
                  v63 = v138;

                  v34 = v135;
                  if (!v62)
                  {
                    if (errorCopy)
                    {
                      v111 = v63;
                      *errorCopy = v63;
                    }

                    HMIErrorLog(v41, v63);
LABEL_87:

                    v26 = v63;
                    dictionary3 = v119;
                    dictionary2 = v120;
                    v22 = v118;
                    v104 = v121;
LABEL_88:

                    v12 = 0;
                    watchdogTimer2 = v104;
                    goto LABEL_89;
                  }

                  if ([v62 count] >= 2)
                  {
                    v112 = [MEMORY[0x277CCACA8] stringWithFormat:@"Directory to load/store home persons model (%@) contains multiples files: %@ there can only be one", path3, v62];
                    v113 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1032 description:v112 underlyingError:v63];
                    v114 = v113;
                    if (errorCopy)
                    {
                      v115 = v113;
                      *errorCopy = v114;
                    }

                    HMIErrorLog(v41, v114);

                    v34 = v135;
                    goto LABEL_87;
                  }

                  v134 = path3;
                  if ([v62 count])
                  {
                    firstObject = [v62 firstObject];
                    v137 = v63;
                    v65 = [(HMIPersonsModelManager *)v41 loadPersonsModelFromURL:firstObject externalLibrary:0 homeUUID:v135 error:&v137];
                    v66 = v137;

                    v67 = objc_autoreleasePoolPush();
                    v68 = v41;
                    v69 = HMFGetOSLogHandle();
                    v70 = v69;
                    if (v65)
                    {
                      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
                      {
                        HMFGetLogIdentifier();
                        v72 = v71 = v66;
                        sourceUUID3 = [v65 sourceUUID];
                        *buf = 138543874;
                        v153 = v72;
                        v154 = 2112;
                        v155 = v135;
                        v156 = 2112;
                        v157 = sourceUUID3;
                        _os_log_impl(&dword_22D12F000, v70, OS_LOG_TYPE_INFO, "%{public}@Loaded Home HMIPersonsModel for homeUUID: %@ sourceUUID: %@", buf, 0x20u);

                        v41 = v130;
                        v66 = v71;
                      }

                      objc_autoreleasePoolPop(v67);
                      sourceUUID4 = [v65 sourceUUID];
                      [v132 setObject:v65 forKeyedSubscript:sourceUUID4];
                    }

                    else
                    {
                      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                      {
                        HMFGetLogIdentifier();
                        v80 = v79 = v66;
                        *buf = 138543874;
                        v153 = v80;
                        v154 = 2112;
                        v155 = firstObject;
                        v156 = 2112;
                        v157 = v79;
                        _os_log_impl(&dword_22D12F000, v70, OS_LOG_TYPE_ERROR, "%{public}@Failed to load Home HMIPersonsModel at path: %@, error: %@", buf, 0x20u);

                        v66 = v79;
                      }

                      objc_autoreleasePoolPop(v67);
                    }

                    v63 = v66;
                  }

                  else
                  {
                    v75 = objc_autoreleasePoolPush();
                    v76 = v41;
                    v77 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
                    {
                      v78 = HMFGetLogIdentifier();
                      *buf = 138543618;
                      v153 = v78;
                      v154 = 2112;
                      v155 = v135;
                      _os_log_impl(&dword_22D12F000, v77, OS_LOG_TYPE_INFO, "%{public}@No home model found for homeUUID: %@", buf, 0x16u);
                    }

                    objc_autoreleasePoolPop(v75);
                  }

                  v81 = [v132 copy];
                  [dictionary setObject:v81 forKeyedSubscript:v135];

                  v136 = v63;
                  dictionary5 = [HMIPersonsModelManager loadUserDefinedPersonLinksForHomeUUID:v135 error:&v136];
                  v29 = v136;

                  v83 = objc_autoreleasePoolPush();
                  v84 = v41;
                  v85 = HMFGetOSLogHandle();
                  v86 = os_log_type_enabled(v85, OS_LOG_TYPE_INFO);
                  if (dictionary5)
                  {
                    if (v86)
                    {
                      v87 = HMFGetLogIdentifier();
                      v88 = [dictionary5 count];
                      *buf = 138543874;
                      v153 = v87;
                      v154 = 2048;
                      v155 = v88;
                      v156 = 2112;
                      v157 = v135;
                      _os_log_impl(&dword_22D12F000, v85, OS_LOG_TYPE_INFO, "%{public}@Loaded %lu user defined equivalencies found for home: %@", buf, 0x20u);
                    }

                    objc_autoreleasePoolPop(v83);
                  }

                  else
                  {
                    if (v86)
                    {
                      v89 = HMFGetLogIdentifier();
                      [v29 shortDescription];
                      v91 = v90 = v29;
                      *buf = 138543874;
                      v153 = v89;
                      v154 = 2112;
                      v155 = v135;
                      v156 = 2112;
                      v157 = v91;
                      _os_log_impl(&dword_22D12F000, v85, OS_LOG_TYPE_INFO, "%{public}@No user defined equivalencies found for home: %@ (reason: %@)", buf, 0x20u);

                      v29 = v90;
                    }

                    objc_autoreleasePoolPop(v83);
                    dictionary5 = [MEMORY[0x277CBEAC0] dictionary];
                  }

                  dictionary2 = v120;
                  [v120 setObject:dictionary5 forKeyedSubscript:v135];
                  dictionary3 = v119;
                  if (v122)
                  {
                    [(HMIPersonsModelManager *)v84 _loadTorsoDataForHomeUUID:v135 intoTorsoModelsByHome:v119 torsoToFaceCropByHome:dictionary4];
                  }

                  v22 = v118;
                  v104 = v121;
                  i = v126;
                }

                else
                {
                  v55 = objc_autoreleasePoolPush();
                  v56 = v130;
                  v57 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    HMFGetLogIdentifier();
                    v59 = v58 = v29;
                    *buf = 138543618;
                    v153 = v59;
                    v154 = 2112;
                    v155 = v133;
                    _os_log_impl(&dword_22D12F000, v57, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse Home UUID from path: %@", buf, 0x16u);

                    v29 = v58;
                    v104 = v121;
                  }

                  objc_autoreleasePoolPop(v55);
                }
              }

              v125 = [v104 countByEnumeratingWithState:&v145 objects:v159 count:16];
              if (v125)
              {
                continue;
              }

              break;
            }
          }

          v92 = [dictionary copy];
          personsModelsByHome = v130->_personsModelsByHome;
          v130->_personsModelsByHome = v92;

          v94 = [dictionary2 copy];
          userDefinedPersonLinksByHome = v130->_userDefinedPersonLinksByHome;
          v130->_userDefinedPersonLinksByHome = v94;

          v96 = [dictionary3 copy];
          torsoModelsByHome = v130->_torsoModelsByHome;
          v130->_torsoModelsByHome = v96;

          v98 = [dictionary4 copy];
          torsoToFaceCropByHome = v130->_torsoToFaceCropByHome;
          v130->_torsoToFaceCropByHome = v98;

          v100 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"HMIPersonsModelManager"];
          [(HMIPersonsModelManager *)v130 setTransaction:v100];

          watchdogTimer2 = [(HMIPersonsModelManager *)v130 watchdogTimer];
          [watchdogTimer2 resume];
          v12 = 1;
        }

        else
        {
          watchdogTimer2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to enumerate homes at path: %@", v22];
          v107 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1032 description:watchdogTimer2 underlyingError:v29];
          v108 = v107;
          if (errorCopy)
          {
            v109 = v107;
            *errorCopy = v108;
          }

          HMIErrorLog(v130, v108);

          v12 = 0;
        }

        v26 = v29;
      }

      else
      {
        v103 = MEMORY[0x277CCACA8];
        path4 = [v22 path];
        v104 = [v103 stringWithFormat:@"Directory to load/store persons models (%@) does not exist", path4];

        v105 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1032 description:v104 underlyingError:v26];
        watchdogTimer2 = v105;
        if (errorCopy)
        {
          v106 = v105;
          *errorCopy = watchdogTimer2;
        }

        HMIErrorLog(v130, watchdogTimer2);
        v12 = 0;
      }

LABEL_89:

      v17 = v26;
      v15 = v117;
    }

    else
    {
      if (error)
      {
        v102 = v16;
        *error = v17;
      }

      HMIErrorLog(self, v17);
      v12 = 0;
    }
  }

  return v12;
}

- (void)_loadTorsoDataForHomeUUID:(id)d intoTorsoModelsByHome:(id)home torsoToFaceCropByHome:(id)byHome
{
  v47 = *MEMORY[0x277D85DE8];
  dCopy = d;
  homeCopy = home;
  byHomeCopy = byHome;
  v40 = 0;
  v11 = [HMIPersonsModelManager getTorsoModelStoragePathForHomeUUID:dCopy error:&v40];
  v12 = v40;
  if (!v11)
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v27;
      v43 = 2112;
      v44 = v12;
      v28 = "%{public}@Got nil for torso model file path, error: %@";
      v29 = v26;
      v30 = OS_LOG_TYPE_ERROR;
      v31 = 22;
LABEL_13:
      _os_log_impl(&dword_22D12F000, v29, v30, v28, buf, v31);
    }

LABEL_14:

    objc_autoreleasePoolPop(v24);
    goto LABEL_23;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [defaultManager fileExistsAtPath:v11];

  if ((v14 & 1) == 0)
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543874;
      v42 = v27;
      v43 = 2112;
      v44 = dCopy;
      v45 = 2112;
      v46 = v11;
      v28 = "%{public}@No torso model found for home %@ at path: %@";
      v29 = v26;
      v30 = OS_LOG_TYPE_INFO;
      v31 = 32;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v39 = v12;
  v15 = [HMIPersonsModelManager loadTorsoToFaceCrop:dCopy error:&v39];
  v16 = v39;

  if (v15)
  {
    if (![(HMIPersonsModelManager *)self _resetStaleTorsoStateForHome:dCopy torsoToFaceCropMap:v15])
    {
      v38 = v16;
      v17 = [HMIPersonsModelManager loadModelAtPath:v11 error:&v38];
      v18 = v38;

      v19 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v21 = HMFGetOSLogHandle();
      v22 = v21;
      if (v17)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v23 = v36 = v18;
          *buf = 138543618;
          v42 = v23;
          v43 = 2112;
          v44 = dCopy;
          _os_log_impl(&dword_22D12F000, v22, OS_LOG_TYPE_INFO, "%{public}@Successfully loaded torso model and face crop map for home: %@", buf, 0x16u);

          v18 = v36;
        }

        objc_autoreleasePoolPop(v19);
        [homeCopy setObject:v17 forKeyedSubscript:dCopy];
        [byHomeCopy setObject:v15 forKeyedSubscript:dCopy];
      }

      else
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543874;
          v42 = v37;
          v43 = 2112;
          v44 = v11;
          v45 = 2112;
          v46 = v18;
          _os_log_impl(&dword_22D12F000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to load torso model at path: %@, error: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v19);
      }

      v16 = v18;
    }
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v35;
      v43 = 2112;
      v44 = v16;
      _os_log_impl(&dword_22D12F000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to load torsoToFaceCrop map, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
  }

  v12 = v16;
LABEL_23:
}

- (id)loadPersonsModelFromURL:(id)l externalLibrary:(BOOL)library homeUUID:(id)d error:(id *)error
{
  libraryCopy = library;
  lCopy = l;
  dCopy = d;
  uRLByDeletingPathExtension = [lCopy URLByDeletingPathExtension];
  lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:lastPathComponent];
  if (v14)
  {
    pathExtension = [lCopy pathExtension];
    v16 = [pathExtension isEqualToString:@"bin"];

    if (v16)
    {
      v45 = libraryCopy;
      v46 = dCopy;
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      path = [lCopy path];
      v48 = 0;
      v19 = [defaultManager attributesOfItemAtPath:path error:&v48];
      v20 = v48;
      fileSize = [v19 fileSize];

      if (fileSize < 0x2800001)
      {
        path2 = [lCopy path];
        v47 = v20;
        v25 = [HMIPersonsModelManager loadModelAtPath:path2 error:&v47];
        v37 = v47;

        if (v25)
        {
          dCopy = v46;
          v29 = [[HMIPersonsModel alloc] initWithPersonsModel:v25 homeUUID:v46 sourceUUID:v14 externalLibrary:v45];
          v20 = v37;
LABEL_16:

          goto LABEL_17;
        }

        v38 = MEMORY[0x277CCACA8];
        path3 = [lCopy path];
        v40 = [v38 stringWithFormat:@"Failed to load VNPersonsModel at path: %@", path3];

        v41 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1032 description:v40 underlyingError:v37];
        v42 = v41;
        if (error)
        {
          v43 = v41;
          *error = v42;
        }

        HMIErrorLog(self, v42);

        v29 = 0;
        v20 = v37;
      }

      else
      {
        v22 = MEMORY[0x277CCACA8];
        v23 = NSLocalizedFileSizeDescription();
        path4 = [lCopy path];
        v25 = [v22 stringWithFormat:@"Refusing to load %@ VNPersonsModel at path: %@", v23, path4];

        v26 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1032 description:v25 underlyingError:v20];
        v27 = v26;
        if (error)
        {
          v28 = v26;
          *error = v27;
        }

        HMIErrorLog(self, v27);

        v29 = 0;
      }

      dCopy = v46;
      goto LABEL_16;
    }
  }

  v30 = MEMORY[0x277CCACA8];
  path5 = [lCopy path];
  v32 = [v30 stringWithFormat:@"Invalid file path in load model attempt: %@", path5];

  v33 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1032 description:v32];
  v34 = v33;
  if (error)
  {
    v35 = v33;
    *error = v34;
  }

  HMIErrorLog(self, v34);

  v29 = 0;
LABEL_17:

  return v29;
}

- (id)summaryForHomeUUID:(id)d error:(id *)error
{
  dCopy = d;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  os_unfair_lock_lock_with_options();
  v43 = 0;
  v7 = [(HMIPersonsModelManager *)self loadModelsWithError:&v43];
  v8 = v43;
  v9 = v8;
  if (v7)
  {
    personsModelsByHome = [(HMIPersonsModelManager *)self personsModelsByHome];
    v11 = [personsModelsByHome objectForKeyedSubscript:dCopy];

    if (v11)
    {
      v12 = [v11 na_map:&__block_literal_global_357];
      equivalencyTablesByHome = [(HMIPersonsModelManager *)self equivalencyTablesByHome];
      v14 = [equivalencyTablesByHome objectForKeyedSubscript:dCopy];

      if (v14)
      {
LABEL_6:
        v17 = [(HMIPersonsModelManager *)self homePersonsModelForHomeWithUUID:dCopy, v32];
        v40[0] = 0;
        v40[1] = v40;
        v40[2] = 0x3032000000;
        v40[3] = __Block_byref_object_copy__6;
        v40[4] = __Block_byref_object_dispose__6;
        v41 = [MEMORY[0x277CBEB58] set];
        personToEquivalencyCell = [v14 personToEquivalencyCell];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __51__HMIPersonsModelManager_summaryForHomeUUID_error___block_invoke_2;
        v35[3] = &unk_278754E90;
        v19 = v17;
        v36 = v19;
        v37 = &v48;
        v38 = &v44;
        v39 = v40;
        [personToEquivalencyCell enumerateKeysAndObjectsUsingBlock:v35];

        _Block_object_dispose(v40, 8);
        v20 = 1;
        goto LABEL_14;
      }

      personsModelsByHome2 = [(HMIPersonsModelManager *)self personsModelsByHome];
      v33 = [personsModelsByHome2 objectForKeyedSubscript:dCopy];
      userDefinedPersonLinksByHome = [(HMIPersonsModelManager *)self userDefinedPersonLinksByHome];
      v16 = [userDefinedPersonLinksByHome objectForKeyedSubscript:dCopy];
      v42 = v9;
      v14 = [(HMIPersonsModelManager *)self buildEquivalencyMapForPersonsModels:v33 userDefinedPersonLinks:v16 error:&v42];
      v32 = v42;

      if (v14)
      {
        v9 = v32;
        goto LABEL_6;
      }

      v30 = v32;
      v14 = v30;
      if (error)
      {
        v31 = v30;
        *error = v14;
      }

      HMIErrorLog(self, v14);
      v20 = 0;
    }

    else
    {
      v25 = v9;
      v14 = v25;
      if (error)
      {
        v26 = v25;
        *error = v14;
      }

      HMIErrorLog(self, v14);
      v20 = 0;
      v12 = MEMORY[0x277CBEBF8];
    }

    v9 = v14;
LABEL_14:

    os_unfair_lock_unlock(&self->_lock);
    if (v20)
    {
      v27 = [HMIPersonsModelsSummary alloc];
      v28 = [MEMORY[0x277CBEB98] setWithArray:v12];
      v24 = [(HMIPersonsModelsSummary *)v27 initWithModelSummaries:v28 homeToExternalEquivalencies:v49[3] externalToExternalEquivalencies:v45[3]];
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_17;
  }

  v21 = v8;
  v22 = v21;
  if (error)
  {
    v23 = v21;
    *error = v22;
  }

  HMIErrorLog(self, v22);

  os_unfair_lock_unlock(&self->_lock);
  v24 = 0;
  v12 = MEMORY[0x277CBEBF8];
LABEL_17:
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);

  return v24;
}

void __51__HMIPersonsModelManager_summaryForHomeUUID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count] >= 2)
  {
    v7 = [v5 sourceUUID];
    v8 = [*(a1 + 32) sourceUUID];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      *(*(*(a1 + 40) + 8) + 24) = [v6 count] + *(*(*(a1 + 40) + 8) + 24) - 1;
      v10 = [v6 count] - 1;
      *(*(*(a1 + 48) + 8) + 24) += (([v6 count] - 2) * v10) >> 1;
    }

    else
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy__6;
      v20 = __Block_byref_object_dispose__6;
      v21 = 0;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __51__HMIPersonsModelManager_summaryForHomeUUID_error___block_invoke_3;
      v12[3] = &unk_278754E68;
      v14 = &v22;
      v13 = *(a1 + 32);
      v15 = &v16;
      [v6 enumerateObjectsUsingBlock:v12];
      if ((v23[3] & 1) == 0 && ([*(*(*(a1 + 56) + 8) + 40) containsObject:v17[5]] & 1) == 0)
      {
        [*(*(*(a1 + 56) + 8) + 40) addObject:v17[5]];
        v11 = [v6 count];
        *(*(*(a1 + 48) + 8) + 24) += (([v6 count] - 1) * v11) >> 1;
      }

      _Block_object_dispose(&v16, 8);
      _Block_object_dispose(&v22, 8);
    }
  }
}

void __51__HMIPersonsModelManager_summaryForHomeUUID_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sourceUUID];
  v5 = [*(a1 + 32) sourceUUID];
  *(*(*(a1 + 40) + 8) + 24) = [v4 isEqual:v5];

  obj = [v3 personUUID];

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = [v7 UUIDString];
    v9 = [obj UUIDString];
    v10 = [v8 compare:v9];

    if (v10 != -1)
    {
      goto LABEL_6;
    }

    v11 = obj;
    v6 = *(*(a1 + 48) + 8);
  }

  else
  {
    v11 = obj;
  }

  objc_storeStrong((v6 + 40), v11);
LABEL_6:
}

+ (id)minimumUUIDInEquivalencyCell:(id)cell
{
  cellCopy = cell;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__HMIPersonsModelManager_minimumUUIDInEquivalencyCell___block_invoke;
  v6[3] = &unk_278754EB8;
  v6[4] = &v7;
  [cellCopy enumerateObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __55__HMIPersonsModelManager_minimumUUIDInEquivalencyCell___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 personUUID];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  obj = v3;
  if (v5)
  {
    v6 = [v5 UUIDString];
    v7 = [obj UUIDString];
    v8 = [v6 compare:v7];

    if (v8 != -1)
    {
      goto LABEL_5;
    }

    v4 = *(*(a1 + 32) + 8);
    v3 = obj;
  }

  objc_storeStrong((v4 + 40), v3);
LABEL_5:
}

- (void)reset
{
  os_unfair_lock_lock_with_options();
  [(HMIPersonsModelManager *)self _reset];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_reset
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting HMIPersonsModelManager", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  personsModelsByHome = selfCopy->_personsModelsByHome;
  selfCopy->_personsModelsByHome = 0;

  equivalencyTablesByHome = selfCopy->_equivalencyTablesByHome;
  selfCopy->_equivalencyTablesByHome = 0;

  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  userDefinedPersonLinksByHome = selfCopy->_userDefinedPersonLinksByHome;
  selfCopy->_userDefinedPersonLinksByHome = dictionary;

  torsoModelsByHome = selfCopy->_torsoModelsByHome;
  selfCopy->_torsoModelsByHome = 0;

  torsoToFaceCropByHome = selfCopy->_torsoToFaceCropByHome;
  selfCopy->_torsoToFaceCropByHome = 0;
}

@end