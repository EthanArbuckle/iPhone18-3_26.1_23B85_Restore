@interface HMISessionEntityManager
+ (id)updatePersonEventWithPersonEvent:(id)a3 sessionEntityUUID:(id)a4 predictedLinkedEntityUUIDs:(id)a5 sessionEntityAssignment:(int64_t)a6;
- (HMISessionEntityManager)init;
- (id)assignSessionEntitiesToPersonEvents:(id)a3 regionOfInterest:(CGRect)a4 timeStamp:(id *)a5 homeUUID:(id)a6;
- (id)assignSessionEntityToFaceRecognition:(id)a3 torsoRecognition:(id)a4 predictedLinkedEntityUUIDs:(id)a5 availableSessionEntityUUIDs:(id)a6 sessionEntityAssignment:(int64_t *)a7;
- (id)clusterSessionEntityToFaceRecognition:(id)a3 torsoRecognition:(id)a4 predictedLinkedEntityUUIDs:(id)a5 availableSessionEntityUUIDs:(id)a6 sessionEntityAssignment:(int64_t *)a7;
- (id)updateTorsoModelAndGetTorsoAnnotationsForHome:(id)a3;
- (void)createSessionEntityWithUUID:(id)a3 faceRecognition:(id)a4 torsoRecognition:(id)a5 predictedLinkedEntityUUIDs:(id)a6 sessionEntityAssignment:(int64_t *)a7;
- (void)submitTorsoprintsToModelManagerForHome:(id)a3 withTorsoAnnotations:(id)a4;
- (void)updatePreviousPrintsForSessionEntityUUID:(id)a3 faceRecognition:(id)a4 torsoRecognition:(id)a5;
@end

@implementation HMISessionEntityManager

- (HMISessionEntityManager)init
{
  v15.receiver = self;
  v15.super_class = HMISessionEntityManager;
  v2 = [(HMISessionEntityManager *)&v15 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    sessionEntities = v2->_sessionEntities;
    v2->_sessionEntities = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    sessionUUIDToPreviousFaceprints = v2->_sessionUUIDToPreviousFaceprints;
    v2->_sessionUUIDToPreviousFaceprints = v5;

    v7 = [MEMORY[0x277CBEB38] dictionary];
    sessionUUIDToPreviousTorsoprints = v2->_sessionUUIDToPreviousTorsoprints;
    v2->_sessionUUIDToPreviousTorsoprints = v7;

    v9 = objc_alloc_init(HMIPersonTracker);
    personTracker = v2->_personTracker;
    v2->_personTracker = v9;

    v11 = +[HMIPreference sharedInstance];
    v12 = [v11 numberPreferenceForKey:@"faceVIPThresholdForTorsoAnnotation" defaultValue:&unk_284075898];
    [v12 doubleValue];
    v2->_faceVIPThresholdForTorsoAnnotation = v13;
  }

  return v2;
}

- (void)submitTorsoprintsToModelManagerForHome:(id)a3 withTorsoAnnotations:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = +[HMIPersonsModelManager sharedInstance];
    v13 = 0;
    [v8 updateTorsoModelForHome:v6 torsoAnnotations:v7 error:&v13];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v12;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_INFO, "%{public}@No torso annotations -- skipping torso model update", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (id)assignSessionEntitiesToPersonEvents:(id)a3 regionOfInterest:(CGRect)a4 timeStamp:(id *)a5 homeUUID:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = MEMORY[0x277CBEB58];
  v13 = a3;
  v14 = [(HMISessionEntityManager *)self sessionEntities];
  v15 = [v14 allKeys];
  v16 = [v12 setWithArray:v15];

  v17 = [MEMORY[0x277CBEB58] set];
  v18 = [MEMORY[0x277CBEB18] array];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __99__HMISessionEntityManager_assignSessionEntitiesToPersonEvents_regionOfInterest_timeStamp_homeUUID___block_invoke;
  v33[3] = &unk_278754448;
  v34 = v18;
  v35 = self;
  v36 = v16;
  v19 = v17;
  v37 = v19;
  v20 = v16;
  v21 = v18;
  [v13 na_each:v33];

  personTracker = self->_personTracker;
  v23 = [v21 copy];
  v24 = [v19 allObjects];
  v32 = *a5;
  [(HMIPersonTracker *)personTracker trackNewPersons:v23 knownPersons:v24 regionOfInterest:&v32 timeStamp:x, y, width, height];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __99__HMISessionEntityManager_assignSessionEntitiesToPersonEvents_regionOfInterest_timeStamp_homeUUID___block_invoke_157;
  v29[3] = &unk_278754470;
  v30 = v19;
  v31 = self;
  v25 = v19;
  [v21 enumerateObjectsUsingBlock:v29];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __99__HMISessionEntityManager_assignSessionEntitiesToPersonEvents_regionOfInterest_timeStamp_homeUUID___block_invoke_2;
  v28[3] = &unk_278754498;
  v28[4] = self;
  [v25 na_each:v28];
  v26 = [v25 copy];

  return v26;
}

void __99__HMISessionEntityManager_assignSessionEntitiesToPersonEvents_regionOfInterest_timeStamp_homeUUID___block_invoke(id *a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 face];
  if (v4)
  {
    v5 = [v3 face];
    v6 = [v5 faceRecognition];
    if (v6)
    {
      v7 = [v3 face];
      v8 = [v7 faceRecognition];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 torso];
  v10 = [v9 torsoRecognition];
  v11 = [v10 torsoprint];
  if ([v11 unrecognizable])
  {
    v12 = 0;
  }

  else
  {
    v13 = [v3 torso];
    v12 = [v13 torsoRecognition];
  }

  if (v8 | v12)
  {
    v41 = 0;
    v14 = [MEMORY[0x277CBEB98] set];
    if (v8)
    {
      v15 = [v8 predictedLinkedEntityUUIDs];

      if (v15)
      {
        v16 = [v8 predictedLinkedEntityUUIDs];

        v14 = v16;
      }

      v17 = [a1[5] assignSessionEntityToFaceRecognition:v8 torsoRecognition:0 predictedLinkedEntityUUIDs:v14 availableSessionEntityUUIDs:a1[6] sessionEntityAssignment:&v41];
      if (!v17)
      {
        v17 = [a1[5] clusterSessionEntityToFaceRecognition:v8 torsoRecognition:0 predictedLinkedEntityUUIDs:v14 availableSessionEntityUUIDs:a1[6] sessionEntityAssignment:&v41];
      }

      if (v17 && v12)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = a1[5];
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543618;
          v45 = v21;
          v46 = 2112;
          v47 = v17;
          _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_INFO, "%{public}@Adding torso to existing sessionEntityUUID: %@ (face)", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        v22 = [a1[5] sessionEntities];
        v23 = [v22 objectForKeyedSubscript:v17];
        v24 = [v12 torsoprint];
        v43 = v24;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
        [v23 addTorsoprints:v25];
      }

      v26 = [v8 predictedLinkedEntityUUIDs];
      v27 = [v26 hmf_isEmpty] ^ 1;

      if (!v17 && v27 && v12)
      {
        v28 = [a1[5] clusterSessionEntityToFaceRecognition:0 torsoRecognition:v12 predictedLinkedEntityUUIDs:v14 availableSessionEntityUUIDs:a1[6] sessionEntityAssignment:&v41];
        if (v28)
        {
          v17 = v28;
          v29 = objc_autoreleasePoolPush();
          v30 = a1[5];
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = HMFGetLogIdentifier();
            *buf = 138543618;
            v45 = v32;
            v46 = 2112;
            v47 = v17;
            _os_log_impl(&dword_22D12F000, v31, OS_LOG_TYPE_INFO, "%{public}@Adding face to existing sessionEntityUUID: %@ (torso)", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v29);
          v33 = [a1[5] sessionEntities];
          v34 = [v33 objectForKeyedSubscript:v17];
          v35 = [v8 faceprint];
          v42 = v35;
          v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
          [v34 addFaceprints:v36];

          goto LABEL_39;
        }

LABEL_40:
        [a1[4] addObject:v3];
        goto LABEL_41;
      }
    }

    else
    {
      LOBYTE(v27) = 0;
      v17 = 0;
    }

    if ((v27 & 1) == 0 && v12 && !v17)
    {
      v37 = [v12 predictedLinkedEntityUUIDs];

      if (v37)
      {
        v38 = [v12 predictedLinkedEntityUUIDs];

        v14 = v38;
      }

      v39 = [a1[5] assignSessionEntityToFaceRecognition:0 torsoRecognition:v12 predictedLinkedEntityUUIDs:v14 availableSessionEntityUUIDs:a1[6] sessionEntityAssignment:&v41];
      if (v39)
      {
        v17 = v39;
        goto LABEL_39;
      }

      v17 = [a1[5] clusterSessionEntityToFaceRecognition:0 torsoRecognition:v12 predictedLinkedEntityUUIDs:v14 availableSessionEntityUUIDs:a1[6] sessionEntityAssignment:&v41];
    }

    if (!v17)
    {
      goto LABEL_40;
    }

LABEL_39:
    [a1[6] removeObject:v17];
    v40 = [HMISessionEntityManager updatePersonEventWithPersonEvent:v3 sessionEntityUUID:v17 predictedLinkedEntityUUIDs:v14 sessionEntityAssignment:v41];
    [a1[7] addObject:v40];

LABEL_41:
    goto LABEL_42;
  }

  [a1[4] addObject:v3];
LABEL_42:
}

void __99__HMISessionEntityManager_assignSessionEntitiesToPersonEvents_regionOfInterest_timeStamp_homeUUID___block_invoke_157(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 sessionEntityUUID];

  if (!v6)
  {
    [*(a1 + 32) addObject:v5];
    goto LABEL_17;
  }

  v7 = [*(*(a1 + 40) + 24) getBlobIDAtIndex:a3];
  v8 = [v5 torso];
  v9 = [v8 torsoRecognition];
  v10 = [v9 torsoprint];
  if ([v10 unrecognizable])
  {
    v11 = 0;
  }

  else
  {
    v12 = [v5 torso];
    v11 = [v12 torsoRecognition];
  }

  v31 = 0;
  v13 = [MEMORY[0x277CBEB98] set];
  v14 = [v5 face];
  v15 = [v14 faceRecognition];
  v16 = [v15 predictedLinkedEntityUUIDs];
  v17 = [v16 hmf_isEmpty];

  if ((v17 & 1) == 0)
  {
    v21 = [v5 face];
    v22 = [v21 faceRecognition];
    v20 = [v22 predictedLinkedEntityUUIDs];

    v13 = v21;
    goto LABEL_10;
  }

  v18 = [v11 predictedLinkedEntityUUIDs];
  v19 = [v18 hmf_isEmpty];

  if ((v19 & 1) == 0)
  {
    v20 = [v11 predictedLinkedEntityUUIDs];
LABEL_10:

    v13 = v20;
  }

  if (!v13)
  {
    v13 = [MEMORY[0x277CBEB98] set];
  }

  v23 = [v5 face];
  v24 = [v23 faceRecognition];
  v25 = v24 | v11;

  if (v25)
  {
    v26 = *(a1 + 40);
    v27 = [v5 face];
    v28 = [v27 faceRecognition];
    [v26 createSessionEntityWithUUID:v7 faceRecognition:v28 torsoRecognition:v11 predictedLinkedEntityUUIDs:v13 sessionEntityAssignment:&v31];

    v29 = v31;
  }

  else
  {
    v29 = 0;
  }

  v30 = [HMISessionEntityManager updatePersonEventWithPersonEvent:v5 sessionEntityUUID:v7 predictedLinkedEntityUUIDs:v13 sessionEntityAssignment:v29];
  [*(a1 + 32) addObject:v30];

LABEL_17:
}

void __99__HMISessionEntityManager_assignSessionEntitiesToPersonEvents_regionOfInterest_timeStamp_homeUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 sessionEntityUUID];
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 face];
    v7 = [v6 faceRecognition];
    v8 = [v3 torso];
    v9 = [v8 torsoRecognition];
    [v5 updatePreviousPrintsForSessionEntityUUID:v4 faceRecognition:v7 torsoRecognition:v9];

    v10 = [v3 face];
    v11 = [v10 faceRecognition];

    if (v11)
    {
      v12 = [v11 predictedLinkedEntityUUIDs];
      v13 = [v12 hmf_isEmpty] ^ 1;
    }

    else
    {
      v13 = 0;
    }

    v14 = [*(a1 + 32) sessionEntities];
    v15 = [v14 objectForKeyedSubscript:v4];

    if (v13)
    {
      v16 = [v15 faceRecognition];

      if (v16)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = *(a1 + 32);
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v38 = v20;
          v39 = 2112;
          v40 = v4;
          _os_log_impl(&dword_22D12F000, v19, OS_LOG_TYPE_INFO, "%{public}@Session entity %@ already has a face recognition, skipping subsequent match", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        v21 = objc_autoreleasePoolPush();
        v22 = *(a1 + 32);
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = HMFGetLogIdentifier();
          v25 = [v15 faceRecognition];
          *buf = 138543618;
          v38 = v24;
          v39 = 2112;
          v40 = v25;
          _os_log_impl(&dword_22D12F000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Existing face classification: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v26 = objc_autoreleasePoolPush();
        v27 = *(a1 + 32);
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543618;
          v38 = v29;
          v39 = 2112;
          v40 = v11;
          _os_log_impl(&dword_22D12F000, v28, OS_LOG_TYPE_DEBUG, "%{public}@New face classification: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
      }

      else
      {
        v30 = [v11 classifications];
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __99__HMISessionEntityManager_assignSessionEntitiesToPersonEvents_regionOfInterest_timeStamp_homeUUID___block_invoke_159;
        v36[3] = &unk_278752B38;
        v36[4] = *(a1 + 32);
        v31 = [v30 na_any:v36];

        if (v31)
        {
          v32 = objc_autoreleasePoolPush();
          v33 = *(a1 + 32);
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138543874;
            v38 = v35;
            v39 = 2112;
            v40 = v4;
            v41 = 2112;
            v42 = v11;
            _os_log_impl(&dword_22D12F000, v34, OS_LOG_TYPE_INFO, "%{public}@Assigning session entity %@ the face classification: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v32);
          [v15 setFaceRecognition:v11];
        }
      }
    }
  }
}

BOOL __99__HMISessionEntityManager_assignSessionEntitiesToPersonEvents_regionOfInterest_timeStamp_homeUUID___block_invoke_159(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 confidence];
  v5 = v4;
  [*(a1 + 32) faceVIPThresholdForTorsoAnnotation];
  v7 = v5 >= v6 && [v3 familiarity] == 2;

  return v7;
}

- (id)updateTorsoModelAndGetTorsoAnnotationsForHome:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v8;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@updateTorsoModelAndGetTorsoAnnotationsForHome: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [(HMISessionEntityManager *)v6 sessionEntities];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __73__HMISessionEntityManager_updateTorsoModelAndGetTorsoAnnotationsForHome___block_invoke;
  v18 = &unk_2787544C0;
  v19 = v6;
  v11 = v9;
  v20 = v11;
  [v10 na_each:&v15];

  if (([v11 hmf_isEmpty] & 1) == 0)
  {
    v12 = [v11 copy];
    [(HMISessionEntityManager *)v6 submitTorsoprintsToModelManagerForHome:v4 withTorsoAnnotations:v12];
  }

  v13 = [v11 copy];

  return v13;
}

void __73__HMISessionEntityManager_updateTorsoModelAndGetTorsoAnnotationsForHome___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 faceRecognition];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 torsoprints];
    v10 = [v9 hmf_isEmpty];

    if ((v10 & 1) == 0)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v6 torsoprints];
        v20 = 138543618;
        v21 = v14;
        v22 = 2048;
        v23 = [v15 count];
        _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_INFO, "%{public}@Creating torso annotation with %lu torsoprints", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v16 = [HMITorsoAnnotation alloc];
      v17 = [v6 faceRecognition];
      v18 = [v6 torsoprints];
      v19 = [(HMITorsoAnnotation *)v16 initWithFaceRecognition:v17 torsoprints:v18];

      [*(a1 + 40) addObject:v19];
      [v6 flushTorsoprints];
    }
  }
}

- (id)assignSessionEntityToFaceRecognition:(id)a3 torsoRecognition:(id)a4 predictedLinkedEntityUUIDs:(id)a5 availableSessionEntityUUIDs:(id)a6 sessionEntityAssignment:(int64_t *)a7
{
  v78 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!(v12 | v13))
  {
    [HMISessionEntityManager assignSessionEntityToFaceRecognition:torsoRecognition:predictedLinkedEntityUUIDs:availableSessionEntityUUIDs:sessionEntityAssignment:];
    __break(1u);
  }

  v43 = a7;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__5;
  v70 = __Block_byref_object_dispose__5;
  v71 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__5;
  v64 = __Block_byref_object_dispose__5;
  v65 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 2139095039;
  v16 = v15;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 1;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __160__HMISessionEntityManager_assignSessionEntityToFaceRecognition_torsoRecognition_predictedLinkedEntityUUIDs_availableSessionEntityUUIDs_sessionEntityAssignment___block_invoke;
  v44[3] = &unk_2787544E8;
  v42 = self;
  v44[4] = self;
  v17 = v14;
  v45 = v17;
  v18 = v12;
  v46 = v18;
  v19 = v13;
  v47 = v19;
  v48 = &v56;
  v49 = &v52;
  v50 = &v66;
  v51 = &v60;
  [v16 na_each:v44];
  v20 = v67[5];
  if (v20)
  {
    if (*(v53 + 24))
    {
      v21 = &kHMIPersonTrackerFaceDistanceMinThreshold;
    }

    else
    {
      v21 = &kHMIPersonTrackerTorsoDistanceMinThreshold;
    }

    if (v57[6] < *v21)
    {
      if (v12)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = v42;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          v26 = v67[5];
          *buf = 138543618;
          v75 = v25;
          v76 = 2112;
          v77 = v26;
          _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_INFO, "%{public}@Adding face to existing sessionEntityUUID: %@ (VIP)", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
        v27 = v61[5];
        v28 = [v18 faceprint];
        v73 = v28;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
        [v27 addFaceprints:v29];
      }

      if (v13)
      {
        v30 = objc_autoreleasePoolPush();
        v31 = v42;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = HMFGetLogIdentifier();
          v34 = v67[5];
          *buf = 138543618;
          v75 = v33;
          v76 = 2112;
          v77 = v34;
          _os_log_impl(&dword_22D12F000, v32, OS_LOG_TYPE_INFO, "%{public}@Adding torso to existing sessionEntityUUID: %@ (VIP)", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v30);
        v35 = v61[5];
        v36 = [v19 torsoprint];
        v72 = v36;
        v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
        [v35 addTorsoprints:v37];
      }
    }

    v38 = v61[5];
    v39 = [v17 allObjects];
    [v38 addLinkedEntityUUIDs:v39];

    *v43 = 1;
    v20 = v67[5];
  }

  v40 = v20;

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v66, 8);

  return v40;
}

void __160__HMISessionEntityManager_assignSessionEntityToFaceRecognition_torsoRecognition_predictedLinkedEntityUUIDs_availableSessionEntityUUIDs_sessionEntityAssignment___block_invoke(uint64_t a1, void *a2)
{
  v21 = a2;
  v4 = [*(a1 + 32) sessionEntities];
  v5 = [v4 objectForKeyedSubscript:v21];

  v6 = *(a1 + 40);
  v7 = [v5 linkedEntityUUIDs];
  LODWORD(v6) = [v6 intersectsSet:v7];

  if (v6)
  {
    if (*(a1 + 48) && [v5 faceCount])
    {
      v8 = [*(a1 + 48) faceprint];
      v9 = [v8 data];
      v10 = [v5 faceCentroid];
      v11 = [v10 data];
      [HMIGreedyClustering faceDistanceFromDescriptor:v9 toDescriptor:v11];
      v13 = v12;
    }

    else
    {
      v13 = 3.4028e38;
    }

    if (*(a1 + 56) && [v5 torsoCount])
    {
      v14 = [*(a1 + 56) torsoprint];
      v15 = [v14 data];
      v16 = [v5 torsoCentroid];
      v17 = [v16 data];
      [HMIGreedyClustering faceDistanceFromDescriptor:v15 toDescriptor:v17];
      v19 = v18;
    }

    else
    {
      v19 = 3.4028e38;
    }

    v20 = v13 >= v19 ? v19 : v13;
    if (v20 < *(*(*(a1 + 64) + 8) + 24))
    {
      *(*(*(a1 + 72) + 8) + 24) = v13 <= v19;
      *(*(*(a1 + 64) + 8) + 24) = v20;
      objc_storeStrong((*(*(a1 + 80) + 8) + 40), a2);
      objc_storeStrong((*(*(a1 + 88) + 8) + 40), v5);
    }
  }
}

- (id)clusterSessionEntityToFaceRecognition:(id)a3 torsoRecognition:(id)a4 predictedLinkedEntityUUIDs:(id)a5 availableSessionEntityUUIDs:(id)a6 sessionEntityAssignment:(int64_t *)a7
{
  v65 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v36 = a5;
  v14 = a6;
  if (!(v12 | v13))
  {
    [HMISessionEntityManager assignSessionEntityToFaceRecognition:torsoRecognition:predictedLinkedEntityUUIDs:availableSessionEntityUUIDs:sessionEntityAssignment:];
    __break(1u);
  }

  v15 = v14;
  v56 = 0;
  v57[0] = &v56;
  v57[1] = 0x3032000000;
  v57[2] = __Block_byref_object_copy__5;
  v57[3] = __Block_byref_object_dispose__5;
  v58 = 0;
  v53 = 0;
  v54[0] = &v53;
  v54[1] = 0x3032000000;
  v54[2] = __Block_byref_object_copy__5;
  v54[3] = __Block_byref_object_dispose__5;
  v55 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 2139095039;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 2139095039;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __161__HMISessionEntityManager_clusterSessionEntityToFaceRecognition_torsoRecognition_predictedLinkedEntityUUIDs_availableSessionEntityUUIDs_sessionEntityAssignment___block_invoke;
  v37[3] = &unk_278754560;
  v16 = v12;
  v38 = v16;
  v39 = self;
  v41 = &v49;
  v42 = &v56;
  v17 = v13;
  v40 = v17;
  v43 = &v45;
  v44 = &v53;
  [v15 na_each:v37];
  if (v50[6] >= 0.17)
  {
    if (v46[6] >= 0.15)
    {
      v19 = 0;
      goto LABEL_17;
    }

    v18 = v54;
  }

  else
  {
    v18 = v57;
  }

  *a7 = 3;
  v19 = *(*v18 + 40);
  if (v19)
  {
    v20 = [(HMISessionEntityManager *)self sessionEntities];
    v21 = [v20 objectForKeyedSubscript:v19];

    if (v12)
    {
      context = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v62 = v24;
        v63 = 2112;
        v64 = v19;
        _os_log_impl(&dword_22D12F000, v23, OS_LOG_TYPE_INFO, "%{public}@Adding face to existing sessionEntityUUID: %@ (NN)", buf, 0x16u);
      }

      objc_autoreleasePoolPop(context);
      v25 = [v16 faceprint];
      v60 = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
      [v21 addFaceprints:v26];
    }

    if (v13)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v62 = v30;
        v63 = 2112;
        v64 = v19;
        _os_log_impl(&dword_22D12F000, v29, OS_LOG_TYPE_INFO, "%{public}@Adding torso to existing sessionEntityUUID: %@ (NN)", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v31 = [v17 torsoprint];
      v59 = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
      [v21 addTorsoprints:v32];
    }

    v33 = [v36 allObjects];
    [v21 addLinkedEntityUUIDs:v33];
  }

LABEL_17:

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v56, 8);

  return v19;
}

void __161__HMISessionEntityManager_clusterSessionEntityToFaceRecognition_torsoRecognition_predictedLinkedEntityUUIDs_availableSessionEntityUUIDs_sessionEntityAssignment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = [*(*(a1 + 40) + 8) objectForKeyedSubscript:v3];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __161__HMISessionEntityManager_clusterSessionEntityToFaceRecognition_torsoRecognition_predictedLinkedEntityUUIDs_availableSessionEntityUUIDs_sessionEntityAssignment___block_invoke_2;
    v10[3] = &unk_278754510;
    v11 = *(a1 + 32);
    v13 = *(a1 + 56);
    v12 = v3;
    [v4 na_each:v10];
  }

  if (*(a1 + 48))
  {
    v5 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:v3];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __161__HMISessionEntityManager_clusterSessionEntityToFaceRecognition_torsoRecognition_predictedLinkedEntityUUIDs_availableSessionEntityUUIDs_sessionEntityAssignment___block_invoke_3;
    v6[3] = &unk_278754538;
    v7 = *(a1 + 48);
    v9 = *(a1 + 72);
    v8 = v3;
    [v5 na_each:v6];
  }
}

void __161__HMISessionEntityManager_clusterSessionEntityToFaceRecognition_torsoRecognition_predictedLinkedEntityUUIDs_availableSessionEntityUUIDs_sessionEntityAssignment___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 faceprint];
  v6 = [v5 data];
  v7 = [v4 data];

  [HMIGreedyClustering faceDistanceFromDescriptor:v6 toDescriptor:v7];
  v9 = v8;

  v10 = *(a1[6] + 8);
  if (v9 < *(v10 + 24))
  {
    *(v10 + 24) = v9;
    v11 = a1[5];
    v12 = (*(a1[7] + 8) + 40);

    objc_storeStrong(v12, v11);
  }
}

void __161__HMISessionEntityManager_clusterSessionEntityToFaceRecognition_torsoRecognition_predictedLinkedEntityUUIDs_availableSessionEntityUUIDs_sessionEntityAssignment___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 torsoprint];
  v6 = [v5 data];
  v7 = [v4 data];

  [HMIGreedyClustering faceDistanceFromDescriptor:v6 toDescriptor:v7];
  v9 = v8;

  v10 = *(a1[6] + 8);
  if (v9 < *(v10 + 24))
  {
    *(v10 + 24) = v9;
    v11 = a1[5];
    v12 = (*(a1[7] + 8) + 40);

    objc_storeStrong(v12, v11);
  }
}

- (void)createSessionEntityWithUUID:(id)a3 faceRecognition:(id)a4 torsoRecognition:(id)a5 predictedLinkedEntityUUIDs:(id)a6 sessionEntityAssignment:(int64_t *)a7
{
  v62 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!(v13 | v14))
  {
    [HMISessionEntityManager assignSessionEntityToFaceRecognition:torsoRecognition:predictedLinkedEntityUUIDs:availableSessionEntityUUIDs:sessionEntityAssignment:];
  }

  v16 = v15;
  v17 = [(HMISessionEntityManager *)self sessionEntities];
  v18 = [v17 objectForKeyedSubscript:v12];

  if (!v18)
  {
    *a7 = 5;
    v32 = [(HMISessionEntityManager *)self sessionEntities];
    v33 = [v32 count];

    if (v33 > 0x3B)
    {
      goto LABEL_26;
    }

    if (v13)
    {
      v34 = objc_autoreleasePoolPush();
      v35 = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543618;
        v59 = v37;
        v60 = 2112;
        v61 = v12;
        _os_log_impl(&dword_22D12F000, v36, OS_LOG_TYPE_INFO, "%{public}@Adding new face sessionEntityUUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      v38 = [HMIMutableCluster alloc];
      v39 = [v13 faceprint];
      v40 = [(HMIMutableCluster *)v38 initWithFaceprint:v39];

      if (!v14)
      {
        goto LABEL_25;
      }

      v54 = v16;
      v41 = objc_autoreleasePoolPush();
      v42 = v35;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543618;
        v59 = v44;
        v60 = 2112;
        v61 = v12;
        _os_log_impl(&dword_22D12F000, v43, OS_LOG_TYPE_INFO, "%{public}@Adding new torso sessionEntityUUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v41);
      v45 = [v14 torsoprint];
      v55 = v45;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
      [(HMIMutableCluster *)v40 addTorsoprints:v46];

      v16 = v54;
    }

    else
    {
      if (!v14)
      {
        v40 = 0;
        goto LABEL_25;
      }

      v47 = objc_autoreleasePoolPush();
      v48 = self;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = HMFGetLogIdentifier();
        *buf = 138543618;
        v59 = v50;
        v60 = 2112;
        v61 = v12;
        _os_log_impl(&dword_22D12F000, v49, OS_LOG_TYPE_INFO, "%{public}@Adding new torso sessionEntityUUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v47);
      v51 = [HMIMutableCluster alloc];
      v45 = [v14 torsoprint];
      v40 = [(HMIMutableCluster *)v51 initWithTorsoprint:v45];
    }

LABEL_25:
    v52 = [v16 allObjects];
    [(HMIMutableCluster *)v40 addLinkedEntityUUIDs:v52];

    v53 = [(HMISessionEntityManager *)self sessionEntities];
    [v53 setObject:v40 forKeyedSubscript:v12];

    goto LABEL_26;
  }

  if (v13)
  {
    v54 = v16;
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v22;
      v60 = 2112;
      v61 = v12;
      _os_log_impl(&dword_22D12F000, v21, OS_LOG_TYPE_INFO, "%{public}@Adding face to existing sessionEntityUUID: %@ (track)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [v13 faceprint];
    v57 = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
    [v18 addFaceprints:v24];

    v16 = v54;
  }

  if (v14)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v28;
      v60 = 2112;
      v61 = v12;
      _os_log_impl(&dword_22D12F000, v27, OS_LOG_TYPE_INFO, "%{public}@Adding torso to existing sessionEntityUUID: %@ (track)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [v14 torsoprint];
    v56 = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
    [v18 addTorsoprints:v30];
  }

  v31 = [v16 allObjects];
  [v18 addLinkedEntityUUIDs:v31];

  *a7 = 2;
LABEL_26:
}

- (void)updatePreviousPrintsForSessionEntityUUID:(id)a3 faceRecognition:(id)a4 torsoRecognition:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = [(NSMutableDictionary *)self->_sessionUUIDToPreviousFaceprints objectForKeyedSubscript:v16];
    if (v10)
    {
      v11 = v10;
      if ([v10 count] == 5)
      {
        [v11 removeObjectAtIndex:0];
      }
    }

    else
    {
      v11 = [MEMORY[0x277CBEB18] array];
      [(NSMutableDictionary *)self->_sessionUUIDToPreviousFaceprints setObject:v11 forKeyedSubscript:v16];
    }

    v12 = [v8 faceprint];
    [v11 addObject:v12];
  }

  if (v9)
  {
    v13 = [(NSMutableDictionary *)self->_sessionUUIDToPreviousTorsoprints objectForKeyedSubscript:v16];
    if (v13)
    {
      v14 = v13;
      if ([v13 count] == 5)
      {
        [v14 removeObjectAtIndex:0];
      }
    }

    else
    {
      v14 = [MEMORY[0x277CBEB18] array];
      [(NSMutableDictionary *)self->_sessionUUIDToPreviousTorsoprints setObject:v14 forKeyedSubscript:v16];
    }

    v15 = [v9 torsoprint];
    [v14 addObject:v15];
  }
}

+ (id)updatePersonEventWithPersonEvent:(id)a3 sessionEntityUUID:(id)a4 predictedLinkedEntityUUIDs:(id)a5 sessionEntityAssignment:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 face];
  v14 = [v10 face];
  if (v14)
  {
    v15 = v14;
    v16 = [v10 face];
    v17 = [v16 faceRecognition];

    if (v17)
    {
      v18 = [v10 face];
      v19 = [v18 faceRecognition];

      v20 = [v19 classifications];
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __129__HMISessionEntityManager_updatePersonEventWithPersonEvent_sessionEntityUUID_predictedLinkedEntityUUIDs_sessionEntityAssignment___block_invoke;
      v92[3] = &unk_278754588;
      v21 = v11;
      v93 = v21;
      v94 = a1;
      v85 = [v20 na_map:v92];

      v22 = [HMIFaceRecognition alloc];
      v86 = v19;
      v23 = [v19 faceCrop];
      [v19 faceprint];
      v24 = v90 = v13;
      [v19 faceQualityScore];
      v82 = [(HMIFaceRecognition *)v22 initWithFaceCrop:v23 faceprint:v24 classifications:v85 predictedLinkedEntityUUIDs:v12 faceQualityScore:a6 sessionEntityAssignment:v21 sessionEntityUUID:?];

      v80 = [HMIVideoAnalyzerEventFace alloc];
      v84 = [v10 face];
      [v84 confidence];
      v79 = v88 = v11;
      v83 = [v10 face];
      [v83 boundingBox];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v33 = [v10 face];
      v34 = [v33 yaw];
      v35 = [v10 face];
      [v35 roll];
      v37 = v36 = v12;
      [v10 face];
      v39 = v38 = a6;
      v40 = [v39 userInfo];
      v81 = [(HMIVideoAnalyzerEventFace *)v80 initWithConfidence:v79 boundingBox:v34 yaw:v37 roll:v82 faceRecognition:0 torsoAnnotation:v40 userInfo:v26, v28, v30, v32];

      a6 = v38;
      v12 = v36;

      v11 = v88;
      v13 = v81;
    }
  }

  v41 = [v10 torso];
  v42 = [v10 torso];
  if (v42)
  {
    v43 = v42;
    v44 = [v10 torso];
    v45 = [v44 torsoRecognition];

    if (v45)
    {
      v89 = v12;
      v91 = v13;
      v46 = [v10 torso];
      v47 = [v46 torsoRecognition];
      v48 = [v47 torsoprint];
      v49 = [v48 unrecognizable];

      if (v49)
      {
        v50 = 0;
      }

      else
      {
        v51 = [v10 torso];
        v52 = [v51 torsoRecognition];

        v53 = [HMITorsoClassification alloc];
        v54 = [v52 classification];
        v55 = [v54 personUUID];
        v56 = [v52 classification];
        v57 = [v56 sourceUUID];
        [v52 classification];
        v58 = v87 = a6;
        [v58 confidence];
        v59 = [(HMITorsoClassification *)v53 initWithPersonUUID:v55 sourceUUID:v57 confidence:?];

        v60 = [HMITorsoRecognition alloc];
        v61 = [v52 torsoprint];
        v50 = [(HMITorsoRecognition *)v60 initWithTorsoprint:v61 classification:v59 predictedLinkedEntityUUIDs:v89 sessionEntityAssignment:v87 sessionEntityUUID:v11];
      }

      v62 = [HMIVideoAnalyzerEventTorso alloc];
      v63 = [v10 torso];
      v64 = [v63 confidence];
      v65 = [v10 torso];
      [v65 boundingBox];
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;
      v74 = [v10 torso];
      v75 = [v74 roll];
      v76 = [(HMIVideoAnalyzerEventTorso *)v62 initWithConfidence:v64 boundingBox:v75 roll:v50 torsoRecognition:v67, v69, v71, v73];

      v41 = v76;
      v12 = v89;
      v13 = v91;
    }
  }

  v77 = [v10 copyWithFaceEvent:v13 torso:v41];

  return v77;
}

HMIFaceClassification *__129__HMISessionEntityManager_updatePersonEventWithPersonEvent_sessionEntityUUID_predictedLinkedEntityUUIDs_sessionEntityAssignment___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [HMIFaceClassification alloc];
  v5 = [v3 personUUID];
  v6 = [v3 sourceUUID];
  v7 = *(a1 + 32);
  v8 = [v3 faceCrop];
  v9 = [v3 faceprint];
  [v3 confidence];
  v11 = -[HMIFaceClassification initWithUUID:sourceUUID:sessionEntityUUID:faceCrop:faceprint:confidence:fromTorsoClassification:familiarity:](v4, "initWithUUID:sourceUUID:sessionEntityUUID:faceCrop:faceprint:confidence:fromTorsoClassification:familiarity:", v5, v6, v7, v8, v9, [v3 fromTorsoClassification], v10, objc_msgSend(v3, "familiarity"));

  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 40);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v15;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);

  return v11;
}

@end