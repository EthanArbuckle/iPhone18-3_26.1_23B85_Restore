@interface HMDAccessoryAccessCodeReaderWriter
+ (id)_accessCodeControlFromWriteResponses:(id)a3 forWriteRequest:(id)a4 flow:(id)a5;
+ (id)_createListWriteRequestsForCharacteristics:(id)a3 flow:(id)a4;
+ (id)_createReadWriteRequestsForAccessCodeIdentifiersByCharacteristic:(id)a3 flow:(id)a4;
+ (id)accessCodeFetchResponsesForReadWriteResponses:(id)a3 ofWriteRequests:(id)a4 flow:(id)a5;
+ (id)createConstraintsFromReadResponses:(id)a3 readRequests:(id)a4 flow:(id)a5;
+ (id)createModificationResponsesForWriteResponses:(id)a3 ofRequestPairs:(id)a4 flow:(id)a5;
+ (id)createWriteRequestForAddRequests:(id)a3 characteristic:(id)a4 flow:(id)a5;
+ (id)createWriteRequestForRemoveRequests:(id)a3 characteristic:(id)a4 flow:(id)a5;
+ (id)createWriteRequestForUpdateRequests:(id)a3 characteristic:(id)a4 flow:(id)a5;
+ (id)createWriteRequestsForModificationRequests:(id)a3 hapAccessories:(id)a4 flow:(id)a5;
+ (id)genericModificationResponseForFailedRequest:(id)a3;
+ (id)identifiersFromListWriteResponses:(id)a3 ofWriteRequests:(id)a4 flow:(id)a5;
+ (id)logCategory;
+ (id)modificationResponseForControlResponse:(id)a3 operationType:(int64_t)a4 accessoryUUID:(id)a5;
+ (id)modificationResponseForFailedMatterRequest:(id)a3 error:(id)a4;
+ (int64_t)hmPrivateErrorCodeForHAPAccessCodeError:(int64_t)a3;
- (HMDAccessoryAccessCodeReaderWriter)initWithContext:(id)a3;
- (id)_characteristicsOfType:(id)a3 fromAccessoriesWithUUIDs:(id)a4 flow:(id)a5;
- (id)_createConstraintsReadRequestsForAccessoriesWithUUIDs:(id)a3 flow:(id)a4;
- (id)_createListWriteRequestsForAccessoriesWithUUIDS:(id)a3 flow:(id)a4;
- (id)_createReadWriteRequestsForAccessCodeIdentifiers:(id)a3 flow:(id)a4;
- (id)_createWriteRequestsForModificationRequests:(id)a3 flow:(id)a4;
- (id)_fetchResponseFromCredentialUserTuples:(id)a3 accessory:(id)a4 doorLock:(id)a5 flow:(id)a6;
- (id)_performReadRequests:(id)a3 withRetries:(BOOL)a4 flow:(id)a5;
- (id)_performWriteRequests:(id)a3 withRetries:(BOOL)a4 flow:(id)a5;
- (id)_readAccessCodeWithIdentifier:(id)a3 accessoryUUID:(id)a4 flow:(id)a5;
- (id)_readAccessCodesFromAccessory_Matter:(id)a3 withRetries:(BOOL)a4 flow:(id)a5;
- (id)_readConstraintsFromAccessory_Matter:(id)a3 withRetries:(BOOL)a4 flow:(id)a5;
- (id)logIdentifier;
- (id)performModificationRequest_Matter:(id)a3 flow:(id)a4;
- (id)readAccessCodesFromAccessoriesWithUUIDs:(id)a3 flow:(id)a4;
- (id)removeAccessCodeWithValue_Matter:(id)a3 fromAccessory:(id)a4 withUserUUID:(id)a5 guestName:(id)a6 flow:(id)a7;
- (id)removeAllAccessCodesWithValue:(id)a3 withUserUUID:(id)a4 guestName:(id)a5 flow:(id)a6;
- (id)removeAllHAPAccessCodesWithValue:(id)a3 forSpecificAccessory:(id)a4 flow:(id)a5;
- (void)_readConstraintsAndAccessCodesFromAccessoriesWithUUIDs:(id)a3 flow:(id)a4 completion:(id)a5;
@end

@implementation HMDAccessoryAccessCodeReaderWriter

- (id)logIdentifier
{
  v2 = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  v3 = [v2 UUID];
  v4 = [v3 UUIDString];

  return v4;
}

- (id)_createWriteRequestsForModificationRequests:(id)a3 flow:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  v9 = [v8 accessoriesSupportingAccessCodes];
  v10 = [HMDAccessoryAccessCodeReaderWriter createWriteRequestsForModificationRequests:v7 hapAccessories:v9 flow:v6];

  return v10;
}

- (id)_createReadWriteRequestsForAccessCodeIdentifiers:(id)a3 flow:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAB00] mapTableWithStrongToStrongObjects];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = [v5 allKeys];
  v38 = [v8 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v38)
  {
    v37 = *v42;
    *&v9 = 138543874;
    v34 = v9;
    v35 = v8;
    v36 = v6;
    while (2)
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v42 != v37)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v41 + 1) + 8 * i);
        v12 = [(HMDAccessoryAccessCodeReaderWriter *)self context];
        v13 = [v12 accessoriesSupportingAccessCodes];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __92__HMDAccessoryAccessCodeReaderWriter__createReadWriteRequestsForAccessCodeIdentifiers_flow___block_invoke;
        v40[3] = &unk_2797304D0;
        v40[4] = v11;
        v14 = [v13 na_firstObjectPassingTest:v40];

        if (!v14)
        {
          v25 = v7;
          v26 = objc_autoreleasePoolPush();
          v27 = self;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = HMFGetLogIdentifier();
            [v36 UUID];
            v31 = v30 = v5;
            *buf = v34;
            v46 = v29;
            v47 = 2112;
            v48 = v31;
            v49 = 2112;
            v50 = v11;
            _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not create read write requests because failed to find hap accessory with UUID: %@", buf, 0x20u);

            v5 = v30;
          }

          objc_autoreleasePoolPop(v26);
          v7 = v25;
          v8 = v35;
LABEL_19:

          v24 = 0;
          v6 = v36;
          goto LABEL_20;
        }

        v15 = [v14 findCharacteristicType:@"00000262-0000-1000-8000-0026BB765291" forServiceType:@"00000260-0000-1000-8000-0026BB765291"];
        if (v15)
        {
          v16 = [v5 objectForKeyedSubscript:v11];
          [v7 setObject:v16 forKey:v15];
        }

        else
        {
          v17 = objc_autoreleasePoolPush();
          v18 = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v20 = v7;
            v22 = v21 = v5;
            v23 = [v36 UUID];
            *buf = v34;
            v46 = v22;
            v47 = 2112;
            v48 = v23;
            v49 = 2112;
            v50 = v14;
            _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not create read write requests because failed to find access code control point characteristic on accessory: %@", buf, 0x20u);

            v5 = v21;
            v7 = v20;
            v8 = v35;
          }

          objc_autoreleasePoolPop(v17);
        }

        if (!v15)
        {
          goto LABEL_19;
        }
      }

      v6 = v36;
      v38 = [v8 countByEnumeratingWithState:&v41 objects:v51 count:16];
      if (v38)
      {
        continue;
      }

      break;
    }
  }

  v24 = [HMDAccessoryAccessCodeReaderWriter _createReadWriteRequestsForAccessCodeIdentifiersByCharacteristic:v7 flow:v6];
LABEL_20:

  v32 = *MEMORY[0x277D85DE8];

  return v24;
}

uint64_t __92__HMDAccessoryAccessCodeReaderWriter__createReadWriteRequestsForAccessCodeIdentifiers_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (id)_characteristicsOfType:(id)a3 fromAccessoriesWithUUIDs:(id)a4 flow:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  v12 = [v11 accessoriesSupportingAccessCodes];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __91__HMDAccessoryAccessCodeReaderWriter__characteristicsOfType_fromAccessoriesWithUUIDs_flow___block_invoke;
  v35[3] = &unk_2797304D0;
  v13 = v9;
  v36 = v13;
  v14 = [v12 na_filter:v35];

  v15 = [v14 count];
  if (v15 == [v13 count])
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __91__HMDAccessoryAccessCodeReaderWriter__characteristicsOfType_fromAccessoriesWithUUIDs_flow___block_invoke_121;
    v33[3] = &unk_2797213B0;
    v16 = v8;
    v34 = v16;
    v17 = [v14 na_map:v33];
    v18 = [v17 count];
    if (v18 == [v14 count])
    {
      v19 = v17;
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        [v10 UUID];
        v29 = v32 = v25;
        *buf = 138544386;
        v38 = v28;
        v39 = 2112;
        v40 = v29;
        v41 = 2112;
        v42 = v16;
        v43 = 2112;
        v44 = v14;
        v45 = 2112;
        v46 = v17;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not find access code control point characteristics of type: %@ for all accessories: %@. Found characteristics: %@", buf, 0x34u);

        v25 = v32;
      }

      objc_autoreleasePoolPop(v25);
      v19 = 0;
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v10 UUID];
      *buf = 138544130;
      v38 = v23;
      v39 = 2112;
      v40 = v24;
      v41 = 2112;
      v42 = v13;
      v43 = 2112;
      v44 = v14;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not find all accessories with UUIDs: %@. Only found the subset of accessories: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __91__HMDAccessoryAccessCodeReaderWriter__characteristicsOfType_fromAccessoriesWithUUIDs_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)_createListWriteRequestsForAccessoriesWithUUIDS:(id)a3 flow:(id)a4
{
  v6 = a4;
  v7 = [(HMDAccessoryAccessCodeReaderWriter *)self _characteristicsOfType:@"00000262-0000-1000-8000-0026BB765291" fromAccessoriesWithUUIDs:a3 flow:v6];
  if (v7)
  {
    v8 = [HMDAccessoryAccessCodeReaderWriter _createListWriteRequestsForCharacteristics:v7 flow:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_createConstraintsReadRequestsForAccessoriesWithUUIDs:(id)a3 flow:(id)a4
{
  v4 = [(HMDAccessoryAccessCodeReaderWriter *)self _characteristicsOfType:@"00000261-0000-1000-8000-0026BB765291" fromAccessoriesWithUUIDs:a3 flow:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 na_map:&__block_literal_global_118];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_fetchResponseFromCredentialUserTuples:(id)a3 accessory:(id)a4 doorLock:(id)a5 flow:(id)a6
{
  v9 = a4;
  v10 = a6;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __101__HMDAccessoryAccessCodeReaderWriter__fetchResponseFromCredentialUserTuples_accessory_doorLock_flow___block_invoke;
  v18[3] = &unk_279721360;
  v18[4] = self;
  v19 = v10;
  v20 = v9;
  v11 = v9;
  v12 = v10;
  v13 = [a3 na_map:v18];
  v14 = objc_alloc(MEMORY[0x277CD1660]);
  v15 = [v11 uuid];
  v16 = [v14 initWithAccessoryUUID:v15 accessoryAccessCodeValues:v13 error:0];

  return v16;
}

id __101__HMDAccessoryAccessCodeReaderWriter__fetchResponseFromCredentialUserTuples_accessory_doorLock_flow___block_invoke(id *a1, void *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [a1[5] UUID];
    v9 = [v3 credential];
    v10 = [v3 user];
    *buf = 138544130;
    v53 = v7;
    v54 = 2112;
    v55 = v8;
    v56 = 2112;
    v57 = v9;
    v58 = 2112;
    v59 = v10;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creating fetch response from credential: %@, user: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v11 = [v3 user];
  v12 = [v11 userUniqueId];

  v13 = [v3 user];
  v14 = [v13 creatorFabricIndex];
  v15 = [v3 currentFabricIndex];
  v16 = HMFEqualObjects();

  if ((v16 & 1) == 0)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = a1[4];
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      [a1[5] UUID];
      v32 = v50 = v12;
      v33 = [v3 credential];
      v49 = [v3 user];
      [v49 creatorFabricIndex];
      v34 = v51 = v28;
      v35 = [v3 currentFabricIndex];
      v36 = [a1[6] shortDescription];
      *buf = 138544642;
      v53 = v31;
      v54 = 2112;
      v55 = v32;
      v56 = 2112;
      v57 = v33;
      v58 = 2112;
      v59 = v34;
      v60 = 2112;
      v61 = v35;
      v62 = 2112;
      v63 = v36;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Dropping userUniqueId because the user's creatorFabricIndex does not match the currentFabricIndex. credential: %@, creatorFabricIndex: %@, currentFabricIndex: %@, accessory: %@", buf, 0x3Eu);

      v28 = v51;
      v12 = v50;
    }

    objc_autoreleasePoolPop(v28);
    v12 = 0;
    goto LABEL_11;
  }

  v17 = [v3 user];
  v18 = [v17 userUniqueID];
  v19 = [v18 isEqualToNumber:*MEMORY[0x277D17AB8]];

  if (!v19)
  {
LABEL_11:
    v37 = [a1[4] context];
    v38 = [v37 home];
    v39 = [v38 accessCodeForMatterUserWithUserUniqueID:v12];

    v40 = [objc_alloc(MEMORY[0x277CD1648]) initWithStringValue:v39];
    v41 = objc_alloc(MEMORY[0x277CD1668]);
    v42 = [a1[6] uuid];
    v43 = MEMORY[0x277CCABB0];
    v44 = [v3 credential];
    v45 = [v44 userIndex];
    v46 = [v43 numberWithInteger:{objc_msgSend(v45, "integerValue")}];
    v27 = [v41 initWithAccessoryUUID:v42 accessCodeValue:v40 uniqueIdentifier:v46 hasRestrictions:0];

    goto LABEL_12;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = a1[4];
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = [a1[5] UUID];
    v25 = [v3 credential];
    v26 = [a1[6] shortDescription];
    *buf = 138544130;
    v53 = v23;
    v54 = 2112;
    v55 = v24;
    v56 = 2112;
    v57 = v25;
    v58 = 2112;
    v59 = v26;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Dropping credential because it is the COTA home user: %@, accessory: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v20);
  v27 = 0;
LABEL_12:

  v47 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_readAccessCodesFromAccessory_Matter:(id)a3 withRetries:(BOOL)a4 flow:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 UUID];
    v15 = [v8 UUID];
    *buf = 138544130;
    v35 = v13;
    v36 = 2112;
    v37 = v14;
    v38 = 2112;
    v39 = v15;
    v40 = 2112;
    v41 = v7;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Reading access codes from Matter accessory: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  v16 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v17 = [v7 waitForDoorLockClusterObjectWithFlow:v16];
  v18 = [v17 naFuture];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __92__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessory_Matter_withRetries_flow___block_invoke;
  v30[3] = &unk_279721220;
  v19 = v9;
  v31 = v19;
  v32 = v11;
  v20 = v7;
  v33 = v20;
  v21 = [v18 flatMap:v30];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __92__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessory_Matter_withRetries_flow___block_invoke_3;
  v27[3] = &unk_279730408;
  v27[4] = v11;
  v28 = v19;
  v29 = v20;
  v22 = v20;
  v23 = v19;
  v24 = [v21 recover:v27];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

id __92__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessory_Matter_withRetries_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getAllPinCodesWithFlow:*(a1 + 32)];
  v5 = [v4 naFuture];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessory_Matter_withRetries_flow___block_invoke_2;
  v10[3] = &unk_279730268;
  v6 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v6;
  v12 = v3;
  v13 = *(a1 + 32);
  v7 = v3;
  v8 = [v5 flatMap:v10];

  return v8;
}

id __92__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessory_Matter_withRetries_flow___block_invoke_3(id *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [a1[5] UUID];
    v9 = [a1[6] uuid];
    v17 = 138544130;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to read access codes from Matter accessory: %@, with error: %@", &v17, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = objc_alloc(MEMORY[0x277CD1660]);
  v11 = [a1[6] uuid];
  v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
  v13 = [v10 initWithAccessoryUUID:v11 accessoryAccessCodeValues:0 error:v12];

  v14 = [MEMORY[0x277D2C900] futureWithResult:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id __92__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessory_Matter_withRetries_flow___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _fetchResponseFromCredentialUserTuples:a2 accessory:*(a1 + 40) doorLock:*(a1 + 48) flow:*(a1 + 56)];
  v3 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v3;
}

id __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Got list responses", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [HMDAccessoryAccessCodeReaderWriter identifiersFromListWriteResponses:v3 ofWriteRequests:*(a1 + 48) flow:*(a1 + 40)];
  v10 = [MEMORY[0x277D2C900] futureWithResult:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke_101(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _createReadWriteRequestsForAccessCodeIdentifiers:a2 flow:*(a1 + 40)];
  v3 = MEMORY[0x277D2C900];
  if (v2)
  {
    v4 = [MEMORY[0x277D2C900] futureWithResult:v2];
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 reason:@"Failed to create read write requests"];
    v4 = [v3 futureWithError:v5];
  }

  return v4;
}

id __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _performWriteRequests:v3 withRetries:*(a1 + 56) flow:*(a1 + 40)];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke_3;
  v10[3] = &unk_279721310;
  v11 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 48);
  v7 = v3;
  v8 = [v4 flatMap:v10];

  return v8;
}

id __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [HMDAccessoryAccessCodeReaderWriter accessCodeFetchResponsesForReadWriteResponses:v3 ofWriteRequests:*(a1 + 32) flow:*(a1 + 40)];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 48);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 40) UUID];
    *buf = 138543874;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Access code fetch responses from read: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke_102;
  v19[3] = &unk_2797358A0;
  v20 = v4;
  v11 = v4;
  v12 = [v10 na_filter:v19];
  v13 = [v12 na_map:&__block_literal_global_108];
  v14 = MEMORY[0x277D2C900];
  v15 = [v11 arrayByAddingObjectsFromArray:v13];
  v16 = [v14 futureWithResult:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

BOOL __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke_102(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke_2_103;
  v9[3] = &unk_2797212E8;
  v10 = v3;
  v5 = v3;
  v6 = [v4 na_firstObjectPassingTest:v9];
  v7 = v6 == 0;

  return v7;
}

id __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke_3_105(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1660];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  v6 = [v4 initWithAccessoryUUID:v3 accessoryAccessCodeValues:0 error:v5];

  return v6;
}

uint64_t __100__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke_2_103(uint64_t a1, void *a2)
{
  v3 = [a2 accessoryUUID];
  v4 = *(a1 + 32);
  v5 = HMFEqualObjects();

  return v5;
}

uint64_t __96__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_withRetries_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v4 UUIDsOfHAPAccessoriesSupportingAccessCodes];
  v6 = [v5 containsObject:v3];

  return v6;
}

uint64_t __96__HMDAccessoryAccessCodeReaderWriter__readAccessCodesFromAccessoriesWithUUIDs_withRetries_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v4 UUIDsOfMatterAccessoriesSupportingAccessCodes];
  v6 = [v5 containsObject:v3];

  return v6;
}

- (id)_readConstraintsFromAccessory_Matter:(id)a3 withRetries:(BOOL)a4 flow:(id)a5
{
  v6 = a4;
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 UUID];
    *buf = 138543874;
    v34 = v13;
    v35 = 2112;
    v36 = v14;
    v37 = 2112;
    v38 = v8;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Reading constraints from accessory: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  if (v6)
  {
    v15 = 8;
  }

  else
  {
    v15 = 0;
  }

  v16 = MEMORY[0x277D2C900];
  v17 = [(HMDAccessoryAccessCodeReaderWriter *)v11 context];
  v18 = [v17 workQueue];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __92__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessory_Matter_withRetries_flow___block_invoke;
  v30[3] = &unk_2797212C0;
  v19 = v8;
  v31 = v19;
  v20 = v9;
  v32 = v20;
  v21 = [v16 futureWithRetries:v15 timeInterval:v18 workQueue:v30 block:5.0];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __92__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessory_Matter_withRetries_flow___block_invoke_4;
  v27[3] = &unk_279730408;
  v27[4] = v11;
  v28 = v20;
  v29 = v19;
  v22 = v19;
  v23 = v20;
  v24 = [v21 recover:v27];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

id __92__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessory_Matter_withRetries_flow___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v4 = [v2 waitForDoorLockClusterObjectWithFlow:v3];
  v5 = [v4 naFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessory_Matter_withRetries_flow___block_invoke_2;
  v8[3] = &unk_279730220;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v6 = [v5 flatMap:v8];

  return v6;
}

id __92__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessory_Matter_withRetries_flow___block_invoke_4(id *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [a1[5] UUID];
    v9 = [a1[6] uuid];
    v17 = 138543874;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] All retries failed to read constraint from accessory: %@", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = [objc_alloc(MEMORY[0x277CD1608]) initWithAllowedCharacterSets:1 minimumLength:4 maximumLength:8 maximumAllowedAccessCodes:50];
  v11 = objc_alloc(MEMORY[0x277CD1658]);
  v12 = [a1[6] uuid];
  v13 = [v11 initWithAccessory:v12 constraints:v10 error:0];

  v14 = [MEMORY[0x277D2C900] futureWithResult:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id __92__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessory_Matter_withRetries_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D2C900];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v5 getMaxPINCodeLengthWithFlow:v4];
  v7 = [v6 naFuture];
  v17[0] = v7;
  v8 = [v5 getMinPINCodeLengthWithFlow:*(a1 + 32)];

  v9 = [v8 naFuture];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v11 = [v3 combineAllFutures:v10];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessory_Matter_withRetries_flow___block_invoke_3;
  v15[3] = &unk_2797303B8;
  v16 = *(a1 + 40);
  v12 = [v11 flatMap:v15];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id __92__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessory_Matter_withRetries_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v3 objectAtIndexedSubscript:1];

  v6 = [objc_alloc(MEMORY[0x277CD1608]) initWithAllowedCharacterSets:1 minimumLength:objc_msgSend(v5 maximumLength:"integerValue") maximumAllowedAccessCodes:{objc_msgSend(v4, "integerValue"), 50}];
  v7 = objc_alloc(MEMORY[0x277CD1658]);
  v8 = [*(a1 + 32) uuid];
  v9 = [v7 initWithAccessory:v8 constraints:v6 error:0];

  v10 = [MEMORY[0x277D2C900] futureWithResult:v9];

  return v10;
}

id __100__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessoriesWithUUIDs_HAP_withRetries_flow___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [HMDAccessoryAccessCodeReaderWriter createConstraintsFromReadResponses:a2 readRequests:*(a1 + 32) flow:*(a1 + 40)];
  v3 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v3;
}

uint64_t __96__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessoriesWithUUIDs_withRetries_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v4 UUIDsOfHAPAccessoriesSupportingAccessCodes];
  v6 = [v5 containsObject:v3];

  return v6;
}

uint64_t __96__HMDAccessoryAccessCodeReaderWriter__readConstraintsFromAccessoriesWithUUIDs_withRetries_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v4 UUIDsOfMatterAccessoriesSupportingAccessCodes];
  v6 = [v5 containsObject:v3];

  return v6;
}

- (id)performModificationRequest_Matter:(id)a3 flow:(id)a4
{
  v98 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  v9 = [v8 workQueue];
  dispatch_assert_queue_V2(v9);

  v72 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v72 UUID];
    v15 = [v7 UUID];
    *buf = 138544130;
    v91 = v13;
    v92 = 2112;
    v93 = v14;
    v94 = 2112;
    v95 = v15;
    v96 = 2112;
    v97 = v6;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Performing access code modification request Matter: %@", buf, 0x2Au);
  }

  v69 = v7;

  objc_autoreleasePoolPop(v10);
  v16 = [(HMDAccessoryAccessCodeReaderWriter *)v11 context];
  v17 = [v6 accessoryUUID];
  v18 = [v16 hapAccessoryWithUUID:v17];

  v19 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = v19;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  v25 = v22;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  v71 = v24;
  if (v27)
  {
    v28 = MEMORY[0x277D2C900];
    v29 = [v27 accessoryAccessCodeValue];
    v30 = [v29 uniqueIdentifier];
    v31 = [v28 futureWithResult:v30];

    v32 = v21 != 0;
    if (!(v21 | v24))
    {
      v33 = [v27 accessoryAccessCodeValue];
      v34 = [v33 accessCodeValue];
      v35 = [v34 stringValue];

      v83[0] = MEMORY[0x277D85DD0];
      v36 = &unk_253D4B000;
      v83[1] = 3221225472;
      v83[2] = __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_3;
      v83[3] = &unk_279721110;
      v84 = v18;
      v85 = v72;
      [v31 flatMap:v83];
      v37 = v18;
      v39 = v38 = v72;

      v40 = 2;
      v41 = v84;
      goto LABEL_23;
    }

LABEL_16:
    v40 = !v32;
    v47 = [v21 accessCodeValue];
    v48 = [v47 stringValue];
    v49 = v48;
    v36 = &unk_253D4B000;
    if (v48)
    {
      v50 = v48;
    }

    else
    {
      v57 = [v71 updatedAccessCodeValue];
      v50 = [v57 stringValue];

      v36 = &unk_253D4B000;
    }

    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = v36[103];
    v86[2] = __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke;
    v86[3] = &unk_279721160;
    v87 = v18;
    v35 = v50;
    v88 = v35;
    v37 = v18;
    v38 = v72;
    v89 = v72;
    v39 = [v31 flatMap:v86];

    v41 = v87;
    goto LABEL_23;
  }

  v42 = [(HMDAccessoryAccessCodeReaderWriter *)v11 context:0];
  v43 = [v42 home];
  v44 = [v25 userUUID];
  v45 = [v25 guestName];
  v46 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v31 = [v43 findOrAddUserIndexForUserUUID:v44 guestName:v45 accessory:v18 flow:v46];

  v32 = v21 != 0;
  if (v21 | v71)
  {
    goto LABEL_16;
  }

  v37 = v18;
  v51 = objc_autoreleasePoolPush();
  v52 = v11;
  v53 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    v54 = HMFGetLogIdentifier();
    v55 = [v72 UUID];
    *buf = 138543618;
    v91 = v54;
    v92 = 2112;
    v93 = v55;
    _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Found HMAccessCodeModificationRequestValue of unknown type", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v51);
  v56 = MEMORY[0x277D2C900];
  v41 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
  v39 = [v56 futureWithError:v41];
  v35 = 0;
  v40 = 0;
  v38 = v72;
  v36 = &unk_253D4B000;
LABEL_23:

  v75 = MEMORY[0x277D85DD0];
  v76 = v36[103];
  v58 = v76;
  v77 = __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_86;
  v78 = &unk_279721270;
  v79 = v31;
  v80 = v35;
  v59 = v25;
  v81 = v59;
  v82 = v40;
  v60 = v35;
  v61 = v31;
  v62 = [v39 flatMap:&v75];
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = v58;
  v73[2] = __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_3_90;
  v73[3] = &unk_279721298;
  v73[4] = v11;
  v74 = v59;
  v63 = v59;
  v64 = [v62 recover:v73];

  v65 = *MEMORY[0x277D85DE8];

  return v64;
}

id __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v6 = [v4 waitForDoorLockClusterObjectWithFlow:v5];
  v7 = [v6 naFuture];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_2;
  v11[3] = &unk_279721220;
  v12 = *(a1 + 40);
  v13 = v3;
  v14 = *(a1 + 48);
  v8 = v3;
  v9 = [v7 flatMap:v11];

  return v9;
}

id __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v6 = [v4 waitForDoorLockClusterObjectWithFlow:v5];
  v7 = [v6 naFuture];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_4;
  v11[3] = &unk_279730220;
  v12 = v3;
  v13 = *(a1 + 40);
  v8 = v3;
  v9 = [v7 flatMap:v11];

  return v9;
}

id __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_86(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_2_87;
  v7[3] = &unk_279721248;
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v9 = v3;
  v10 = v4;
  v5 = [v2 flatMap:v7];

  return v5;
}

id __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_3_90(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D2C900];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [objc_opt_class() modificationResponseForFailedMatterRequest:*(a1 + 40) error:v5];

  v7 = [v3 futureWithResult:v6];

  return v7;
}

id __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_2_87(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD1648];
  v4 = a2;
  v5 = [[v3 alloc] initWithStringValue:*(a1 + 32)];
  v6 = objc_alloc(MEMORY[0x277CD1668]);
  v7 = [*(a1 + 40) accessoryUUID];
  v8 = [v6 initWithAccessoryUUID:v7 accessCodeValue:v5 uniqueIdentifier:v4 hasRestrictions:0];

  v9 = objc_alloc(MEMORY[0x277CD1618]);
  v10 = [*(a1 + 40) accessoryUUID];
  v11 = [v9 initWithAccessoryUUID:v10 accessoryAccessCodeValue:v8 accessCodeValue:0 operationType:*(a1 + 48) error:0];

  v12 = [MEMORY[0x277D2C900] futureWithResult:v11];

  return v12;
}

id __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 removePinCodeForUserIndex:objc_msgSend(v3 flow:{"integerValue"), *(a1 + 40)}];

  v6 = [v5 naFuture];

  return v6;
}

id __77__HMDAccessoryAccessCodeReaderWriter_performModificationRequest_Matter_flow___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v5 addOrUpdatePinCodeWithValue:v3 forUserIndex:objc_msgSend(v4 flow:{"integerValue"), a1[6]}];

  v7 = [v6 naFuture];

  return v7;
}

id __97__HMDAccessoryAccessCodeReaderWriter_performAccessCodeModificationRequests_HAP_withRetries_flow___block_invoke_83(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _createModificationResponsesForWriteResponses:v3 ofRequestPairs:*(a1 + 40) flow:*(a1 + 48)];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 48) UUID];
    v13 = 138543874;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Received modification responses: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [MEMORY[0x277D2C900] futureWithResult:v4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __93__HMDAccessoryAccessCodeReaderWriter_performAccessCodeModificationRequests_withRetries_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v3 accessoryUUID];

  v6 = [v4 hapAccessoryWithUUID:v5];

  v7 = [v6 supportsCHIP];
  return v7;
}

uint64_t __93__HMDAccessoryAccessCodeReaderWriter_performAccessCodeModificationRequests_withRetries_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v3 accessoryUUID];

  v6 = [v4 hapAccessoryWithUUID:v5];

  LODWORD(v4) = [v6 supportsCHIP];
  return v4 ^ 1;
}

- (id)_performReadRequests:(id)a3 withRetries:(BOOL)a4 flow:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  v11 = v10;
  if (v5)
  {
    v12 = [(HMDAccessoryAccessCodeReaderWriter *)self context];
    v13 = [v12 accessoryReadWriteRetries];
    v14 = [(HMDAccessoryAccessCodeReaderWriter *)self context];
    [v14 accessoryReadWriteRetryTimeInterval];
    v15 = [v11 performReadRequests:v9 withRetries:v13 timeInterval:self loggingObject:v8 flow:?];

    v8 = v14;
    v9 = v12;
  }

  else
  {
    v15 = [v10 performReadRequests:v9 withRetries:0 timeInterval:self loggingObject:v8 flow:0.0];
  }

  return v15;
}

- (id)_performWriteRequests:(id)a3 withRetries:(BOOL)a4 flow:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  v11 = v10;
  if (v5)
  {
    v12 = [(HMDAccessoryAccessCodeReaderWriter *)self context];
    v13 = [v12 accessoryReadWriteRetries];
    v14 = [(HMDAccessoryAccessCodeReaderWriter *)self context];
    [v14 accessoryReadWriteRetryTimeInterval];
    v15 = [v11 performWriteRequests:v9 withRetries:v13 timeInterval:self loggingObject:v8 flow:?];

    v8 = v14;
    v9 = v12;
  }

  else
  {
    v15 = [v10 performWriteRequests:v9 withRetries:0 timeInterval:self loggingObject:v8 flow:0.0];
  }

  return v15;
}

- (void)_readConstraintsAndAccessCodesFromAccessoriesWithUUIDs:(id)a3 flow:(id)a4 completion:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v9 UUID];
    *buf = 138543874;
    v29 = v14;
    v30 = 2112;
    v31 = v15;
    v32 = 2112;
    v33 = v8;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Reading constraints and access codes from accessories with UUIDs: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  if ([v8 hmf_isEmpty])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v12;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v9 UUID];
      *buf = 138543618;
      v29 = v19;
      v30 = 2112;
      v31 = v20;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Caller submitted empty array of accessory UUIDs", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    (*(v10 + 2))(v10, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8]);
  }

  else
  {
    v21 = [(HMDAccessoryAccessCodeReaderWriter *)v12 _readConstraintsFromAccessoriesWithUUIDs:v8 withRetries:1 flow:v9];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __109__HMDAccessoryAccessCodeReaderWriter__readConstraintsAndAccessCodesFromAccessoriesWithUUIDs_flow_completion___block_invoke;
    v24[3] = &unk_279734180;
    v24[4] = v12;
    v25 = v9;
    v26 = v8;
    v27 = v10;
    v22 = [v21 addCompletionBlock:v24];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __109__HMDAccessoryAccessCodeReaderWriter__readConstraintsAndAccessCodesFromAccessoriesWithUUIDs_flow_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[5] UUID];
      v12 = a1[6];
      *buf = 138544130;
      v30 = v10;
      v31 = 2112;
      v32 = v11;
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      v36 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to read constraints from accessories with uuids: %@, error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13 = [a1[4] _readAccessCodesFromAccessoriesWithUUIDs:a1[6] withRetries:1 flow:a1[5]];
  v14 = MEMORY[0x277D2C938];
  v15 = [a1[4] context];
  v16 = [v15 workQueue];
  v17 = [v14 schedulerWithDispatchQueue:v16];
  v18 = [v13 reschedule:v17];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __109__HMDAccessoryAccessCodeReaderWriter__readConstraintsAndAccessCodesFromAccessoriesWithUUIDs_flow_completion___block_invoke_77;
  v24[3] = &unk_279721188;
  v19 = a1[5];
  v24[4] = a1[4];
  v25 = v19;
  v26 = a1[6];
  v20 = a1[7];
  v27 = v5;
  v28 = v20;
  v21 = v5;
  v22 = [v18 addCompletionBlock:v24];

  v23 = *MEMORY[0x277D85DE8];
}

void __109__HMDAccessoryAccessCodeReaderWriter__readConstraintsAndAccessCodesFromAccessoriesWithUUIDs_flow_completion___block_invoke_77(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v12 = *(a1 + 48);
      v15 = 138544130;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to read access codes from accessories with uuids: %@, error: %@", &v15, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13 = *(a1 + 56);
  (*(*(a1 + 64) + 16))();

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_readAccessCodeWithIdentifier:(id)a3 accessoryUUID:(id)a4 flow:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v10 UUID];
    *buf = 138544130;
    v35 = v14;
    v36 = 2112;
    v37 = v15;
    v38 = 2112;
    v39 = v8;
    v40 = 2112;
    v41 = v9;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Reading access code for identifier: %@ from accessoryUUID: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:v8];
  v31 = v16;
  v32 = v9;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v33 = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];

  v19 = [(HMDAccessoryAccessCodeReaderWriter *)v12 _createReadWriteRequestsForAccessCodeIdentifiers:v18 flow:v10];
  if (v19)
  {
    v20 = [(HMDAccessoryAccessCodeReaderWriter *)v12 _performWriteRequests:v19 withRetries:1 flow:v10];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __87__HMDAccessoryAccessCodeReaderWriter__readAccessCodeWithIdentifier_accessoryUUID_flow___block_invoke;
    v28[3] = &unk_27972A418;
    v29 = v19;
    v30 = v10;
    v21 = [v20 flatMap:v28];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __87__HMDAccessoryAccessCodeReaderWriter__readAccessCodeWithIdentifier_accessoryUUID_flow___block_invoke_2;
    v26[3] = &unk_2797303B8;
    v27 = v8;
    v22 = [v21 flatMap:v26];
  }

  else
  {
    v23 = MEMORY[0x277D2C900];
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 reason:@"Failed to create read write requests"];
    v22 = [v23 futureWithError:v20];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

id __87__HMDAccessoryAccessCodeReaderWriter__readAccessCodeWithIdentifier_accessoryUUID_flow___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [HMDAccessoryAccessCodeReaderWriter accessCodeFetchResponsesForReadWriteResponses:a2 ofWriteRequests:*(a1 + 32) flow:*(a1 + 40)];
  v3 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v3;
}

id __87__HMDAccessoryAccessCodeReaderWriter__readAccessCodeWithIdentifier_accessoryUUID_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessoryAccessCodeValues];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __87__HMDAccessoryAccessCodeReaderWriter__readAccessCodeWithIdentifier_accessoryUUID_flow___block_invoke_3;
    v13[3] = &unk_27972E680;
    v14 = *(a1 + 32);
    v6 = [v5 na_firstObjectPassingTest:v13];

    v7 = MEMORY[0x277D2C900];
    v8 = [v6 accessCodeValue];
    v9 = [v7 futureWithResult:v8];
  }

  else
  {
    v10 = MEMORY[0x277D2C900];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15 reason:@"Response without access code value"];
    v9 = [v10 futureWithError:v11];
  }

  return v9;
}

uint64_t __87__HMDAccessoryAccessCodeReaderWriter__readAccessCodeWithIdentifier_accessoryUUID_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToNumber:*(a1 + 32)];

  return v4;
}

- (id)removeAccessCodeWithValue_Matter:(id)a3 fromAccessory:(id)a4 withUserUUID:(id)a5 guestName:(id)a6 flow:(id)a7
{
  v63 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v43 = a5;
  v41 = a6;
  v42 = a7;
  v14 = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  v15 = [v14 workQueue];
  dispatch_assert_queue_V2(v15);

  v16 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v21 = [v16 UUID];
    [v42 UUID];
    v22 = v40 = v12;
    v23 = [v13 uuid];
    *buf = 138544130;
    v56 = v20;
    v57 = 2112;
    v58 = v21;
    v59 = 2112;
    v60 = v22;
    v61 = 2112;
    v62 = v23;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] removeAllAccessCodesWithValue_Matter fromAccessory: %@", buf, 0x2Au);

    v12 = v40;
  }

  objc_autoreleasePoolPop(v17);
  v24 = [(HMDAccessoryAccessCodeReaderWriter *)v18 context];
  v25 = [v24 home];
  v26 = [v25 findUserIndexForUserUUID:v43 guestName:v41 accessory:v13];

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke;
  v52[3] = &unk_279721110;
  v27 = v13;
  v53 = v27;
  v54 = v16;
  v28 = v16;
  v29 = [v26 flatMap:v52];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke_3;
  v48[3] = &unk_279721138;
  v30 = v26;
  v49 = v30;
  v31 = v27;
  v50 = v31;
  v32 = v12;
  v51 = v32;
  v33 = [v29 flatMap:v48];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke_5;
  v44[3] = &unk_279730408;
  v45 = v30;
  v46 = v31;
  v47 = v32;
  v34 = v32;
  v35 = v31;
  v36 = v30;
  v37 = [v33 recover:v44];

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

id __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v6 = [v4 waitForDoorLockClusterObjectWithFlow:v5];
  v7 = [v6 naFuture];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke_2;
  v11[3] = &unk_279730220;
  v12 = v3;
  v13 = *(a1 + 40);
  v8 = v3;
  v9 = [v7 flatMap:v11];

  return v9;
}

id __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke_3(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke_4;
  v5[3] = &unk_279721110;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v3 = [v2 flatMap:v5];

  return v3;
}

id __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = v4;
  if (v4 == *MEMORY[0x277CCFD28])
  {
    v6 = [v3 code];

    if (v6 == 2)
    {
      v7 = MEMORY[0x277D2C900];
      v8 = [MEMORY[0x277CBEB68] null];
      v9 = [v7 futureWithResult:v8];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke_6;
  v12[3] = &unk_279721160;
  v10 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = v3;
  v9 = [v10 flatMap:v12];

LABEL_6:

  return v9;
}

id __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD1668];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) uuid];
  v7 = [v5 initWithAccessoryUUID:v6 accessCodeValue:*(a1 + 40) uniqueIdentifier:v4 hasRestrictions:0];

  v8 = objc_alloc(MEMORY[0x277CD1618]);
  v9 = [*(a1 + 32) uuid];
  v10 = [v8 initWithAccessoryUUID:v9 accessoryAccessCodeValue:v7 accessCodeValue:0 operationType:2 error:*(a1 + 48)];

  v11 = [MEMORY[0x277D2C900] futureWithResult:v10];

  return v11;
}

id __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD1668];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) uuid];
  v7 = [v5 initWithAccessoryUUID:v6 accessCodeValue:*(a1 + 40) uniqueIdentifier:v4 hasRestrictions:0];

  v8 = objc_alloc(MEMORY[0x277CD1618]);
  v9 = [*(a1 + 32) uuid];
  v10 = [v8 initWithAccessoryUUID:v9 accessoryAccessCodeValue:v7 accessCodeValue:0 operationType:2 error:0];

  v11 = [MEMORY[0x277D2C900] futureWithResult:v10];

  return v11;
}

id __113__HMDAccessoryAccessCodeReaderWriter_removeAccessCodeWithValue_Matter_fromAccessory_withUserUUID_guestName_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 removePinCodeForUserIndex:objc_msgSend(v3 flow:{"integerValue"), *(a1 + 40)}];

  v6 = [v5 naFuture];

  return v6;
}

- (id)removeAllHAPAccessCodesWithValue:(id)a3 forSpecificAccessory:(id)a4 flow:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  v12 = [v11 workQueue];
  dispatch_assert_queue_V2(v12);

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v10 UUID];
    *buf = 138543618;
    v37 = v16;
    v38 = 2112;
    v39 = v17;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] removeAllHAPAccessCodesWithValue", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  if (!v9)
  {
    v18 = [(HMDAccessoryAccessCodeReaderWriter *)v14 context];
    v19 = [v18 UUIDsOfHAPAccessoriesSupportingAccessCodes];
    goto LABEL_11;
  }

  if ([v9 supportsCHIP] & 1) == 0 && (objc_msgSend(v9, "supportsAccessCode"))
  {
    v18 = [v9 uuid];
    v35 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
LABEL_11:
    v26 = v19;

    v28 = [(HMDAccessoryAccessCodeReaderWriter *)v14 _readAccessCodesFromAccessoriesWithUUIDs:v26 withRetries:1 flow:v10];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke;
    v31[3] = &unk_2797210E8;
    v32 = v8;
    v33 = v14;
    v34 = v10;
    v27 = [v28 flatMap:v31];

    goto LABEL_12;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = v14;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v24 = [v10 UUID];
    *buf = 138543874;
    v37 = v23;
    v38 = 2112;
    v39 = v24;
    v40 = 2112;
    v41 = v9;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] removeAccessCodeWithValue for HAP was passed a non HAP accessory or does not support access codes: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  v25 = MEMORY[0x277D2C900];
  v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:48 userInfo:0];
  v27 = [v25 futureWithError:v26];
LABEL_12:

  v29 = *MEMORY[0x277D85DE8];

  return v27;
}

id __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke(uint64_t a1, void *a2)
{
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke_2;
  v16[3] = &unk_279721050;
  v17 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 na_map:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke_3;
  v14[3] = &unk_2797210A0;
  v15 = *(a1 + 32);
  v6 = [v4 na_flatMap:v14];

  v7 = [v6 na_map:&__block_literal_global_3770];
  v8 = [*(a1 + 40) performAccessCodeModificationRequests:v7 withRetries:1 flow:*(a1 + 48)];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke_6;
  v12[3] = &unk_2797303B8;
  v13 = v5;
  v9 = v5;
  v10 = [v8 flatMap:v12];

  return v10;
}

id __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CD1618]);
    v6 = [v3 accessoryUUID];
    v7 = *(a1 + 32);
    v8 = [v3 error];
    v9 = [v5 initWithAccessoryUUID:v6 accessoryAccessCodeValue:0 accessCodeValue:v7 operationType:2 error:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 accessoryAccessCodeValues];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke_4;
  v6[3] = &unk_279721078;
  v7 = *(a1 + 32);
  v4 = [v3 na_map:v6];

  return v4;
}

id __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [a2 arrayByAddingObjectsFromArray:*(a1 + 32)];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

id __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1628];
  v3 = a2;
  v4 = [[v2 alloc] initWithAccessoryAccessCodeValue:v3];

  return v4;
}

id __97__HMDAccessoryAccessCodeReaderWriter_removeAllHAPAccessCodesWithValue_forSpecificAccessory_flow___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessCodeValue];
  LODWORD(a1) = [v4 isEqual:*(a1 + 32)];

  if (a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)removeAllAccessCodesWithValue:(id)a3 withUserUUID:(id)a4 guestName:(id)a5 flow:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  v15 = [v14 workQueue];
  dispatch_assert_queue_V2(v15);

  v16 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v31 = v11;
    v21 = v20 = v13;
    v22 = [v16 UUID];
    v23 = [v20 UUID];
    *buf = 138543874;
    v34 = v21;
    v35 = 2112;
    v36 = v22;
    v37 = 2112;
    v38 = v23;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] removeAllAccessCodesWithValue", buf, 0x20u);

    v13 = v20;
    v11 = v31;
  }

  objc_autoreleasePoolPop(v17);
  v24 = [(HMDAccessoryAccessCodeReaderWriter *)v18 removeAllHAPAccessCodesWithValue:v10 forSpecificAccessory:0 flow:v16];
  v25 = [(HMDAccessoryAccessCodeReaderWriter *)v18 removeAllAccessCodesWithValue_Matter:v10 withUserUUID:v11 guestName:v12 flow:v16];
  v26 = MEMORY[0x277D2C900];
  v32[0] = v24;
  v32[1] = v25;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v28 = [v26 combineAllFuturesFlatteningArrayResults:v27];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)readAccessCodesFromAccessoriesWithUUIDs:(id)a3 flow:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDAccessoryAccessCodeReaderWriter *)self context];
  v9 = [v8 workQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(HMDAccessoryAccessCodeReaderWriter *)self _readAccessCodesFromAccessoriesWithUUIDs:v7 withRetries:1 flow:v6];

  return v10;
}

- (HMDAccessoryAccessCodeReaderWriter)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDAccessoryAccessCodeReaderWriter;
  v6 = [(HMDAccessoryAccessCodeReaderWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t74 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t74, &__block_literal_global_176);
  }

  v3 = logCategory__hmf_once_v75;

  return v3;
}

uint64_t __49__HMDAccessoryAccessCodeReaderWriter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v75 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (id)createWriteRequestForRemoveRequests:(id)a3 characteristic:(id)a4 flow:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 hmf_isEmpty])
  {
    v11 = 0;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CFE9E8]) initWithValue:5];
    v13 = [v8 na_map:&__block_literal_global_173];
    v14 = [objc_alloc(MEMORY[0x277CFE9C8]) initWithOperationType:v12 accessCodeControlRequest:v13 accessCodeControlResponse:0];
    v26 = 0;
    v15 = [v14 serializeWithError:&v26];
    v16 = v26;
    if (v15)
    {
      v11 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v9 value:v15 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v17 = a1;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v24 = v17;
        v19 = [v10 UUID];
        *buf = 138544386;
        v28 = v23;
        v29 = 2112;
        v30 = v19;
        v20 = v19;
        v31 = 2112;
        v32 = 0;
        v33 = 2112;
        v34 = v8;
        v35 = 2112;
        v36 = v16;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to serialize access code control write request: %@, for update requests: %@, with error: %@", buf, 0x34u);

        v17 = v24;
      }

      objc_autoreleasePoolPop(context);
      v11 = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v11;
}

id __94__HMDAccessoryAccessCodeReaderWriter_createWriteRequestForRemoveRequests_characteristic_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CFEC98];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 accessoryAccessCodeValue];

  v6 = [v5 uniqueIdentifier];
  v7 = [v4 initWithValue:v6];

  v8 = [objc_alloc(MEMORY[0x277CFE9D0]) initWithIdentifier:v7 accessCode:0];

  return v8;
}

+ (id)createWriteRequestForUpdateRequests:(id)a3 characteristic:(id)a4 flow:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 hmf_isEmpty])
  {
    v11 = 0;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CFE9E8]) initWithValue:4];
    v13 = [v8 na_map:&__block_literal_global_170];
    v14 = [objc_alloc(MEMORY[0x277CFE9C8]) initWithOperationType:v12 accessCodeControlRequest:v13 accessCodeControlResponse:0];
    v26 = 0;
    v15 = [v14 serializeWithError:&v26];
    v16 = v26;
    if (v15)
    {
      v11 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v9 value:v15 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v17 = a1;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v24 = v17;
        v19 = [v10 UUID];
        *buf = 138544386;
        v28 = v23;
        v29 = 2112;
        v30 = v19;
        v20 = v19;
        v31 = 2112;
        v32 = 0;
        v33 = 2112;
        v34 = v8;
        v35 = 2112;
        v36 = v16;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to serialize access code control write request: %@, for update requests: %@, with error: %@", buf, 0x34u);

        v17 = v24;
      }

      objc_autoreleasePoolPop(context);
      v11 = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v11;
}

id __94__HMDAccessoryAccessCodeReaderWriter_createWriteRequestForUpdateRequests_characteristic_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CFEC98];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 accessoryAccessCodeValue];
  v6 = [v5 uniqueIdentifier];
  v7 = [v4 initWithValue:v6];

  v8 = objc_alloc(MEMORY[0x277CFE9D0]);
  v9 = [v3 updatedAccessCodeValue];

  v10 = [v9 stringValue];
  v11 = [v8 initWithIdentifier:v7 accessCode:v10];

  return v11;
}

+ (id)createWriteRequestForAddRequests:(id)a3 characteristic:(id)a4 flow:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 hmf_isEmpty])
  {
    v11 = 0;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CFE9E8]) initWithValue:3];
    v13 = [v8 na_map:&__block_literal_global_167];
    v14 = [objc_alloc(MEMORY[0x277CFE9C8]) initWithOperationType:v12 accessCodeControlRequest:v13 accessCodeControlResponse:0];
    v26 = 0;
    v15 = [v14 serializeWithError:&v26];
    v16 = v26;
    if (v15)
    {
      v11 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v9 value:v15 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v17 = a1;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v24 = v17;
        v19 = [v10 UUID];
        *buf = 138544386;
        v28 = v23;
        v29 = 2112;
        v30 = v19;
        v20 = v19;
        v31 = 2112;
        v32 = 0;
        v33 = 2112;
        v34 = v8;
        v35 = 2112;
        v36 = v16;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to serialize access code control write request: %@, for add requests: %@, with error: %@", buf, 0x34u);

        v17 = v24;
      }

      objc_autoreleasePoolPop(context);
      v11 = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v11;
}

id __91__HMDAccessoryAccessCodeReaderWriter_createWriteRequestForAddRequests_characteristic_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CFE9D0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 accessCodeValue];

  v6 = [v5 stringValue];
  v7 = [v4 initWithIdentifier:0 accessCode:v6];

  return v7;
}

+ (id)createWriteRequestsForModificationRequests:(id)a3 hapAccessories:(id)a4 flow:(id)a5
{
  v79 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v58 = a4;
  v55 = a5;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v67 objects:v78 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v68;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v68 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v67 + 1) + 8 * i);
        v15 = [v14 accessoryUUID];
        v16 = [v8 objectForKeyedSubscript:v15];

        if (v16)
        {
          v17 = [v14 accessoryUUID];
          v18 = [v8 objectForKeyedSubscript:v17];
          [v18 addObject:v14];
        }

        else
        {
          v17 = [MEMORY[0x277CBEB18] arrayWithObject:v14];
          v18 = [v14 accessoryUUID];
          [v8 setObject:v17 forKeyedSubscript:v18];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v67 objects:v78 count:16];
    }

    while (v11);
  }

  v19 = [MEMORY[0x277CBEB18] array];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = [v8 allKeys];
  v20 = v55;
  v57 = [obj countByEnumeratingWithState:&v63 objects:v77 count:16];
  if (v57)
  {
    v56 = *v64;
    *&v21 = 138543874;
    v52 = v21;
    v61 = v19;
    while (2)
    {
      for (j = 0; j != v57; ++j)
      {
        if (*v64 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v63 + 1) + 8 * j);
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __101__HMDAccessoryAccessCodeReaderWriter_createWriteRequestsForModificationRequests_hapAccessories_flow___block_invoke;
        v62[3] = &unk_2797304D0;
        v62[4] = v23;
        v24 = [v58 na_firstObjectPassingTest:{v62, v52}];
        if (!v24)
        {
          v45 = objc_autoreleasePoolPush();
          v46 = a1;
          v47 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v48 = HMFGetLogIdentifier();
            v49 = [v20 UUID];
            *buf = v52;
            v72 = v48;
            v73 = 2112;
            v74 = v49;
            v75 = 2112;
            v76 = v23;
            _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not submitting modification requests because did not find an accessory with UUID: %@", buf, 0x20u);

            v20 = v55;
          }

          objc_autoreleasePoolPop(v45);
LABEL_35:

          v44 = MEMORY[0x277CBEBF8];
          v19 = v61;
          goto LABEL_36;
        }

        v25 = v24;
        v26 = [v24 findCharacteristicType:@"00000262-0000-1000-8000-0026BB765291" forServiceType:@"00000260-0000-1000-8000-0026BB765291"];
        if (v26)
        {
          v27 = [v8 objectForKeyedSubscript:v23];
          v28 = [v27 na_map:&__block_literal_global_157];

          v29 = [HMDAccessoryAccessCodeReaderWriter createWriteRequestForAddRequests:v28 characteristic:v26 flow:v20];
          if (v29)
          {
            v30 = [[HMDAccessCodeWriteRequestModificationRequestPair alloc] initWithWriteRequest:v29 modificationRequests:v28];
            [v61 addObject:v30];
          }

          v59 = v29;
          v60 = v28;
          v31 = [v8 objectForKeyedSubscript:v23];
          v32 = [v31 na_map:&__block_literal_global_161];

          v33 = [HMDAccessoryAccessCodeReaderWriter createWriteRequestForUpdateRequests:v32 characteristic:v26 flow:v20];
          if (v33)
          {
            v34 = [[HMDAccessCodeWriteRequestModificationRequestPair alloc] initWithWriteRequest:v33 modificationRequests:v32];
            [v61 addObject:v34];
          }

          v35 = [v8 objectForKeyedSubscript:v23];
          v36 = [v35 na_map:&__block_literal_global_164];

          v37 = [HMDAccessoryAccessCodeReaderWriter createWriteRequestForRemoveRequests:v36 characteristic:v26 flow:v20];
          if (v37)
          {
            v38 = [[HMDAccessCodeWriteRequestModificationRequestPair alloc] initWithWriteRequest:v37 modificationRequests:v36];
            [v61 addObject:v38];

            v20 = v55;
          }
        }

        else
        {
          v39 = objc_autoreleasePoolPush();
          v40 = a1;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = HMFGetLogIdentifier();
            v43 = [v55 UUID];
            *buf = v52;
            v72 = v42;
            v73 = 2112;
            v74 = v43;
            v75 = 2112;
            v76 = v25;
            _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not submitting modification requests because did not find an access code control point on accessory: %@", buf, 0x20u);

            v20 = v55;
          }

          objc_autoreleasePoolPop(v39);
        }

        if (!v26)
        {
          goto LABEL_35;
        }
      }

      v19 = v61;
      v57 = [obj countByEnumeratingWithState:&v63 objects:v77 count:16];
      if (v57)
      {
        continue;
      }

      break;
    }
  }

  v44 = [v19 copy];
LABEL_36:

  v50 = *MEMORY[0x277D85DE8];

  return v44;
}

uint64_t __101__HMDAccessoryAccessCodeReaderWriter_createWriteRequestsForModificationRequests_hapAccessories_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

void *__101__HMDAccessoryAccessCodeReaderWriter_createWriteRequestsForModificationRequests_hapAccessories_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void *__101__HMDAccessoryAccessCodeReaderWriter_createWriteRequestsForModificationRequests_hapAccessories_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void *__101__HMDAccessoryAccessCodeReaderWriter_createWriteRequestsForModificationRequests_hapAccessories_flow___block_invoke_154(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

+ (int64_t)hmPrivateErrorCodeForHAPAccessCodeError:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3 - 2;
  if (a3 - 2) < 8 && ((0xBDu >> v4))
  {
    result = qword_253D4B5A0[v4];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = a1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = HAPAccessCodeResponseStatusAsString();
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Encountered an error type that likely indicates a bug: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    result = 2607;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)modificationResponseForControlResponse:(id)a3 operationType:(int64_t)a4 accessoryUUID:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ((a4 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v30 = _HMFPreconditionFailure();
    return [(HMDAccessoryAccessCodeReaderWriter *)v30 modificationResponseForFailedMatterRequest:v31 error:v32, v33];
  }

  v9 = v8;
  v10 = [v7 accessCode];

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = objc_alloc(MEMORY[0x277CD1648]);
  v12 = [v7 accessCode];
  v10 = [v11 initWithStringValue:v12];

  v13 = [v7 flags];

  if (v13)
  {
    v14 = [v7 flags];
    LOBYTE(v13) = [v14 value];
  }

  v15 = [v7 identifier];

  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x277CD1668]);
    v17 = [v7 identifier];
    v18 = [v17 value];
    v19 = [v16 initWithAccessoryUUID:v9 accessCodeValue:v10 uniqueIdentifier:v18 hasRestrictions:v13 & 1];
  }

  else
  {
LABEL_7:
    v19 = 0;
  }

  v20 = [v7 statusCode];
  if (!v20)
  {
    goto LABEL_14;
  }

  v21 = [v7 statusCode];
  v22 = [v21 value];

  if (!v22)
  {
    v20 = 0;
LABEL_14:
    v25 = v10;
    v10 = 0;
    goto LABEL_15;
  }

  v23 = MEMORY[0x277CCA9B8];
  v24 = [v7 statusCode];
  v20 = [v23 hmPrivateErrorWithCode:{+[HMDAccessoryAccessCodeReaderWriter hmPrivateErrorCodeForHAPAccessCodeError:](HMDAccessoryAccessCodeReaderWriter, "hmPrivateErrorCodeForHAPAccessCodeError:", objc_msgSend(v24, "value"))}];

  if (a4 != 3 || !v20)
  {
    goto LABEL_14;
  }

  v25 = v19;
  v19 = 0;
LABEL_15:

  v26 = 1;
  if (a4 != 4)
  {
    v26 = 2;
  }

  if (a4 == 3)
  {
    v27 = 0;
  }

  else
  {
    v27 = v26;
  }

  v28 = [objc_alloc(MEMORY[0x277CD1618]) initWithAccessoryUUID:v9 accessoryAccessCodeValue:v19 accessCodeValue:v10 operationType:v27 error:v20];

  return v28;
}

+ (id)modificationResponseForFailedMatterRequest:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v6 domain];
  v13 = v12;
  if (v12 == *MEMORY[0x277D17AA8])
  {
    v14 = [v6 code];

    if (v14 == 8)
    {
      if (v8)
      {
        v15 = objc_alloc(MEMORY[0x277CD1618]);
        v16 = [v8 accessoryUUID];
        v17 = [v8 accessCodeValue];
        v18 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2602];
        v19 = v15;
        v20 = v16;
        v21 = 0;
        v22 = v17;
        v23 = 0;
      }

      else
      {
        if (!v11)
        {
          goto LABEL_15;
        }

        v24 = objc_alloc(MEMORY[0x277CD1618]);
        v16 = [v11 accessoryUUID];
        v17 = [v11 accessoryAccessCodeValue];
        v18 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2602];
        v19 = v24;
        v20 = v16;
        v21 = v17;
        v22 = 0;
        v23 = 1;
      }

      v25 = [v19 initWithAccessoryUUID:v20 accessoryAccessCodeValue:v21 accessCodeValue:v22 operationType:v23 error:v18];

      goto LABEL_16;
    }
  }

  else
  {
  }

LABEL_15:
  v25 = [objc_opt_class() genericModificationResponseForFailedRequest:v9];
LABEL_16:

  return v25;
}

+ (id)genericModificationResponseForFailedRequest:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v5)
  {
    v12 = objc_alloc(MEMORY[0x277CD1618]);
    v13 = [v5 accessoryUUID];
    v14 = [v5 accessCodeValue];
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    v16 = v12;
    v17 = v13;
    v18 = 0;
    v19 = v14;
    v20 = 0;
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x277CD1618]);
    if (v8)
    {
      v13 = [v8 accessoryUUID];
      v14 = [v8 accessoryAccessCodeValue];
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      v16 = v21;
      v17 = v13;
      v18 = v14;
      v19 = 0;
      v20 = 1;
    }

    else
    {
      v13 = [v11 accessoryUUID];
      v14 = [v11 accessoryAccessCodeValue];
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      v16 = v21;
      v17 = v13;
      v18 = v14;
      v19 = 0;
      v20 = 2;
    }
  }

  v22 = [v16 initWithAccessoryUUID:v17 accessoryAccessCodeValue:v18 accessCodeValue:v19 operationType:v20 error:v15];

  return v22;
}

+ (id)createModificationResponsesForWriteResponses:(id)a3 ofRequestPairs:(id)a4 flow:(id)a5
{
  v62 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v7 = a4;
  v8 = a5;
  v43 = [MEMORY[0x277CBEB18] array];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v7;
  v44 = [obj countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v44)
  {
    v42 = *v50;
    *&v9 = 138544130;
    v39 = v9;
    do
    {
      v10 = 0;
      do
      {
        if (*v50 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v49 + 1) + 8 * v10);
        v12 = [v11 writeRequest];
        v13 = [HMDAccessoryAccessCodeReaderWriter _accessCodeControlFromWriteResponses:v45 forWriteRequest:v12 flow:v8];
        v14 = v13;
        if (!v13)
        {
          v27 = objc_autoreleasePoolPush();
          v28 = a1;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = HMFGetLogIdentifier();
            v31 = [v8 UUID];
            *buf = v39;
            v54 = v30;
            v55 = 2112;
            v56 = v31;
            v57 = 2112;
            v58 = v45;
            v59 = 2112;
            v60 = v12;
            _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to extract HAPAccessCodeControl from write responses: %@, for write request: %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v27);
          v24 = [v11 modificationRequests];
          v25 = v24;
          v26 = &__block_literal_global_146;
          goto LABEL_15;
        }

        v15 = [v13 accessCodeControlResponse];
        if (!v15 || (v16 = v15, [v14 accessCodeControlResponse], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "hmf_isEmpty"), v17, v16, v18))
        {
          v19 = objc_autoreleasePoolPush();
          v20 = a1;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = HMFGetLogIdentifier();
            v23 = [v8 UUID];
            *buf = 138543618;
            v54 = v22;
            v55 = 2112;
            v56 = v23;
            _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Received HAPAccessCodeControl object that does not contain any HAPAccessCodeControlResponses", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v19);
          v24 = [v11 modificationRequests];
          v25 = v24;
          v26 = &__block_literal_global_149;
LABEL_15:
          v32 = [v24 na_map:v26];

          [v43 addObjectsFromArray:v32];
          goto LABEL_16;
        }

        v33 = [v14 accessCodeControlResponse];
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __103__HMDAccessoryAccessCodeReaderWriter_createModificationResponsesForWriteResponses_ofRequestPairs_flow___block_invoke_2;
        v46[3] = &unk_2797214A8;
        v47 = v14;
        v48 = v12;
        v34 = [v33 na_map:v46];

        [v43 addObjectsFromArray:v34];
        v32 = v47;
LABEL_16:

        ++v10;
      }

      while (v44 != v10);
      v35 = [obj countByEnumeratingWithState:&v49 objects:v61 count:16];
      v44 = v35;
    }

    while (v35);
  }

  v36 = [v43 copy];
  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

id __103__HMDAccessoryAccessCodeReaderWriter_createModificationResponsesForWriteResponses_ofRequestPairs_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 operationType];
  v6 = [v5 value];
  v7 = [*(a1 + 40) characteristic];
  v8 = [v7 service];
  v9 = [v8 accessory];
  v10 = [v9 uuid];
  v11 = [HMDAccessoryAccessCodeReaderWriter modificationResponseForControlResponse:v4 operationType:v6 accessoryUUID:v10];

  return v11;
}

+ (id)_accessCodeControlFromWriteResponses:(id)a3 forWriteRequest:(id)a4 flow:(id)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 characteristic];
  v45 = 0;
  v12 = [v8 hmd_valueOfCharacteristic:v11 error:&v45];
  v13 = v45;
  if (v12)
  {
    v42 = v10;
    v14 = v12;
    objc_opt_class();
    v15 = objc_opt_isKindOfClass() & 1;
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v15)
    {
      v44 = v13;
      v18 = [MEMORY[0x277CFE9C8] parsedFromData:v14 error:&v44];
      v38 = v44;

      if (v18)
      {
        v19 = v18;
        v10 = v42;
      }

      else
      {
        v41 = v17;
        v30 = objc_autoreleasePoolPush();
        v31 = a1;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v33 = v37 = v30;
          v34 = [v42 UUID];
          *buf = 138543874;
          v47 = v33;
          v48 = 2112;
          v49 = v34;
          v50 = 2112;
          v51 = v14;
          _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to parse HAPAccessCodeControl from NSData: %@", buf, 0x20u);

          v30 = v37;
        }

        objc_autoreleasePoolPop(v30);
        v17 = v41;
        v10 = v42;
      }

      v13 = v38;
    }

    else
    {
      v40 = v17;
      v25 = objc_autoreleasePoolPush();
      v26 = a1;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v28 = v39 = v25;
        v29 = [v42 UUID];
        *buf = 138543874;
        v47 = v28;
        v48 = 2112;
        v49 = v29;
        v50 = 2112;
        v51 = v14;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Characteristic response value: %@ is not of expected type NSData", buf, 0x20u);

        v25 = v39;
      }

      objc_autoreleasePoolPop(v25);
      v18 = 0;
      v17 = v40;
      v10 = v42;
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = a1;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      [v10 UUID];
      v24 = v43 = v10;
      *buf = 138544386;
      v47 = v23;
      v48 = 2112;
      v49 = v24;
      v50 = 2112;
      v51 = v11;
      v52 = 2112;
      v53 = v8;
      v54 = 2112;
      v55 = v13;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to parse characteristic response for characteristic: %@, in payload: %@, with error: %@", buf, 0x34u);

      v10 = v43;
    }

    objc_autoreleasePoolPop(v20);
    v18 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)createConstraintsFromReadResponses:(id)a3 readRequests:(id)a4 flow:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 na_map:&__block_literal_global_140];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__HMDAccessoryAccessCodeReaderWriter_createConstraintsFromReadResponses_readRequests_flow___block_invoke_2;
  v15[3] = &unk_279721460;
  v17 = v9;
  v18 = a1;
  v16 = v8;
  v11 = v9;
  v12 = v8;
  v13 = [v10 na_map:v15];

  return v13;
}

id __91__HMDAccessoryAccessCodeReaderWriter_createConstraintsFromReadResponses_readRequests_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 accessory];
  v5 = [v4 uuid];

  v6 = [objc_alloc(MEMORY[0x277CD1608]) initWithAllowedCharacterSets:1 minimumLength:4 maximumLength:8 maximumAllowedAccessCodes:200];
  v7 = *(a1 + 32);
  v58 = 0;
  v8 = [v7 hmd_valueOfCharacteristic:v3 error:&v58];
  v9 = v58;
  if (v8)
  {
    v56 = v6;
    v10 = v8;
    objc_opt_class();
    v11 = objc_opt_isKindOfClass() & 1;
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v55 = v12;

    if (v11)
    {
      v57 = v9;
      v13 = [MEMORY[0x277CFE9C0] parsedFromData:v10 error:&v57];
      v52 = v57;

      if (v13)
      {
        v14 = [v13 characterSet];
        v15 = [v14 value];

        v50 = v15 == 1;
        v49 = objc_alloc(MEMORY[0x277CD1608]);
        v51 = [v13 minimumValueLength];
        v16 = [v51 value];
        v17 = [v16 integerValue];
        [v13 maximumValueLength];
        v18 = v53 = v5;
        v19 = [v18 value];
        v20 = [v19 integerValue];
        v21 = [v13 maximumAccessCodes];
        v22 = [v21 value];
        v23 = [v49 initWithAllowedCharacterSets:v50 minimumLength:v17 maximumLength:v20 maximumAllowedAccessCodes:{objc_msgSend(v22, "integerValue")}];

        v5 = v53;
        v24 = [objc_alloc(MEMORY[0x277CD1658]) initWithAccessory:v53 constraints:v23 error:0];
        v6 = v56;
      }

      else
      {
        v40 = objc_autoreleasePoolPush();
        v41 = *(a1 + 48);
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = HMFGetLogIdentifier();
          v44 = [*(a1 + 40) UUID];
          *buf = 138543874;
          v60 = v43;
          v61 = 2112;
          v62 = v44;
          v63 = 2112;
          v64 = v10;
          _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to parse HAPAccessCodeControl from NSData: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v40);
        v45 = objc_alloc(MEMORY[0x277CD1658]);
        v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        v46 = v45;
        v6 = v56;
        v24 = [v46 initWithAccessory:v5 constraints:v56 error:v23];
      }

      v9 = v52;
    }

    else
    {
      v32 = v5;
      v33 = objc_autoreleasePoolPush();
      v34 = *(a1 + 48);
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        v37 = [*(a1 + 40) UUID];
        *buf = 138543874;
        v60 = v36;
        v61 = 2112;
        v62 = v37;
        v63 = 2112;
        v64 = v10;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Characteristic response value: %@ is not of expected type NSData", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v33);
      v38 = objc_alloc(MEMORY[0x277CD1658]);
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      v39 = v38;
      v5 = v32;
      v6 = v56;
      v24 = [v39 initWithAccessory:v32 constraints:v56 error:v13];
    }
  }

  else
  {
    v54 = v5;
    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 48);
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      [*(a1 + 40) UUID];
      v30 = v29 = v6;
      v31 = *(a1 + 32);
      *buf = 138544386;
      v60 = v28;
      v61 = 2112;
      v62 = v30;
      v63 = 2112;
      v64 = v3;
      v65 = 2112;
      v66 = v31;
      v67 = 2112;
      v68 = v9;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to parse characteristic response for characteristic: %@, in payload: %@, with error: %@", buf, 0x34u);

      v6 = v29;
    }

    objc_autoreleasePoolPop(v25);
    v5 = v54;
    v24 = [objc_alloc(MEMORY[0x277CD1658]) initWithAccessory:v54 constraints:v6 error:v9];
  }

  v47 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)identifiersFromListWriteResponses:(id)a3 ofWriteRequests:(id)a4 flow:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v34 = [MEMORY[0x277CBEB38] dictionary];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v8;
  v35 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v35)
  {
    v11 = *v37;
    p_info = HMDAssistantGather.info;
    *&v10 = 138544130;
    v30 = v10;
    v31 = *v37;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v15 = [p_info + 286 _accessCodeControlFromWriteResponses:v7 forWriteRequest:v14 flow:{v9, v30}];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 accessCodeControlResponse];
          v18 = [v17 na_map:&__block_literal_global_137];

          v19 = [v14 characteristic];
          v20 = [v19 accessory];
          v21 = [v20 uuid];
          [v34 setObject:v18 forKeyedSubscript:v21];
        }

        else
        {
          v22 = objc_autoreleasePoolPush();
          v23 = a1;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = HMFGetLogIdentifier();
            v26 = [v9 UUID];
            *buf = v30;
            v41 = v25;
            v42 = 2112;
            v43 = v26;
            v44 = 2112;
            v45 = v7;
            v46 = 2112;
            v47 = v14;
            _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to extract HAPAccessCodeControl from write responses: %@, for write request: %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v22);
          v11 = v31;
          p_info = (HMDAssistantGather + 32);
        }
      }

      v35 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v35);
  }

  v27 = [v34 copy];
  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)accessCodeFetchResponsesForReadWriteResponses:(id)a3 ofWriteRequests:(id)a4 flow:(id)a5
{
  v68 = *MEMORY[0x277D85DE8];
  v47 = a3;
  v7 = a4;
  v8 = a5;
  v44 = [MEMORY[0x277CBEB18] array];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v9)
  {
    v11 = v9;
    v48 = *v56;
    *&v10 = 138544130;
    v43 = v10;
    do
    {
      v12 = 0;
      v46 = v11;
      do
      {
        if (*v56 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v55 + 1) + 8 * v12);
        v14 = [v13 characteristic];
        v15 = [v14 service];
        v16 = [v15 accessory];
        v17 = [v16 uuid];

        if (v17)
        {
          v18 = [HMDAccessoryAccessCodeReaderWriter _accessCodeControlFromWriteResponses:v47 forWriteRequest:v13 flow:v8];
          v19 = v18;
          if (v18)
          {
            v20 = [v18 accessCodeControlResponse];
            v50[0] = MEMORY[0x277D85DD0];
            v50[1] = 3221225472;
            v50[2] = __105__HMDAccessoryAccessCodeReaderWriter_accessCodeFetchResponsesForReadWriteResponses_ofWriteRequests_flow___block_invoke;
            v50[3] = &unk_2797213F8;
            v54 = a1;
            v51 = v8;
            v52 = v13;
            v21 = v17;
            v53 = v21;
            v22 = [v20 na_map:v50];

            v23 = [v19 accessCodeControlResponse];
            v24 = [v23 na_firstObjectPassingTest:&__block_literal_global_133];
            v25 = [v24 statusCode];
            v26 = [v25 value];

            if (v26)
            {
              v27 = MEMORY[0x277CCA9B8];
              v28 = HAPAccessCodeResponseStatusAsString();
              v26 = [v27 hmErrorWithCode:-1 description:v28 reason:0 suggestion:0];
            }

            v11 = v46;
            v29 = [objc_alloc(MEMORY[0x277CD1660]) initWithAccessoryUUID:v21 accessoryAccessCodeValues:v22 error:v26];
            [v44 addObject:v29];
          }

          else
          {
            v35 = objc_autoreleasePoolPush();
            v36 = a1;
            v37 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              v38 = HMFGetLogIdentifier();
              v39 = [v8 UUID];
              *buf = v43;
              v60 = v38;
              v61 = 2112;
              v62 = v39;
              v63 = 2112;
              v64 = v47;
              v65 = 2112;
              v66 = v13;
              _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to extract HAPAccessCodeControl from write responses: %@, for write request: %@", buf, 0x2Au);

              v11 = v46;
            }

            objc_autoreleasePoolPop(v35);
          }
        }

        else
        {
          v30 = objc_autoreleasePoolPush();
          v31 = a1;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = HMFGetLogIdentifier();
            v34 = [v8 UUID];
            *buf = 138543874;
            v60 = v33;
            v61 = 2112;
            v62 = v34;
            v63 = 2112;
            v64 = v13;
            _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find accessory UUID for write request: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v30);
        }

        ++v12;
      }

      while (v11 != v12);
      v11 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v11);
  }

  v40 = [v44 copy];
  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

id __105__HMDAccessoryAccessCodeReaderWriter_accessCodeFetchResponsesForReadWriteResponses_ofWriteRequests_flow___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 identifier];

  if (!v4)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 56);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 32) UUID];
      v21 = *(a1 + 40);
      v26 = 138544130;
      v27 = v19;
      v28 = 2112;
      v29 = v20;
      v30 = 2112;
      v31 = v3;
      v32 = 2112;
      v33 = v21;
      v22 = "%{public}@[Flow: %@] Accessory read response: %@ does not contain an access code identifier for write request: %@";
LABEL_10:
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, v22, &v26, 0x2Au);
    }

LABEL_11:

    objc_autoreleasePoolPop(v16);
    v15 = 0;
    goto LABEL_12;
  }

  v5 = [v3 accessCode];

  if (!v5)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 56);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 32) UUID];
      v23 = *(a1 + 40);
      v26 = 138544130;
      v27 = v19;
      v28 = 2112;
      v29 = v20;
      v30 = 2112;
      v31 = v3;
      v32 = 2112;
      v33 = v23;
      v22 = "%{public}@[Flow: %@] Accessory read response: %@ does not contain an access code for write request: %@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v6 = [v3 flags];

  if (v6)
  {
    v7 = [v3 flags];
    LOBYTE(v6) = [v7 value];
  }

  v8 = objc_alloc(MEMORY[0x277CD1668]);
  v9 = *(a1 + 48);
  v10 = objc_alloc(MEMORY[0x277CD1648]);
  v11 = [v3 accessCode];
  v12 = [v10 initWithStringValue:v11];
  v13 = [v3 identifier];
  v14 = [v13 value];
  v15 = [v8 initWithAccessoryUUID:v9 accessCodeValue:v12 uniqueIdentifier:v14 hasRestrictions:v6 & 1];

LABEL_12:
  v24 = *MEMORY[0x277D85DE8];

  return v15;
}

BOOL __105__HMDAccessoryAccessCodeReaderWriter_accessCodeFetchResponsesForReadWriteResponses_ofWriteRequests_flow___block_invoke_130(uint64_t a1, void *a2)
{
  v2 = [a2 statusCode];
  v3 = [v2 value] != 0;

  return v3;
}

+ (id)_createReadWriteRequestsForAccessCodeIdentifiersByCharacteristic:(id)a3 flow:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v23 = a4;
  v29 = [MEMORY[0x277CBEB18] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [v5 keyEnumerator];
  v32 = [obj countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (v32)
  {
    v31 = *v35;
    v26 = v5;
    while (2)
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v35 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v34 + 1) + 8 * i);
        v8 = [objc_alloc(MEMORY[0x277CFE9E8]) initWithValue:2];
        v9 = [v5 objectForKey:v7];
        v10 = [v9 na_map:&__block_literal_global_127];
        v11 = [objc_alloc(MEMORY[0x277CFE9C8]) initWithOperationType:v8 accessCodeControlRequest:v10 accessCodeControlResponse:0];
        v33 = 0;
        v12 = [v11 serializeWithError:&v33];
        v13 = v33;
        if (v12)
        {
          v14 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v7 value:v12 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
          [v29 addObject:v14];
        }

        else
        {
          context = objc_autoreleasePoolPush();
          v15 = a1;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v24 = HMFGetLogIdentifier();
            v25 = v15;
            v17 = [v23 UUID];
            *buf = 138544642;
            v39 = v24;
            v40 = 2112;
            v41 = v17;
            v18 = v17;
            v42 = 2112;
            v43 = 0;
            v44 = 2112;
            v45 = v9;
            v46 = 2112;
            v47 = v7;
            v48 = 2112;
            v49 = v13;
            _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to serialize access code control write request: %@, to read access codes with identifiers: %@, from characteristic: %@, with error: %@", buf, 0x3Eu);

            v15 = v25;
          }

          objc_autoreleasePoolPop(context);
          v5 = v26;
        }

        if (!v12)
        {

          v20 = 0;
          v19 = v29;
          goto LABEL_16;
        }
      }

      v32 = [obj countByEnumeratingWithState:&v34 objects:v50 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  v19 = v29;
  v20 = [v29 copy];
LABEL_16:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

id __108__HMDAccessoryAccessCodeReaderWriter__createReadWriteRequestsForAccessCodeIdentifiersByCharacteristic_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CFE9D0];
  v3 = a2;
  v4 = [[v2 alloc] initWithIdentifier:v3 accessCode:0];

  return v4;
}

+ (id)_createListWriteRequestsForCharacteristics:(id)a3 flow:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__HMDAccessoryAccessCodeReaderWriter__createListWriteRequestsForCharacteristics_flow___block_invoke;
  v10[3] = &unk_279721388;
  v11 = v6;
  v12 = a1;
  v7 = v6;
  v8 = [a3 na_map:v10];

  return v8;
}

id __86__HMDAccessoryAccessCodeReaderWriter__createListWriteRequestsForCharacteristics_flow___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CFE9E8]) initWithValue:1];
  v5 = [objc_alloc(MEMORY[0x277CFE9C8]) initWithOperationType:v4 accessCodeControlRequest:0 accessCodeControlResponse:0];
  v16 = 0;
  v6 = [v5 serializeWithError:&v16];
  v7 = v16;
  if (v6)
  {
    v8 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v3 value:v6 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) UUID];
      *buf = 138544130;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = 0;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to serialize access code control list request: %@, with error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

@end