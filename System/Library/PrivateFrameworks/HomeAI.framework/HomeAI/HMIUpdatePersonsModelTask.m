@interface HMIUpdatePersonsModelTask
- (HMIUpdatePersonsModelTask)initWithTaskID:(int)a3 homeUUID:(id)a4 sourceUUID:(id)a5 dataSource:(id)a6 externalLibrary:(BOOL)a7 removeExcessFaceCrops:(BOOL)a8;
- (id)limitEnforcedSubsetFromPersons:(id)a3;
- (id)logIdentifier;
- (void)mainInsideAutoreleasePool;
- (void)subsampleFacesForPersons:(id)a3 withFaceObservationsMap:(id)a4 dataSource:(id)a5 vnUUIDToFaceCropUUIDMap:(id)a6;
@end

@implementation HMIUpdatePersonsModelTask

- (HMIUpdatePersonsModelTask)initWithTaskID:(int)a3 homeUUID:(id)a4 sourceUUID:(id)a5 dataSource:(id)a6 externalLibrary:(BOOL)a7 removeExcessFaceCrops:(BOOL)a8
{
  v13 = *&a3;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = HMIUpdatePersonsModelTask;
  v17 = [(HMIHomeTask *)&v20 initWithTaskID:v13 homeUUID:a4 timeout:500.0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sourceUUID, a5);
    objc_storeStrong(&v18->_dataSource, a6);
    v18->_externalLibrary = a7;
    v18->_removeExcessFaceCrops = a8;
  }

  return v18;
}

- (void)mainInsideAutoreleasePool
{
  v155 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v149 = v6;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_INFO, "%{public}@Fetching persons", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [HMIFetchPersonsOperation alloc];
  v8 = [(HMIUpdatePersonsModelTask *)v4 dataSource];
  v9 = [(HMIFetchPersonsOperation *)v7 initWithDataSource:v8];

  [(HMFOperation *)v9 start];
  [(HMIFetchPersonsOperation *)v9 waitUntilFinished];
  v10 = [(HMFOperation *)v9 error];

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v4;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [(HMFOperation *)v9 error];
      *buf = 138543618;
      v149 = v14;
      v150 = 2112;
      v151 = v15;
      _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_ERROR, "%{public}@Error fetching persons, error:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = MEMORY[0x277CCA9B8];
    v17 = [(HMFOperation *)v9 error];
    v18 = v16;
    v19 = v17;
    v20 = [v18 hmiPrivateErrorWithCode:1026 underlyingError:v17];
    [(HMFOperation *)v12 cancelWithError:v20];
  }

  else
  {
    v127 = v9;
    v21 = [(HMIFetchPersonsOperation *)v9 persons];
    v22 = objc_autoreleasePoolPush();
    v23 = v4;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v21 count];
      *buf = 138543618;
      v149 = v25;
      v150 = 2048;
      v151 = v26;
      _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_INFO, "%{public}@Fetched %lu persons", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v126 = v21;
    v27 = [(HMIUpdatePersonsModelTask *)v23 limitEnforcedSubsetFromPersons:v21];
    v130 = [MEMORY[0x277CBEB38] dictionary];
    v136 = objc_alloc_init(HMIFaceprinter);
    v128 = [MEMORY[0x277CBEB58] set];
    v129 = [MEMORY[0x277CBEB38] dictionary];
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v20 = v27;
    v133 = [v20 countByEnumeratingWithState:&v144 objects:v154 count:16];
    if (v133)
    {
      v134 = *v145;
      v131 = v23;
      v132 = v20;
LABEL_11:
      v28 = 0;
      while (1)
      {
        if (*v145 != v134)
        {
          objc_enumerationMutation(v20);
        }

        v29 = *(*(&v144 + 1) + 8 * v28);
        v30 = [(HMITask *)v23 progressBlock];

        if (v30)
        {
          v31 = [(HMITask *)v23 progressBlock];
          v31[2](0.0);
        }

        v32 = [(HMIUpdatePersonsModelTask *)v23 isCancelled];
        v33 = objc_autoreleasePoolPush();
        v34 = v23;
        v35 = HMFGetOSLogHandle();
        v36 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
        if (v32)
        {
          break;
        }

        if (v36)
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543618;
          v149 = v37;
          v150 = 2112;
          v151 = v29;
          _os_log_impl(&dword_22D12F000, v35, OS_LOG_TYPE_INFO, "%{public}@Fetching face crops for person: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
        v38 = [HMIFetchPersonFaceCropsOperation alloc];
        v39 = [(HMIUpdatePersonsModelTask *)v34 dataSource];
        v40 = [(HMIFetchPersonFaceCropsOperation *)v38 initWithDataSource:v39 person:v29];

        [(HMFOperation *)v40 start];
        [(HMIFetchPersonFaceCropsOperation *)v40 waitUntilFinished];
        v41 = [(HMFOperation *)v40 error];

        if (v41)
        {
          v97 = objc_autoreleasePoolPush();
          v98 = v34;
          v99 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
          {
            v100 = HMFGetLogIdentifier();
            v101 = [(HMFOperation *)v40 error];
            *buf = 138543874;
            v149 = v100;
            v150 = 2112;
            v151 = v29;
            v152 = 2112;
            v153 = v101;
            _os_log_impl(&dword_22D12F000, v99, OS_LOG_TYPE_ERROR, "%{public}@Error fetching facecrops for person:%@, error:%@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v97);
          v102 = MEMORY[0x277CCA9B8];
          v103 = [(HMFOperation *)v40 error];
          v104 = [v102 hmiPrivateErrorWithCode:1026 underlyingError:v103];
          [(HMFOperation *)v98 cancelWithError:v104];

LABEL_54:
          goto LABEL_71;
        }

        v138 = v28;
        v42 = [(HMIFetchPersonFaceCropsOperation *)v40 personFaceCrops];
        v43 = objc_autoreleasePoolPush();
        v44 = v34;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = HMFGetLogIdentifier();
          v47 = [v42 count];
          *buf = 138543874;
          v149 = v46;
          v150 = 2048;
          v151 = v47;
          v152 = 2112;
          v153 = v29;
          _os_log_impl(&dword_22D12F000, v45, OS_LOG_TYPE_INFO, "%{public}@Fetched %lu face crops for person: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v43);
        if ([v42 count] >= 0x1F)
        {
          [v128 addObject:v29];
        }

        v48 = [v42 na_map:&__block_literal_global_35];
        v49 = [HMIFetchFaceprintsForFaceCropsOperation alloc];
        v50 = [(HMIUpdatePersonsModelTask *)v44 dataSource];
        v137 = v48;
        v51 = [(HMIFetchFaceprintsForFaceCropsOperation *)v49 initWithDataSource:v50 faceCropUUIDs:v48];

        [(HMFOperation *)v51 start];
        [(HMIFetchFaceprintsForFaceCropsOperation *)v51 waitUntilFinished];
        v52 = [(HMFOperation *)v51 error];

        if (v52)
        {
          v53 = objc_autoreleasePoolPush();
          v54 = v44;
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v56 = HMFGetLogIdentifier();
            v57 = [(HMFOperation *)v51 error];
            *buf = 138543874;
            v149 = v56;
            v150 = 2112;
            v151 = v29;
            v152 = 2112;
            v153 = v57;
            _os_log_impl(&dword_22D12F000, v55, OS_LOG_TYPE_ERROR, "%{public}@Ignoring error fetching faceprints for person:%@, error:%@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v53);
        }

        v58 = [(HMIFetchFaceprintsForFaceCropsOperation *)v51 faceprints];
        v143 = 0;
        v59 = [(HMIFaceprinter *)v136 updatedFaceprintsForFaceCrops:v42 withExistingFaceprints:v58 error:&v143];
        v60 = v143;

        if (v59)
        {
          v135 = v60;
          v61 = [v59 allAtCurrentVersion];
          v141[0] = MEMORY[0x277D85DD0];
          v141[1] = 3221225472;
          v141[2] = __54__HMIUpdatePersonsModelTask_mainInsideAutoreleasePool__block_invoke_155;
          v141[3] = &unk_2787557E0;
          v142 = v129;
          v62 = [v61 na_map:v141];

          [v130 setObject:v62 forKeyedSubscript:v29];
          v63 = objc_autoreleasePoolPush();
          v64 = v44;
          v65 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
          {
            v66 = HMFGetLogIdentifier();
            v67 = [v59 createdAtCurrentVersion];
            *buf = 138543618;
            v149 = v66;
            v150 = 2112;
            v151 = v67;
            _os_log_impl(&dword_22D12F000, v65, OS_LOG_TYPE_INFO, "%{public}@Storing newly created faceprints: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v63);
          v68 = [v59 createdAtCurrentVersion];
          v69 = [v68 count];

          if (v69)
          {
            v70 = [HMIStoreFaceprintsOperation alloc];
            v71 = [(HMIUpdatePersonsModelTask *)v64 dataSource];
            v72 = [v59 createdAtCurrentVersion];
            v73 = [(HMIStoreFaceprintsOperation *)v70 initWithDataSource:v71 faceprints:v72];

            [(HMFOperation *)v73 start];
            [(HMIStoreFaceprintsOperation *)v73 waitUntilFinished];
          }

          v74 = objc_autoreleasePoolPush();
          v75 = v64;
          v76 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
          {
            v77 = HMFGetLogIdentifier();
            v78 = [v59 existingAtOtherVersions];
            *buf = 138543618;
            v149 = v77;
            v150 = 2112;
            v151 = v78;
            _os_log_impl(&dword_22D12F000, v76, OS_LOG_TYPE_INFO, "%{public}@Removing existing faceprints at other versions: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v74);
          v79 = [v59 existingAtOtherVersions];
          v80 = [v79 count];

          if (v80)
          {
            v81 = [v59 existingAtOtherVersions];
            v82 = [v81 na_map:&__block_literal_global_161];

            v83 = [HMIRemoveFaceprintsOperation alloc];
            v84 = [(HMIUpdatePersonsModelTask *)v75 dataSource];
            v85 = [(HMIRemoveFaceprintsOperation *)v83 initWithDataSource:v84 faceprintUUIDs:v82];

            [(HMFOperation *)v85 start];
            [(HMIRemoveFaceprintsOperation *)v85 waitUntilFinished];
          }

          v86 = v142;
          v23 = v131;
          v20 = v132;
          v87 = v138;
          v60 = v135;
        }

        else
        {
          v88 = objc_autoreleasePoolPush();
          v89 = v44;
          v90 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
          {
            v91 = HMFGetLogIdentifier();
            *buf = 138543874;
            v149 = v91;
            v150 = 2112;
            v151 = v29;
            v152 = 2112;
            v153 = v60;
            _os_log_impl(&dword_22D12F000, v90, OS_LOG_TYPE_ERROR, "%{public}@Error faceprinting face crops for person:%@, error:%@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v88);
          v86 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1026 underlyingError:v60];
          [(HMFOperation *)v89 cancelWithError:v86];
          v23 = v131;
          v20 = v132;
          v87 = v138;
        }

        if (!v59)
        {
          goto LABEL_54;
        }

        v28 = v87 + 1;
        if (v133 == v28)
        {
          v133 = [v20 countByEnumeratingWithState:&v144 objects:v154 count:16];
          if (v133)
          {
            goto LABEL_11;
          }

          goto LABEL_44;
        }
      }

      if (v36)
      {
        v96 = HMFGetLogIdentifier();
        *buf = 138543362;
        v149 = v96;
        _os_log_impl(&dword_22D12F000, v35, OS_LOG_TYPE_INFO, "%{public}@Exiting early because task was canceled.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v33);
      goto LABEL_54;
    }

LABEL_44:

    if ([(HMIUpdatePersonsModelTask *)v23 isCancelled])
    {
      v92 = objc_autoreleasePoolPush();
      v93 = v23;
      v94 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
      {
        v95 = HMFGetLogIdentifier();
        *buf = 138543362;
        v149 = v95;
        _os_log_impl(&dword_22D12F000, v94, OS_LOG_TYPE_INFO, "%{public}@Exiting early because task was canceled.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v92);
    }

    else
    {
      v105 = +[HMIPersonsModelManager sharedInstance];
      v106 = [(HMIHomeTask *)v23 homeUUID];
      v107 = [(HMIUpdatePersonsModelTask *)v23 sourceUUID];
      v140 = 0;
      v108 = [v105 buildPersonsModelForHomeUUID:v106 sourceUUID:v107 externalLibrary:-[HMIUpdatePersonsModelTask isExternalLibrary](v23 faceObservationsByPerson:"isExternalLibrary") error:{v130, &v140}];
      v109 = v140;

      if (v108)
      {
        if (!-[HMIUpdatePersonsModelTask isExternalLibrary](v23, "isExternalLibrary") && -[HMIUpdatePersonsModelTask shouldRemoveExcessFaceCrops](v23, "shouldRemoveExcessFaceCrops") && [v128 count])
        {
          v110 = [(HMIUpdatePersonsModelTask *)v23 dataSource];
          v111 = [v110 conformsToProtocol:&unk_28407F6F8];

          if (v111)
          {
            v112 = [(HMIUpdatePersonsModelTask *)v23 dataSource];
            [(HMIUpdatePersonsModelTask *)v23 subsampleFacesForPersons:v128 withFaceObservationsMap:v130 dataSource:v112 vnUUIDToFaceCropUUIDMap:v129];
          }

          else
          {
            v118 = objc_autoreleasePoolPush();
            v119 = v23;
            v120 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
            {
              v121 = HMFGetLogIdentifier();
              *buf = 138543362;
              v149 = v121;
              _os_log_impl(&dword_22D12F000, v120, OS_LOG_TYPE_ERROR, "%{public}@Invalid configuration: isExternalLibrary is NO but self.dataSource does not conform to HMIHomePersonManagerDataSource protocol!", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v118);
          }
        }

        v122 = objc_autoreleasePoolPush();
        v123 = v23;
        v124 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
        {
          v125 = HMFGetLogIdentifier();
          *buf = 138543362;
          v149 = v125;
          _os_log_impl(&dword_22D12F000, v124, OS_LOG_TYPE_INFO, "%{public}@Successfully updated persons model", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v122);
        v139.receiver = v123;
        v139.super_class = HMIUpdatePersonsModelTask;
        [(HMFOperation *)&v139 finish];
      }

      else
      {
        v113 = objc_autoreleasePoolPush();
        v114 = v23;
        v115 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          v116 = HMFGetLogIdentifier();
          *buf = 138543618;
          v149 = v116;
          v150 = 2112;
          v151 = v109;
          _os_log_impl(&dword_22D12F000, v115, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate persons model, error:%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v113);
        v117 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1026 underlyingError:v109];
        [(HMFOperation *)v114 cancelWithError:v117];
      }
    }

LABEL_71:
    v19 = v126;
    v9 = v127;
  }
}

id __54__HMIUpdatePersonsModelTask_mainInsideAutoreleasePool__block_invoke_155(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMIFaceUtilities faceObservationFromFaceprint:v3];
  v5 = [v3 faceCropUUID];

  v6 = *(a1 + 32);
  v7 = [v4 uuid];
  [v6 setObject:v5 forKeyedSubscript:v7];

  return v4;
}

- (id)limitEnforcedSubsetFromPersons:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count] > 0x50)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = [v4 na_filter:&__block_literal_global_234];
    if ([v7 count] > 0x50)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v19 = 138543874;
        v20 = v11;
        v21 = 2048;
        v22 = [v7 count];
        v23 = 1024;
        v24 = 80;
        _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_ERROR, "%{public}@WARNING: Model has %lu named persons -- limit supported is %d", &v19, 0x1Cu);
      }

      objc_autoreleasePoolPop(v8);
      v12 = [v7 allObjects];
      v13 = [v12 subarrayWithRange:{0, 80}];
      [v6 addObjectsFromArray:v13];
    }

    else
    {
      [v6 unionSet:v7];
    }

    if ([v6 count] <= 0x4F)
    {
      v14 = 80 - [v6 count];
      v15 = [v4 na_filter:&__block_literal_global_237];
      v16 = [v15 allObjects];
      v17 = [v16 subarrayWithRange:{0, v14}];
      [v6 addObjectsFromArray:v17];
    }

    v5 = [v6 copy];
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

BOOL __60__HMIUpdatePersonsModelTask_limitEnforcedSubsetFromPersons___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = v2 != 0;

  return v3;
}

BOOL __60__HMIUpdatePersonsModelTask_limitEnforcedSubsetFromPersons___block_invoke_235(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = v2 == 0;

  return v3;
}

- (void)subsampleFacesForPersons:(id)a3 withFaceObservationsMap:(id)a4 dataSource:(id)a5 vnUUIDToFaceCropUUIDMap:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x277CBEB58] set];
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __113__HMIUpdatePersonsModelTask_subsampleFacesForPersons_withFaceObservationsMap_dataSource_vnUUIDToFaceCropUUIDMap___block_invoke;
  v31 = &unk_278755870;
  v15 = v11;
  v32 = v15;
  v33 = self;
  v16 = v13;
  v34 = v16;
  v17 = v14;
  v35 = v17;
  [v10 na_each:&v28];
  v18 = [v17 count];
  v19 = objc_autoreleasePoolPush();
  v20 = self;
  v21 = HMFGetOSLogHandle();
  v22 = v21;
  if (v18)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v17 count];
      *buf = 138543618;
      v37 = v23;
      v38 = 2048;
      v39 = v24;
      _os_log_impl(&dword_22D12F000, v22, OS_LOG_TYPE_INFO, "%{public}@Deleting a total of %lu face crops after subsampling", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v25 = [[HMIRemoveFaceCropsOperation alloc] initWithDataSource:v12 faceCropUUIDs:v17];
    [(HMFOperation *)v25 start];
    [(HMIRemoveFaceCropsOperation *)v25 waitUntilFinished];
  }

  else
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [v10 count];
      *buf = 138543618;
      v37 = v26;
      v38 = 2048;
      v39 = v27;
      _os_log_impl(&dword_22D12F000, v22, OS_LOG_TYPE_ERROR, "%{public}@Selected %lu persons for subsampling faces but did not choose any face crops to delete!", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }
}

void __113__HMIUpdatePersonsModelTask_subsampleFacesForPersons_withFaceObservationsMap_dataSource_vnUUIDToFaceCropUUIDMap___block_invoke(id *a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] objectForKeyedSubscript:v3];
  v5 = +[HMIPersonsModelManager sharedInstance];
  v6 = [v5 personsModelsByHome];
  v7 = [a1[5] homeUUID];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [a1[5] sourceUUID];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [v10 visionPersonsModel];
  v12 = [v3 UUID];
  v13 = [v12 UUIDString];
  v47 = 0;
  v14 = [v11 trainingFaceObservationsForPersonWithUniqueIdentifier:v13 canceller:0 error:&v47];
  v15 = v47;

  if (v14)
  {
    if ([v14 count])
    {
      v44 = v4;
      if ([v14 count] >= 0x15)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = a1[5];
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = HMFGetLogIdentifier();
          v20 = [v14 count];
          *buf = 138543874;
          v49 = v19;
          v50 = 1024;
          *v51 = 20;
          *&v51[4] = 2048;
          *&v51[6] = v20;
          _os_log_impl(&dword_22D12F000, v18, OS_LOG_TYPE_ERROR, "%{public}@Expected subsampling to leave no more than %d, but got %lu faces selected. Enforcing limit.", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v16);
        v21 = [v14 subarrayWithRange:{0, 20}];

        v14 = v21;
      }

      v43 = v15;
      v22 = objc_autoreleasePoolPush();
      v23 = a1[5];
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [v14 count];
        v27 = [v44 count];
        *buf = 138544130;
        v49 = v25;
        v50 = 2048;
        *v51 = v26;
        *&v51[8] = 2048;
        *&v51[10] = v27;
        v52 = 2112;
        v53 = v3;
        _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_INFO, "%{public}@Subsampling will retain %lu from a total of %lu faces for %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v22);
      v28 = MEMORY[0x277CBEB98];
      v29 = [v14 na_map:&__block_literal_global_242];
      v30 = [v28 setWithArray:v29];

      v4 = v44;
      v31 = [v44 na_map:&__block_literal_global_244_0];
      v32 = [v31 na_setByRemovingObjectsFromSet:v30];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __113__HMIUpdatePersonsModelTask_subsampleFacesForPersons_withFaceObservationsMap_dataSource_vnUUIDToFaceCropUUIDMap___block_invoke_3;
      v45[3] = &unk_278755848;
      v46 = a1[6];
      v33 = [v32 na_map:v45];

      [a1[7] unionSet:v33];
      v15 = v43;
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = a1[5];
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v42 = v41 = v4;
        *buf = 138543618;
        v49 = v42;
        v50 = 2112;
        *v51 = v3;
        _os_log_impl(&dword_22D12F000, v40, OS_LOG_TYPE_ERROR, "%{public}@Fetched 0 training faces for %@, this would remove all face crops! Skipping face crop removal.", buf, 0x16u);

        v4 = v41;
      }

      objc_autoreleasePoolPop(v38);
    }
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = a1[5];
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543874;
      v49 = v37;
      v50 = 2112;
      *v51 = v3;
      *&v51[8] = 2112;
      *&v51[10] = v15;
      _os_log_impl(&dword_22D12F000, v36, OS_LOG_TYPE_ERROR, "%{public}@Error fetching faces to subsample for %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v34);
  }
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMIUpdatePersonsModelTask *)self sourceUUID];
  v5 = [(HMIUpdatePersonsModelTask *)self isExternalLibrary];
  v6 = @"home";
  if (v5)
  {
    v6 = @"external";
  }

  v7 = [v3 stringWithFormat:@"%@ (%@)", v4, v6];

  return v7;
}

@end