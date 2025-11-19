@interface MTRBaseDevice
@end

@implementation MTRBaseDevice

void __110__MTRBaseDevice_HMMTRPairing___fetchPairingsWithCallbackQueue_filtered_vendorMetadataStore_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v26 = v6;
    v8 = [MEMORY[0x277CBEB18] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = v5;
    v9 = v5;
    v29 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v29)
    {
      v10 = *v31;
      v28 = *v31;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          v13 = [HMMTRPairing alloc];
          v14 = *(a1 + 32);
          v15 = [v12 vendorId];
          v16 = [v14 _vendorNameForVendorID:v15 vendorMetadataStore:*(a1 + 40)];
          v17 = [(HMMTRPairing *)v13 initWithFabricDescriptor:v12 vendorName:v16];

          if (v17)
          {
            [v8 addObject:v17];
          }

          else
          {
            v18 = objc_autoreleasePoolPush();
            v19 = *(a1 + 32);
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v21 = v9;
              v23 = v22 = v8;
              *buf = 138543618;
              v35 = v23;
              v36 = 2112;
              v37 = v12;
              _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not construct HMMTRPairing from fetched fabricDescriptor: %@", buf, 0x16u);

              v8 = v22;
              v9 = v21;
              v10 = v28;
            }

            objc_autoreleasePoolPop(v18);
          }
        }

        v29 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v29);
    }

    (*(*(a1 + 48) + 16))();
    v7 = v26;
    v5 = v27;
  }

  else
  {
    v24 = [HMMTRAccessoryPairingEndContext mtrContextWithStep:10 error:v6];
    (*(*(a1 + 48) + 16))();
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __103__MTRBaseDevice_HMMTRPairing__removeAllPairingsForCallbackQueue_vendorMetadataStore_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
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
      *buf = 138543618;
      v21 = v10;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to find current fabric Index, unpairing might not complete deterministically. Error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = a1[4];
  v12 = a1[5];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __103__MTRBaseDevice_HMMTRPairing__removeAllPairingsForCallbackQueue_vendorMetadataStore_completionHandler___block_invoke_10;
  v15[3] = &unk_2786F0ED0;
  v15[4] = v11;
  v19 = a1[7];
  v16 = v5;
  v17 = a1[6];
  v18 = a1[5];
  v13 = v5;
  [v11 fetchFabricDescriptorsWithCallbackQueue:v12 filtered:0 completionHandler:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __103__MTRBaseDevice_HMMTRPairing__removeAllPairingsForCallbackQueue_vendorMetadataStore_completionHandler___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v30 = v5;
  v31 = a3;
  if (v31)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v31;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_ERROR, "%{public}@Remove all pairings error: Could not retrieve Fabrics List. %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    (*(*(a1 + 64) + 16))(*(a1 + 64));
  }

  else
  {
    v10 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v48 = __Block_byref_object_copy__12513;
    v49 = __Block_byref_object_dispose__12514;
    v50 = 0;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v5;
    v11 = [obj countByEnumeratingWithState:&v42 objects:v46 count:{16, v5}];
    v12 = 0;
    if (v11)
    {
      v13 = *v43;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v43 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v42 + 1) + 8 * i);
          v16 = *(a1 + 40);
          v17 = [v15 fabricIndex];
          LODWORD(v16) = [v16 isEqualToNumber:v17];

          if (v16)
          {
            v18 = [HMMTRPairing alloc];
            v19 = *(a1 + 32);
            v20 = [v15 vendorId];
            v21 = [v19 _vendorNameForVendorID:v20 vendorMetadataStore:*(a1 + 48)];
            v22 = [(HMMTRPairing *)v18 initWithFabricDescriptor:v15 vendorName:v21];

            v12 = v22;
          }

          else
          {
            dispatch_group_enter(v10);
            v23 = *(a1 + 32);
            v24 = [v15 fabricIndex];
            v25 = *(a1 + 56);
            v39[0] = MEMORY[0x277D85DD0];
            v39[1] = 3221225472;
            v39[2] = __103__MTRBaseDevice_HMMTRPairing__removeAllPairingsForCallbackQueue_vendorMetadataStore_completionHandler___block_invoke_11;
            v39[3] = &unk_2786F0F98;
            v39[4] = *(a1 + 32);
            v39[5] = v15;
            v41 = buf;
            v40 = v10;
            [v23 _removeFabricWithIndex:v24 callbackQueue:v25 completionHandler:v39];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v11);
    }

    v26 = *(a1 + 56);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__MTRBaseDevice_HMMTRPairing__removeAllPairingsForCallbackQueue_vendorMetadataStore_completionHandler___block_invoke_13;
    block[3] = &unk_2786F0FE8;
    v27 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v34 = v12;
    v35 = v27;
    v36 = *(a1 + 56);
    v38 = buf;
    v37 = *(a1 + 64);
    v28 = v12;
    dispatch_group_notify(v10, v26, block);

    _Block_object_dispose(buf, 8);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __103__MTRBaseDevice_HMMTRPairing__removeAllPairingsForCallbackQueue_vendorMetadataStore_completionHandler___block_invoke_11(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 40) fabricID];
      v11 = 138543874;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove fabric ID %@ with Error %@", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 48));

  v10 = *MEMORY[0x277D85DE8];
}

void __103__MTRBaseDevice_HMMTRPairing__removeAllPairingsForCallbackQueue_vendorMetadataStore_completionHandler___block_invoke_13(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Removing current pairing %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__MTRBaseDevice_HMMTRPairing__removeAllPairingsForCallbackQueue_vendorMetadataStore_completionHandler___block_invoke_14;
  v13[3] = &unk_2786F0FC0;
  v13[4] = v7;
  v14 = *(a1 + 40);
  v12 = *(a1 + 64);
  v10 = v12;
  v15 = v12;
  [v7 _removeFabricWithIndex:v8 callbackQueue:v9 completionHandler:v13];

  v11 = *MEMORY[0x277D85DE8];
}

void __103__MTRBaseDevice_HMMTRPairing__removeAllPairingsForCallbackQueue_vendorMetadataStore_completionHandler___block_invoke_14(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v12 = 138543874;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove our own pairing %@ with Error %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  v10 = *(*(*(a1 + 56) + 8) + 40);
  (*(*(a1 + 48) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void __90__MTRBaseDevice_HMMTRPairing__fetchCurrentFabricIndexWithCallbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543874;
    v13 = v10;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Current Fabric Index: %@ Error: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void __62__MTRBaseDevice_HMMTRPairing__unpairDevice_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) _retrieveFabricClusterWithQueue:*(a1 + 40)];
    v7 = objc_alloc_init(MEMORY[0x277CD5470]);
    [v7 setFabricIndex:v5];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__MTRBaseDevice_HMMTRPairing__unpairDevice_completionHandler___block_invoke_2;
    v8[3] = &unk_2786F0EF8;
    v8[4] = *(a1 + 32);
    v9 = *(a1 + 48);
    [v6 removeFabricWithParams:v7 completionHandler:v8];
  }
}

void __62__MTRBaseDevice_HMMTRPairing__unpairDevice_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Unpair Status: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void __86__MTRBaseDevice_HMMTRPairing___removeFabricWithIndex_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Remove pairing Status: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void __97__MTRBaseDevice_HMMTRPairing__removePairing_callbackQueue_vendorMetadataStore_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
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
      *buf = 138543618;
      v36 = v10;
      v37 = 2112;
      v38 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Remove pairing error: Could not retrieve Fabrics List. %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v26 = v5;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          v17 = [HMMTRPairing alloc];
          v18 = *(a1 + 32);
          v19 = [v16 vendorId];
          v20 = [v18 _vendorNameForVendorID:v19 vendorMetadataStore:*(a1 + 40)];
          v21 = [(HMMTRPairing *)v17 initWithFabricDescriptor:v16 vendorName:v20];

          if ([*(a1 + 48) isEqual:v21])
          {
            v23 = *(a1 + 32);
            v24 = [v16 fabricIndex];
            [v23 _removeFabricWithIndex:v24 callbackQueue:*(a1 + 56) completionHandler:*(a1 + 64)];

            goto LABEL_15;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__MTRBaseDevice_HMMTRPairing__removePairing_callbackQueue_vendorMetadataStore_completionHandler___block_invoke_2;
    block[3] = &unk_2786F0EA8;
    block[4] = *(a1 + 32);
    v22 = *(a1 + 56);
    v28 = *(a1 + 48);
    v29 = *(a1 + 64);
    dispatch_async(v22, block);

LABEL_15:
    v6 = 0;
    v5 = v26;
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __97__MTRBaseDevice_HMMTRPairing__removePairing_callbackQueue_vendorMetadataStore_completionHandler___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_ERROR, "%{public}@Remove pairing error: Could not find pairing matching %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 48);
  v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
  (*(v7 + 16))(v7, v8);

  v9 = *MEMORY[0x277D85DE8];
}

@end