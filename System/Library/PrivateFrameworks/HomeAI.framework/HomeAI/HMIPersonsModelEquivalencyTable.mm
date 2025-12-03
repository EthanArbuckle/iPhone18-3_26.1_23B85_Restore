@interface HMIPersonsModelEquivalencyTable
- (BOOL)facesAreSamePersonFromSet:(id)set andSet:(id)andSet distanceThreshold:(double)threshold percentMatchingThreshold:(double)matchingThreshold;
- (HMIPersonsModelEquivalencyTable)initWith;
- (HMIPersonsModelEquivalencyTable)initWithPersonsModels:(id)models userDefinedPersonLinks:(id)links error:(id *)error;
- (id)equivalencyCellForPerson:(id)person;
@end

@implementation HMIPersonsModelEquivalencyTable

- (HMIPersonsModelEquivalencyTable)initWithPersonsModels:(id)models userDefinedPersonLinks:(id)links error:(id *)error
{
  modelsCopy = models;
  linksCopy = links;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__10;
  v47 = __Block_byref_object_dispose__10;
  v48 = 0;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke;
  v40[3] = &unk_278755AC0;
  v42 = &v43;
  selfCopy = self;
  v41 = selfCopy;
  v11 = [modelsCopy na_dictionaryByMappingValues:v40];
  v12 = v44[5];
  if (v12)
  {
    v13 = v12;
    v14 = v13;
    if (error)
    {
      v15 = v13;
      *error = v14;
    }

    HMIErrorLog(selfCopy, v14);

    v16 = 0;
  }

  else
  {
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x3032000000;
    v38[3] = __Block_byref_object_copy__10;
    v38[4] = __Block_byref_object_dispose__10;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__10;
    v36 = __Block_byref_object_dispose__10;
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_152;
    v27[3] = &unk_278755B38;
    v17 = v11;
    v28 = v17;
    v18 = selfCopy;
    v29 = v18;
    v30 = v38;
    v31 = &v32;
    [linksCopy enumerateKeysAndObjectsUsingBlock:v27];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_3;
    v23[3] = &unk_278755BD8;
    v25 = &v32;
    v19 = v18;
    v24 = v19;
    v26 = v38;
    [v17 enumerateKeysAndObjectsUsingBlock:v23];
    v20 = [v33[5] copy];
    personToEquivalencyCell = v19->_personToEquivalencyCell;
    v19->_personToEquivalencyCell = v20;

    v16 = v19;
    _Block_object_dispose(&v32, 8);

    _Block_object_dispose(v38, 8);
  }

  _Block_object_dispose(&v43, 8);
  return v16;
}

id __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 visionPersonsModel];
  v6 = [v5 personUniqueIdentifiers];

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_2;
  v17 = &unk_278755A98;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v18 = v4;
  v21 = v8;
  v19 = v9;
  v20 = v7;
  v10 = v7;
  v11 = v4;
  [v6 enumerateObjectsUsingBlock:&v14];
  v12 = [v10 copy];

  return v12;
}

void __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
  v8 = [*(a1 + 32) visionPersonsModel];
  v9 = *(*(a1 + 56) + 8);
  obj = *(v9 + 40);
  v10 = [v8 faceObservationsForPersonWithUniqueIdentifier:v6 error:&obj];
  objc_storeStrong((v9 + 40), obj);

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v10 count];
      *buf = 138543618;
      v19 = v14;
      v20 = 2048;
      v21 = v15;
      _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Number of all face observations: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [MEMORY[0x277CBEB98] setWithArray:v10];
    [*(a1 + 48) setObject:v16 forKeyedSubscript:v7];
  }

  else
  {
    *a4 = 1;
  }
}

void __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_152(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 sourceUUID];
  v9 = [v7 objectForKeyedSubscript:v8];
  if (v9)
  {
    v10 = v9;
    v11 = *(a1 + 32);
    v12 = [v5 sourceUUID];
    v13 = [v11 objectForKeyedSubscript:v12];
    v14 = [v5 personUUID];
    v15 = [v13 objectForKeyedSubscript:v14];

    if (v15)
    {
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_153;
      v41[3] = &unk_278755718;
      v42 = *(a1 + 32);
      v43 = *(a1 + 40);
      v16 = [v6 na_filter:v41];
      if ([v16 count])
      {
        v17 = [MEMORY[0x277CBEB58] set];
        v18 = *(a1 + 32);
        v19 = [v5 sourceUUID];
        v20 = [v18 objectForKeyedSubscript:v19];
        v21 = [v5 personUUID];
        v22 = [v20 objectForKeyedSubscript:v21];
        [v17 unionSet:v22];

        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_156;
        v38[3] = &unk_278755AE8;
        v39 = v17;
        v40 = *(a1 + 32);
        v23 = v17;
        [v6 na_each:v38];
        [*(*(*(a1 + 48) + 8) + 40) setObject:v23 forKeyedSubscript:v5];
        v24 = [v6 setByAddingObject:v5];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_2_158;
        v35[3] = &unk_278755B10;
        v25 = *(a1 + 56);
        v36 = v24;
        v37 = v25;
        v26 = v24;
        [v26 na_each:v35];
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = *(a1 + 40);
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543618;
          v45 = v34;
          v46 = 2112;
          v47 = v5;
          _os_log_impl(&dword_22D12F000, v33, OS_LOG_TYPE_ERROR, "%{public}@All links for %@ in userDefinedPersonLinks are invalid", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v27 = objc_autoreleasePoolPush();
  v28 = *(a1 + 40);
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    v45 = v30;
    v46 = 2112;
    v47 = v5;
    _os_log_impl(&dword_22D12F000, v29, OS_LOG_TYPE_ERROR, "%{public}@Invalid entry in userDefinedPersonLinks: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
LABEL_13:
}

uint64_t __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_153(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 sourceUUID];
  v6 = [v4 objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 32);
    v9 = [v3 sourceUUID];
    v10 = [v8 objectForKeyedSubscript:v9];
    v11 = [v3 personUUID];
    v12 = [v10 objectForKeyedSubscript:v11];

    if (v12)
    {
      v13 = 1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v14 = objc_autoreleasePoolPush();
  v15 = *(a1 + 40);
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v17;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_ERROR, "%{public}@Invalid entry in userDefinedPersonLinks: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v13 = 0;
LABEL_8:

  return v13;
}

void __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_156(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v8 = [v4 sourceUUID];
  v5 = [v3 objectForKeyedSubscript:v8];
  v6 = [v4 personUUID];

  v7 = [v5 objectForKeyedSubscript:v6];
  [v2 unionSet:v7];
}

void __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_4;
  v9[3] = &unk_278755BB0;
  v10 = v5;
  v8 = *(a1 + 32);
  v6 = v8;
  v11 = v8;
  v12 = *(a1 + 48);
  v7 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v9];
}

void __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [[HMIPersonSourceUUIDPair alloc] initWithPersonUUID:v5 sourceUUID:*(a1 + 32)];
  v8 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Skipping person who belongs to user defined equivalency cell: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v33 = __Block_byref_object_copy__10;
    v34 = __Block_byref_object_dispose__10;
    v35 = 0;
    v13 = *(*(*(a1 + 56) + 8) + 40);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_161;
    v26[3] = &unk_278755B88;
    v27 = *(a1 + 40);
    v14 = v7;
    v28 = v14;
    v15 = v6;
    v16 = *(a1 + 48);
    v29 = v15;
    v30 = v16;
    v31 = buf;
    [v13 enumerateKeysAndObjectsUsingBlock:v26];
    v17 = *(*(*(a1 + 56) + 8) + 40);
    if (*(*&buf[8] + 40))
    {
      v18 = [v17 objectForKeyedSubscript:?];
      v19 = [v15 setByAddingObjectsFromSet:v18];
      [*(*(*(a1 + 56) + 8) + 40) setObject:v19 forKeyedSubscript:*(*&buf[8] + 40)];

      v20 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:*(*&buf[8] + 40)];
      v21 = [v20 setByAddingObject:v14];

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_163;
      v23[3] = &unk_278755B10;
      v25 = *(a1 + 48);
      v22 = v21;
      v24 = v22;
      [v22 na_each:v23];
    }

    else
    {
      [v17 setObject:v15 forKeyedSubscript:v14];
      v18 = [MEMORY[0x277CBEB98] setWithObject:v14];
      [*(*(*(a1 + 48) + 8) + 40) setObject:v18 forKeyedSubscript:v14];
    }

    _Block_object_dispose(buf, 8);
  }
}

void __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_161(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    *buf = 138543874;
    v29 = v13;
    v30 = 2112;
    v31 = v14;
    v32 = 2112;
    v33 = v8;
    _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Comparing persons (%@, %@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  if ([*(a1 + 32) facesAreSamePersonFromSet:*(a1 + 48) andSet:v9])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 40);
      *buf = 138543874;
      v29 = v18;
      v30 = 2112;
      v31 = v19;
      v32 = 2112;
      v33 = v8;
      _os_log_impl(&dword_22D12F000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Equivalency determined between pair: (%@, %@)!", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:v8];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_162;
    v26[3] = &unk_278755B60;
    v27 = *(a1 + 40);
    v21 = [v20 na_firstObjectPassingTest:v26];
    if (v21)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v25;
        v30 = 2112;
        v31 = v21;
        _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Cannot add to matching equivalency cell because it already has entry from this source: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
    }

    else
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

uint64_t __86__HMIPersonsModelEquivalencyTable_initWithPersonsModels_userDefinedPersonLinks_error___block_invoke_162(uint64_t a1, void *a2)
{
  v3 = [a2 sourceUUID];
  v4 = [*(a1 + 32) sourceUUID];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

- (BOOL)facesAreSamePersonFromSet:(id)set andSet:(id)andSet distanceThreshold:(double)threshold percentMatchingThreshold:(double)matchingThreshold
{
  setCopy = set;
  andSetCopy = andSet;
  v11 = [setCopy count];
  v12 = [andSetCopy count] * v11;
  v13 = v12 * matchingThreshold;
  if (v13 <= 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = v13;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = v12;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __111__HMIPersonsModelEquivalencyTable_facesAreSamePersonFromSet_andSet_distanceThreshold_percentMatchingThreshold___block_invoke;
  v18[3] = &unk_278755C28;
  v15 = andSetCopy;
  thresholdCopy = threshold;
  v19 = v15;
  v20 = &v25;
  v23 = v14;
  v21 = v24;
  [setCopy enumerateObjectsUsingBlock:v18];
  v16 = v26[3] >= v14;

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v25, 8);

  return v16;
}

void __111__HMIPersonsModelEquivalencyTable_facesAreSamePersonFromSet_andSet_distanceThreshold_percentMatchingThreshold___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __111__HMIPersonsModelEquivalencyTable_facesAreSamePersonFromSet_andSet_distanceThreshold_percentMatchingThreshold___block_invoke_2;
  v8[3] = &unk_278755C00;
  v9 = v5;
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = a3;
  v10 = *(a1 + 40);
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __111__HMIPersonsModelEquivalencyTable_facesAreSamePersonFromSet_andSet_distanceThreshold_percentMatchingThreshold___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 faceprint];
  v8 = [v7 descriptorData];
  v9 = [v6 faceprint];

  v10 = [v9 descriptorData];
  [HMIGreedyClustering faceDistanceFromDescriptor:v8 toDescriptor:v10];
  v12 = v11;

  if (*(a1 + 56) > v12 && (++*(*(*(a1 + 40) + 8) + 24), *(*(*(a1 + 40) + 8) + 24) >= *(a1 + 64)) || (--*(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 48) + 8) + 24) + *(*(*(a1 + 40) + 8) + 24) < *(a1 + 64)))
  {
    *a3 = 1;
    **(a1 + 72) = 1;
  }
}

- (id)equivalencyCellForPerson:(id)person
{
  personCopy = person;
  personToEquivalencyCell = [(HMIPersonsModelEquivalencyTable *)self personToEquivalencyCell];
  v6 = [personToEquivalencyCell objectForKeyedSubscript:personCopy];

  return v6;
}

- (HMIPersonsModelEquivalencyTable)initWith
{
  v3.receiver = self;
  v3.super_class = HMIPersonsModelEquivalencyTable;
  return [(HMIPersonsModelEquivalencyTable *)&v3 init];
}

@end