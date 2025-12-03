@interface HMICleanupImpureHomePersonsOperation
+ (id)shortDescription;
- (BOOL)isAffectedDate:(id)date;
- (BOOL)isIdentityPureWithFaceprints:(id)faceprints person:(id)person;
- (HMICleanupImpureHomePersonsOperation)initWithHomeUUID:(id)d dataSource:(id)source;
- (NSString)shortDescription;
- (id)fetchFaceCropsForPerson:(id)person;
- (id)fetchOrCreateFaceprintsForCrops:(id)crops person:(id)person;
- (id)fetchPersons;
- (id)ffArchiveRootURLWithError:(id *)error;
- (void)dumpFFDataToCacheForPerson:(id)person personFaceCrops:(id)crops;
- (void)handleCleanupForPerson:(id)person;
- (void)main;
- (void)mainInsideAutoreleasePool;
- (void)purgeURLIfNeeded:(id)needed;
- (void)reassociateFaceCropsWithUnknownSource:(id)source toPersonUUID:(id)d;
- (void)removeFaceCropsWithUUIDs:(id)ds;
- (void)removePerson:(id)person;
@end

@implementation HMICleanupImpureHomePersonsOperation

- (HMICleanupImpureHomePersonsOperation)initWithHomeUUID:(id)d dataSource:(id)source
{
  dCopy = d;
  sourceCopy = source;
  v19.receiver = self;
  v19.super_class = HMICleanupImpureHomePersonsOperation;
  v9 = [(HMFOperation *)&v19 initWithTimeout:500.0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_homeUUID, d);
    objc_storeStrong(&v10->_dataSource, source);
    v11 = [[HMIGreedyClustering alloc] initWithError:0];
    clusterer = v10->_clusterer;
    v10->_clusterer = v11;

    v13 = objc_alloc_init(HMIFaceprinter);
    faceprinter = v10->_faceprinter;
    v10->_faceprinter = v13;

    v10->_numFailures = 0;
    v15 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v15 setDateFormat:@"yyyy-MM-dd"];
    v16 = [v15 dateFromString:@"2021-05-15"];
    targetDate = v10->_targetDate;
    v10->_targetDate = v16;
  }

  return v10;
}

- (id)fetchPersons
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v24 = 138543362;
    v25 = v6;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_INFO, "%{public}@Fetching persons for HMICleanupImpureHomePersonsOperation", &v24, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [HMIFetchPersonsOperation alloc];
  dataSource = [(HMICleanupImpureHomePersonsOperation *)selfCopy dataSource];
  v9 = [(HMIFetchPersonsOperation *)v7 initWithDataSource:dataSource];

  [(HMFOperation *)v9 start];
  [(HMIFetchPersonsOperation *)v9 waitUntilFinished];
  error = [(HMFOperation *)v9 error];
  if (error)
  {

LABEL_5:
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      error2 = [(HMFOperation *)v9 error];
      v24 = 138543618;
      v25 = v14;
      v26 = 2112;
      v27 = error2;
      _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_ERROR, "%{public}@Error fetching persons, error:%@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMICleanupImpureHomePersonsOperation *)v12 setNumFailures:[(HMICleanupImpureHomePersonsOperation *)v12 numFailures]+ 1];
    persons2 = 0;
    goto LABEL_12;
  }

  persons = [(HMIFetchPersonsOperation *)v9 persons];

  if (!persons)
  {
    goto LABEL_5;
  }

  persons2 = [(HMIFetchPersonsOperation *)v9 persons];
  v18 = objc_autoreleasePoolPush();
  v19 = selfCopy;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [persons2 count];
    v24 = 138543618;
    v25 = v21;
    v26 = 2048;
    v27 = v22;
    _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_INFO, "%{public}@Fetched %lu persons", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
LABEL_12:

  return persons2;
}

- (id)fetchFaceCropsForPerson:(id)person
{
  v32 = *MEMORY[0x277D85DE8];
  personCopy = person;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v26 = 138543618;
    v27 = v8;
    v28 = 2112;
    v29 = personCopy;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching face crops for person: %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [HMIFetchPersonFaceCropsOperation alloc];
  dataSource = [(HMICleanupImpureHomePersonsOperation *)selfCopy dataSource];
  v11 = [(HMIFetchPersonFaceCropsOperation *)v9 initWithDataSource:dataSource person:personCopy];

  [(HMFOperation *)v11 start];
  [(HMIFetchPersonFaceCropsOperation *)v11 waitUntilFinished];
  error = [(HMFOperation *)v11 error];
  if (error)
  {

LABEL_5:
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      error2 = [(HMFOperation *)v11 error];
      v26 = 138543874;
      v27 = v16;
      v28 = 2112;
      v29 = personCopy;
      v30 = 2112;
      v31 = error2;
      _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_ERROR, "%{public}@Error fetching facecrops for person:%@, error:%@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    [(HMICleanupImpureHomePersonsOperation *)v14 setNumFailures:[(HMICleanupImpureHomePersonsOperation *)v14 numFailures]+ 1];
    personFaceCrops2 = 0;
    goto LABEL_12;
  }

  personFaceCrops = [(HMIFetchPersonFaceCropsOperation *)v11 personFaceCrops];

  if (!personFaceCrops)
  {
    goto LABEL_5;
  }

  personFaceCrops2 = [(HMIFetchPersonFaceCropsOperation *)v11 personFaceCrops];
  v20 = objc_autoreleasePoolPush();
  v21 = selfCopy;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = [personFaceCrops2 count];
    v26 = 138543874;
    v27 = v23;
    v28 = 2048;
    v29 = v24;
    v30 = 2112;
    v31 = personCopy;
    _os_log_impl(&dword_22D12F000, v22, OS_LOG_TYPE_INFO, "%{public}@Fetched %lu face crops for person: %@", &v26, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
LABEL_12:

  return personFaceCrops2;
}

- (id)fetchOrCreateFaceprintsForCrops:(id)crops person:(id)person
{
  v36 = *MEMORY[0x277D85DE8];
  cropsCopy = crops;
  personCopy = person;
  v8 = [cropsCopy na_map:&__block_literal_global_33];
  v9 = [HMIFetchFaceprintsForFaceCropsOperation alloc];
  dataSource = [(HMICleanupImpureHomePersonsOperation *)self dataSource];
  v11 = [(HMIFetchFaceprintsForFaceCropsOperation *)v9 initWithDataSource:dataSource faceCropUUIDs:v8];

  [(HMFOperation *)v11 start];
  [(HMIFetchFaceprintsForFaceCropsOperation *)v11 waitUntilFinished];
  error = [(HMFOperation *)v11 error];

  if (error)
  {
    [(HMICleanupImpureHomePersonsOperation *)self setNumFailures:[(HMICleanupImpureHomePersonsOperation *)self numFailures]+ 1];
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      error2 = [(HMFOperation *)v11 error];
      *buf = 138543874;
      v31 = v16;
      v32 = 2112;
      v33 = personCopy;
      v34 = 2112;
      v35 = error2;
      _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_ERROR, "%{public}@Ignoring error fetching faceprints for person:%@, error:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
  }

  faceprinter = [(HMICleanupImpureHomePersonsOperation *)self faceprinter];
  faceprints = [(HMIFetchFaceprintsForFaceCropsOperation *)v11 faceprints];
  v29 = 0;
  v20 = [faceprinter updatedFaceprintsForFaceCrops:cropsCopy withExistingFaceprints:faceprints error:&v29];
  v21 = v29;

  if (v20)
  {
    allAtCurrentVersion = [v20 allAtCurrentVersion];
    allObjects = [allAtCurrentVersion allObjects];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543874;
      v31 = v27;
      v32 = 2112;
      v33 = personCopy;
      v34 = 2112;
      v35 = v21;
      _os_log_impl(&dword_22D12F000, v26, OS_LOG_TYPE_ERROR, "%{public}@Error faceprinting face crops for person:%@, error:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    [(HMICleanupImpureHomePersonsOperation *)selfCopy2 setNumFailures:[(HMICleanupImpureHomePersonsOperation *)selfCopy2 numFailures]+ 1];
    allObjects = 0;
  }

  return allObjects;
}

- (BOOL)isIdentityPureWithFaceprints:(id)faceprints person:(id)person
{
  v80 = *MEMORY[0x277D85DE8];
  faceprintsCopy = faceprints;
  personCopy = person;
  v8 = [HMIFaceUtilities faceObservationsFromFaceprintsForClustering:faceprintsCopy];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v75 = v12;
    v76 = 2048;
    v77 = [v8 count];
    _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_INFO, "%{public}@Number of faceprints to cluster: %lu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  clusterer = selfCopy->_clusterer;
  v71 = 0;
  v14 = [(HMIGreedyClustering *)clusterer getClustersWithFaces:v8 error:&v71];
  v15 = v71;
  if (!v14)
  {
    [(HMICleanupImpureHomePersonsOperation *)selfCopy setNumFailures:[(HMICleanupImpureHomePersonsOperation *)selfCopy numFailures]+ 1];
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      uUID = [personCopy UUID];
      *buf = 138543874;
      v75 = v25;
      v76 = 2112;
      v77 = uUID;
      v78 = 2112;
      v79 = v15;
      _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_ERROR, "%{public}@Clustering error:%@ treating identity: %@ as impure", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    goto LABEL_24;
  }

  if ([v14 count] <= 1)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      uUID2 = [personCopy UUID];
      *buf = 138543618;
      v75 = v19;
      v76 = 2112;
      v77 = uUID2;
      _os_log_impl(&dword_22D12F000, v18, OS_LOG_TYPE_INFO, "%{public}@0 or 1 cluster exists, treating identity: %@ as pure", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v21 = 1;
    goto LABEL_25;
  }

  name = [personCopy name];

  if (!name)
  {
    v32 = objc_autoreleasePoolPush();
    v33 = selfCopy;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v53 = [v14 count];
      *buf = 138543874;
      v75 = v35;
      v76 = 2112;
      v77 = personCopy;
      v78 = 2048;
      v79 = v53;
      v37 = "%{public}@Unnamed person %@ has %lu clusters, treating as impure";
      goto LABEL_22;
    }

LABEL_23:

    objc_autoreleasePoolPop(v32);
LABEL_24:
    v21 = 0;
    goto LABEL_25;
  }

  name2 = [personCopy name];
  if (name2)
  {
    v29 = name2;
    personLinks = [personCopy personLinks];
    v31 = [personLinks count];

    if (v31)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = selfCopy;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        v36 = [v14 count];
        *buf = 138543874;
        v75 = v35;
        v76 = 2112;
        v77 = personCopy;
        v78 = 2048;
        v79 = v36;
        v37 = "%{public}@Named person %@ with atleast 1 personLink has %lu clusters, treating as impure";
LABEL_22:
        _os_log_impl(&dword_22D12F000, v34, OS_LOG_TYPE_INFO, v37, buf, 0x20u);

        goto LABEL_23;
      }

      goto LABEL_23;
    }
  }

  v38 = objc_autoreleasePoolPush();
  v39 = selfCopy;
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v41 = HMFGetLogIdentifier();
    v42 = [v14 count];
    [personCopy UUID];
    v43 = v61 = v38;
    *buf = 138543874;
    v75 = v41;
    v76 = 2048;
    v77 = v42;
    v78 = 2112;
    v79 = v43;
    _os_log_impl(&dword_22D12F000, v40, OS_LOG_TYPE_INFO, "%{public}@%lu clusters exists, for person %@ trying to club clusters using vip model", buf, 0x20u);

    v38 = v61;
  }

  objc_autoreleasePoolPop(v38);
  v44 = [v14 sortedArrayUsingComparator:&__block_literal_global_166];

  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __76__HMICleanupImpureHomePersonsOperation_isIdentityPureWithFaceprints_person___block_invoke_2;
  v70[3] = &unk_2787555E8;
  v70[4] = v39;
  [v44 na_each:v70];
  v45 = [v44 objectAtIndexedSubscript:0];
  objects = [v45 objects];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __76__HMICleanupImpureHomePersonsOperation_isIdentityPureWithFaceprints_person___block_invoke_168;
  v68[3] = &unk_278755610;
  v47 = v8;
  v69 = v47;
  v48 = [objects na_map:v68];

  uUID3 = [MEMORY[0x277CCAD78] UUID];
  v72 = uUID3;
  v60 = v48;
  v73 = v48;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  v67 = 0;
  v51 = [HMIPersonsModelManager personsModelWithFaceObservationsByID:v50 error:&v67];
  v62 = v67;

  if (v51)
  {
    v52 = [v44 subarrayWithRange:{1, objc_msgSend(v44, "count") - 1}];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __76__HMICleanupImpureHomePersonsOperation_isIdentityPureWithFaceprints_person___block_invoke_173;
    v63[3] = &unk_278755638;
    v64 = v47;
    v65 = v51;
    v66 = v39;
    v21 = [v52 na_all:v63];
  }

  else
  {
    v55 = objc_autoreleasePoolPush();
    v56 = v39;
    v57 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v58 = v59 = v55;
      *buf = 138543618;
      v75 = v58;
      v76 = 2112;
      v77 = v62;
      _os_log_impl(&dword_22D12F000, v57, OS_LOG_TYPE_ERROR, "%{public}@Error while creating vnpersonsmodel: %@, treating identity as impure", buf, 0x16u);

      v55 = v59;
    }

    objc_autoreleasePoolPop(v55);
    v21 = 0;
  }

LABEL_25:
  return v21;
}

uint64_t __76__HMICleanupImpureHomePersonsOperation_isIdentityPureWithFaceprints_person___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 objects];
  v7 = [v6 count];
  v8 = [v5 objects];
  v9 = [v8 count];

  if (v7 <= v9)
  {
    v11 = [v4 objects];
    v12 = [v11 count];
    v13 = [v5 objects];
    v10 = v12 < [v13 count];
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

void __76__HMICleanupImpureHomePersonsOperation_isIdentityPureWithFaceprints_person___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v3 objects];
    v9 = 138543618;
    v10 = v7;
    v11 = 2048;
    v12 = [v8 count];
    _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_INFO, "%{public}@Cluster size: %lu", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t __76__HMICleanupImpureHomePersonsOperation_isIdentityPureWithFaceprints_person___block_invoke_168(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 intValue];

  return [v2 objectAtIndexedSubscript:v3];
}

BOOL __76__HMICleanupImpureHomePersonsOperation_isIdentityPureWithFaceprints_person___block_invoke_173(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [HMIGreedyClustering centermostFaceprintInCluster:v3 faceObservations:*(a1 + 32)];
  v5 = *(a1 + 40);
  v16 = 0;
  v6 = [v5 predictPersonFromFaceObservation:v4 limit:1 canceller:0 error:&v16];
  v7 = v16;
  if (v6 && [v6 count])
  {
    v8 = [v6 firstObject];
    [v8 confidence];
    v10 = v9 > 0.6;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 48);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to predict using VNPersonsModel, error: %@, treating identity as impure", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  return v10;
}

- (void)removeFaceCropsWithUUIDs:(id)ds
{
  v18 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = [HMIRemoveFaceCropsOperation alloc];
  dataSource = [(HMICleanupImpureHomePersonsOperation *)self dataSource];
  v7 = [(HMIRemoveFaceCropsOperation *)v5 initWithDataSource:dataSource faceCropUUIDs:dsCopy];

  [(HMFOperation *)v7 start];
  [(HMIRemoveFaceCropsOperation *)v7 waitUntilFinished];
  error = [(HMFOperation *)v7 error];

  if (error)
  {
    [(HMICleanupImpureHomePersonsOperation *)self setNumFailures:[(HMICleanupImpureHomePersonsOperation *)self numFailures]+ 1];
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      error2 = [(HMFOperation *)v7 error];
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = error2;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Error while removing facecrops %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)reassociateFaceCropsWithUnknownSource:(id)source toPersonUUID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  dCopy = d;
  v8 = [sourceCopy na_map:&__block_literal_global_178_0];
  if ([v8 count])
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v22 = 138543874;
      v23 = v12;
      v24 = 2048;
      v25 = [v8 count];
      v26 = 2112;
      v27 = dCopy;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_INFO, "%{public}@Reassociating %lu face crops to person UUID: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [HMIAssociateFaceCropsOperation alloc];
    dataSource = [(HMICleanupImpureHomePersonsOperation *)selfCopy dataSource];
    v15 = [(HMIAssociateFaceCropsOperation *)v13 initWithDataSource:dataSource faceCropUUIDs:v8 personUUID:dCopy source:4];

    [(HMFOperation *)v15 start];
    [(HMIAssociateFaceCropsOperation *)v15 waitUntilFinished];
    error = [(HMFOperation *)v15 error];

    if (error)
    {
      [(HMICleanupImpureHomePersonsOperation *)selfCopy setNumFailures:[(HMICleanupImpureHomePersonsOperation *)selfCopy numFailures]+ 1];
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        error2 = [(HMFOperation *)v15 error];
        v22 = 138543618;
        v23 = v20;
        v24 = 2112;
        v25 = error2;
        _os_log_impl(&dword_22D12F000, v19, OS_LOG_TYPE_ERROR, "%{public}@Error while reassociating facecrops %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }
}

id __91__HMICleanupImpureHomePersonsOperation_reassociateFaceCropsWithUnknownSource_toPersonUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 source])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 UUID];
  }

  return v3;
}

- (id)ffArchiveRootURLWithError:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = HMIURLForCacheDirectory(error);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 URLByAppendingPathComponent:@"FFArchive" isDirectory:1];
    homeUUID = [(HMICleanupImpureHomePersonsOperation *)self homeUUID];
    uUIDString = [homeUUID UUIDString];
    v10 = [v7 URLByAppendingPathComponent:uUIDString isDirectory:1];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v10 path];
    v13 = [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:error];

    if (v13)
    {
      v14 = v10;
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        path2 = [v10 path];
        v21 = 138543618;
        v22 = v18;
        v23 = 2112;
        v24 = path2;
        _os_log_impl(&dword_22D12F000, v17, OS_LOG_TYPE_ERROR, "%{public}@Error creating directory %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)purgeURLIfNeeded:(id)needed
{
  v59 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [neededCopy path];
  v38 = [defaultManager enumeratorAtPath:path];

  array = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v6 = 0;
  v34 = *MEMORY[0x277CCA150];
  *&v7 = 138543874;
  v33 = v7;
  while (1)
  {
    nextObject = [v38 nextObject];

    if (!nextObject)
    {
      break;
    }

    path2 = [neededCopy path];
    v10 = [path2 stringByAppendingPathComponent:nextObject];

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v48 = 0;
    v12 = [defaultManager2 attributesOfItemAtPath:v10 error:&v48];
    v13 = v48;

    if (v12)
    {
      [array addObject:nextObject];
      fileSize = [v12 fileSize];
      v50[3] += fileSize;
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v12, "fileSize")}];
      [dictionary setObject:v15 forKeyedSubscript:nextObject];

      defaultManager3 = [v12 objectForKey:v34];
      if (!defaultManager3)
      {
        defaultManager3 = [MEMORY[0x277CBEAA8] now];
      }

      [dictionary2 setObject:defaultManager3 forKeyedSubscript:nextObject];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        selfCopy2 = self;
        v21 = HMFGetLogIdentifier();
        path3 = [neededCopy path];
        *buf = v33;
        v54 = v21;
        v55 = 2112;
        v56 = nextObject;
        v57 = 2112;
        v58 = path3;
        _os_log_impl(&dword_22D12F000, v19, OS_LOG_TYPE_ERROR, "%{public}@Error fetching attributes of the file: %@ at: %@. Attempting to delete it", buf, 0x20u);

        self = selfCopy2;
      }

      objc_autoreleasePoolPop(v17);
      defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
      v47 = v13;
      [defaultManager3 removeItemAtPath:v10 error:&v47];
      v23 = v47;

      v13 = v23;
    }

    v6 = nextObject;
  }

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __57__HMICleanupImpureHomePersonsOperation_purgeURLIfNeeded___block_invoke;
  v45[3] = &unk_278755660;
  v24 = dictionary2;
  v46 = v24;
  [array sortUsingComparator:v45];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __57__HMICleanupImpureHomePersonsOperation_purgeURLIfNeeded___block_invoke_2;
  v40[3] = &unk_278755688;
  v44 = &v49;
  v25 = neededCopy;
  v41 = v25;
  selfCopy3 = self;
  v26 = dictionary;
  v43 = v26;
  [array enumerateObjectsUsingBlock:v40];
  v27 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    path4 = [v25 path];
    v32 = (v50[3] >> 10);
    *buf = v33;
    v54 = v30;
    v55 = 2112;
    v56 = path4;
    v57 = 2048;
    v58 = v32;
    _os_log_impl(&dword_22D12F000, v29, OS_LOG_TYPE_INFO, "%{public}@Disk buffer size of %@: %ld KB", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v27);
  _Block_object_dispose(&v49, 8);
}

uint64_t __57__HMICleanupImpureHomePersonsOperation_purgeURLIfNeeded___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 compare:v8];
  return v9;
}

void __57__HMICleanupImpureHomePersonsOperation_purgeURLIfNeeded___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (*(*(*(a1 + 56) + 8) + 24) >> 22 > 0x18uLL)
  {
    v7 = [*(a1 + 32) path];
    v8 = [v7 stringByAppendingPathComponent:v6];

    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = 0;
    v10 = [v9 removeItemAtPath:v8 error:&v19];
    v11 = v19;

    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    v15 = v14;
    if (v10)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543874;
        v21 = v16;
        v22 = 2112;
        v23 = v8;
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_INFO, "%{public}@Deleted %@ to free up some space, error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      v17 = [*(a1 + 48) objectForKeyedSubscript:v6];
      *(*(*(a1 + 56) + 8) + 24) -= [v17 integerValue];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543874;
        v21 = v18;
        v22 = 2112;
        v23 = v8;
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_ERROR, "%{public}@Error while deleting %@ to free up some space, error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  else
  {
    *a4 = 1;
  }
}

- (void)dumpFFDataToCacheForPerson:(id)person personFaceCrops:(id)crops
{
  v77[2] = *MEMORY[0x277D85DE8];
  personCopy = person;
  cropsCopy = crops;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    homeUUID = [(HMICleanupImpureHomePersonsOperation *)selfCopy homeUUID];
    *buf = 138543874;
    v66 = v11;
    v67 = 2112;
    v68 = homeUUID;
    v69 = 2112;
    v70 = personCopy;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_INFO, "%{public}@Archive familiar face data for home: %@ person: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  allObjects = [cropsCopy allObjects];
  v14 = [allObjects sortedArrayUsingComparator:&__block_literal_global_189];

  v76[0] = @"home";
  homeUUID2 = [(HMICleanupImpureHomePersonsOperation *)selfCopy homeUUID];
  uUIDString = [homeUUID2 UUIDString];
  v76[1] = @"homePersonsAndFaceCrops";
  v77[0] = uUIDString;
  v73[0] = @"person";
  v73[1] = @"faceCrops";
  v74[0] = personCopy;
  v74[1] = v14;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
  v75 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
  v77[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];

  v64 = 0;
  v20 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v64];
  v21 = v64;
  v22 = v21;
  if (v20)
  {
    v63 = v21;
    v23 = [(HMICleanupImpureHomePersonsOperation *)selfCopy ffArchiveRootURLWithError:&v63];
    v62 = v63;

    if (v23)
    {
      v60 = cropsCopy;
      v61 = v14;
      [(HMICleanupImpureHomePersonsOperation *)selfCopy purgeURLIfNeeded:v23];
      v24 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v24 setDateFormat:@"yyyy-MM-dd'T'HH-mm-ss"];
      v25 = [MEMORY[0x277CBEAA8] now];
      v59 = v24;
      v26 = [v24 stringFromDate:v25];

      v27 = MEMORY[0x277CCACA8];
      uUID = [personCopy UUID];
      uUIDString2 = [uUID UUIDString];
      v58 = v26;
      v30 = [v27 stringWithFormat:@"%@_%@.plist", uUIDString2, v26];
      v31 = [v23 URLByAppendingPathComponent:v30];
      path = [v31 path];

      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        homeUUID3 = [(HMICleanupImpureHomePersonsOperation *)v34 homeUUID];
        *buf = 138544130;
        v66 = v36;
        v67 = 2112;
        v68 = homeUUID3;
        v69 = 2112;
        v70 = personCopy;
        v71 = 2112;
        v72 = path;
        _os_log_impl(&dword_22D12F000, v35, OS_LOG_TYPE_INFO, "%{public}@Saving archived familiar face data for home: %@ person: %@ to: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v33);
      v14 = v61;
      if (([v20 writeToFile:path atomically:1] & 1) == 0)
      {
        v38 = objc_autoreleasePoolPush();
        v39 = v34;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543362;
          v66 = v41;
          _os_log_impl(&dword_22D12F000, v40, OS_LOG_TYPE_ERROR, "%{public}@Couldn't save FF archive", buf, 0xCu);

          v14 = v61;
        }

        objc_autoreleasePoolPop(v38);
      }

      v42 = objc_autoreleasePoolPush();
      v43 = v34;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = HMFGetLogIdentifier();
        *buf = 138543362;
        v66 = v45;
        _os_log_impl(&dword_22D12F000, v44, OS_LOG_TYPE_INFO, "%{public}@Saved FF archive", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v42);
      cropsCopy = v60;
    }

    else
    {
      v54 = objc_autoreleasePoolPush();
      v55 = selfCopy;
      v56 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = HMFGetLogIdentifier();
        *buf = 138543618;
        v66 = v57;
        v67 = 2112;
        v68 = v62;
        _os_log_impl(&dword_22D12F000, v56, OS_LOG_TYPE_ERROR, "%{public}@Couldn't get URL for home archives, error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v54);
    }

    v22 = v62;
  }

  else
  {
    v46 = objc_autoreleasePoolPush();
    v47 = selfCopy;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = HMFGetLogIdentifier();
      [personCopy UUID];
      v50 = personCopy;
      v51 = v19;
      v53 = v52 = v14;
      *buf = 138543874;
      v66 = v49;
      v67 = 2112;
      v68 = v53;
      v69 = 2112;
      v70 = v22;
      _os_log_impl(&dword_22D12F000, v48, OS_LOG_TYPE_ERROR, "%{public}@Cannot archive familiar face data for person %@, error: %@", buf, 0x20u);

      v14 = v52;
      v19 = v51;
      personCopy = v50;
      v20 = 0;
    }

    objc_autoreleasePoolPop(v46);
  }
}

uint64_t __83__HMICleanupImpureHomePersonsOperation_dumpFFDataToCacheForPerson_personFaceCrops___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 dateCreated];
  v6 = [v4 dateCreated];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  [(HMICleanupImpureHomePersonsOperation *)self mainInsideAutoreleasePool];

  objc_autoreleasePoolPop(v3);
}

- (void)handleCleanupForPerson:(id)person
{
  v64 = *MEMORY[0x277D85DE8];
  personCopy = person;
  v5 = [(HMICleanupImpureHomePersonsOperation *)self fetchFaceCropsForPerson:personCopy];
  v6 = v5;
  if (!v5 || ![v5 count])
  {
    v30 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v32 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
LABEL_27:

      objc_autoreleasePoolPop(v30);
      goto LABEL_28;
    }

    v33 = HMFGetLogIdentifier();
    uUID = [personCopy UUID];
    *buf = 138543618;
    v59 = v33;
    v60 = 2112;
    v61 = uUID;
    v35 = "%{public}@Skipping person %@ due to nil or 0 face crops";
LABEL_26:
    _os_log_impl(&dword_22D12F000, v32, OS_LOG_TYPE_INFO, v35, buf, 0x16u);

    goto LABEL_27;
  }

  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __63__HMICleanupImpureHomePersonsOperation_handleCleanupForPerson___block_invoke;
  v57[3] = &unk_278754108;
  v57[4] = self;
  if (([v6 na_any:v57] & 1) == 0)
  {
    if ([v6 na_any:&__block_literal_global_213])
    {
      v36 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = HMFGetLogIdentifier();
        uUID2 = [personCopy UUID];
        *buf = 138543618;
        v59 = v39;
        v60 = 2112;
        v61 = uUID2;
        _os_log_impl(&dword_22D12F000, v38, OS_LOG_TYPE_INFO, "%{public}@Person %@ has crops with unknown source, reassociating them", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v36);
      if (+[HMIPreference isInternalInstall])
      {
        [(HMICleanupImpureHomePersonsOperation *)selfCopy2 dumpFFDataToCacheForPerson:personCopy personFaceCrops:v6];
      }

      uUID3 = [personCopy UUID];
      [(HMICleanupImpureHomePersonsOperation *)selfCopy2 reassociateFaceCropsWithUnknownSource:v6 toPersonUUID:uUID3];
    }

    v30 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v32 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    v33 = HMFGetLogIdentifier();
    uUID = [personCopy UUID];
    *buf = 138543618;
    v59 = v33;
    v60 = 2112;
    v61 = uUID;
    v35 = "%{public}@Skipping person %@ as all crops are either old or have a non-unknown source";
    goto LABEL_26;
  }

  if (+[HMIPreference isInternalInstall])
  {
    [(HMICleanupImpureHomePersonsOperation *)self dumpFFDataToCacheForPerson:personCopy personFaceCrops:v6];
  }

  v7 = [(HMICleanupImpureHomePersonsOperation *)self fetchOrCreateFaceprintsForCrops:v6 person:personCopy];
  if (v7)
  {
    v8 = [v6 na_map:&__block_literal_global_217];
    v9 = MEMORY[0x277CBEB98];
    v10 = [v7 na_map:&__block_literal_global_222];
    v11 = [v9 setWithArray:v10];

    v12 = v11;
    v13 = [v8 na_setByRemovingObjectsFromSet:v11];
    if ([v13 count])
    {
      v51 = v8;
      v14 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v17 = v49 = v14;
        v18 = v13;
        v19 = [v13 count];
        [personCopy UUID];
        v20 = v50 = v12;
        *buf = 138543874;
        v59 = v17;
        v60 = 2048;
        v61 = v19;
        v13 = v18;
        v62 = 2112;
        v63 = v20;
        _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_INFO, "%{public}@Removing %lu sentinel facecrops for person %@", buf, 0x20u);

        v12 = v50;
        v14 = v49;
      }

      objc_autoreleasePoolPop(v14);
      [(HMICleanupImpureHomePersonsOperation *)selfCopy4 removeFaceCropsWithUUIDs:v13];
      v8 = v51;
    }

    if ([v7 count])
    {
      v21 = [(HMICleanupImpureHomePersonsOperation *)self isIdentityPureWithFaceprints:v7 person:personCopy];
      v22 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v24 = HMFGetOSLogHandle();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
      if (v21)
      {
        v52 = v13;
        if (v25)
        {
          v26 = HMFGetLogIdentifier();
          uUID4 = [personCopy UUID];
          *buf = 138543618;
          v59 = v26;
          v60 = 2112;
          v61 = uUID4;
          _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_INFO, "%{public}@Found pure identity, skipping person %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __63__HMICleanupImpureHomePersonsOperation_handleCleanupForPerson___block_invoke_223;
        v55[3] = &unk_278754108;
        v56 = v12;
        v28 = [v6 na_filter:v55];
        uUID5 = [personCopy UUID];
        [(HMICleanupImpureHomePersonsOperation *)selfCopy5 reassociateFaceCropsWithUnknownSource:v28 toPersonUUID:uUID5];

        v13 = v52;
      }

      else
      {
        if (v25)
        {
          v47 = HMFGetLogIdentifier();
          [personCopy UUID];
          v48 = v54 = v13;
          *buf = 138543618;
          v59 = v47;
          v60 = 2112;
          v61 = v48;
          _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_INFO, "%{public}@Removing person %@ and associated crops", buf, 0x16u);

          v13 = v54;
        }

        objc_autoreleasePoolPop(v22);
        [(HMICleanupImpureHomePersonsOperation *)selfCopy5 removeFaceCropsWithUUIDs:v12];
        [(HMICleanupImpureHomePersonsOperation *)selfCopy5 removePerson:personCopy];
      }
    }

    else
    {
      v42 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = HMFGetLogIdentifier();
        [personCopy UUID];
        v46 = v53 = v13;
        *buf = 138543618;
        v59 = v45;
        v60 = 2112;
        v61 = v46;
        _os_log_impl(&dword_22D12F000, v44, OS_LOG_TYPE_INFO, "%{public}@0 faceprints for person: %@, skipping", buf, 0x16u);

        v13 = v53;
      }

      objc_autoreleasePoolPop(v42);
    }
  }

LABEL_28:
}

BOOL __63__HMICleanupImpureHomePersonsOperation_handleCleanupForPerson___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 dateCreated];
  if ([v4 isAffectedDate:v5])
  {
    v6 = [v3 source] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __63__HMICleanupImpureHomePersonsOperation_handleCleanupForPerson___block_invoke_223(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUID];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)mainInsideAutoreleasePool
{
  v35 = *MEMORY[0x277D85DE8];
  fetchPersons = [(HMICleanupImpureHomePersonsOperation *)self fetchPersons];
  v4 = fetchPersons;
  if (fetchPersons)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = fetchPersons;
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          isCancelled = [(HMICleanupImpureHomePersonsOperation *)self isCancelled];
          v12 = objc_autoreleasePoolPush();
          if (isCancelled)
          {
            selfCopy = self;
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = HMFGetLogIdentifier();
              *buf = 138543362;
              v31 = v23;
              _os_log_impl(&dword_22D12F000, v22, OS_LOG_TYPE_INFO, "%{public}@HMICleanupImpureHomePersonsOperation exiting early because operation was canceled.", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v12);
            goto LABEL_18;
          }

          [(HMICleanupImpureHomePersonsOperation *)self handleCleanupForPerson:v10];
          objc_autoreleasePoolPop(v12);
        }

        v7 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    numFailures = [(HMICleanupImpureHomePersonsOperation *)self numFailures];
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
    if (numFailures)
    {
      if (v17)
      {
        v18 = HMFGetLogIdentifier();
        numFailures2 = [(HMICleanupImpureHomePersonsOperation *)selfCopy2 numFailures];
        *buf = 138543618;
        v31 = v18;
        v32 = 1024;
        v33 = numFailures2;
        _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_INFO, "%{public}@CleanImpureHomePersonsOperation encountered %d failures", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v14);
      v20 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1040 description:@"CleanImpureHomePersonsOperation encountered failures"];
      [(HMFOperation *)selfCopy2 cancelWithError:v20];
    }

    else
    {
      if (v17)
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v24;
        _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_INFO, "%{public}@Completed CleanImpureHomePersonsOperation", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      v25.receiver = selfCopy2;
      v25.super_class = HMICleanupImpureHomePersonsOperation;
      [(HMFOperation *)&v25 finish];
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1040 description:@"Fetch persons failed"];
    [(HMFOperation *)self cancelWithError:v5];
LABEL_18:
  }
}

- (BOOL)isAffectedDate:(id)date
{
  dateCopy = date;
  targetDate = [(HMICleanupImpureHomePersonsOperation *)self targetDate];
  v6 = [dateCopy compare:targetDate];

  return v6 == 1;
}

- (void)removePerson:(id)person
{
  v21 = *MEMORY[0x277D85DE8];
  personCopy = person;
  v5 = [HMIRemovePersonsOperation alloc];
  dataSource = [(HMICleanupImpureHomePersonsOperation *)self dataSource];
  v7 = MEMORY[0x277CBEB98];
  uUID = [personCopy UUID];
  v9 = [v7 setWithObject:uUID];
  v10 = [(HMIRemovePersonsOperation *)v5 initWithDataSource:dataSource personUUIDs:v9];

  [(HMFOperation *)v10 start];
  [(HMIRemovePersonsOperation *)v10 waitUntilFinished];
  error = [(HMFOperation *)v10 error];

  if (error)
  {
    [(HMICleanupImpureHomePersonsOperation *)self setNumFailures:[(HMICleanupImpureHomePersonsOperation *)self numFailures]+ 1];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      error2 = [(HMFOperation *)v10 error];
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = error2;
      _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_ERROR, "%{public}@Error while removing persons %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

@end