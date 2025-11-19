@interface HMIPersonsModelManager
+ (BOOL)persistModel:(id)a3 toPath:(id)a4 error:(id *)a5;
+ (BOOL)persistTorsoToFaceCrop:(id)a3 forHomeUUID:(id)a4 error:(id *)a5;
+ (BOOL)persistTorsoprinterVersionForHomeUUID:(id)a3 error:(id *)a4;
+ (BOOL)persistUserDefinedPersonLinks:(id)a3 forHomeUUID:(id)a4 error:(id *)a5;
+ (HMIPersonsModelManager)sharedInstance;
+ (id)faceObservationFromTorsoprint:(id)a3;
+ (id)getModelStoragePathForHome:(id)a3 error:(id *)a4;
+ (id)getModelStoragePathForModel:(id)a3 error:(id *)a4;
+ (id)getRootModelStoragePathWithError:(id *)a3;
+ (id)getTorsoModelStoragePathForHomeUUID:(id)a3 error:(id *)a4;
+ (id)getTorsoSubdirectoryPathForHomeUUID:(id)a3 error:(id *)a4;
+ (id)getTorsoToFaceCropStoragePathForHomeUUID:(id)a3 error:(id *)a4;
+ (id)getTorsoprinterVersionStoragePathForHomeUUID:(id)a3 error:(id *)a4;
+ (id)getUserDefinedPersonLinksStoragePathForHomeUUID:(id)a3 error:(id *)a4;
+ (id)loadModelAtPath:(id)a3 error:(id *)a4;
+ (id)loadTorsoToFaceCrop:(id)a3 error:(id *)a4;
+ (id)loadTorsoprinterVersion:(id)a3 error:(id *)a4;
+ (id)loadUserDefinedPersonLinksForHomeUUID:(id)a3 error:(id *)a4;
+ (id)minimumUUIDInEquivalencyCell:(id)a3;
+ (id)personsModelWithFaceObservationsByID:(id)a3 error:(id *)a4;
- (BOOL)_hasTorsoprinterVersionChangedForHome:(id)a3;
- (BOOL)_isTorsoFaceCropMapStale:(id)a3;
- (BOOL)_resetStaleTorsoStateForHome:(id)a3 torsoToFaceCropMap:(id)a4;
- (BOOL)buildPersonsModelForHomeUUID:(id)a3 sourceUUID:(id)a4 externalLibrary:(BOOL)a5 faceObservationsByPerson:(id)a6 error:(id *)a7;
- (BOOL)loadModelsWithError:(id *)a3;
- (BOOL)removePersonsModelForHomeUUID:(id)a3 sourceUUID:(id)a4 error:(id *)a5;
- (BOOL)updateTorsoModelForHome:(id)a3 torsoAnnotations:(id)a4 error:(id *)a5;
- (HMIPersonsModelManager)init;
- (id)buildEquivalencyMapForPersonsModels:(id)a3 userDefinedPersonLinks:(id)a4 error:(id *)a5;
- (id)equivalencyCellForPerson:(id)a3 homeUUID:(id)a4 error:(id *)a5;
- (id)faceCropFromTorsoModelForHomeUUID:(id)a3 personUUID:(id)a4 sourceUUID:(id)a5;
- (id)homePersonsModelForHomeWithUUID:(id)a3;
- (id)linkedPredictionsForPrediction:(id)a3 homeUUID:(id)a4 error:(id *)a5;
- (id)loadPersonsModelFromURL:(id)a3 externalLibrary:(BOOL)a4 homeUUID:(id)a5 error:(id *)a6;
- (id)modelURLsFromPath:(id)a3 error:(id *)a4;
- (id)personsModelWithFaceObservations:(id)a3 error:(id *)a4;
- (id)predictHomePersonFromFaceObservation:(id)a3 homeUUID:(id)a4 error:(id *)a5;
- (id)predictPersonFromFaceObservation:(id)a3 homeUUID:(id)a4 error:(id *)a5;
- (id)predictPersonFromTorsoObservation:(id)a3 homeUUID:(id)a4 error:(id *)a5;
- (id)summaryForHomeUUID:(id)a3 error:(id *)a4;
- (void)_loadTorsoDataForHomeUUID:(id)a3 intoTorsoModelsByHome:(id)a4 torsoToFaceCropByHome:(id)a5;
- (void)_reset;
- (void)reset;
- (void)timerDidFire:(id)a3;
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

    v10 = [MEMORY[0x277CBEB38] dictionary];
    userDefinedPersonLinksByHome = v3->_userDefinedPersonLinksByHome;
    v3->_userDefinedPersonLinksByHome = v10;
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

- (id)buildEquivalencyMapForPersonsModels:(id)a3 userDefinedPersonLinks:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[HMIPersonsModelEquivalencyTable alloc] initWithPersonsModels:v8 userDefinedPersonLinks:v7 error:a5];

  return v9;
}

- (id)homePersonsModelForHomeWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMIPersonsModelManager *)self personsModelsByHome];
  v6 = [v5 objectForKeyedSubscript:v4];

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

- (id)personsModelWithFaceObservations:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a3;
  v7 = [v5 dictionary];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__HMIPersonsModelManager_personsModelWithFaceObservations_error___block_invoke;
  v11[3] = &unk_278754BF8;
  v12 = v7;
  v8 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v11];

  v9 = [HMIPersonsModelManager personsModelWithFaceObservationsByID:v8 error:a4];

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

+ (id)personsModelWithFaceObservationsByID:(id)a3 error:(id *)a4
{
  v5 = a3;
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
  [v5 enumerateKeysAndObjectsUsingBlock:v15];
  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
    v11 = v10;
    if (a4)
    {
      v12 = v10;
      *a4 = v11;
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

- (BOOL)buildPersonsModelForHomeUUID:(id)a3 sourceUUID:(id)a4 externalLibrary:(BOOL)a5 faceObservationsByPerson:(id)a6 error:(id *)a7
{
  v9 = a5;
  v132 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v113 = a4;
  v112 = a6;
  if (v9)
  {
    v13 = 0;
  }

  else
  {
    v14 = [MEMORY[0x277CBEB38] dictionary];
    v15 = [v112 allKeys];
    v123[0] = MEMORY[0x277D85DD0];
    v123[1] = 3221225472;
    v123[2] = __113__HMIPersonsModelManager_buildPersonsModelForHomeUUID_sourceUUID_externalLibrary_faceObservationsByPerson_error___block_invoke;
    v123[3] = &unk_278754158;
    v124 = v113;
    v16 = v14;
    v125 = v16;
    [v15 na_each:v123];

    v17 = [(HMIPersonsModelManager *)self userDefinedPersonLinksByHome];
    v18 = [v17 objectForKeyedSubscript:v12];

    if ([v18 isEqualToDictionary:v16])
    {
      v13 = 0;
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v127 = v22;
        v128 = 2112;
        v129 = v12;
        _os_log_impl(&dword_22D12F000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Writing updated userDefinedPersonLinksByHome[%@] to disk", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v23 = [(HMIPersonsModelManager *)v20 userDefinedPersonLinksByHome];
      v24 = [v23 mutableCopy];

      v25 = [v16 copy];
      [(NSDictionary *)v24 setObject:v25 forKeyedSubscript:v12];

      userDefinedPersonLinksByHome = v20->_userDefinedPersonLinksByHome;
      v20->_userDefinedPersonLinksByHome = v24;
      v27 = v24;

      v122 = 0;
      [HMIPersonsModelManager persistUserDefinedPersonLinks:v16 forHomeUUID:v12 error:&v122];
      v13 = v122;
    }
  }

  v121 = v13;
  v28 = [(HMIPersonsModelManager *)self personsModelWithFaceObservations:v112 error:&v121];
  v29 = v121;

  if (v28)
  {
    v111 = [[HMIPersonsModel alloc] initWithPersonsModel:v28 homeUUID:v12 sourceUUID:v113 externalLibrary:v9];
    os_unfair_lock_lock_with_options();
    v120 = v29;
    v30 = [(HMIPersonsModelManager *)self loadModelsWithError:&v120];
    v31 = v120;

    if (!v30)
    {
      v60 = v31;
      v33 = v60;
      if (a7)
      {
        v61 = v60;
        *a7 = v33;
      }

      HMIErrorLog(self, v33);
      v59 = 0;
      v29 = v33;
      goto LABEL_51;
    }

    v32 = [(HMIPersonsModelManager *)self homePersonsModelForHomeWithUUID:v12];
    v33 = v32;
    if (v9 || !v32 || ([v32 sourceUUID], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isEqual:", v113), v34, (v35 & 1) != 0))
    {
      v36 = v31;
    }

    else
    {
      v70 = objc_autoreleasePoolPush();
      v107 = self;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        v72 = HMFGetLogIdentifier();
        v73 = [v33 sourceUUID];
        *buf = 138543874;
        v127 = v72;
        v128 = 2112;
        v129 = v12;
        v130 = 2112;
        v131 = v73;
        _os_log_impl(&dword_22D12F000, v71, OS_LOG_TYPE_INFO, "%{public}@Stale Home VNPersonsModel with homeUUID: %@ sourceUUID: %@ detected, attempting to remove...", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v70);
      v119 = 0;
      v110 = [HMIPersonsModelManager getModelStoragePathForModel:v33 error:&v119];
      v38 = v119;
      if (!v110)
      {
        v84 = MEMORY[0x277CCACA8];
        v85 = [v33 sourceUUID];
        v108 = [v84 stringWithFormat:@"Failed to remove stale Home VNPersonsModel with homeUUID: %@ sourceUUID: %@, error getting model storage path", v12, v85];

        v86 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1033 description:v108 underlyingError:v38];

        v87 = v86;
        v43 = v87;
        if (a7)
        {
          v88 = v87;
          *a7 = v43;
        }

        HMIErrorLog(v107, v43);
        goto LABEL_47;
      }

      v74 = [MEMORY[0x277CCAA00] defaultManager];
      v75 = [v74 fileExistsAtPath:v110];

      if (v75)
      {
        v76 = [MEMORY[0x277CCAA00] defaultManager];
        v118 = v38;
        v77 = [v76 removeItemAtPath:v110 error:&v118];
        v78 = v118;

        if ((v77 & 1) == 0)
        {
          v98 = MEMORY[0x277CCACA8];
          v99 = [v33 sourceUUID];
          v108 = [v98 stringWithFormat:@"Failed to remove stale Home VNPersonsModel with homeUUID: %@ sourceUUID: %@", v12, v99];

          v100 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1033 description:v108 underlyingError:v78];

          v101 = v100;
          v43 = v101;
          if (a7)
          {
            v102 = v101;
            *a7 = v43;
          }

          HMIErrorLog(v107, v43);
          v59 = 0;
          v38 = v78;
          goto LABEL_48;
        }

        v38 = v78;
      }

      else
      {
        v109 = objc_autoreleasePoolPush();
        v90 = v107;
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

      personsModelsByHome = v107->_personsModelsByHome;
      v107->_personsModelsByHome = 0;

      equivalencyTablesByHome = v107->_equivalencyTablesByHome;
      v107->_equivalencyTablesByHome = 0;

      v117 = v31;
      v95 = [(HMIPersonsModelManager *)v107 loadModelsWithError:&v117];
      v36 = v117;

      if (!v95)
      {
        v96 = v36;
        v29 = v96;
        if (a7)
        {
          v97 = v96;
          *a7 = v29;
        }

        HMIErrorLog(v107, v29);
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
        v40 = [(HMIPersonsModelManager *)self personsModelsByHome];
        v41 = [v40 objectForKeyedSubscript:v12];

        if (v41)
        {
          v42 = v41;
        }

        else
        {
          v42 = MEMORY[0x277CBEC10];
        }

        v43 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v42];
        [v43 setObject:v111 forKeyedSubscript:v113];
        v108 = v42;
        v44 = objc_alloc(MEMORY[0x277CBEB38]);
        v45 = [(HMIPersonsModelManager *)self personsModelsByHome];
        v105 = [v44 initWithDictionary:v45];

        v46 = [v43 copy];
        [v105 setObject:v46 forKeyedSubscript:v12];

        v47 = [v105 copy];
        v48 = self->_personsModelsByHome;
        self->_personsModelsByHome = v47;

        v49 = [(HMIPersonsModelManager *)self personsModelsByHome];
        v50 = [v49 objectForKeyedSubscript:v12];
        v51 = [(HMIPersonsModelManager *)self userDefinedPersonLinksByHome];
        v52 = [v51 objectForKeyedSubscript:v12];
        v114 = v36;
        v104 = [(HMIPersonsModelManager *)self buildEquivalencyMapForPersonsModels:v50 userDefinedPersonLinks:v52 error:&v114];
        v53 = v114;
        v54 = v36;
        v29 = v53;

        v55 = objc_alloc(MEMORY[0x277CBEB38]);
        v56 = [(HMIPersonsModelManager *)self equivalencyTablesByHome];
        v57 = [v55 initWithDictionary:v56];

        if (v104)
        {
          [v57 setObject:v104 forKeyedSubscript:v12];
        }

        else
        {
          [v57 removeObjectForKey:v12];
        }

        v79 = [v57 copy];
        v80 = self->_equivalencyTablesByHome;
        self->_equivalencyTablesByHome = v79;

        context = objc_autoreleasePoolPush();
        v81 = self;
        v82 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
        {
          v83 = HMFGetLogIdentifier();
          *buf = 138543874;
          v127 = v83;
          v128 = 2112;
          v129 = v12;
          v130 = 2112;
          v131 = v113;
          _os_log_impl(&dword_22D12F000, v82, OS_LOG_TYPE_INFO, "%{public}@Persisted VNPersonsModel for homeUUID: %@ sourceUUID: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(context);
        v59 = 1;
        v38 = v106;
        goto LABEL_49;
      }

      v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to persist VNPersonsModel for homeUUID: %@ sourceUUID: %@, path: %@", v12, v113, v37];
      v67 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1033 description:v66 underlyingError:v106];
      v108 = v66;

      v68 = v67;
      v43 = v68;
      if (a7)
      {
        v69 = v68;
        *a7 = v43;
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

    v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to persist VNPersonsModel for homeUUID: %@ sourceUUID: %@, error getting model storage path", v12, v113];
    v63 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1033 description:v62 underlyingError:v38];
    v108 = v62;

    v64 = v63;
    v43 = v64;
    if (a7)
    {
      v65 = v64;
      *a7 = v43;
    }

    HMIErrorLog(self, v43);
LABEL_47:
    v59 = 0;
    goto LABEL_48;
  }

  if (a7)
  {
    v58 = v29;
    *a7 = v29;
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

- (BOOL)removePersonsModelForHomeUUID:(id)a3 sourceUUID:(id)a4 error:(id *)a5
{
  v87 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  os_unfair_lock_lock_with_options();
  v80 = 0;
  v10 = [(HMIPersonsModelManager *)self loadModelsWithError:&v80];
  v11 = v80;
  v12 = v11;
  if (v10)
  {
    v13 = [(HMIPersonsModelManager *)self personsModelsByHome];
    v14 = [v13 objectForKeyedSubscript:v8];

    if (v14)
    {
      v15 = [v14 objectForKeyedSubscript:v9];
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
            v68 = [HMIPersonsModelManager getUserDefinedPersonLinksStoragePathForHomeUUID:v8 error:&v78];
            v16 = v78;
            v17 = [MEMORY[0x277CCAA00] defaultManager];
            v77 = v16;
            v18 = [v17 removeItemAtPath:v68 error:&v77];
            v66 = v77;

            context = objc_autoreleasePoolPush();
            v19 = self;
            if (v18)
            {
              v20 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                v21 = HMFGetLogIdentifier();
                *buf = 138543618;
                v82 = v21;
                v83 = 2112;
                v84 = v8;
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
            v35 = [(HMIPersonsModelManager *)v19 userDefinedPersonLinksByHome];
            v36 = [v35 mutableCopy];

            [v36 removeObjectForKey:v8];
            v37 = [v36 copy];
            userDefinedPersonLinksByHome = v19->_userDefinedPersonLinksByHome;
            v19->_userDefinedPersonLinksByHome = v37;
          }

          v39 = [MEMORY[0x277CCAA00] defaultManager];
          v76 = v72;
          v40 = [v39 removeItemAtPath:v71 error:&v76];
          v67 = v76;

          if (v40)
          {
            v41 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v14];
            [v41 removeObjectForKey:v9];
            v69 = v41;
            v42 = objc_alloc(MEMORY[0x277CBEB38]);
            v43 = [(HMIPersonsModelManager *)self personsModelsByHome];
            v32 = [v42 initWithDictionary:v43];

            v44 = [v69 copy];
            [v32 setObject:v44 forKeyedSubscript:v8];

            v45 = [v32 copy];
            personsModelsByHome = self->_personsModelsByHome;
            self->_personsModelsByHome = v45;

            v73 = [(HMIPersonsModelManager *)self personsModelsByHome];
            v47 = [v73 objectForKeyedSubscript:v8];
            v48 = [(HMIPersonsModelManager *)self userDefinedPersonLinksByHome];
            v49 = [v48 objectForKeyedSubscript:v8];
            v75 = v12;
            contexta = [(HMIPersonsModelManager *)self buildEquivalencyMapForPersonsModels:v47 userDefinedPersonLinks:v49 error:&v75];
            v63 = v75;

            v50 = objc_alloc(MEMORY[0x277CBEB38]);
            v51 = [(HMIPersonsModelManager *)self equivalencyTablesByHome];
            v52 = [v50 initWithDictionary:v51];

            if (contexta)
            {
              [v52 setObject:contexta forKeyedSubscript:v8];
            }

            else
            {
              [v52 removeObjectForKey:v8];
            }

            v57 = [v52 copy];
            equivalencyTablesByHome = self->_equivalencyTablesByHome;
            self->_equivalencyTablesByHome = v57;

            v74 = objc_autoreleasePoolPush();
            v59 = self;
            v60 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
            {
              v61 = HMFGetLogIdentifier();
              *buf = 138543874;
              v82 = v61;
              v83 = 2112;
              v84 = v8;
              v85 = 2112;
              v86 = v9;
              _os_log_impl(&dword_22D12F000, v60, OS_LOG_TYPE_INFO, "%{public}@Removed VNPersonsModel for homeUUID: %@ sourceUUID:%@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v74);
            v24 = 1;
            v72 = v67;
            v12 = v63;
            goto LABEL_32;
          }

          v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to remove VNPersonsModel for homeUUID: %@ sourceUUID: %@, path: %@", v8, v9, v71];
          v54 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1034 description:v53 underlyingError:v67];
          v69 = v53;

          v55 = v54;
          v32 = v55;
          if (a5)
          {
            v56 = v55;
            *a5 = v32;
          }

          HMIErrorLog(self, v32);
          v24 = 0;
          v72 = v67;
        }

        else
        {
          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to remove VNPersonsModel for homeUUID: %@ sourceUUID: %@, error getting model storage path", v8, v9];
          v30 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1034 description:v29 underlyingError:v72];
          v69 = v29;

          v31 = v30;
          v32 = v31;
          if (a5)
          {
            v33 = v31;
            *a5 = v32;
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
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543874;
      v82 = v28;
      v83 = 2112;
      v84 = v8;
      v85 = 2112;
      v86 = v9;
      _os_log_impl(&dword_22D12F000, v27, OS_LOG_TYPE_INFO, "%{public}@Did not remove VNPersonsModel for homeUUID: %@ sourceUUID: %@, no model found", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
    v24 = 1;
  }

  else
  {
    v22 = v11;
    v14 = v22;
    if (a5)
    {
      v23 = v22;
      *a5 = v14;
    }

    HMIErrorLog(self, v14);
    v24 = 0;
    v12 = v14;
  }

LABEL_33:

  os_unfair_lock_unlock(&self->_lock);
  return v24;
}

- (id)predictHomePersonFromFaceObservation:(id)a3 homeUUID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  os_unfair_lock_lock_with_options();
  v40 = 0;
  LOBYTE(a4) = [(HMIPersonsModelManager *)self loadModelsWithError:&v40];
  v10 = v40;
  v11 = v10;
  if (a4)
  {
    v12 = [(HMIPersonsModelManager *)self homePersonsModelForHomeWithUUID:v9];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 visionPersonsModel];
      v39 = v11;
      v15 = [v14 predictPersonFromFaceObservation:v8 limit:10 canceller:0 error:&v39];
      v16 = v8;
      v17 = v39;

      if (v15)
      {
        v38 = v15;
        v18 = [v15 firstObject];
        v19 = objc_alloc(MEMORY[0x277CCAD78]);
        v20 = [v18 predictedPersonUniqueIdentifier];
        v21 = [v19 initWithUUIDString:v20];

        v22 = MEMORY[0x277CCABB0];
        [v18 confidence];
        v23 = [v22 numberWithFloat:?];
        v24 = [HMIPersonsModelPrediction alloc];
        v25 = [v13 sourceUUID];
        v26 = [(HMIPersonsModelPrediction *)v24 initWithSourceUUID:v25 personUUID:v21 confidence:v23 linkedEntityUUID:0];

        v27 = v38;
      }

      else
      {
        v27 = 0;
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to predict using VNPersonsModel for home persons model"];
        v34 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1035 description:v18 underlyingError:v17];

        v35 = v34;
        v21 = v35;
        if (a5)
        {
          v36 = v35;
          *a5 = v21;
        }

        HMIErrorLog(self, v21);
        v26 = 0;
        v17 = v21;
      }
    }

    else
    {
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Home persons model not found for homeUUID: %@", v9];
      v31 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1037 description:v30];
      v27 = v30;

      v32 = v31;
      v18 = v32;
      if (a5)
      {
        v33 = v32;
        *a5 = v18;
      }

      v16 = v8;
      HMIErrorLog(self, v18);
      v26 = 0;
      v17 = v18;
    }
  }

  else
  {
    v28 = v10;
    v13 = v28;
    if (a5)
    {
      v29 = v28;
      *a5 = v13;
    }

    v16 = v8;
    HMIErrorLog(self, v13);
    v26 = 0;
    v17 = v13;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v26;
}

- (id)equivalencyCellForPerson:(id)a3 homeUUID:(id)a4 error:(id *)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v8 = a4;
  os_unfair_lock_lock_with_options();
  v35 = 0;
  v9 = [(HMIPersonsModelManager *)self loadModelsWithError:&v35];
  v10 = v35;
  v11 = v10;
  if (v9)
  {
    v12 = [(HMIPersonsModelManager *)self equivalencyTablesByHome];
    v13 = [v12 objectForKeyedSubscript:v8];

    if (v13)
    {
      v14 = v11;
LABEL_9:
      v27 = [v13 equivalencyCellForPerson:v33];
      v18 = [v27 copy];

      v16 = v13;
      goto LABEL_10;
    }

    v19 = [(HMIPersonsModelManager *)self personsModelsByHome];
    v20 = [v19 objectForKeyedSubscript:v8];
    v21 = [(HMIPersonsModelManager *)self userDefinedPersonLinksByHome];
    v22 = [v21 objectForKeyedSubscript:v8];
    v34 = v11;
    v13 = [(HMIPersonsModelManager *)self buildEquivalencyMapForPersonsModels:v20 userDefinedPersonLinks:v22 error:&v34];
    v14 = v34;

    v23 = objc_alloc(MEMORY[0x277CBEB38]);
    v24 = [(HMIPersonsModelManager *)self equivalencyTablesByHome];
    v16 = [v23 initWithDictionary:v24];

    if (v13)
    {
      [v16 setObject:v13 forKeyedSubscript:v8];
      v25 = [v16 copy];
      equivalencyTablesByHome = self->_equivalencyTablesByHome;
      self->_equivalencyTablesByHome = v25;

      goto LABEL_9;
    }

    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543874;
      v37 = v32;
      v38 = 2112;
      v39 = v8;
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
    if (a5)
    {
      v17 = v15;
      *a5 = v16;
    }

    HMIErrorLog(self, v16);
    v18 = 0;
    v14 = v16;
  }

LABEL_10:

  os_unfair_lock_unlock(&self->_lock);

  return v18;
}

- (id)predictPersonFromFaceObservation:(id)a3 homeUUID:(id)a4 error:(id *)a5
{
  v97 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
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
    if (a5)
    {
      v27 = v25;
      *a5 = v26;
    }

    HMIErrorLog(self, v26);

    goto LABEL_16;
  }

  v12 = [(HMIPersonsModelManager *)self personsModelsByHome];
  v13 = [v12 objectForKeyedSubscript:v9];

  if (!v13)
  {
    v28 = MEMORY[0x277CCACA8];
    v29 = [(HMIPersonsModelManager *)self personsModelsByHome];
    v30 = @"not";
    if (!v29)
    {
      v30 = &stru_284057FB8;
    }

    v31 = [v28 stringWithFormat:@"Unable to get person model for homeUUID: %@ (self.personsModelsByHome is %@ nil)", v9, v30];

    v32 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1035 description:v31];
    v33 = v86[5];
    v86[5] = v32;

    v34 = v86[5];
    v35 = v34;
    if (a5)
    {
      v36 = v34;
      *a5 = v35;
    }

    HMIErrorLog(self, v35);

LABEL_16:
    os_unfair_lock_unlock(&self->_lock);
LABEL_17:
    v37 = 0;
    goto LABEL_18;
  }

  v14 = [(HMIPersonsModelManager *)self equivalencyTablesByHome];
  v15 = [v14 objectForKeyedSubscript:v9];

  v16 = 0x277CBE000;
  if (!v15)
  {
    v17 = [(HMIPersonsModelManager *)self userDefinedPersonLinksByHome];
    v18 = [v17 objectForKeyedSubscript:v9];

    if (!v18)
    {
      v18 = MEMORY[0x277CBEC10];
    }

    v19 = v86;
    v67 = v86[5];
    v15 = [(HMIPersonsModelManager *)self buildEquivalencyMapForPersonsModels:v13 userDefinedPersonLinks:v18 error:&v67];
    objc_storeStrong(v19 + 5, v67);
    v20 = objc_alloc(MEMORY[0x277CBEB38]);
    v21 = [(HMIPersonsModelManager *)self equivalencyTablesByHome];
    v22 = [v20 initWithDictionary:v21];

    if (v15)
    {
      [v22 setObject:v15 forKeyedSubscript:v9];
      v23 = [v22 copy];
      equivalencyTablesByHome = self->_equivalencyTablesByHome;
      self->_equivalencyTablesByHome = v23;
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v55 = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        v41 = v86[5];
        *buf = 138543874;
        v92 = v40;
        v93 = 2112;
        v94 = v9;
        v95 = 2112;
        v96 = v41;
        v53 = v40;
        _os_log_impl(&dword_22D12F000, v39, OS_LOG_TYPE_ERROR, "%{public}@Unable to build equivalency map for homeUUID: %@, error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(context);
    }

    v16 = 0x277CBE000uLL;
  }

  v42 = [*(v16 + 2872) dictionary];
  v43 = v76[5];
  v76[5] = v42;

  v44 = [MEMORY[0x277CBEB58] set];
  v45 = v70[5];
  v70[5] = v44;

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __74__HMIPersonsModelManager_predictPersonFromFaceObservation_homeUUID_error___block_invoke;
  v58[3] = &unk_278754C48;
  v59 = v8;
  v60 = v9;
  v63 = &v85;
  v64 = &v81;
  v65 = &v69;
  v46 = v15;
  v61 = v46;
  v62 = self;
  v66 = &v75;
  [v13 enumerateKeysAndObjectsUsingBlock:v58];

  os_unfair_lock_unlock(&self->_lock);
  if ((v82[3] & 1) == 0)
  {
    v50 = v86[5];
    v51 = v50;
    if (a5)
    {
      v52 = v50;
      *a5 = v51;
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

+ (id)faceObservationFromTorsoprint:(id)a3
{
  v3 = MEMORY[0x277CE2CE0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 data];

  v7 = [v6 bytes];
  LODWORD(v8) = 1.0;
  v9 = [v5 initWithData:v7 elementCount:128 elementType:1 lengthInBytes:512 confidence:3 requestRevision:v8];

  v10 = [MEMORY[0x277CE2CD0] faceObservationWithRequestRevision:3 boundingBox:0.0 andAlignedBoundingBox:{0.0, 1.0, 1.0, 0.0, 0.0, 1.0, 1.0}];
  [v10 setFaceprint:v9];

  return v10;
}

- (BOOL)updateTorsoModelForHome:(id)a3 torsoAnnotations:(id)a4 error:(id *)a5
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v72 = a4;
  os_unfair_lock_lock_with_options();
  v90 = 0;
  LOBYTE(a4) = [(HMIPersonsModelManager *)self loadModelsWithError:&v90];
  v9 = v90;
  v10 = v9;
  if (a4)
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v12 = [MEMORY[0x277CBEB38] dictionary];
    v13 = [(HMIPersonsModelManager *)self torsoModelsByHome];
    v14 = [v13 objectForKeyedSubscript:v8];

    if (!v14)
    {
      v71 = v12;
LABEL_9:
      v23 = [v11 mutableCopy];
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
      [v72 na_each:v83];
      v82 = v10;
      v70 = [HMIPersonsModelManager personsModelWithFaceObservationsByID:v25 error:&v82];
      v26 = v82;

      if (!v70)
      {
        v55 = v26;
        v10 = v55;
        if (a5)
        {
          v56 = v55;
          *a5 = v10;
        }

        HMIErrorLog(self, v10);

        v22 = 0;
        goto LABEL_35;
      }

      v78 = 0;
      v79 = &v78;
      v80 = 0x2020000000;
      v81 = 0;
      v27 = [v25 allValues];
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke_2_297;
      v77[3] = &unk_278754DA8;
      v77[4] = &v78;
      [v27 na_each:v77];

      v28 = objc_autoreleasePoolPush();
      v29 = self;
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
        v98 = v8;
        _os_log_impl(&dword_22D12F000, v30, OS_LOG_TYPE_INFO, "%{public}@Created new torso model with %lu persons and %d total torsoprints for home: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v28);
      v76 = v26;
      v68 = [HMIPersonsModelManager getTorsoModelStoragePathForHomeUUID:v8 error:&v76];
      v34 = v76;

      v75 = v34;
      v35 = [HMIPersonsModelManager persistModel:v70 toPath:v68 error:&v75];
      v36 = v75;

      if (v35)
      {
        v74 = v36;
        v37 = [HMIPersonsModelManager persistTorsoToFaceCrop:v69 forHomeUUID:v8 error:&v74];
        v38 = v74;

        if (v37)
        {
          v73 = v38;
          v39 = [HMIPersonsModelManager persistTorsoprinterVersionForHomeUUID:v8 error:&v73];
          v10 = v73;

          if (v39)
          {
            v40 = objc_autoreleasePoolPush();
            v41 = v29;
            v42 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              v43 = HMFGetLogIdentifier();
              *buf = 138543618;
              v92 = v43;
              v93 = 2112;
              v94 = v8;
              _os_log_impl(&dword_22D12F000, v42, OS_LOG_TYPE_INFO, "%{public}@Successfully updated torso model and face crop map for home: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v40);
            v44 = MEMORY[0x277CBEB38];
            v45 = [(HMIPersonsModelManager *)v41 torsoModelsByHome];
            v46 = [v44 dictionaryWithDictionary:v45];

            v47 = MEMORY[0x277CBEB38];
            v48 = [(HMIPersonsModelManager *)v41 torsoToFaceCropByHome];
            v49 = [v47 dictionaryWithDictionary:v48];

            [v46 setObject:v70 forKeyedSubscript:v8];
            v50 = [v69 copy];
            [v49 setObject:v50 forKeyedSubscript:v8];

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
          if (a5)
          {
            v66 = v65;
            *a5 = v46;
          }

          HMIErrorLog(v29, v46);
        }

        else
        {
          v63 = v38;
          v46 = v63;
          if (a5)
          {
            v64 = v63;
            *a5 = v46;
          }

          HMIErrorLog(v29, v46);
        }
      }

      else
      {
        v57 = v36;
        v46 = v57;
        if (a5)
        {
          v58 = v57;
          *a5 = v46;
        }

        HMIErrorLog(v29, v46);
      }

      v22 = 0;
      v10 = v46;
LABEL_34:

      _Block_object_dispose(&v78, 8);
LABEL_35:

      goto LABEL_36;
    }

    v15 = [(HMIPersonsModelManager *)self torsoToFaceCropByHome];
    v71 = [v15 objectForKeyedSubscript:v8];

    if (v71)
    {
      v16 = [(HMIPersonsModelManager *)self torsoModelsByHome];
      v17 = [v16 objectForKeyedSubscript:v8];

      v18 = [v17 personUniqueIdentifiers];
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __73__HMIPersonsModelManager_updateTorsoModelForHome_torsoAnnotations_error___block_invoke;
      v86[3] = &unk_278754CE0;
      v19 = v17;
      v87 = v19;
      v88 = self;
      v89 = v11;
      [v18 na_each:v86];

      goto LABEL_9;
    }

    v59 = objc_autoreleasePoolPush();
    v60 = self;
    v61 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = HMFGetLogIdentifier();
      *buf = 138543618;
      v92 = v62;
      v93 = 2112;
      v94 = v8;
      _os_log_impl(&dword_22D12F000, v61, OS_LOG_TYPE_ERROR, "%{public}@Found nil torsoToFaceCrop for home %@ with non-nil model!", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v59);
    v22 = 0;
  }

  else
  {
    v20 = v9;
    v11 = v20;
    if (a5)
    {
      v21 = v20;
      *a5 = v11;
    }

    HMIErrorLog(self, v11);
    v22 = 0;
    v10 = v11;
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

- (id)faceCropFromTorsoModelForHomeUUID:(id)a3 personUUID:(id)a4 sourceUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_lock_with_options();
  v11 = [[HMIPersonSourceUUIDPair alloc] initWithPersonUUID:v9 sourceUUID:v10];
  v12 = [(HMIPersonsModelManager *)self torsoToFaceCropByHome];
  v13 = [v12 objectForKeyedSubscript:v8];
  v14 = [v13 objectForKeyedSubscript:v11];

  os_unfair_lock_unlock(&self->_lock);

  return v14;
}

- (BOOL)_resetStaleTorsoStateForHome:(id)a3 torsoToFaceCropMap:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(HMIPersonsModelManager *)self _isTorsoFaceCropMapStale:v7]&& ![(HMIPersonsModelManager *)self _hasTorsoprinterVersionChangedForHome:v6])
  {
    v26 = 0;
    goto LABEL_13;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = self;
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
  v12 = [HMIPersonsModelManager getTorsoModelStoragePathForHomeUUID:v6 error:&v29];
  v13 = v29;
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v28 = v13;
  v15 = [v14 removeItemAtPath:v12 error:&v28];
  v16 = v28;

  v17 = objc_autoreleasePoolPush();
  v18 = v9;
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

- (BOOL)_hasTorsoprinterVersionChangedForHome:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0;
  v5 = [HMIPersonsModelManager loadTorsoprinterVersion:v4 error:&v15];
  v6 = v15;
  if (v5 && (+[HMITorsoprinter currentModelUUID](HMITorsoprinter, "currentModelUUID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v5 hmf_isEqualToUUID:v7], v7, (v8 & 1) != 0))
  {
    v9 = 0;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
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

- (BOOL)_isTorsoFaceCropMapStale:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 allValues];
    if ([v6 count])
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
      [v6 na_each:v16];
      v8 = [MEMORY[0x277CBEA80] currentCalendar];
      v9 = [v8 isDate:v18[5] inSameDayAsDate:v7];

      if ((v9 & 1) == 0)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = self;
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

- (id)predictPersonFromTorsoObservation:(id)a3 homeUUID:(id)a4 error:(id *)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v42 = a3;
  v43 = a4;
  os_unfair_lock_lock_with_options();
  v44 = 0;
  LOBYTE(a4) = [(HMIPersonsModelManager *)self loadModelsWithError:&v44];
  v8 = v44;
  v9 = v8;
  if (a4)
  {
    v10 = [(HMIPersonsModelManager *)self torsoModelsByHome];
    v11 = [v10 objectForKeyedSubscript:v43];

    if (v11)
    {
      v38 = [HMIPersonsModelManager faceObservationFromTorsoprint:v42];
      v12 = [v11 predictPersonFromFaceObservation:? limit:? canceller:? error:?];
      v39 = v12;
      v40 = 0;
      if (v12)
      {
        v41 = [v12 firstObject];
        v13 = [v41 predictedPersonUniqueIdentifier];
        v14 = objc_autoreleasePoolPush();
        v15 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          [v41 confidence];
          *buf = 138543874;
          v46 = v17;
          v47 = 2112;
          v48 = v13;
          v49 = 2048;
          v50 = v18;
          _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_INFO, "%{public}@Torso model predicted person %@ with confidence %f", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v14);
        v19 = [[HMIPersonSourceUUIDPair alloc] initWithUUIDPairString:v13];
        v20 = [HMIPersonsModelPrediction alloc];
        v21 = [(HMIPersonSourceUUIDPair *)v19 sourceUUID];
        v22 = [(HMIPersonSourceUUIDPair *)v19 personUUID];
        v23 = MEMORY[0x277CCABB0];
        [v41 confidence];
        v24 = [v23 numberWithFloat:?];
        v25 = [(HMIPersonSourceUUIDPair *)v19 personUUID];
        v26 = [(HMIPersonsModelPrediction *)v20 initWithSourceUUID:v21 personUUID:v22 confidence:v24 linkedEntityUUID:v25];
      }

      else
      {
        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to predict using torso model for homeUUID: %@", v43];
        v34 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1035 description:v33 underlyingError:v40];
        v41 = v33;

        v35 = v34;
        v13 = v35;
        if (a5)
        {
          v36 = v35;
          *a5 = v13;
        }

        HMIErrorLog(self, v13);
        v26 = 0;
        v9 = v13;
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v46 = v32;
        v47 = 2112;
        v48 = v43;
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
    if (a5)
    {
      v28 = v27;
      *a5 = v11;
    }

    HMIErrorLog(self, v11);
    v26 = 0;
    v9 = v11;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v26;
}

- (id)linkedPredictionsForPrediction:(id)a3 homeUUID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [HMIPersonSourceUUIDPair alloc];
  v11 = [v8 personUUID];
  v12 = [v8 sourceUUID];
  v13 = [(HMIPersonSourceUUIDPair *)v10 initWithPersonUUID:v11 sourceUUID:v12];

  v14 = [(HMIPersonsModelManager *)self equivalencyCellForPerson:v13 homeUUID:v9 error:a5];

  if (v14)
  {
    v15 = [HMIPersonsModelManager minimumUUIDInEquivalencyCell:v14];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __72__HMIPersonsModelManager_linkedPredictionsForPrediction_homeUUID_error___block_invoke;
    v19[3] = &unk_278754DF8;
    v20 = v8;
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

- (void)timerDidFire:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  os_unfair_lock_lock_with_options();
  [(HMIPersonsModelManager *)self _reset];
  v5 = [(HMIPersonsModelManager *)self watchdogTimer];
  [v5 suspend];

  [(HMIPersonsModelManager *)self setTransaction:0];
  os_unfair_lock_unlock(&self->_lock);
  objc_autoreleasePoolPop(v4);
}

+ (id)loadModelAtPath:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:a3];
  v6 = objc_opt_new();
  v7 = [MEMORY[0x277CE2D78] modelFromURL:v5 options:v6 error:a4];

  return v7;
}

+ (BOOL)persistModel:(id)a3 toPath:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  v10 = [v9 URLByDeletingLastPathComponent];

  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [v10 path];
  v13 = [v11 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:a5];

  if (v13)
  {
    v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
    v15 = objc_alloc_init(MEMORY[0x277CE2D90]);
    [v15 setReadOnly:0];
    v16 = [v7 writeToURL:v14 options:v15 error:a5];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)getModelStoragePathForHome:(id)a3 error:(id *)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [HMIPersonsModelManager getRootModelStoragePathWithError:a4];
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x277CCACA8];
    v13[0] = v6;
    v9 = [v5 UUIDString];
    v13[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v11 = [v8 pathWithComponents:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)getModelStoragePathForModel:(id)a3 error:(id *)a4
{
  v17[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 homeUUID];
  v7 = [HMIPersonsModelManager getModelStoragePathForHome:v6 error:a4];

  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v17[0] = v7;
    v9 = [v5 isExternalLibrary];
    v10 = @"home";
    if (v9)
    {
      v10 = @"external";
    }

    v17[1] = v10;
    v11 = MEMORY[0x277CCACA8];
    v12 = [v5 sourceUUID];
    v13 = [v11 stringWithFormat:@"%@.bin", v12];
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

+ (id)getRootModelStoragePathWithError:(id *)a3
{
  v3 = HMIURLForCacheDirectory(a3);
  if (v3)
  {
    v4 = +[HMIPreference sharedInstance];
    v5 = [v3 path];
    v6 = [v4 stringPreferenceForKey:@"personsModelStoragePath" defaultValue:v5];

    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
    v8 = [v7 URLByAppendingPathComponent:@"personsmodels" isDirectory:1];

    v9 = [v8 absoluteURL];
    v10 = [v9 path];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)getUserDefinedPersonLinksStoragePathForHomeUUID:(id)a3 error:(id *)a4
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = [HMIPersonsModelManager getModelStoragePathForHome:a3 error:a4];
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

+ (BOOL)persistUserDefinedPersonLinks:(id)a3 forHomeUUID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [HMIPersonsModelManager getUserDefinedPersonLinksStoragePathForHomeUUID:a4 error:a5];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
    v10 = [v9 URLByDeletingLastPathComponent];

    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [v10 path];
    v13 = [v11 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:a5];

    if (v13)
    {
      v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
      v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:a5];
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

+ (id)loadUserDefinedPersonLinksForHomeUUID:(id)a3 error:(id *)a4
{
  v15[4] = *MEMORY[0x277D85DE8];
  v5 = [HMIPersonsModelManager getUserDefinedPersonLinksStoragePathForHomeUUID:a3 error:?];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v7 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v6 error:a4];
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
      v12 = [v7 readDataToEndOfFile];
      v13 = [v11 unarchivedObjectOfClasses:v10 fromData:v12 error:a4];
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

+ (id)getTorsoSubdirectoryPathForHomeUUID:(id)a3 error:(id *)a4
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = [HMIPersonsModelManager getModelStoragePathForHome:a3 error:a4];
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

+ (id)getTorsoModelStoragePathForHomeUUID:(id)a3 error:(id *)a4
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = [HMIPersonsModelManager getTorsoSubdirectoryPathForHomeUUID:a3 error:a4];
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

+ (id)getTorsoToFaceCropStoragePathForHomeUUID:(id)a3 error:(id *)a4
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = [HMIPersonsModelManager getTorsoSubdirectoryPathForHomeUUID:a3 error:a4];
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

+ (id)getTorsoprinterVersionStoragePathForHomeUUID:(id)a3 error:(id *)a4
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = [HMIPersonsModelManager getTorsoSubdirectoryPathForHomeUUID:a3 error:a4];
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

+ (BOOL)persistTorsoToFaceCrop:(id)a3 forHomeUUID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [HMIPersonsModelManager getTorsoToFaceCropStoragePathForHomeUUID:a4 error:a5];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
    v10 = [v9 URLByDeletingLastPathComponent];

    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [v10 path];
    v13 = [v11 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:a5];

    if (v13)
    {
      v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
      v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:a5];
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

+ (BOOL)persistTorsoprinterVersionForHomeUUID:(id)a3 error:(id *)a4
{
  v5 = [HMIPersonsModelManager getTorsoprinterVersionStoragePathForHomeUUID:a3 error:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 URLByDeletingLastPathComponent];
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [v7 path];
    v10 = [v8 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:a4];

    if (v10)
    {
      v11 = +[HMITorsoprinter currentModelUUID];
      v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:a4];
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

+ (id)loadTorsoToFaceCrop:(id)a3 error:(id *)a4
{
  v15[6] = *MEMORY[0x277D85DE8];
  v5 = [HMIPersonsModelManager getTorsoToFaceCropStoragePathForHomeUUID:a3 error:?];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v7 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v6 error:a4];
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
      v12 = [v7 readDataToEndOfFile];
      v13 = [v11 unarchivedObjectOfClasses:v10 fromData:v12 error:a4];
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

+ (id)loadTorsoprinterVersion:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = [HMIPersonsModelManager getTorsoprinterVersionStoragePathForHomeUUID:a3 error:?];
  if (v5)
  {
    v6 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v5 error:a4];
    if (v6)
    {
      v7 = MEMORY[0x277CBEB98];
      v14[0] = objc_opt_class();
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
      v9 = [v7 setWithArray:v8];

      v10 = MEMORY[0x277CCAAC8];
      v11 = [v6 readDataToEndOfFile];
      v12 = [v10 unarchivedObjectOfClasses:v9 fromData:v11 error:a4];
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

- (id)modelURLsFromPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v27 = 0;
  v8 = [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v27];
  v9 = v27;
  if (v8)
  {
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v6];
    v26 = v9;
    v11 = [v7 contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:4 error:&v26];
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
      v15 = v13;
      v16 = [v11 na_filter:v23];
      v17 = v24;
      v12 = v14;
    }

    else
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to enumerate persons models at path (%@)", v6];
      v20 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1032 description:v15 underlyingError:v12];
      v17 = v20;
      if (a4)
      {
        v21 = v20;
        *a4 = v17;
      }

      HMIErrorLog(self, v17);
      v16 = 0;
    }

    v9 = v12;
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Directory to load/store persons models (%@) does not exist", v6];
    v18 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1032 description:v10 underlyingError:v9];
    v11 = v18;
    if (a4)
    {
      v19 = v18;
      *a4 = v11;
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

- (BOOL)loadModelsWithError:(id *)a3
{
  v160 = *MEMORY[0x277D85DE8];
  v5 = +[HMIPreference sharedInstance];
  v6 = [v5 shouldEnableTorsoRecognition];

  if (v6)
  {
    v7 = [(HMIPersonsModelManager *)self torsoModelsByHome];
    if (v7)
    {
      v8 = [(HMIPersonsModelManager *)self torsoToFaceCropByHome];
      v9 = v8 != 0;
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

  v10 = [(HMIPersonsModelManager *)self personsModelsByHome];

  if (v10 && v9)
  {
    v11 = [(HMIPersonsModelManager *)self watchdogTimer];
    [v11 kick];

    return 1;
  }

  else
  {
    v123 = a3;
    v129 = [MEMORY[0x277CBEB38] dictionary];
    v13 = [MEMORY[0x277CBEB38] dictionary];
    v14 = [MEMORY[0x277CBEB38] dictionary];
    v128 = [MEMORY[0x277CBEB38] dictionary];
    v151 = 0;
    v15 = [HMIPersonsModelManager getRootModelStoragePathWithError:&v151];
    v16 = v151;
    v17 = v16;
    if (v15)
    {
      v122 = v6;
      v18 = objc_autoreleasePoolPush();
      v19 = self;
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

      v130 = v19;
      objc_autoreleasePoolPop(v18);
      v117 = v15;
      v22 = [MEMORY[0x277CBEBC0] URLWithString:v15];
      v23 = [MEMORY[0x277CCAA00] defaultManager];
      v24 = [v22 path];
      v150 = v17;
      v25 = [v23 createDirectoryAtPath:v24 withIntermediateDirectories:1 attributes:0 error:&v150];
      v26 = v150;

      if (v25)
      {
        v27 = [MEMORY[0x277CCAA00] defaultManager];
        v149 = v26;
        v28 = [v27 contentsOfDirectoryAtURL:v22 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:4 error:&v149];
        v29 = v149;

        if (v28)
        {
          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          v28 = v28;
          v125 = [v28 countByEnumeratingWithState:&v145 objects:v159 count:16];
          if (v125)
          {
            v124 = *v146;
            v119 = v14;
            v120 = v13;
            v118 = v22;
            v121 = v28;
            while (2)
            {
              for (i = 0; i != v125; ++i)
              {
                if (*v146 != v124)
                {
                  objc_enumerationMutation(v28);
                }

                v31 = *(*(&v145 + 1) + 8 * i);
                v32 = objc_alloc(MEMORY[0x277CCAD78]);
                v33 = [v31 lastPathComponent];
                v34 = [v32 initWithUUIDString:v33];

                v133 = v31;
                if (v34)
                {
                  v126 = i;
                  v132 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  v35 = [v31 URLByAppendingPathComponent:@"external"];
                  v36 = [v35 path];

                  v144 = v29;
                  v127 = v36;
                  v37 = [(HMIPersonsModelManager *)v130 modelURLsFromPath:v36 error:&v144];
                  v26 = v144;

                  if (!v37)
                  {
                    if (v123)
                    {
                      v110 = v26;
                      *v123 = v26;
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
                            v51 = [v45 sourceUUID];
                            *buf = 138543874;
                            v153 = v50;
                            v154 = 2112;
                            v155 = v135;
                            v156 = 2112;
                            v157 = v51;
                            _os_log_impl(&dword_22D12F000, v49, OS_LOG_TYPE_INFO, "%{public}@Loaded External HMIPersonsModel for homeUUID: %@ sourceUUID: %@", buf, 0x20u);

                            v41 = v130;
                          }

                          objc_autoreleasePoolPop(v46);
                          v52 = [v45 sourceUUID];
                          [v132 setObject:v45 forKeyedSubscript:v52];
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
                  v61 = [v60 path];

                  v138 = v26;
                  v62 = [(HMIPersonsModelManager *)v41 modelURLsFromPath:v61 error:&v138];
                  v63 = v138;

                  v34 = v135;
                  if (!v62)
                  {
                    if (v123)
                    {
                      v111 = v63;
                      *v123 = v63;
                    }

                    HMIErrorLog(v41, v63);
LABEL_87:

                    v26 = v63;
                    v14 = v119;
                    v13 = v120;
                    v22 = v118;
                    v28 = v121;
LABEL_88:

                    v12 = 0;
                    v101 = v28;
                    goto LABEL_89;
                  }

                  if ([v62 count] >= 2)
                  {
                    v112 = [MEMORY[0x277CCACA8] stringWithFormat:@"Directory to load/store home persons model (%@) contains multiples files: %@ there can only be one", v61, v62];
                    v113 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1032 description:v112 underlyingError:v63];
                    v114 = v113;
                    if (v123)
                    {
                      v115 = v113;
                      *v123 = v114;
                    }

                    HMIErrorLog(v41, v114);

                    v34 = v135;
                    goto LABEL_87;
                  }

                  v134 = v61;
                  if ([v62 count])
                  {
                    v64 = [v62 firstObject];
                    v137 = v63;
                    v65 = [(HMIPersonsModelManager *)v41 loadPersonsModelFromURL:v64 externalLibrary:0 homeUUID:v135 error:&v137];
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
                        v73 = [v65 sourceUUID];
                        *buf = 138543874;
                        v153 = v72;
                        v154 = 2112;
                        v155 = v135;
                        v156 = 2112;
                        v157 = v73;
                        _os_log_impl(&dword_22D12F000, v70, OS_LOG_TYPE_INFO, "%{public}@Loaded Home HMIPersonsModel for homeUUID: %@ sourceUUID: %@", buf, 0x20u);

                        v41 = v130;
                        v66 = v71;
                      }

                      objc_autoreleasePoolPop(v67);
                      v74 = [v65 sourceUUID];
                      [v132 setObject:v65 forKeyedSubscript:v74];
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
                        v155 = v64;
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
                  [v129 setObject:v81 forKeyedSubscript:v135];

                  v136 = v63;
                  v82 = [HMIPersonsModelManager loadUserDefinedPersonLinksForHomeUUID:v135 error:&v136];
                  v29 = v136;

                  v83 = objc_autoreleasePoolPush();
                  v84 = v41;
                  v85 = HMFGetOSLogHandle();
                  v86 = os_log_type_enabled(v85, OS_LOG_TYPE_INFO);
                  if (v82)
                  {
                    if (v86)
                    {
                      v87 = HMFGetLogIdentifier();
                      v88 = [v82 count];
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
                    v82 = [MEMORY[0x277CBEAC0] dictionary];
                  }

                  v13 = v120;
                  [v120 setObject:v82 forKeyedSubscript:v135];
                  v14 = v119;
                  if (v122)
                  {
                    [(HMIPersonsModelManager *)v84 _loadTorsoDataForHomeUUID:v135 intoTorsoModelsByHome:v119 torsoToFaceCropByHome:v128];
                  }

                  v22 = v118;
                  v28 = v121;
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
                    v28 = v121;
                  }

                  objc_autoreleasePoolPop(v55);
                }
              }

              v125 = [v28 countByEnumeratingWithState:&v145 objects:v159 count:16];
              if (v125)
              {
                continue;
              }

              break;
            }
          }

          v92 = [v129 copy];
          personsModelsByHome = v130->_personsModelsByHome;
          v130->_personsModelsByHome = v92;

          v94 = [v13 copy];
          userDefinedPersonLinksByHome = v130->_userDefinedPersonLinksByHome;
          v130->_userDefinedPersonLinksByHome = v94;

          v96 = [v14 copy];
          torsoModelsByHome = v130->_torsoModelsByHome;
          v130->_torsoModelsByHome = v96;

          v98 = [v128 copy];
          torsoToFaceCropByHome = v130->_torsoToFaceCropByHome;
          v130->_torsoToFaceCropByHome = v98;

          v100 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"HMIPersonsModelManager"];
          [(HMIPersonsModelManager *)v130 setTransaction:v100];

          v101 = [(HMIPersonsModelManager *)v130 watchdogTimer];
          [v101 resume];
          v12 = 1;
        }

        else
        {
          v101 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to enumerate homes at path: %@", v22];
          v107 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1032 description:v101 underlyingError:v29];
          v108 = v107;
          if (v123)
          {
            v109 = v107;
            *v123 = v108;
          }

          HMIErrorLog(v130, v108);

          v12 = 0;
        }

        v26 = v29;
      }

      else
      {
        v103 = MEMORY[0x277CCACA8];
        v104 = [v22 path];
        v28 = [v103 stringWithFormat:@"Directory to load/store persons models (%@) does not exist", v104];

        v105 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1032 description:v28 underlyingError:v26];
        v101 = v105;
        if (v123)
        {
          v106 = v105;
          *v123 = v101;
        }

        HMIErrorLog(v130, v101);
        v12 = 0;
      }

LABEL_89:

      v17 = v26;
      v15 = v117;
    }

    else
    {
      if (a3)
      {
        v102 = v16;
        *a3 = v17;
      }

      HMIErrorLog(self, v17);
      v12 = 0;
    }
  }

  return v12;
}

- (void)_loadTorsoDataForHomeUUID:(id)a3 intoTorsoModelsByHome:(id)a4 torsoToFaceCropByHome:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v40 = 0;
  v11 = [HMIPersonsModelManager getTorsoModelStoragePathForHomeUUID:v8 error:&v40];
  v12 = v40;
  if (!v11)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
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

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [v13 fileExistsAtPath:v11];

  if ((v14 & 1) == 0)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543874;
      v42 = v27;
      v43 = 2112;
      v44 = v8;
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
  v15 = [HMIPersonsModelManager loadTorsoToFaceCrop:v8 error:&v39];
  v16 = v39;

  if (v15)
  {
    if (![(HMIPersonsModelManager *)self _resetStaleTorsoStateForHome:v8 torsoToFaceCropMap:v15])
    {
      v38 = v16;
      v17 = [HMIPersonsModelManager loadModelAtPath:v11 error:&v38];
      v18 = v38;

      v19 = objc_autoreleasePoolPush();
      v20 = self;
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
          v44 = v8;
          _os_log_impl(&dword_22D12F000, v22, OS_LOG_TYPE_INFO, "%{public}@Successfully loaded torso model and face crop map for home: %@", buf, 0x16u);

          v18 = v36;
        }

        objc_autoreleasePoolPop(v19);
        [v9 setObject:v17 forKeyedSubscript:v8];
        [v10 setObject:v15 forKeyedSubscript:v8];
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
    v33 = self;
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

- (id)loadPersonsModelFromURL:(id)a3 externalLibrary:(BOOL)a4 homeUUID:(id)a5 error:(id *)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = [v10 URLByDeletingPathExtension];
  v13 = [v12 lastPathComponent];

  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v13];
  if (v14)
  {
    v15 = [v10 pathExtension];
    v16 = [v15 isEqualToString:@"bin"];

    if (v16)
    {
      v45 = v8;
      v46 = v11;
      v17 = [MEMORY[0x277CCAA00] defaultManager];
      v18 = [v10 path];
      v48 = 0;
      v19 = [v17 attributesOfItemAtPath:v18 error:&v48];
      v20 = v48;
      v21 = [v19 fileSize];

      if (v21 < 0x2800001)
      {
        v36 = [v10 path];
        v47 = v20;
        v25 = [HMIPersonsModelManager loadModelAtPath:v36 error:&v47];
        v37 = v47;

        if (v25)
        {
          v11 = v46;
          v29 = [[HMIPersonsModel alloc] initWithPersonsModel:v25 homeUUID:v46 sourceUUID:v14 externalLibrary:v45];
          v20 = v37;
LABEL_16:

          goto LABEL_17;
        }

        v38 = MEMORY[0x277CCACA8];
        v39 = [v10 path];
        v40 = [v38 stringWithFormat:@"Failed to load VNPersonsModel at path: %@", v39];

        v41 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1032 description:v40 underlyingError:v37];
        v42 = v41;
        if (a6)
        {
          v43 = v41;
          *a6 = v42;
        }

        HMIErrorLog(self, v42);

        v29 = 0;
        v20 = v37;
      }

      else
      {
        v22 = MEMORY[0x277CCACA8];
        v23 = NSLocalizedFileSizeDescription();
        v24 = [v10 path];
        v25 = [v22 stringWithFormat:@"Refusing to load %@ VNPersonsModel at path: %@", v23, v24];

        v26 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1032 description:v25 underlyingError:v20];
        v27 = v26;
        if (a6)
        {
          v28 = v26;
          *a6 = v27;
        }

        HMIErrorLog(self, v27);

        v29 = 0;
      }

      v11 = v46;
      goto LABEL_16;
    }
  }

  v30 = MEMORY[0x277CCACA8];
  v31 = [v10 path];
  v32 = [v30 stringWithFormat:@"Invalid file path in load model attempt: %@", v31];

  v33 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1032 description:v32];
  v34 = v33;
  if (a6)
  {
    v35 = v33;
    *a6 = v34;
  }

  HMIErrorLog(self, v34);

  v29 = 0;
LABEL_17:

  return v29;
}

- (id)summaryForHomeUUID:(id)a3 error:(id *)a4
{
  v6 = a3;
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
    v10 = [(HMIPersonsModelManager *)self personsModelsByHome];
    v11 = [v10 objectForKeyedSubscript:v6];

    if (v11)
    {
      v12 = [v11 na_map:&__block_literal_global_357];
      v13 = [(HMIPersonsModelManager *)self equivalencyTablesByHome];
      v14 = [v13 objectForKeyedSubscript:v6];

      if (v14)
      {
LABEL_6:
        v17 = [(HMIPersonsModelManager *)self homePersonsModelForHomeWithUUID:v6, v32];
        v40[0] = 0;
        v40[1] = v40;
        v40[2] = 0x3032000000;
        v40[3] = __Block_byref_object_copy__6;
        v40[4] = __Block_byref_object_dispose__6;
        v41 = [MEMORY[0x277CBEB58] set];
        v18 = [v14 personToEquivalencyCell];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __51__HMIPersonsModelManager_summaryForHomeUUID_error___block_invoke_2;
        v35[3] = &unk_278754E90;
        v19 = v17;
        v36 = v19;
        v37 = &v48;
        v38 = &v44;
        v39 = v40;
        [v18 enumerateKeysAndObjectsUsingBlock:v35];

        _Block_object_dispose(v40, 8);
        v20 = 1;
        goto LABEL_14;
      }

      v34 = [(HMIPersonsModelManager *)self personsModelsByHome];
      v33 = [v34 objectForKeyedSubscript:v6];
      v15 = [(HMIPersonsModelManager *)self userDefinedPersonLinksByHome];
      v16 = [v15 objectForKeyedSubscript:v6];
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
      if (a4)
      {
        v31 = v30;
        *a4 = v14;
      }

      HMIErrorLog(self, v14);
      v20 = 0;
    }

    else
    {
      v25 = v9;
      v14 = v25;
      if (a4)
      {
        v26 = v25;
        *a4 = v14;
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
  if (a4)
  {
    v23 = v21;
    *a4 = v22;
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

+ (id)minimumUUIDInEquivalencyCell:(id)a3
{
  v3 = a3;
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
  [v3 enumerateObjectsUsingBlock:v6];
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
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting HMIPersonsModelManager", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  personsModelsByHome = v4->_personsModelsByHome;
  v4->_personsModelsByHome = 0;

  equivalencyTablesByHome = v4->_equivalencyTablesByHome;
  v4->_equivalencyTablesByHome = 0;

  v9 = [MEMORY[0x277CBEAC0] dictionary];
  userDefinedPersonLinksByHome = v4->_userDefinedPersonLinksByHome;
  v4->_userDefinedPersonLinksByHome = v9;

  torsoModelsByHome = v4->_torsoModelsByHome;
  v4->_torsoModelsByHome = 0;

  torsoToFaceCropByHome = v4->_torsoToFaceCropByHome;
  v4->_torsoToFaceCropByHome = 0;
}

@end