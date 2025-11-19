void sub_229B49D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__43810(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HMDAccessorySettingsAuditReasonAsString(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDMediaSystemSettingsAuditReason %tu", a1];
  }

  else
  {
    v2 = off_278672FF8[a1 - 1];
  }

  return v2;
}

__CFString *HMDEventTriggerActivationTypeAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDEventTriggerActivationType %tu", a1];
  }

  else
  {
    v2 = off_278673038[a1];
  }

  return v2;
}

void sub_229B55328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B55440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B55C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B569EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B56C7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_229B582C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B591B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B59738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B5A6D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B5ACBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B5D6AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 40));
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&a9);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B5E018(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_229B5ED6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_229B60460(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_229B66178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  objc_destroyWeak(&a35);
  objc_destroyWeak((v35 - 168));
  _Unwind_Resume(a1);
}

void sub_229B68304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B6C1E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B70C20(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229B70CC4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229B72770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B733B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__48000(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229B79174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229B79520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HMDCameraAspectRatioForImageData(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = CGImageSourceCreateWithData(v1, 0);
  if (v2)
  {
    v3 = v2;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v2, 0, 0);
    CFRelease(v3);
    if (ImageAtIndex)
    {
      Width = CGImageGetWidth(ImageAtIndex);
      Height = CGImageGetHeight(ImageAtIndex);
      CFRelease(ImageAtIndex);
      v7 = [MEMORY[0x277CCABB0] numberWithDouble:Width / Height];
      goto LABEL_10;
    }

    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v10;
      v11 = "%{public}@Failed to create image";
      goto LABEL_8;
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v10;
      v11 = "%{public}@Failed to create image source";
LABEL_8:
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, v11, &v14, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v8);
  v7 = 0;
LABEL_10:

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

id getIDSSessionOptionsAllowedClasses()
{
  v5[8] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v5[6] = objc_opt_class();
  v5[7] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:8];
  v2 = [v0 setWithArray:v1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_229B7EFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B80E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B823C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __updateRegistration(void *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v7 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v8 = [v5 transaction:@"RegistrationModification" options:v7];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * v13) modelObjectWithChangeType:a2 version:{4, v16}];
        [v14 setObjectChangeType:a2];
        [v8 add:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [v8 run];
  v15 = *MEMORY[0x277D85DE8];
}

void sub_229B8399C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 208), 8);
  _Block_object_dispose((v31 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49687(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void removeDictionaryEntry(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v8 objectForKeyedSubscript:v5];

  if (v7 == v6)
  {
    [v8 removeObjectForKey:v5];
  }
}

id __dependencySort(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 count] > 1)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = MEMORY[0x277D85DD0];
    while (1)
    {
      v16[0] = v5;
      v16[1] = 3221225472;
      v16[2] = ____dependencySort_block_invoke;
      v16[3] = &unk_278673728;
      v6 = v1;
      v17 = v6;
      v7 = v4;
      v18 = v7;
      v8 = v3;
      v19 = v8;
      [v6 enumerateKeysAndObjectsUsingBlock:v16];
      v9 = [v7 count];
      if (v9 == [v6 count])
      {
        break;
      }

      if (![v7 count])
      {
        v10 = objc_autoreleasePoolPush();
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = HMFGetLogIdentifier();
          *buf = 138543362;
          v21 = v12;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@LOOP IN OBJECT REFERENCES", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v10);
        v13 = [v6 allValues];
        [v8 addObjectsFromArray:v13];

        break;
      }

      [v6 removeObjectsForKeys:v7];
      [v7 removeAllObjects];
    }

    v2 = [v8 copy];
  }

  else
  {
    v2 = [v1 allValues];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v2;
}

void __lookup(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v6 count])
  {
    v8 = [v5 lookup];
    if (v8)
    {
      if (!v7)
      {
        v7 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      }

      v9 = [[HMDBackingStoreTransactionActions alloc] initWithBackingStore:v5 options:v7];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = ____lookup_block_invoke;
      v19[3] = &unk_278673818;
      v20 = v8;
      v10 = v9;
      v21 = v10;
      v11 = v5;
      v22 = v11;
      [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v19];
      [(HMDBackingStoreTransactionActions *)v10 invokePostApplyActions];
      if ([(HMDBackingStoreTransactionActions *)v10 saveToAssistant])
      {
        v12 = [v11 homeManager];
        v13 = [v7 label];
        [v12 assistantSyncDataChanged:v13];
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = v5;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v24 = v17;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@HMDOBJECTLOOKUP IS NIL.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void ____lookup_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ____lookup_block_invoke_2;
  v7[3] = &unk_27868A1D8;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v4 lookUpAndApplyObjectChange:v6 previous:0 result:v5 completionHandler:v7];
}

void ____lookup_block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) change];
      v9 = [v8 objectChangeType];
      if ((v9 - 1) > 2)
      {
        v10 = @"unknown";
      }

      else
      {
        v10 = off_278680560[v9 - 1];
      }

      v11 = v10;
      v12 = [*(a1 + 40) change];
      v14 = 138544130;
      v15 = v7;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = objc_opt_class();
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@LOOKUP FAILED: %@ %@: %@", &v14, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void ____dependencySort_block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v7 = [v6 change];
  v8 = [v7 dependentUUIDs];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ____dependencySort_block_invoke_2;
  v9[3] = &unk_278673700;
  v10 = a1[4];
  v11 = a1[5];
  v12 = &v13;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];

  if (*(v14 + 24) == 1)
  {
    [a1[6] addObject:v6];
    [a1[5] addObject:v5];
  }

  _Block_object_dispose(&v13, 8);
}

void sub_229B85348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ____dependencySort_block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v5 = [*(a1 + 32) objectForKey:?];
  if (v5)
  {
    v6 = v5;
    v7 = [*(a1 + 40) containsObject:v8];

    if ((v7 & 1) == 0)
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      *a3 = 1;
    }
  }
}

void __broadcastChanges(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v65 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if ([v15 count] || (__objectsAreRelevantForBroadcast(v12) & 1) != 0 || (__objectsAreRelevantForBroadcast(v13) & 1) != 0 || (__objectsAreRelevantForBroadcast(v14) & 1) != 0)
  {
    v17 = [v12 mutableCopy];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [MEMORY[0x277CBEB58] set];
    }

    v20 = v19;

    v21 = [v13 mutableCopy];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = [MEMORY[0x277CBEB58] set];
    }

    v24 = v23;

    v25 = [v14 mutableCopy];
    v26 = v25;
    v47 = v13;
    v48 = v12;
    v46 = v14;
    v44 = v16;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = [MEMORY[0x277CBEB58] set];
    }

    v28 = v27;

    v29 = [MEMORY[0x277CBEB38] dictionary];
    v30 = [MEMORY[0x277CBEB38] dictionary];
    [v20 minusSet:v24];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = ____broadcastChanges_block_invoke;
    v54[3] = &unk_278673750;
    v31 = v30;
    v55 = v31;
    v32 = v29;
    v56 = v32;
    v45 = v15;
    [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v54];
    v33 = [v11 context];
    v34 = [v33 partition];
    v35 = [v34 redirections];
    v36 = [v35 processInserts:v24 updates:v20 deletes:v28];

    if (v36)
    {
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = ____broadcastChanges_block_invoke_2;
      v51[3] = &unk_278673778;
      v52 = v24;
      v53 = v20;
      __removeItemsWithManagedObjectsPassingTest(v32, v51);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = ____broadcastChanges_block_invoke_3;
      v49[3] = &unk_2786737A0;
      v50 = v28;
      __removeItemsWithManagedObjectsPassingTest(v31, v49);
    }

    v37 = __dependencySort(v31);
    __lookup(v11, v37, v44);
    __updateLegacy(v11, v20, v32, 2);
    __updateLegacy(v11, v24, v32, 1);
    v38 = __dependencySort(v32);
    __lookup(v11, v38, v44);
    [v11 dmKickClients];

    v16 = v44;
    v13 = v47;
    v12 = v48;
    v15 = v45;
    v14 = v46;
  }

  else
  {
    v40 = objc_autoreleasePoolPush();
    v41 = v11;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138544130;
      v58 = v43;
      v59 = 2112;
      v60 = v12;
      v61 = 2112;
      v62 = v13;
      v63 = 2112;
      v64 = v14;
      _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_DEBUG, "%{public}@Skipping broadcast: updates = %@, inserts = %@, deletes = %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v40);
  }

  v39 = *MEMORY[0x277D85DE8];
}

id __mirrorForeignObjects(void *a1, void *a2)
{
  v3 = a1;
  v4 = MEMORY[0x277CBEB58];
  v5 = a2;
  v6 = [[v4 alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = ____mirrorForeignObjects_block_invoke;
  v14 = &unk_278678F60;
  v15 = v6;
  v16 = v3;
  v7 = v3;
  v8 = v6;
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:&v11];

  v9 = [v8 copy];

  return v9;
}

void ____mirrorForeignObjects_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [a2 objectID];
  v4 = [v3 objectWithID:v5];
  [v2 addObject:v4];
}

uint64_t __objectsAreRelevantForBroadcast(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (__objectsAreRelevantForBroadcast_once != -1)
  {
    dispatch_once(&__objectsAreRelevantForBroadcast_once, &__block_literal_global_95);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = __objectsAreRelevantForBroadcast_ignoredEntityNames;
        v7 = [*(*(&v11 + 1) + 8 * i) objectID];
        v8 = [v7 entityName];
        LODWORD(v6) = [v6 containsObject:v8];

        if (!v6)
        {
          v3 = 1;
          goto LABEL_13;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

void ____broadcastChanges_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [v3 change];
  v4 = [v8 objectChangeType];
  v5 = 40;
  if (v4 == 3)
  {
    v5 = 32;
  }

  v6 = *(a1 + v5);
  v7 = [v8 uuid];
  [v6 setObject:v3 forKeyedSubscript:v7];
}

uint64_t ____broadcastChanges_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 40) containsObject:v3] ^ 1;
  }

  return v4;
}

void __removeItemsWithManagedObjectsPassingTest(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CBEB18];
  v5 = a1;
  v6 = [v4 array];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = ____removeItemsWithManagedObjectsPassingTest_block_invoke;
  v12 = &unk_2786737C8;
  v13 = v6;
  v14 = v3;
  v7 = v6;
  v8 = v3;
  [v5 enumerateKeysAndObjectsUsingBlock:&v9];
  [v5 removeObjectsForKeys:{v7, v9, v10, v11, v12}];
}

void __updateLegacy(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ____updateLegacy_block_invoke;
  v11[3] = &unk_2786737F0;
  v13 = v8;
  v14 = a4;
  v12 = v7;
  v9 = v8;
  v10 = v7;
  [a2 hmf_enumerateWithAutoreleasePoolUsingBlock:v11];
}

void ____updateLegacy_block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HMDCastIfManagedObjectBSORepresentable(v3);
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = [v4 hmd_modelID];
    v8 = [v6 objectForKey:v7];

    if (!v8)
    {
      v9 = *(a1 + 48);
      v26 = 0;
      v10 = [v5 hmd_modelsWithChangeType:v9 detached:0 error:&v26];
      v11 = v26;
      if (v10)
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = ____updateLegacy_block_invoke_97;
        v24[3] = &unk_2786743D8;
        v25 = *(a1 + 40);
        [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];
      }

      else
      {
        v19 = objc_autoreleasePoolPush();
        v20 = *(a1 + 32);
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543874;
          v28 = v22;
          v29 = 2112;
          v30 = v5;
          v31 = 2112;
          v32 = v11;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to turn managed object %@ into models: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v19);
      }
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 48) - 1;
      if (v16 > 2)
      {
        v17 = @"unknown";
      }

      else
      {
        v17 = off_278680560[v16];
      }

      v18 = v17;
      *buf = 138543874;
      v28 = v15;
      v29 = 2112;
      v30 = v3;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Managed object %@ is not BSO-representable, ignoring it for %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void ____updateLegacy_block_invoke_97(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 uuid];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];

  if (!v4)
  {
    v5 = [[HMDBackingStoreTransactionItem alloc] initWithChange:v6 message:0];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v3];
  }
}

void ____removeItemsWithManagedObjectsPassingTest_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 change];
  v6 = HMDCastIfModelCDRepresentable(v5);
  v7 = [v6 managedObject];

  if (v7 && (*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v8];
  }
}

void ____objectsAreRelevantForBroadcast_block_invoke()
{
  v0 = +[HMDCoreData entitiesExcludedFromWorkingStoreHistory];
  v1 = __objectsAreRelevantForBroadcast_ignoredEntityNames;
  __objectsAreRelevantForBroadcast_ignoredEntityNames = v0;
}

void sub_229B878A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____createLegacyDeletes_block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HMDCastIfManagedObjectBSORepresentable(v3);
  v5 = v4;
  if (v4)
  {
    v19 = 0;
    v6 = [v4 hmd_modelsWithChangeType:3 detached:0 error:&v19];
    v7 = v19;
    if (v6)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = ____createLegacyDeletes_block_invoke_91;
      v17[3] = &unk_2786743D8;
      v18 = *(a1 + 40);
      [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543874;
        v21 = v15;
        v22 = 2112;
        v23 = v5;
        v24 = 2112;
        v25 = v7;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to turn managed object %@ into models: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Managed object %@ is not BSO-representable, ignoring it for delete", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void ____createLegacyDeletes_block_invoke_91(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[HMDBackingStoreTransactionItem alloc] initWithChange:v3 message:0];

  [v2 addObject:v4];
}

HMDBackingStore *__backingStoreWithUUID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  os_unfair_lock_lock_with_options();
  v5 = +[HMDBackingStore cdlsActiveBackingStores];
  v6 = [v5 objectForKey:v3];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [[HMDBackingStore alloc] initWithUUID:v3];
    v9 = +[HMDBackingStore cdlsActiveBackingStores];
    [v9 setObject:v8 forKey:v3];

    v10 = [(HMDBackingStore *)v8 coreData];
    if (v4)
    {
      [v10 contextWithHomeUUID:v4];
    }

    else
    {
      [v10 contextWithRootPartition];
    }
    v11 = ;

    [(HMDBackingStore *)v8 setContext:v11];
    [v11 setBackingStore:v8];
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v8 selector:sel_handleCoreDataWillSaveNotification_ name:*MEMORY[0x277CBE1C0] object:0];

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v8 selector:sel_handleCoreDataDidSaveNotification_ name:*MEMORY[0x277CBE1A8] object:0];

    v7 = v8;
  }

  os_unfair_lock_unlock(&__backingStoreWithUUID_cdlsActiveBackingStoresLock);

  return v7;
}

void sub_229B8A504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B8F5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229B91218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B93734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B94D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B95BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak((v33 - 184));
  _Unwind_Resume(a1);
}

void sub_229B97F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a59, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__50433(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229B9A6EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B9DCD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B9E404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229BA0A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229BA5240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sha256(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a1;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v21 = &a9;
  v10 = v9;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    do
    {
      *md = 0;
      v24 = 0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 UTF8String];
        v14 = strlen(v13);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            _HMFPreconditionFailureWithFormat();
          }

          v13 = md;
          [v12 getUUIDBytes:md];
          v15 = 16;
          goto LABEL_10;
        }

        v13 = [v12 bytes];
        v14 = [v12 length];
      }

      v15 = v14;
LABEL_10:
      CC_SHA256_Update(&c, v13, v15);
      v16 = v21++;
      v17 = *v16;

      v12 = v17;
    }

    while (v17);
  }

  CC_SHA256_Final(md, &c);
  v18 = [MEMORY[0x277CBEA90] dataWithBytes:md length:32];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void sub_229BACB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __findObjectInSet(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ____findObjectInSet_block_invoke;
  v13[3] = &unk_278674148;
  v15 = v7;
  v16 = a4;
  v14 = v8;
  v9 = v7;
  v10 = v8;
  v11 = [a1 na_firstObjectPassingTest:v13];

  return v11;
}

uint64_t ____findObjectInSet_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1[4])
  {
    v9 = a1[6];
    isKindOfClass = objc_opt_isKindOfClass();
    goto LABEL_7;
  }

  v5 = [v3 valueForKey:a1[5]];
  v6 = [v5 isEqual:a1[4]];

  if (!v6)
  {
    isKindOfClass = 0;
    goto LABEL_7;
  }

  v7 = a1[6];
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
LABEL_7:

    return isKindOfClass & 1;
  }

  v11 = _HMFPreconditionFailure();
  return [NSManagedObject(HomeKitDaemon) mkf_removeFromRelationship:v11 object:?];
}

id __createNewObject(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = [a2 entity];
  v11 = [v7 entity];
  v12 = [v8 inverseRelationship];
  v13 = [v12 destinationEntity];
  v14 = [v11 isKindOfEntity:v13];

  if ((v14 & 1) == 0)
  {
    _HMFPreconditionFailure();
    goto LABEL_20;
  }

  v15 = objc_alloc(MEMORY[0x277CBE438]);
  v16 = [v7 managedObjectContext];
  v17 = [v15 initWithEntity:v10 insertIntoManagedObjectContext:v16];

  v18 = [v8 destinationEntity];
  v19 = [v18 managedObjectClassName];
  NSClassFromString(v19);
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_20:
    _HMFPreconditionFailure();
    goto LABEL_21;
  }

  v21 = __keyNameForEntity(v10);
  if (![v21 isEqual:@"modelID"])
  {
    if (v9)
    {
      [v17 setValue:v9 forKey:v21];
      v22 = [v10 attributesByName];
      v23 = [v22 objectForKey:@"modelID"];

      if (!v23)
      {
        goto LABEL_14;
      }

      if (objc_opt_respondsToSelector())
      {
        v24 = [a2 modelIDForKeyAttribute:v9 parent:v7];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v17 setValue:v24 forKey:@"modelID"];

          goto LABEL_14;
        }

LABEL_24:
        v32 = _HMFPreconditionFailure();
        return [NSManagedObject(HomeKitDaemon) mkf_materializeOrCreateRelationOnProperty:v32 modelProtocol:? keyValue:? createdNew:?];
      }

LABEL_23:
      _HMFPreconditionFailure();
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (!v9)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([a2 modelIDForParentRelationshipTo:v7], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_21:
      _HMFPreconditionFailure();
      goto LABEL_22;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_22:
    _HMFPreconditionFailure();
    goto LABEL_23;
  }

  [v17 setValue:v9 forKey:v21];
LABEL_14:
  v25 = [v10 relationshipsByName];
  v26 = [v8 inverseRelationship];
  v27 = [v26 name];
  v28 = [v25 objectForKey:v27];

  if (v28)
  {
    v29 = [v8 inverseRelationship];
    v30 = [v29 name];
    [v17 setValue:v7 forKey:v30];
  }

  return v17;
}

void sub_229BB38DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__53753(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229BB9318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229BBEC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__54800(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229BBEF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BBF904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229BBFED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229BC0484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229BC0C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  _Block_object_dispose((v38 - 160), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id hds_log()
{
  if (hds_log__hmf_once_t0 != -1)
  {
    dispatch_once(&hds_log__hmf_once_t0, &__block_literal_global_56123);
  }

  v1 = hds_log__hmf_once_v1;

  return v1;
}

void __hds_log_block_invoke()
{
  v3 = [@"hds" stringByReplacingOccurrencesOfString:@"_" withString:@"."];
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = hds_log__hmf_once_v1;
  hds_log__hmf_once_v1 = v1;
}

uint64_t __Block_byref_object_copy__56247(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ____homeWithHomeManager_block_invoke(uint64_t a1)
{
  v198 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _homeWithUUID:*(a1 + 40)];

  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 40);
      *buf = 138543618;
      v169 = v6;
      v170 = 2112;
      v171 = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_ERROR, "%{public}@Not re-adding a home that already exists (%@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    HMFUptime();
    v9 = v8;
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      *buf = 138544898;
      v169 = v13;
      v170 = 2114;
      v171 = @"homeManagerInitStart";
      v172 = 2112;
      v173 = @"Fetching and creating home";
      v174 = 2114;
      v175 = @"state";
      v176 = 2112;
      v177 = @"homeManagerCreatingHome";
      v178 = 2114;
      v179 = @"homeUUID";
      v180 = 2112;
      v181 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [MEMORY[0x277D17DE8] sharedInstance];
    v16 = objc_alloc(MEMORY[0x277D17DF8]);
    v160 = *(a1 + 40);
    v17 = HMDTaggedLoggingCreateDictionary();
    v18 = [v16 initWithTag:@"homeManagerInitStart" data:{v17, @"state", @"homeManagerCreatingHome", @"homeUUID", v160}];
    v19 = [MEMORY[0x277D0F770] currentTagProcessorList];
    [v15 submitTaggedEvent:v18 processorList:v19];

    v21 = *(a1 + 40);
    v20 = *(a1 + 48);
    v167 = 0;
    v22 = [v20 cdlsFetchObjectWithUUID:v21 ofModelType:objc_opt_class() error:&v167];
    v23 = v167;
    v24 = *(*(a1 + 56) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v22;

    v26 = *(*(*(a1 + 56) + 8) + 40);
    if (v26)
    {
      v27 = *(a1 + 32);
      v28 = *(a1 + 48);
      v166 = v23;
      v29 = [HMDHome homeWithHomeManager:v27 backingStore:v28 model:v26 error:&v166];
      v30 = v166;

      v31 = objc_autoreleasePoolPush();
      v32 = *(a1 + 32);
      v33 = HMFGetOSLogHandle();
      v34 = 0x277CCA000;
      v35 = 0x277CCA000;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        v37 = MEMORY[0x277CCACA8];
        HMFUptime();
        v39 = [v37 stringWithFormat:@"%.3f", v38 - v9];
        v40 = [MEMORY[0x277CCABB0] numberWithInt:v29 != 0];
        v41 = [v30 domain];
        v163 = v31;
        v42 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v30, "code")}];
        v43 = *(a1 + 40);
        *buf = 138546946;
        v169 = v36;
        v170 = 2114;
        v171 = @"homeManagerInitStart";
        v172 = 2112;
        v173 = @"Created home from home model";
        v174 = 2114;
        v175 = @"state";
        v176 = 2112;
        v177 = @"homeManagerCreatedHome";
        v178 = 2114;
        v179 = @"duration";
        v180 = 2112;
        v181 = v39;
        v182 = 2114;
        v183 = @"success";
        v184 = 2112;
        v185 = v40;
        v186 = 2114;
        v187 = @"errorDomain";
        v188 = 2112;
        v189 = v41;
        v190 = 2114;
        v191 = @"errorCode";
        v192 = 2112;
        v193 = v42;
        v194 = 2114;
        v195 = @"homeUUID";
        v196 = 2112;
        v197 = v43;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x98u);

        v31 = v163;
        v34 = 0x277CCA000uLL;

        v35 = 0x277CCA000uLL;
      }

      v165 = v30;

      objc_autoreleasePoolPop(v31);
      v44 = [MEMORY[0x277D17DE8] sharedInstance];
      v45 = objc_alloc(MEMORY[0x277D17DF8]);
      v46 = *(v34 + 3240);
      HMFUptime();
      v48 = [v46 stringWithFormat:@"%.3f", v47 - v9];
      v49 = [*(v35 + 2992) numberWithInt:v29 != 0];
      v50 = [v30 domain];
      v51 = [*(v35 + 2992) numberWithInteger:{objc_msgSend(v30, "code")}];
      v162 = *(a1 + 40);
      v52 = HMDTaggedLoggingCreateDictionary();
      v53 = [v45 initWithTag:@"homeManagerInitStart" data:{v52, @"state", @"homeManagerCreatedHome", @"duration", v48, @"success", v49, @"errorDomain", v50, @"errorCode", v51, @"homeUUID", v162}];
      v54 = [MEMORY[0x277D0F770] currentTagProcessorList];
      [v44 submitTaggedEvent:v53 processorList:v54];

      if (v29)
      {
        HMFUptime();
        v56 = v55;
        v57 = objc_autoreleasePoolPush();
        v58 = *(a1 + 32);
        v59 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          v60 = HMFGetLogIdentifier();
          v61 = [v29 uuid];
          v62 = [v29 name];
          *buf = 138545410;
          v169 = v60;
          v170 = 2114;
          v171 = @"homeManagerInitStart";
          v172 = 2112;
          v173 = @"Adding home";
          v174 = 2114;
          v175 = @"state";
          v176 = 2112;
          v177 = @"homeManagerAddingHome";
          v178 = 2114;
          v179 = @"homeUUID";
          v180 = 2112;
          v181 = v61;
          v182 = 2114;
          v183 = @"homeName";
          v184 = 2112;
          v185 = v62;
          _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x5Cu);
        }

        objc_autoreleasePoolPop(v57);
        v63 = [MEMORY[0x277D17DE8] sharedInstance];
        v64 = objc_alloc(MEMORY[0x277D17DF8]);
        v65 = [v29 uuid];
        v66 = [v29 name];
        v67 = HMDTaggedLoggingCreateDictionary();
        v68 = [v64 initWithTag:@"homeManagerInitStart" data:{v67, @"state", @"homeManagerAddingHome", @"homeUUID", v65, @"homeName", v66}];
        v69 = [MEMORY[0x277D0F770] currentTagProcessorList];
        [v63 submitTaggedEvent:v68 processorList:v69];

        v70 = [*(a1 + 32) incomingInvitations];
        v71 = [v29 uuid];
        v72 = [v70 hmf_firstObjectWithValue:v71 forKeyPath:@"homeUUID"];

        v164 = v72;
        if (v72)
        {
          v73 = objc_autoreleasePoolPush();
          v74 = *(a1 + 32);
          v75 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
          {
            v76 = HMFGetLogIdentifier();
            v77 = [v29 uuid];
            v78 = [v72 describeWithFormat];
            *buf = 138543874;
            v169 = v76;
            v170 = 2112;
            v171 = v77;
            v172 = 2112;
            v173 = v78;
            _os_log_impl(&dword_229538000, v75, OS_LOG_TYPE_INFO, "%{public}@Removing existing invitation for home with UUID: %@ in invite %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v73);
          [*(a1 + 32) _postIncomingInvitationStateChangedNotification:v72 newInvitationState:3];
          [*(a1 + 32) _removeIncomingInvitation:v72];
        }

        v79 = [*(a1 + 32) nameValidator];
        v80 = [v29 uuid];
        v81 = [v79 addNamespace:v80];

        v82 = *(a1 + 32);
        v83 = [v29 name];
        v84 = [*(a1 + 32) uuid];
        v85 = [v82 addName:v83 namespace:v84];

        v86 = *(a1 + 32);
        v87 = [v29 roomForEntireHome];
        v88 = [v87 name];
        v89 = [v29 uuid];
        v90 = [v86 addName:v88 namespace:v89];

        [*(a1 + 32) addHome:v29];
        v91 = objc_autoreleasePoolPush();
        v92 = *(a1 + 32);
        v93 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
        {
          v94 = HMFGetLogIdentifier();
          v95 = MEMORY[0x277CCACA8];
          HMFUptime();
          v97 = [v95 stringWithFormat:@"%.3f", v96 - v56];
          v98 = [v29 uuid];
          *buf = 138545410;
          v169 = v94;
          v170 = 2114;
          v171 = @"homeManagerInitStart";
          v172 = 2112;
          v173 = @"Added home";
          v174 = 2114;
          v175 = @"state";
          v176 = 2112;
          v177 = @"homeManagerAddedHome";
          v178 = 2114;
          v179 = @"duration";
          v180 = 2112;
          v181 = v97;
          v182 = 2114;
          v183 = @"homeUUID";
          v184 = 2112;
          v185 = v98;
          _os_log_impl(&dword_229538000, v93, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x5Cu);
        }

        objc_autoreleasePoolPop(v91);
        v99 = [MEMORY[0x277D17DE8] sharedInstance];
        v100 = objc_alloc(MEMORY[0x277D17DF8]);
        v101 = MEMORY[0x277CCACA8];
        HMFUptime();
        v103 = [v101 stringWithFormat:@"%.3f", v102 - v56];
        v104 = [v29 uuid];
        v105 = HMDTaggedLoggingCreateDictionary();
        v106 = [v100 initWithTag:@"homeManagerInitStart" data:{v105, @"state", @"homeManagerAddedHome", @"duration", v103, @"homeUUID", v104}];
        v107 = [MEMORY[0x277D0F770] currentTagProcessorList];
        [v99 submitTaggedEvent:v106 processorList:v107];

        v108 = [*(*(*(a1 + 56) + 8) + 40) owned];
        [v29 setOwnerUser:{objc_msgSend(v108, "BOOLValue")}];

        HMFUptime();
        v110 = v109;
        v111 = objc_autoreleasePoolPush();
        v112 = *(a1 + 32);
        v113 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
        {
          v114 = HMFGetLogIdentifier();
          v115 = [v29 uuid];
          *buf = 138544898;
          v169 = v114;
          v170 = 2114;
          v171 = @"homeManagerInitStart";
          v172 = 2112;
          v173 = @"Configuring home";
          v174 = 2114;
          v175 = @"state";
          v176 = 2112;
          v177 = @"homeManagerConfiguringHome";
          v178 = 2114;
          v179 = @"homeUUID";
          v180 = 2112;
          v181 = v115;
          _os_log_impl(&dword_229538000, v113, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
        }

        objc_autoreleasePoolPop(v111);
        v116 = [MEMORY[0x277D17DE8] sharedInstance];
        v117 = objc_alloc(MEMORY[0x277D17DF8]);
        v118 = [v29 uuid];
        v119 = HMDTaggedLoggingCreateDictionary();
        v120 = [v117 initWithTag:@"homeManagerInitStart" data:{v119, @"state", @"homeManagerConfiguringHome", @"homeUUID", v118}];
        v121 = [MEMORY[0x277D0F770] currentTagProcessorList];
        [v116 submitTaggedEvent:v120 processorList:v121];

        [v29 configureWithHomeManager:*(a1 + 32) accessoriesPresent:0 uncommittedTransactions:MEMORY[0x277CBEBF8] source:1];
        v122 = objc_autoreleasePoolPush();
        v123 = *(a1 + 32);
        v124 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
        {
          v125 = HMFGetLogIdentifier();
          v126 = MEMORY[0x277CCACA8];
          HMFUptime();
          v128 = [v126 stringWithFormat:@"%.3f", v127 - v110];
          v129 = [v29 uuid];
          *buf = 138545410;
          v169 = v125;
          v170 = 2114;
          v171 = @"homeManagerInitStart";
          v172 = 2112;
          v173 = @"Configured home";
          v174 = 2114;
          v175 = @"state";
          v176 = 2112;
          v177 = @"homeManagerConfiguredHome";
          v178 = 2114;
          v179 = @"duration";
          v180 = 2112;
          v181 = v128;
          v182 = 2114;
          v183 = @"homeUUID";
          v184 = 2112;
          v185 = v129;
          _os_log_impl(&dword_229538000, v124, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x5Cu);
        }

        objc_autoreleasePoolPop(v122);
        v130 = [MEMORY[0x277D17DE8] sharedInstance];
        v131 = objc_alloc(MEMORY[0x277D17DF8]);
        v132 = MEMORY[0x277CCACA8];
        HMFUptime();
        v134 = [v132 stringWithFormat:@"%.3f", v133 - v110];
        v135 = [v29 uuid];
        v136 = HMDTaggedLoggingCreateDictionary();
        v137 = [v131 initWithTag:@"homeManagerInitStart" data:{v136, @"state", @"homeManagerConfiguredHome", @"duration", v134, @"homeUUID", v135}];
        v138 = [MEMORY[0x277D0F770] currentTagProcessorList];
        [v130 submitTaggedEvent:v137 processorList:v138];

        v139 = v164;
        v23 = v165;
      }

      else
      {
        v158 = *(*(a1 + 56) + 8);
        v139 = *(v158 + 40);
        *(v158 + 40) = 0;
        v23 = v165;
      }
    }

    else
    {
      v140 = objc_autoreleasePoolPush();
      v141 = *(a1 + 32);
      v142 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
      {
        v143 = HMFGetLogIdentifier();
        v144 = MEMORY[0x277CCACA8];
        HMFUptime();
        v146 = [v144 stringWithFormat:@"%.3f", v145 - v9];
        v147 = [v23 domain];
        v148 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v23, "code")}];
        v149 = *(a1 + 40);
        *buf = 138546434;
        v169 = v143;
        v170 = 2114;
        v171 = @"homeManagerInitStart";
        v172 = 2112;
        v173 = @"Unable to find home";
        v174 = 2114;
        v175 = @"state";
        v176 = 2112;
        v177 = @"homeManagerCreatedHome";
        v178 = 2114;
        v179 = @"duration";
        v180 = 2112;
        v181 = v146;
        v182 = 2114;
        v183 = @"errorDomain";
        v184 = 2112;
        v185 = v147;
        v186 = 2114;
        v187 = @"errorCode";
        v188 = 2112;
        v189 = v148;
        v190 = 2114;
        v191 = @"homeUUID";
        v192 = 2112;
        v193 = v149;
        _os_log_impl(&dword_229538000, v142, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x84u);
      }

      objc_autoreleasePoolPop(v140);
      v29 = [MEMORY[0x277D17DE8] sharedInstance];
      v150 = objc_alloc(MEMORY[0x277D17DF8]);
      v151 = MEMORY[0x277CCACA8];
      HMFUptime();
      v139 = [v151 stringWithFormat:@"%.3f", v152 - v9];
      v153 = [v23 domain];
      v154 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v23, "code")}];
      v161 = *(a1 + 40);
      v155 = HMDTaggedLoggingCreateDictionary();
      v156 = [v150 initWithTag:@"homeManagerInitStart" data:{v155, @"state", @"homeManagerCreatedHome", @"duration", v139, @"errorDomain", v153, @"errorCode", v154, @"homeUUID", v161}];
      v157 = [MEMORY[0x277D0F770] currentTagProcessorList];
      [v29 submitTaggedEvent:v156 processorList:v157];
    }
  }

  v159 = *MEMORY[0x277D85DE8];
}

void sub_229BCF5BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, id a28)
{
  objc_destroyWeak((v28 + 64));
  objc_destroyWeak((v28 + 56));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a28);
  objc_destroyWeak(&a27);
  objc_destroyWeak((v29 - 152));
  objc_destroyWeak((v29 - 144));
  _Unwind_Resume(a1);
}

void sub_229BD4F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__57059(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229BD6440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __getDenylistKeys_block_invoke()
{
  if (isInternalBuild())
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"kAuthorizationDataKey", 0, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15}];
  }

  else
  {
    v0 = *MEMORY[0x277CD1FD8];
    [MEMORY[0x277CBEB98] setWithObjects:{@"kAuthorizationDataKey", *MEMORY[0x277CD1FD8], *MEMORY[0x277CD1FC8], *MEMORY[0x277CD2620], *MEMORY[0x277CD2040], *MEMORY[0x277CD2758], *MEMORY[0x277CD27B0], *MEMORY[0x277CD23D0], *MEMORY[0x277CD0D30], @"kAccessoryInfoSerialNumberKey", @"kUserIDKey", @"kUserIDsKey", @"kUserDisplayNameKey", @"kUserNamesKey", 0}];
  }
  v1 = ;
  v2 = getDenylistKeys_denylistKeys;
  getDenylistKeys_denylistKeys = v1;
}

void sub_229BD7334(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id HMXPCClientEntitlementsToComponents(unint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:64];
  if (a1)
  {
    for (i = 1; i - 1 < a1; i *= 2)
    {
      if ((i & a1) != 0)
      {
        if (i <= 2047)
        {
          if (i <= 31)
          {
            if (i <= 3)
            {
              v4 = @"com.apple.developer.homekit";
              if (i == 1)
              {
                goto LABEL_56;
              }

              if (i == 2)
              {
                v4 = @"com.apple.developer.homekit.background-mode";
                goto LABEL_56;
              }
            }

            else
            {
              switch(i)
              {
                case 4:
                  v4 = @"com.apple.private.homekit";
                  goto LABEL_56;
                case 8:
                  v4 = @"com.apple.private.homekit.pairing-identity";
                  goto LABEL_56;
                case 16:
                  v4 = @"com.apple.private.homekit.pairing-identity.private";
                  goto LABEL_56;
              }
            }
          }

          else if (i > 255)
          {
            switch(i)
            {
              case 256:
                v4 = @"com.apple.private.homekit.connectivity-info";
                goto LABEL_56;
              case 512:
                v4 = @"com.apple.private.homekit.multi-user.setup";
                goto LABEL_56;
              case 1024:
                v4 = @"com.apple.private.homekit.location";
                goto LABEL_56;
            }
          }

          else
          {
            switch(i)
            {
              case 32:
                v4 = @"com.apple.private.homekit.remote-login.private";
                goto LABEL_56;
              case 64:
                v4 = @"com.apple.developer.homekit.allow-setup-payload";
                goto LABEL_56;
              case 128:
                v4 = @"com.apple.private.homekit.cameraclips";
                goto LABEL_56;
            }
          }
        }

        else if (i >= 0x20000)
        {
          if (i >= 0x100000)
          {
            switch(i)
            {
              case 0x100000:
                v4 = @"com.apple.private.homekit.location-feedback-debug";
                goto LABEL_56;
              case 0x200000:
                v4 = @"com.apple.developer.matter.allow-setup-payload";
                goto LABEL_56;
              case 0x400000:
                v4 = @"com.apple.private.homekit.modern-messaging";
                goto LABEL_56;
            }
          }

          else
          {
            switch(i)
            {
              case 0x20000:
                v4 = @"com.apple.private.homekit.wallet-key";
                goto LABEL_56;
              case 0x40000:
                v4 = @"com.apple.private.homekit.assistant-identifiers";
                goto LABEL_56;
              case 0x80000:
                v4 = @"com.apple.private.homekit.home-location";
                goto LABEL_56;
            }
          }
        }

        else if (i >= 0x4000)
        {
          switch(i)
          {
            case 0x4000:
              v4 = @"com.apple.private.homekit.allow-secure-access";
              goto LABEL_56;
            case 0x8000:
              v4 = @"com.apple.private.homekit.diagnostics";
              goto LABEL_56;
            case 0x10000:
              v4 = @"com.apple.private.homekit.state-dump";
              goto LABEL_56;
          }
        }

        else
        {
          switch(i)
          {
            case 0x800:
              v4 = @"com.apple.private.homekit.shortcuts-automation-access";
              goto LABEL_56;
            case 0x1000:
              v4 = @"com.apple.private.homekit.messaging";
              goto LABEL_56;
            case 0x2000:
              v4 = @"com.apple.private.homekit.person-manager";
LABEL_56:
              [v2 addObject:v4];
              break;
          }
        }
      }
    }
  }

  v5 = [v2 copy];

  return v5;
}

void sub_229BDB444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v65 - 256), 8);
  _Block_object_dispose((v65 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__57771(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229BDE240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BDE470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BDE6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BE2270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

void sub_229BE2884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BE2AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BE2E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BE3088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BE3424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BE3658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BE4C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BE6E78(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229BEBA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__59005(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229BEC018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BF216C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229BF2E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C06814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a58, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__60566(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229C0C2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C0CB14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_229C0D3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __notifyDelegateAccountRemoved(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [v3 clientQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ____notifyDelegateAccountRemoved_block_invoke;
    v6[3] = &unk_27868A750;
    v7 = v3;
    v8 = v4;
    dispatch_async(v5, v6);
  }
}

void ____notifyDelegateAccountRemoved_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) shortDescription];
    *buf = 138543618;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Account removed: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = @"HMDAccountNotificationKey";
  v13 = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [v7 postNotificationName:@"HMDAccountRegistryRemovedAccountNotification" object:v9 userInfo:v10];

  v11 = *MEMORY[0x277D85DE8];
}

void __notifyDelegateAccountAdded(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [v3 clientQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ____notifyDelegateAccountAdded_block_invoke;
    v6[3] = &unk_27868A750;
    v7 = v3;
    v8 = v4;
    dispatch_async(v5, v6);
  }
}

void ____notifyDelegateAccountAdded_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) shortDescription];
    *buf = 138543618;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Account added: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = @"HMDAccountNotificationKey";
  v13 = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [v7 postNotificationName:@"HMDAccountRegistryAddedAccountNotification" object:v9 userInfo:v10];

  v11 = *MEMORY[0x277D85DE8];
}

void __cleanupRemoteDevicesWithHandles(void *a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  context = objc_autoreleasePoolPush();
  v36 = v3;
  [v3 remoteAccountManager];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = v45 = 0u;
  obj = [v29 accounts];
  v32 = [obj countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v32)
  {
    v31 = *v43;
    v5 = 0x277CBE000uLL;
    v34 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v43 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v6;
        v7 = *(*(&v42 + 1) + 8 * v6);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v37 = v7;
        v35 = [v7 devices];
        v8 = [v35 countByEnumeratingWithState:&v38 objects:v52 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v39;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v39 != v10)
              {
                objc_enumerationMutation(v35);
              }

              v12 = *(*(&v38 + 1) + 8 * i);
              v13 = *(v5 + 2904);
              v14 = [v12 handles];
              v15 = [v13 setWithArray:v14];

              [v15 intersectSet:v4];
              if ([v15 count])
              {
                v16 = objc_autoreleasePoolPush();
                v17 = v36;
                v18 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
                {
                  v19 = HMFGetLogIdentifier();
                  v20 = [v12 shortDescription];
                  *buf = 138543874;
                  v47 = v19;
                  v48 = 2112;
                  v49 = v20;
                  v50 = 2112;
                  v51 = v37;
                  _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Removing duplicate device, %@, from account: %@", buf, 0x20u);

                  v4 = v34;
                  v5 = 0x277CBE000;
                }

                objc_autoreleasePoolPop(v16);
                [v37 removeDevice:v12];
              }
            }

            v9 = [v35 countByEnumeratingWithState:&v38 objects:v52 count:16];
          }

          while (v9);
        }

        v21 = [v37 devices];
        v22 = [v21 hmf_isEmpty];

        v5 = 0x277CBE000;
        if (v22)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = v36;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543618;
            v47 = v26;
            v48 = 2112;
            v49 = v37;
            _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Removing duplicate empty account: %@", buf, 0x16u);

            v5 = 0x277CBE000;
          }

          objc_autoreleasePoolPop(v23);
          [v29 removeAccount:v37];
        }

        v6 = v33 + 1;
        v4 = v34;
      }

      while (v33 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v42 objects:v53 count:16];
    }

    while (v32);
  }

  objc_autoreleasePoolPop(context);
  v27 = *MEMORY[0x277D85DE8];
}

void __cleanupRemoteAccountsRelatedToAccount(void *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  context = objc_autoreleasePoolPush();
  v5 = [v3 remoteAccountManager];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [v5 accounts];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    v19 = v5;
    v20 = v3;
    v21 = v6;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if (([v4 isEqual:v11] & 1) == 0 && objc_msgSend(v4, "isRelatedToAccount:", v11))
        {
          v12 = objc_autoreleasePoolPush();
          v13 = v3;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = HMFGetLogIdentifier();
            v16 = [v11 shortDescription];
            *buf = 138543618;
            v27 = v15;
            v28 = 2112;
            v29 = v16;
            _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Detected stale account, %@, removing", buf, 0x16u);

            v3 = v20;
            v5 = v19;
          }

          objc_autoreleasePoolPop(v12);
          [v5 removeAccount:v11];
          v6 = v21;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(context);
  v17 = *MEMORY[0x277D85DE8];
}

void __registerForAccountUpdates(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = v3;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Registering for account updates: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 removeObserver:v6 name:@"HMDAccountHandlesUpdatedNotification" object:0];

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 removeObserver:v6 name:@"HMDAccountAddedDeviceNotification" object:0];

  if (v4)
  {
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v6 selector:sel___handleAppleAccountHandlesUpdated_ name:@"HMDAccountHandlesUpdatedNotification" object:v4];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v6 selector:sel___handleAppleAccountDeviceAdded_ name:@"HMDAccountAddedDeviceNotification" object:v4];
  }

  v13 = *MEMORY[0x277D85DE8];
}

id __deviceForDevice(void *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      v20 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v22;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v22 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v21 + 1) + 8 * j);
                if ([v4 isRelatedToDevice:v16])
                {
                  v17 = v16;

                  goto LABEL_21;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          v8 = v20;
        }

        v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
        v17 = 0;
      }

      while (v7);
    }

    else
    {
      v17 = 0;
    }

LABEL_21:
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

id __deviceForHandle(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) deviceForHandle:{v5, v15}];
          if (v12)
          {
            v6 = v12;
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_13:
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

id __accountForHandle(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 handles];
          v11 = [v10 containsObject:v4];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

void sub_229C23E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229C23F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229C24214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__64390(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229C271D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

void sub_229C278D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__64831(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229C2E7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__65886(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __createBackboardWatcher(void *a1)
{
  location[3] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!+[HMDDeviceCapabilities supportsBackboard])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@No backboardd support for device, skipping watcher", location, 0xCu);
    }

    goto LABEL_9;
  }

  ServerPort = CARenderServerGetServerPort();
  if ((ServerPort - 1) >= 0xFFFFFFFE)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to find port for default render server", location, 0xCu);
    }

LABEL_9:

    objc_autoreleasePoolPop(v6);
    goto LABEL_10;
  }

  v3 = ServerPort;
  objc_initWeak(location, v1);
  v4 = MEMORY[0x277CF0CB8];
  v5 = [objc_alloc(MEMORY[0x277CF0C60]) initWithPort:v3];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ____createBackboardWatcher_block_invoke;
  v12[3] = &unk_278686B80;
  objc_copyWeak(&v13, location);
  [v4 monitorSendRight:v5 withHandler:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(location);
LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
}

void sub_229C2EBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____createBackboardWatcher_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _backboardServicesRelaunched];
}

void sub_229C33FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C35304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v65 + 56));
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose((v66 - 160), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C382BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__67633(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HMDRemoteEventRouterProtoTopicReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 3)
      {
        v13 = &OBJC_IVAR___HMDRemoteEventRouterProtoTopic__eventUUID;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___HMDRemoteEventRouterProtoTopic__topic;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

id _findConstraintForType(void *a1, uint64_t a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___findConstraintForType_block_invoke;
  v4[3] = &__block_descriptor_40_e38_B16__0__HMAccessorySettingConstraint_8l;
  v4[4] = a2;
  v2 = [a1 na_firstObjectPassingTest:v4];

  return v2;
}

uint64_t HMDIsSiriClientIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.Siri"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"assistant_service"];
  }

  return v2;
}

uint64_t HMDIsFirstPartyClientIdentifier(void *a1)
{
  v1 = a1;
  if (HMDIsFirstPartyClientIdentifier_onceToken != -1)
  {
    dispatch_once(&HMDIsFirstPartyClientIdentifier_onceToken, &__block_literal_global_68743);
  }

  if ([v1 hasPrefix:@"com.apple."] & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"apple."))
  {
    v2 = 1;
  }

  else
  {
    v2 = [HMDIsFirstPartyClientIdentifier_knownClientIdentifiers containsObject:v1];
  }

  return v2;
}

void __HMDIsFirstPartyClientIdentifier_block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"accountsd", @"amsaccountsd", @"announced", @"assistant_service", @"assistantd", @"Carousel", @"CarPlay", @"cloudmediaservicesd", @"companiond", @"coordinated", @"coreautomationd", @"diagnosticextensionsd", @"hdsutil", @"HDSViewService", @"HomeAppIntentsExtension", @"homeenergyd", @"homehubd", @"HomeIntegrationTests-Runner", @"HomeKitDiagnosticExtension", @"HomeKitIntentExtension", @"homepodsensoryreporterd", @"homepodsettingsd", @"homeutil", @"itunescloudd", @"knowledgeconstructiond", @"mediaanalysisd-service", @"mediaanalysisd", @"mediaremoted", @"mediasetupd", @"passd", @"PineBoard", @"proximitycontrold", @"rapportd", @"seserviced", @"sharingd", @"Shortcuts", @"Siri Debug", @"siri", @"siriinferenced", @"siriknowledged", @"sirittsd", @"SiriUI", @"SiriUserFeedbackLearningUnivers", @"SoundBoard", @"SpringBoard", @"taptoradard", @"tvairplayd", @"tvremoted", @"tvsetuputil", @"userprofilesd", @"voiced", @"wifid", 0}];
  v1 = HMDIsFirstPartyClientIdentifier_knownClientIdentifiers;
  HMDIsFirstPartyClientIdentifier_knownClientIdentifiers = v0;
}

__CFString *HMDRequestSourceAsString(uint64_t a1)
{
  if (a1 > 1059)
  {
    if (a1 <= 1139)
    {
      if (a1 > 1099)
      {
        if (a1 > 1119)
        {
          if (a1 == 1120)
          {
            v2 = @"HMDHome";

            return v2;
          }

          if (a1 == 1130)
          {
            v2 = @"PeriodicReader";

            return v2;
          }
        }

        else
        {
          if (a1 == 1100)
          {
            v2 = @"HMDService";

            return v2;
          }

          if (a1 == 1110)
          {
            v2 = @"WalletKeyAccessory";

            return v2;
          }
        }
      }

      else if (a1 > 1079)
      {
        if (a1 == 1080)
        {
          v2 = @"Climate";

          return v2;
        }

        if (a1 == 1090)
        {
          v2 = @"DataStream";

          return v2;
        }
      }

      else
      {
        if (a1 == 1060)
        {
          v2 = @"ActionSets";

          return v2;
        }

        if (a1 == 1070)
        {
          v2 = @"Camera";

          return v2;
        }
      }
    }

    else if (a1 <= 1179)
    {
      if (a1 > 1159)
      {
        if (a1 == 1160)
        {
          v2 = @"MediaAccessory";

          return v2;
        }

        if (a1 == 1170)
        {
          v2 = @"NetworkRouterController";

          return v2;
        }
      }

      else
      {
        if (a1 == 1140)
        {
          v2 = @"Light";

          return v2;
        }

        if (a1 == 1150)
        {
          v2 = @"NaturalLight";

          return v2;
        }
      }
    }

    else if (a1 <= 1199)
    {
      if (a1 == 1180)
      {
        v2 = @"WakeOnLan";

        return v2;
      }

      if (a1 == 1190)
      {
        v2 = @"SiriEndpoint";

        return v2;
      }
    }

    else
    {
      switch(a1)
      {
        case 1200:
          v2 = @"TargetControl";

          return v2;
        case 1210:
          v2 = @"Widgets";

          return v2;
        case 1220:
          v2 = @"WifiManagement";

          return v2;
      }
    }

LABEL_148:
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected source value: %lu", a1];

    return v2;
  }

  if (a1 <= 7)
  {
    if (a1 > 3)
    {
      if (a1 > 5)
      {
        if (a1 == 6)
        {
          v2 = @"ThirdParty";
        }

        else
        {
          v2 = @"SourceInternalLegacy";
        }
      }

      else if (a1 == 4)
      {
        v2 = @"TimerTrigger";
      }

      else
      {
        v2 = @"FirstParty";
      }

      return v2;
    }

    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v2 = @"User";
      }

      else
      {
        v2 = @"EventTrigger";
      }

      return v2;
    }

    if (!a1)
    {
      v2 = @"Unknown";

      return v2;
    }

    if (a1 == 1)
    {
      v2 = @"Siri";

      return v2;
    }

    goto LABEL_148;
  }

  if (a1 <= 1009)
  {
    if (a1 <= 9)
    {
      if (a1 == 8)
      {
        v2 = @"RemoteRequested";
      }

      else
      {
        v2 = @"IntentSuggestion";
      }

      return v2;
    }

    if (a1 == 10)
    {
      v2 = @"Shortcuts";

      return v2;
    }

    if (a1 == 1000)
    {
      v2 = @"AccessoryFirmwareUpdate";

      return v2;
    }

    goto LABEL_148;
  }

  if (a1 <= 1029)
  {
    if (a1 == 1010)
    {
      v2 = @"AccessoryMetrics";

      return v2;
    }

    if (a1 == 1020)
    {
      v2 = @"AccessoryDiagnostics";

      return v2;
    }

    goto LABEL_148;
  }

  switch(a1)
  {
    case 1030:
      v2 = @"ThreadNetworkManagement";

      break;
    case 1040:
      v2 = @"HAPAccessory";

      break;
    case 1050:
      v2 = @"SiriTVRemote";

      return v2;
    default:
      goto LABEL_148;
  }

  return v2;
}

id HMDRequestSourceAsLegacyMetricString(uint64_t a1)
{
  v1 = HMDRequestSourceAsString(a1);
  if (([v1 hasPrefix:@"Unexpected"] & 1) == 0)
  {
    v2 = [@"Source_" stringByAppendingString:v1];

    v1 = v2;
  }

  return v1;
}

void sub_229C414F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C41BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C44AA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_229C45404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C46B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C48DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__70236(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __transactionAccessoryUpdated(void *a1, void *a2, void *a3)
{
  v286[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v241 = a3;
  v7 = [v241 transactionResult];
  [v7 source];
  v8 = MEMORY[0x277CBEB18];
  v9 = +[HMDAccessoryTransaction properties];
  obj = [v8 arrayWithCapacity:{objc_msgSend(v9, "count")}];

  v10 = [0 configurationTracker];
  v11 = v10;
  if (v10)
  {
    dispatch_group_enter(v10);
  }

  if (([v6 propertyWasSet:@"name"] & 1) != 0 || objc_msgSend(v6, "propertyWasSet:", @"configuredName"))
  {
    v12 = [v6 configuredName];
    v13 = [v5 configuredName];
    v14 = [v5 name];
    if ((HMFEqualObjects() & 1) == 0)
    {
      [v5 setConfiguredName:v12];
      [v7 markChanged];
    }

    v15 = [v5 name];
    v16 = HMFEqualObjects();
    if (v15 && (v16 & 1) == 0)
    {
      [v7 markSaveToAssistant];
      v17 = [v5 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ____transactionAccessoryUpdated_block_invoke;
      block[3] = &unk_27868A750;
      v263 = v5;
      v264 = v15;
      dispatch_async(v17, block);
    }
  }

  if ([v6 propertyWasSet:@"providedName"])
  {
    v18 = [v5 providedName];
    v19 = [v6 providedName];
    v20 = HMFEqualObjects();

    if ((v20 & 1) == 0)
    {
      v21 = [v5 name];
      v22 = [v5 providedName];
      v23 = [v6 providedName];
      [v5 setProvidedName:v23];

      v24 = [v5 name];
      if (v24 && (HMFEqualObjects() & 1) == 0)
      {
        [v7 markSaveToAssistant];
        v25 = [v5 workQueue];
        v259[0] = MEMORY[0x277D85DD0];
        v259[1] = 3221225472;
        v259[2] = ____transactionAccessoryUpdated_block_invoke_2;
        v259[3] = &unk_27868A750;
        v260 = v5;
        v261 = v24;
        dispatch_async(v25, v259);
      }

      v26 = [v5 providedName];
      v27 = HMFEqualObjects();

      if ((v27 & 1) == 0)
      {
        [v7 markChanged];
      }
    }
  }

  v28 = [v6 setProperties];
  v29 = [v28 containsObject:@"model"];
  v30 = v29;
  if (!v29)
  {
    goto LABEL_23;
  }

  v31 = [v6 model];
  v32 = [v5 model];
  v33 = HMFEqualObjects();

  if ((v33 & 1) == 0)
  {
    v34 = [v6 model];

    if (v34)
    {
      v28 = [v6 model];
      [v5 setModel:v28];
LABEL_23:

      goto LABEL_25;
    }
  }

  v30 = 0;
LABEL_25:
  v35 = [v6 setProperties];
  if (![v35 containsObject:@"manufacturer"])
  {
LABEL_29:

    goto LABEL_30;
  }

  v36 = [v6 manufacturer];
  v37 = [v5 manufacturer];
  v38 = HMFEqualObjects();

  if ((v38 & 1) == 0)
  {
    v39 = [v6 manufacturer];

    if (v39)
    {
      v35 = [v6 manufacturer];
      [v5 setManufacturer:v35];
      v30 = 1;
      goto LABEL_29;
    }
  }

LABEL_30:
  group = v11;
  v40 = [v6 firmwareVersion];
  v246 = v6;
  if (v40)
  {
    v41 = v40;
    v42 = [v6 firmwareVersion];
    v43 = [v5 firmwareVersion];
    v44 = [v43 rawVersionString];
    v45 = HMFEqualObjects();

    if ((v45 & 1) == 0)
    {
      v46 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v47 = v46;
      }

      else
      {
        v47 = 0;
      }

      v48 = v47;

      if (v48 && [v48 supportsCHIP])
      {
        v49 = [HMDAccessoryVersion alloc];
        v50 = [v6 firmwareVersion];
        v51 = [(HMDAccessoryVersion *)v49 initWithMatterVersionString:v50];
      }

      else
      {
        v52 = [HMDAccessoryVersion alloc];
        v50 = [v6 firmwareVersion];
        v51 = [(HMDAccessoryVersion *)v52 initWithString:v50];
      }

      v53 = v51;

      if (v53)
      {
        v54 = [v46 firmwareVersion];
        [v46 setFirmwareVersion:v53];
        if (([v53 isEqualToVersion:v54] & 1) == 0)
        {
          if (v54)
          {
            v285 = @"HMDAccessoryPreviousFirmwareVersionKey";
            v286[0] = v54;
            v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v286 forKeys:&v285 count:1];
          }

          else
          {
            v55 = 0;
          }

          logAndPostNotification(@"HMDAccessoryFirmwareVersionUpdatedNotification", v46, v55);
        }

        v30 = 1;
      }
    }
  }

  v56 = [v6 setProperties];
  if (![v56 containsObject:@"displayableFirmwareVersion"])
  {
    goto LABEL_56;
  }

  v57 = [v6 displayableFirmwareVersion];
  v58 = [v5 displayableFirmwareVersion];
  v59 = HMFEqualObjects();

  if ((v59 & 1) == 0)
  {
    v60 = [v6 displayableFirmwareVersion];

    if (v60)
    {
      v56 = [v5 displayableFirmwareVersion];
      v61 = [v6 displayableFirmwareVersion];
      [v5 setDisplayableFirmwareVersion:v61];

      v62 = [v6 displayableFirmwareVersion];
      v63 = [v62 isEqualToString:v56];

      if ((v63 & 1) == 0)
      {
        if (v56)
        {
          v283 = @"HMDAccessoryPreviousDisplayableFirmwareVersionKey";
          v284 = v56;
          v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v284 forKeys:&v283 count:1];
        }

        else
        {
          v64 = 0;
        }

        logAndPostNotification(@"HMDAccessoryFirmwareDisplayableVersionUpdatedNotification", v5, v64);
      }

      v30 = 1;
LABEL_56:
    }
  }

  v65 = [v6 setProperties];
  if ([v65 containsObject:@"serialNumber"])
  {
    v66 = [v6 serialNumber];
    v67 = [v5 serialNumber];
    v68 = HMFEqualObjects();

    if (v68)
    {
      goto LABEL_62;
    }

    v69 = [v6 serialNumber];

    if (!v69)
    {
      goto LABEL_62;
    }

    v65 = [v6 serialNumber];
    [v5 setSerialNumber:v65];
    v30 = 1;
  }

LABEL_62:
  v70 = [v6 hostAccessoryUUID];
  v240 = v70;
  if (v70)
  {
    v245 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v70];
  }

  else
  {
    v245 = 0;
  }

  if ([v6 propertyWasSet:@"hostAccessoryUUID"])
  {
    v71 = [v5 hostAccessory];
    v72 = [v71 uuid];
    v73 = [v72 hmf_isEqualToUUID:v245];

    if ((v73 & 1) == 0)
    {
      [v5 _updateHost:v245];
      [v7 markChanged];
      [v7 markSaveToAssistant];
    }
  }

  v74 = [v5 home];
  v244 = [v74 homeManager];
  v75 = [v5 productData];
  v76 = [v6 productDataV2];
  v248 = [v6 productData];
  v77 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v78 = v77;
  }

  else
  {
    v78 = 0;
  }

  v247 = v78;
  v252 = v77;

  v243 = v75;
  v237 = v76;
  if (v76 && (HMFEqualObjects() & 1) == 0)
  {
    v84 = v77;
    v85 = v76;
LABEL_86:
    [v84 setProductData:{v85, v237}];
    if (v247)
    {
      v91 = [v244 accessoryFirmwareUpdateManager];
      [v91 registerAccessory:v247];
    }

LABEL_88:
    v274 = v252;
    v92 = [MEMORY[0x277CBEA60] arrayWithObjects:&v274 count:{1, v237}];
    [v74 notifyClientsOfAccessoryInfoUpdatedForAccessories:v92];

    [v7 markChanged];
    goto LABEL_89;
  }

  if (v248 && !v75)
  {
    v79 = objc_autoreleasePoolPush();
    v80 = v252;
    v81 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
    {
      v82 = HMFGetLogIdentifier();
      v83 = +[HMDBackingStoreTransactionOptions stringForHMDBackingStoreTransactionSource:](HMDBackingStoreTransactionOptions, "stringForHMDBackingStoreTransactionSource:", [v7 source]);
      *buf = 138543874;
      v276 = v82;
      v277 = 2112;
      v278 = v248;
      v279 = 2112;
      v280 = v83;
      _os_log_impl(&dword_229538000, v81, OS_LOG_TYPE_INFO, "%{public}@Applying initial legacy productData %@ (source: %@)", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v79);
    v84 = v80;
    v85 = v248;
    goto LABEL_86;
  }

  if (v248 && (HMFEqualObjects() & 1) == 0)
  {
    v86 = objc_autoreleasePoolPush();
    v87 = v77;
    v88 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      v89 = HMFGetLogIdentifier();
      v90 = +[HMDBackingStoreTransactionOptions stringForHMDBackingStoreTransactionSource:](HMDBackingStoreTransactionOptions, "stringForHMDBackingStoreTransactionSource:", [v7 source]);
      *buf = 138544130;
      v276 = v89;
      v277 = 2112;
      v278 = v243;
      v279 = 2112;
      v280 = v248;
      v281 = 2112;
      v282 = v90;
      _os_log_impl(&dword_229538000, v88, OS_LOG_TYPE_INFO, "%{public}@Ignoring legacy productData change %@ -> %@ (source: %@)", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v86);
  }

  if (v30)
  {
    goto LABEL_88;
  }

LABEL_89:
  v93 = [v6 initialManufacturer];
  if (v93)
  {
    v94 = v93;
    v95 = [v6 initialManufacturer];
    v96 = [v252 initialManufacturer];
    v97 = HMFEqualObjects();

    if ((v97 & 1) == 0)
    {
      v98 = [v6 initialManufacturer];
      [v252 setInitialManufacturer:v98];

      logAndPostNotification(@"HMDAccessoryManufacturerUpdatedNotification", v252, 0);
      [v7 markChanged];
    }
  }

  v99 = [v6 initialModel];
  if (v99)
  {
    v100 = v99;
    v101 = [v6 initialModel];
    v102 = [v252 initialModel];
    v103 = HMFEqualObjects();

    if ((v103 & 1) == 0)
    {
      v104 = [v6 initialModel];
      [v252 setInitialModel:v104];

      [v7 markChanged];
    }
  }

  v105 = [v6 initialCategoryIdentifier];
  if (v105)
  {
    v106 = v105;
    v107 = [v6 initialCategoryIdentifier];
    v108 = [v252 initialCategoryIdentifier];
    v109 = HMFEqualObjects();

    if ((v109 & 1) == 0)
    {
      v110 = [v6 initialCategoryIdentifier];
      [v252 setInitialCategoryIdentifier:v110];

      logAndPostNotification(@"HMDAccessoryCategoryUpdatedNotification", v252, 0);
      [v7 markChanged];
    }
  }

  v111 = [v6 accessoryCategory];

  if (v111)
  {
    v112 = [v6 accessoryCategory];
    v113 = [v252 _updateCategory:v112 notifyClients:1];

    if (v113)
    {
      [obj addObject:v113];
      [v7 markChanged];
      if (v247)
      {
        [v247 updatePrimaryServiceIfNeeded];
      }
    }
  }

  if ([v6 propertyWasSet:@"networkClientIdentifier"])
  {
    v114 = [v6 networkClientIdentifier];
    v115 = [v252 networkClientIdentifier];
    v116 = HMFEqualObjects();

    if ((v116 & 1) == 0)
    {
      v117 = [v6 networkClientIdentifier];
      [v252 setNetworkClientIdentifier:v117];

      [v7 markChanged];
    }
  }

  if ([v6 propertyWasSet:@"networkRouterUUID"])
  {
    v118 = [v6 networkRouterUUID];
    v119 = [v252 networkRouterUUID];
    v120 = [v119 UUIDString];
    v121 = HMFEqualObjects();

    if ((v121 & 1) == 0)
    {
      v122 = objc_alloc(MEMORY[0x277CCAD78]);
      v123 = [v6 networkRouterUUID];
      v124 = [v122 initWithUUIDString:v123];
      [v252 setNetworkRouterUUID:v124];

      [v7 markChanged];
    }
  }

  v125 = [v6 currentNetworkProtectionMode];
  if (v125)
  {
    v126 = v125;
    v127 = [v6 currentNetworkProtectionMode];
    v128 = [v127 integerValue];
    v129 = [v252 currentNetworkProtectionMode];

    if (v128 != v129)
    {
      v130 = [v6 currentNetworkProtectionMode];
      [v252 setCurrentNetworkProtectionMode:{objc_msgSend(v130, "integerValue")}];

      [v7 markChanged];
    }
  }

  v131 = [v6 wiFiCredentialType];
  if (v131)
  {
    v132 = v131;
    v133 = [v6 wiFiCredentialType];
    v134 = [v133 integerValue];
    v135 = [v252 wiFiCredentialType];

    if (v134 != v135)
    {
      v136 = objc_autoreleasePoolPush();
      v137 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
      {
        v138 = HMFGetLogIdentifier();
        v139 = [v252 wiFiCredentialType];
        v140 = [v6 wiFiCredentialType];
        v141 = [v140 integerValue];
        *buf = 138544130;
        v276 = v138;
        v277 = 2048;
        v278 = v139;
        v279 = 2048;
        v280 = v141;
        v281 = 2112;
        v282 = v252;
        _os_log_impl(&dword_229538000, v137, OS_LOG_TYPE_INFO, "%{public}@Updating wiFiCredentialType from [%lu] to [%lu] for accessory: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v136);
      v142 = [v6 wiFiCredentialType];
      [v252 setWiFiCredentialType:{objc_msgSend(v142, "integerValue")}];

      [v7 markChanged];
      v143 = MEMORY[0x277D0F818];
      v144 = *MEMORY[0x277CD0A10];
      v272[0] = *MEMORY[0x277CD0A08];
      v145 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v252, "supportsWiFiReconfiguration")}];
      v273[0] = v145;
      v272[1] = *MEMORY[0x277CD09F8];
      v146 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v252, "wiFiCredentialType")}];
      v273[1] = v146;
      v147 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v273 forKeys:v272 count:2];
      v148 = [v143 entitledMessageWithName:v144 messagePayload:v147];
      [obj addObject:v148];
    }
  }

  v149 = [v6 networkClientLAN];
  if (v149)
  {
    v150 = v149;
    v151 = [v6 networkClientLAN];
    v152 = [v151 integerValue];
    v153 = [v252 networkClientLAN];

    if (v152 != v153)
    {
      v154 = [v6 networkClientLAN];
      [v252 setNetworkClientLAN:{objc_msgSend(v154, "integerValue")}];

      [v7 markChanged];
    }
  }

  if ([v6 propertyWasSet:@"networkClientProfileFingerprint"])
  {
    v155 = [v6 networkClientProfileFingerprint];
    v156 = [v252 networkClientProfileFingerprint];
    v157 = [v156 UUIDString];
    v158 = HMFEqualObjects();

    if ((v158 & 1) == 0)
    {
      v159 = objc_alloc(MEMORY[0x277CCAD78]);
      v160 = [v6 networkClientProfileFingerprint];
      v161 = [v159 initWithUUIDString:v160];
      [v252 setNetworkClientProfileFingerprint:v161];

      [v7 markChanged];
    }
  }

  if ([v6 propertyWasSet:@"appliedFirewallWANRules"])
  {
    v162 = [v6 appliedFirewallWANRules];
    v163 = [HMDAccessoryAllowedHost allowedHostsFromJSONFirewallWANRules:v162];

    if (v163)
    {
      v164 = [v252 allowedHosts];
      v165 = HMFEqualObjects();

      if ((v165 & 1) == 0)
      {
        [v252 setAllowedHosts:v163];
        [v7 markChanged];
        v166 = MEMORY[0x277D0F818];
        v167 = *MEMORY[0x277CD09E8];
        v270 = *MEMORY[0x277CD09E0];
        v168 = [v252 allowedHosts];
        v169 = encodeRootObjectForSPIClients(v168);
        v271 = v169;
        v170 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v271 forKeys:&v270 count:1];
        v171 = [v166 entitledMessageWithName:v167 messagePayload:v170];

        [obj addObject:v171];
      }
    }
  }

  if ([v6 propertyWasSet:@"wiFiUniquePreSharedKey"])
  {
    v172 = [v6 wiFiUniquePreSharedKey];
    v173 = [v252 wiFiUniquePreSharedKey];
    v174 = HMFEqualObjects();

    if ((v174 & 1) == 0)
    {
      v175 = [v6 wiFiUniquePreSharedKey];
      [v252 setWiFiUniquePreSharedKey:v175];

      [v7 markChanged];
    }
  }

  if ([v6 propertyWasSet:@"pendingConfigurationIdentifier"])
  {
    v176 = [v6 pendingConfigurationIdentifier];
    v177 = [v252 pendingConfigurationIdentifier];
    v178 = HMFEqualObjects();

    if ((v178 & 1) == 0)
    {
      v179 = [v6 pendingConfigurationIdentifier];
      [v252 setPendingConfigurationIdentifier:v179];

      [v7 markChanged];
    }
  }

  v239 = v74;
  if ([v6 propertyWasSet:@"lastNetworkAccessViolationOccurrenceSince1970"] && objc_msgSend(v6, "propertyWasSet:", @"lastNetworkAccessViolationResetSince1970"))
  {
    v180 = [v252 networkAccessViolation];
    v181 = [HMDAccessoryNetworkAccessViolation alloc];
    v182 = [v6 lastNetworkAccessViolationOccurrenceSince1970];
    v183 = [v6 lastNetworkAccessViolationResetSince1970];
    v184 = [(HMDAccessoryNetworkAccessViolation *)v181 initWithLastViolationTimeInterval:v182 lastViolationResetTimeInterval:v183];

    if ((HMFEqualObjects() & 1) == 0)
    {
      [v252 setNetworkAccessViolation:v184];
      v185 = [(HMDAccessoryNetworkAccessViolation *)v184 hasCurrentViolation];
      v186 = v185 ^ [v180 hasCurrentViolation];
      v187 = [v180 lastViolationDate];
      v188 = [(HMDAccessoryNetworkAccessViolation *)v184 lastViolationDate];
      v189 = v188;
      v190 = 0;
      if (v187 && v184)
      {
        [v188 timeIntervalSinceDate:v187];
        v190 = v191 >= 86400.0;
      }

      v192 = v189;
      if ((v186 | v190))
      {
        [v7 markChanged];
      }

      else
      {
        [v7 markLocalChanged];
      }

      v6 = v246;
      v193 = encodeRootObjectForSPIClients(v184);
      v194 = MEMORY[0x277D0F818];
      v195 = *MEMORY[0x277CD09D8];
      v268 = *MEMORY[0x277CD09D0];
      v269 = v193;
      v196 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v269 forKeys:&v268 count:1];
      v197 = [v194 entitledMessageWithName:v195 messagePayload:v196];

      [obj addObject:v197];
    }
  }

  if ([v6 propertyWasSet:@"configuredNetworkProtectionGroupUUIDString"])
  {
    v198 = [v6 configuredNetworkProtectionGroupUUIDString];
    v199 = [v252 configuredNetworkProtectionGroupUUID];
    v200 = [v199 UUIDString];
    v201 = HMFEqualObjects();

    if ((v201 & 1) == 0)
    {
      v202 = [v6 configuredNetworkProtectionGroupUUIDString];
      if (v202)
      {
        v203 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v202];
      }

      else
      {
        v203 = 0;
      }

      v204 = [v252 configuredNetworkProtectionGroupUUID];
      [v252 setConfiguredNetworkProtectionGroupUUID:v203];
      if (v204)
      {
        v266 = @"HMDAccessoryPreviousConfiguredNetworkProtectionGroupUUIDKey";
        v267 = v204;
        v205 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v267 forKeys:&v266 count:1];
      }

      else
      {
        v205 = 0;
      }

      logAndPostNotification(@"HMDAccessoryConfiguredNetworkProtectionGroupUpdatedNotification", v252, v205);
      [v7 markChanged];
    }
  }

  v206 = [v6 suspendCapable];
  if (v206)
  {
    v207 = v206;
    v208 = [v252 isSuspendCapable];
    v209 = [v6 suspendCapable];
    v210 = [v209 BOOLValue];

    if (v208 != v210)
    {
      v211 = [v6 suspendCapable];
      [v252 setSuspendCapable:{objc_msgSend(v211, "BOOLValue")}];

      [v7 markChanged];
    }
  }

  v212 = [v6 lastSeenDate];
  if (v212)
  {
    v213 = v212;
    v214 = [v6 lastSeenDate];
    v215 = [v252 lastSeenDate];
    v216 = [v214 isEqualToDate:v215];

    if ((v216 & 1) == 0)
    {
      v217 = [v6 lastSeenDate];
      [v252 setLastSeenDate:v217];

      [v7 markChanged];
    }
  }

  v218 = [v6 lowBattery];
  if (v218)
  {
    v219 = v218;
    v220 = [v252 isLowBattery];
    v221 = [v6 lowBattery];
    v222 = [v221 BOOLValue];

    if (v220 != v222)
    {
      v223 = [v6 lowBattery];
      [v252 setLowBattery:{objc_msgSend(v223, "BOOLValue")}];

      [v7 markChanged];
    }
  }

  v251 = [v241 transport];
  v224 = dispatch_group_create();
  v255 = 0u;
  v256 = 0u;
  v257 = 0u;
  v258 = 0u;
  obja = obj;
  v225 = [obja countByEnumeratingWithState:&v255 objects:v265 count:16];
  if (v225)
  {
    v226 = v225;
    v227 = *v256;
    do
    {
      for (i = 0; i != v226; ++i)
      {
        if (*v256 != v227)
        {
          objc_enumerationMutation(obja);
        }

        v229 = *(*(&v255 + 1) + 8 * i);
        dispatch_group_enter(v224);
        if (v241)
        {
          v230 = [v229 mutableCopy];
          [v230 setTransport:v251];
          v231 = [v230 copy];
        }

        else
        {
          v231 = v229;
        }

        v232 = [v252 msgDispatcher];
        v233 = [v252 uuid];
        v253[0] = MEMORY[0x277D85DD0];
        v253[1] = 3221225472;
        v253[2] = ____transactionAccessoryUpdated_block_invoke_1143;
        v253[3] = &unk_27868A728;
        v254 = v224;
        [v232 sendMessage:v231 target:v233 andInvokeCompletionHandler:v253];
      }

      v226 = [obja countByEnumeratingWithState:&v255 objects:v265 count:16];
    }

    while (v226);
  }

  dispatch_group_wait(v224, 0);
  v234 = [v241 responseHandler];

  if (v234)
  {
    v235 = [v241 responseHandler];
    v235[2](v235, 0, 0);
  }

  if (group)
  {
    dispatch_group_leave(group);
  }

  v236 = *MEMORY[0x277D85DE8];
}

id EpochIntervalFromDate(void *a1)
{
  if (a1)
  {
    v2 = MEMORY[0x277CCABB0];
    [a1 timeIntervalSince1970];
    a1 = [v2 numberWithDouble:?];
    v1 = vars8;
  }

  return a1;
}

void sub_229C5C83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C650C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C664E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

void sub_229C66E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C67920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61)
{
  objc_destroyWeak((v61 + 40));
  objc_destroyWeak(&a36);
  objc_destroyWeak(&a41);
  objc_destroyWeak(&a46);
  objc_destroyWeak(&a51);
  objc_destroyWeak(&a56);
  objc_destroyWeak(&a61);
  objc_destroyWeak((v62 - 248));
  _Unwind_Resume(a1);
}

void sub_229C6FBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C75F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C7B6B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__77661(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229C7EA10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void networkChangeCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_autoreleasePoolPush();
      v8 = v6;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543618;
        v17 = v10;
        v18 = 2112;
        v19 = a2;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Network change detected: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      objc_initWeak(buf, v8);
      v11 = dispatch_time(0, 1000000000);
      v12 = [v8 pathMonitorQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __networkChangeCallback_block_invoke;
      block[3] = &unk_278686B80;
      objc_copyWeak(&v15, buf);
      dispatch_after(v11, v12, block);

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }
  }

  objc_autoreleasePoolPop(v5);
  v13 = *MEMORY[0x277D85DE8];
}

void __networkChangeCallback_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _fetchPrimaryNetworkInfo];
    WeakRetained = v2;
  }
}

void sub_229C844C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_229C851D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

void sub_229C86B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229C88D10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_229C8C950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_229C8CC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__79670(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229C90840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__80429(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229C92A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C95320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C991DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__81022(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __transactionAccessoryUpdated_81024(void *a1, void *a2, void *a3)
{
  v458 = *MEMORY[0x277D85DE8];
  v438 = a1;
  v433 = a2;
  v437 = a3;
  v432 = [v437 transactionResult];
  v5 = MEMORY[0x277CBEB18];
  v6 = +[HMDHAPAccessoryTransaction properties];
  v430 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  v431 = [v438 home];
  v7 = [v433 uniqueIdentifier];
  if (v7)
  {
    v8 = [v438 uniqueIdentifier];
    v9 = [v433 uniqueIdentifier];
    v10 = [v8 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [v433 uniqueIdentifier];
      [v438 setUniqueIdentifier:v11];

      [v432 markChanged];
    }
  }

  v12 = [v433 bridgeUUID];
  if (v12)
  {
    v13 = [v438 bridge];
    v14 = [v13 uuid];
    v15 = [v14 UUIDString];
    v16 = [v433 bridgeUUID];
    v17 = [v15 isEqual:v16];

    if ((v17 & 1) == 0)
    {
      v18 = objc_alloc(MEMORY[0x277CCAD78]);
      v19 = [v433 bridgeUUID];
      v20 = [v18 initWithUUIDString:v19];
      [v438 _updateHost:v20];

      [v432 markChanged];
      [v432 markSaveToAssistant];
    }
  }

  v21 = [v433 roomUUID];

  if (v21)
  {
    v22 = [v438 room];
    v23 = [v22 name];

    v24 = objc_alloc(MEMORY[0x277CCAD78]);
    v25 = [v433 roomUUID];
    v26 = [v24 initWithUUIDString:v25];

    v27 = objc_autoreleasePoolPush();
    v28 = v438;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      objb = HMFGetLogIdentifier();
      v429 = [v28 home];
      v30 = [v429 roomWithUUID:v26];
      v31 = [v30 name];
      v32 = [v28 room];
      v33 = [v32 uuid];
      HMFEqualObjects();

      v34 = HMFBooleanToString();
      *buf = 138544130;
      v451 = objb;
      v452 = 2112;
      v453 = v23;
      v454 = 2112;
      v455 = v31;
      v456 = 2112;
      v457 = v34;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@transactionObjectUpdated: old: %@, new:%@, same Room: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v27);
    if (v26 && [v28 _updateRoom:v26 source:{objc_msgSend(v432, "source")}])
    {
      [v432 markChanged];
      [v432 markSaveToAssistant];
    }

    [v28 _handleRoomChangedFromOldRoomName:v23];
  }

  v35 = [v433 accessoryFlags];
  if (v35)
  {
    v36 = [v438 accessoryFlags];
    v37 = [v433 accessoryFlags];
    v38 = [v36 isEqual:v37];

    if ((v38 & 1) == 0)
    {
      v39 = [v433 accessoryFlags];
      v40 = [v438 updateAccessoryFlagsAndNotifyClients:v39];

      if (v40)
      {
        [v430 addObject:v40];
        [v432 markChanged];
      }
    }
  }

  v41 = [v433 certificationStatus];
  if (v41)
  {
    v42 = [v433 certificationStatus];
    if ([v42 unsignedIntegerValue])
    {
      v43 = [v438 certificationStatus];
      v44 = [v433 certificationStatus];
      v45 = v43 == [v44 unsignedIntegerValue];

      if (!v45)
      {
        v46 = [v433 certificationStatus];
        [v438 setCertificationStatus:{objc_msgSend(v46, "unsignedIntegerValue")}];

        [v432 markChanged];
      }
    }

    else
    {
    }
  }

  v47 = [v433 broadcastKey];
  if (v47)
  {
    v48 = [v438 broadcastKey];
    v49 = [v433 broadcastKey];
    v50 = [v48 isEqualToData:v49];

    if ((v50 & 1) == 0)
    {
      v51 = [v433 broadcastKey];
      [v438 setBroadcastKey:v51];

      v52 = [v433 broadcastKey];
      v53 = [v433 keyUpdatedStateNumber];
      v54 = [v433 keyUpdatedTime];
      [v438 setBroadcastKey:v52 keyUpdatedStateNumber:v53 keyUpdatedTime:v54];

      [v432 markChanged];
    }
  }

  v55 = [v433 pairingUsername];
  if (v55)
  {
    v56 = [v433 publicKey];
    if (!v56)
    {

      goto LABEL_35;
    }

    v57 = [v438 pairingUsername];
    v58 = [v433 pairingUsername];
    if ([v57 isEqual:v58])
    {
      v59 = [v438 publicKey];
      v60 = [v433 publicKey];
      v61 = [v59 isEqual:v60];

      if (v61)
      {
        goto LABEL_35;
      }
    }

    else
    {
    }

    v62 = [v433 pairingUsername];
    v63 = [v433 publicKey];
    [v438 setPairingUsername:v62 publicKey:v63];

    [v432 markChanged];
  }

LABEL_35:
  v64 = [v433 transportInformation];

  if (v64)
  {
    v65 = objc_autoreleasePoolPush();
    v66 = objc_opt_class();
    v67 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      v68 = HMFGetLogIdentifier();
      [v432 source];
      v69 = HMFBooleanToString();
      v70 = [v433 transportInformation];
      *buf = 138543874;
      v451 = v68;
      v452 = 2112;
      v453 = v69;
      v454 = 2112;
      v455 = v70;
      _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_INFO, "%{public}@Received updated transportInformation from localSource: %@, transportInformation: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v65);
    v71 = [v433 transportInformation];
    v72 = [v438 updateTransportInformation:v71 localSource:{objc_msgSend(v432, "source") < 2}];

    if (v72)
    {
      [v432 markChanged];
    }
  }

  v73 = [v433 communicationProtocol];
  if (v73)
  {
    v74 = [v433 communicationProtocol];
    v75 = [v74 integerValue];
    v76 = v75 == [v438 communicationProtocol];

    if (!v76)
    {
      v77 = objc_autoreleasePoolPush();
      v78 = v438;
      v79 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
      {
        v80 = HMFGetLogIdentifier();
        [v78 communicationProtocol];
        v81 = HAPCommunicationProtocolDescription();
        v82 = [v433 communicationProtocol];
        [v82 integerValue];
        v83 = HAPCommunicationProtocolDescription();
        *buf = 138543874;
        v451 = v80;
        v452 = 2112;
        v453 = v81;
        v454 = 2112;
        v455 = v83;
        _os_log_impl(&dword_229538000, v79, OS_LOG_TYPE_INFO, "%{public}@Updating communication protocol from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v77);
      v84 = [v433 communicationProtocol];
      [v78 setCommunicationProtocol:{objc_msgSend(v84, "integerValue")}];

      [v432 markChanged];
    }
  }

  v85 = [v433 accessorySetupHash];
  if (v85)
  {
    v86 = [v438 setupHash];
    v87 = [v433 accessorySetupHash];
    v88 = [v86 isEqual:v87];

    if ((v88 & 1) == 0)
    {
      v89 = [v433 accessorySetupHash];
      [v438 setSetupHash:v89];

      [v432 markChanged];
    }
  }

  v90 = [v433 targetUUIDs];
  if (v90)
  {
    v91 = [v438 targetUUIDs];
    v92 = [v433 targetUUIDs];
    v93 = [v91 isEqual:v92];

    if ((v93 & 1) == 0)
    {
      v94 = [v433 targetUUIDs];
      [v438 updateTargetUUIDs:v94];

      [v432 markChanged];
    }
  }

  v95 = [v433 hardwareSupport];
  if (v95)
  {
    v96 = [v438 hardwareSupport];
    v97 = [v433 hardwareSupport];
    v98 = [v97 BOOLValue];

    if (v96 != v98)
    {
      v99 = [v433 hardwareSupport];
      [v438 setHardwareSupport:{objc_msgSend(v99, "BOOLValue")}];

      [v438 notifyClientsOfTargetControlSupportUpdate];
      [v432 markChanged];
    }
  }

  v100 = [v433 connectivityInfo];
  if (v100)
  {
    v101 = [v438 connectivityInfo];
    v102 = [v433 connectivityInfo];
    v103 = HMFEqualObjects();

    if ((v103 & 1) == 0)
    {
      v104 = objc_autoreleasePoolPush();
      v105 = v438;
      v106 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
      {
        v107 = HMFGetLogIdentifier();
        v108 = [v105 connectivityInfo];
        v109 = [v433 connectivityInfo];
        *buf = 138543874;
        v451 = v107;
        v452 = 2112;
        v453 = v108;
        v454 = 2112;
        v455 = v109;
        _os_log_impl(&dword_229538000, v106, OS_LOG_TYPE_INFO, "%{public}@Updating connectivityInfo from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v104);
      v110 = [v433 connectivityInfo];
      [v105 setConnectivityInfo:v110];

      [v432 markChanged];
    }
  }

  v111 = [v433 wiFiTransportCapabilities];
  if (v111)
  {
    v112 = [v438 wiFiTransportCapabilities];
    v113 = [v433 wiFiTransportCapabilities];
    v114 = [v112 isEqualToNumber:v113];

    if ((v114 & 1) == 0)
    {
      v115 = [v433 wiFiTransportCapabilities];
      [v438 setWiFiTransportCapabilities:v115];

      [v432 markChanged];
    }
  }

  v116 = [v433 sleepInterval];
  if (v116)
  {
    v117 = [v438 sleepInterval];
    v118 = [v433 sleepInterval];
    v119 = [v117 isEqualToNumber:v118];

    if ((v119 & 1) == 0)
    {
      v120 = [v433 sleepInterval];
      [v438 setSleepInterval:v120];

      [v432 markChanged];
    }
  }

  v121 = [v433 enhancedAuthMethod];
  if (v121)
  {
    v122 = [v438 internalEnhancedAuthMethod];
    v123 = [v433 enhancedAuthMethod];
    v124 = HMFEqualObjects();

    if ((v124 & 1) == 0)
    {
      os_unfair_recursive_lock_lock_with_options();
      v125 = [v433 enhancedAuthMethod];
      v126 = [v125 copy];
      v127 = v438[63];
      v438[63] = v126;

      v128 = [v433 enhancedAuthConfigNumber];
      v129 = [v128 copy];
      v130 = v438[62];
      v438[62] = v129;

      os_unfair_recursive_lock_unlock();
      [v438 handleUpdatedAuthMethod];
      [v432 markChanged];
    }
  }

  v131 = [v433 primaryProfileVersion];

  if (v131)
  {
    v132 = objc_alloc(MEMORY[0x277D0F940]);
    v133 = [v433 primaryProfileVersion];
    v134 = [v132 initWithString:v133];

    if (v134)
    {
      v135 = [v438 primaryProfileVersion];
      v136 = [v134 isEqualToVersion:v135];

      if ((v136 & 1) == 0)
      {
        [v438 setPrimaryProfileVersion:v134];
        v137 = [v438 networkRouterController];

        if (v137)
        {
          [v431 _evaluateNetworkRouterManagementForTransaction:v432];
        }

        [v432 markChanged];
      }
    }
  }

  v138 = [v433 hasOnboardedForNaturalLighting];
  if (v138)
  {
    v139 = [v438 hasOnboardedForNaturalLighting];
    v140 = [v433 hasOnboardedForNaturalLighting];
    v141 = [v139 isEqualToNumber:v140];

    if ((v141 & 1) == 0)
    {
      v142 = objc_autoreleasePoolPush();
      v143 = v438;
      v144 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v144, OS_LOG_TYPE_INFO))
      {
        v145 = HMFGetLogIdentifier();
        v146 = [v433 hasOnboardedForNaturalLighting];
        *buf = 138543618;
        v451 = v145;
        v452 = 2112;
        v453 = v146;
        _os_log_impl(&dword_229538000, v144, OS_LOG_TYPE_INFO, "%{public}@Updating has onboarded accessory for natural lighting: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v142);
      v147 = [v433 hasOnboardedForNaturalLighting];
      [v143 setHasOnboardedForNaturalLighting:v147];

      [v432 markChanged];
    }
  }

  v148 = [v433 initialServiceTypeUUIDs];
  if (v148)
  {
    v149 = [v433 initialServiceTypeUUIDs];
    v150 = [v438 initialServiceTypeUUIDs];
    v151 = HMFEqualObjects();

    if ((v151 & 1) == 0)
    {
      v152 = [v433 initialServiceTypeUUIDs];
      [v438 setInitialServiceTypeUUIDs:v152];

      [v432 markChanged];
    }
  }

  v153 = [v433 needsOnboarding];
  if (v153)
  {
    v154 = [v433 needsOnboarding];
    v155 = [v438 needsOnboarding];
    v156 = HMFEqualObjects();

    if ((v156 & 1) == 0)
    {
      v157 = [v433 needsOnboarding];
      [v438 setNeedsOnboarding:v157];

      [v432 markChanged];
    }
  }

  v158 = [v433 suspendedState];
  if (v158)
  {
    v159 = [v433 suspendedState];
    v160 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v438, "suspendedState")}];
    v161 = [v159 isEqualToNumber:v160];

    if ((v161 & 1) == 0)
    {
      v162 = objc_autoreleasePoolPush();
      v163 = v438;
      v164 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v164, OS_LOG_TYPE_INFO))
      {
        v165 = HMFGetLogIdentifier();
        [v163 suspendedState];
        v166 = HAPAccessorySuspendedStateDescription();
        v167 = [v433 suspendedState];
        [v167 unsignedIntegerValue];
        v168 = HAPAccessorySuspendedStateDescription();
        *buf = 138543874;
        v451 = v165;
        v452 = 2112;
        v453 = v166;
        v454 = 2112;
        v455 = v168;
        _os_log_impl(&dword_229538000, v164, OS_LOG_TYPE_INFO, "%{public}@Accessory Transaction updating suspendedState from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v162);
      v169 = [v433 suspendedState];
      [v163 setSuspendedState:objc_msgSend(v169 shouldNotify:"unsignedIntegerValue") saveToBackingStore:{1, 0}];

      [v432 markChanged];
    }
  }

  [v438 handleUpdatedCHIPPropertiesOnAccessoryModel:v433 actions:v432];
  v170 = [v433 supportsMatterAccessCode];
  if (v170)
  {
    v171 = [v433 supportsMatterAccessCode];
    v172 = [v438 supportsMatterAccessCode];
    v173 = HMFEqualObjects();

    if ((v173 & 1) == 0)
    {
      v174 = objc_autoreleasePoolPush();
      v175 = [v431 accessCodeManager];
      v176 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v176, OS_LOG_TYPE_INFO))
      {
        v177 = HMFGetLogIdentifier();
        v178 = [v438 supportsMatterAccessCode];
        v179 = [v433 supportsMatterAccessCode];
        v180 = [v438 uuid];
        *buf = 138544130;
        v451 = v177;
        v452 = 2112;
        v453 = v178;
        v454 = 2112;
        v455 = v179;
        v456 = 2112;
        v457 = v180;
        _os_log_impl(&dword_229538000, v176, OS_LOG_TYPE_INFO, "%{public}@Updating supportsMatterAccessCode from: %@ to: %@ on accessory: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v174);
      v181 = [v433 supportsMatterAccessCode];
      [v438 setSupportsMatterAccessCode:v181];

      [v432 markChanged];
    }
  }

  v182 = [v433 supportsMatterWalletKey];
  if (!v182)
  {
    goto LABEL_98;
  }

  v183 = [v433 supportsMatterWalletKey];
  v184 = [v438 supportsMatterWalletKey];
  v185 = HMFEqualObjects();

  if ((v185 & 1) == 0)
  {
    v186 = objc_autoreleasePoolPush();
    v187 = [v431 nfcReaderKeyManager];
    v188 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v188, OS_LOG_TYPE_INFO))
    {
      v189 = HMFGetLogIdentifier();
      v190 = [v438 supportsMatterWalletKey];
      v191 = [v433 supportsMatterWalletKey];
      v192 = [v438 uuid];
      *buf = 138544130;
      v451 = v189;
      v452 = 2112;
      v453 = v190;
      v454 = 2112;
      v455 = v191;
      v456 = 2112;
      v457 = v192;
      _os_log_impl(&dword_229538000, v188, OS_LOG_TYPE_INFO, "%{public}@Updating supportsMatterWalletKey from: %@ to: %@ on accessory: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v186);
    v193 = [v433 supportsMatterWalletKey];
    [v438 setSupportsMatterWalletKey:v193];

    [v432 markChanged];
    obj = 1;
  }

  else
  {
LABEL_98:
    obj = 0;
  }

  v194 = [v433 supportsNaturalLighting];
  if (v194)
  {
    v195 = [v433 supportsNaturalLighting];
    v196 = [v438 supportsNaturalLighting];
    v197 = HMFEqualObjects();

    if ((v197 & 1) == 0)
    {
      v198 = objc_autoreleasePoolPush();
      v199 = v438;
      v200 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v200, OS_LOG_TYPE_INFO))
      {
        v201 = HMFGetLogIdentifier();
        v202 = [v199 supportsNaturalLighting];
        v203 = [v433 supportsNaturalLighting];
        *buf = 138543874;
        v451 = v201;
        v452 = 2112;
        v453 = v202;
        v454 = 2112;
        v455 = v203;
        _os_log_impl(&dword_229538000, v200, OS_LOG_TYPE_INFO, "%{public}@Updating supportsNaturalLighting from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v198);
      v204 = [v433 supportsNaturalLighting];
      [v199 setSupportsNaturalLighting:v204];

      [v432 markChanged];
    }
  }

  v205 = [v433 naturalLightingEnabled];
  if (v205)
  {
    v206 = [v433 naturalLightingEnabled];
    v207 = [v438 naturalLightingEnabled];
    v208 = HMFEqualObjects();

    if ((v208 & 1) == 0)
    {
      v209 = objc_autoreleasePoolPush();
      v210 = v438;
      v211 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v211, OS_LOG_TYPE_INFO))
      {
        v212 = HMFGetLogIdentifier();
        v213 = [v210 naturalLightingEnabled];
        v214 = [v433 naturalLightingEnabled];
        *buf = 138543874;
        v451 = v212;
        v452 = 2112;
        v453 = v213;
        v454 = 2112;
        v455 = v214;
        _os_log_impl(&dword_229538000, v211, OS_LOG_TYPE_INFO, "%{public}@Updating naturalLightingEnabled from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v209);
      v215 = [v433 naturalLightingEnabled];
      [v210 setNaturalLightingEnabled:v215];

      [v432 markChanged];
    }
  }

  v216 = [v433 supportsMatterWeekDaySchedule];
  if (v216)
  {
  }

  else
  {
    v217 = [v433 matterWeekDayScheduleCapacity];
    v218 = v217 == 0;

    if (v218)
    {
      goto LABEL_126;
    }
  }

  v219 = [v438 weekDayScheduleCapacity];
  v220 = [v433 supportsMatterWeekDaySchedule];
  if (v220)
  {
    v221 = [v433 supportsMatterWeekDaySchedule];
    v222 = [v221 BOOLValue];
    v223 = [v438 supportsMatterWeekDaySchedule];

    if (v222 != v223)
    {
      v224 = objc_autoreleasePoolPush();
      v225 = v438;
      v226 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v226, OS_LOG_TYPE_INFO))
      {
        v227 = HMFGetLogIdentifier();
        [v225 supportsMatterWeekDaySchedule];
        v228 = HMFBooleanToString();
        v229 = [v433 supportsMatterWeekDaySchedule];
        [v229 BOOLValue];
        v230 = HMFBooleanToString();
        *buf = 138543874;
        v451 = v227;
        v452 = 2112;
        v453 = v228;
        v454 = 2112;
        v455 = v230;
        _os_log_impl(&dword_229538000, v226, OS_LOG_TYPE_INFO, "%{public}@Updating supportsMatterWeekDaySchedule from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v224);
      v231 = [v433 supportsMatterWeekDaySchedule];
      [v225 setSupportsMatterWeekDaySchedule:{objc_msgSend(v231, "BOOLValue")}];

      [v432 markChanged];
    }
  }

  v232 = [v433 matterWeekDayScheduleCapacity];
  if (v232)
  {
    v233 = [v433 matterWeekDayScheduleCapacity];
    v234 = [v438 matterWeekDayScheduleCapacity];
    v235 = HMFEqualObjects();

    if ((v235 & 1) == 0)
    {
      v236 = objc_autoreleasePoolPush();
      v237 = v438;
      v238 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v238, OS_LOG_TYPE_INFO))
      {
        v239 = HMFGetLogIdentifier();
        v240 = [v237 matterWeekDayScheduleCapacity];
        v241 = [v433 matterWeekDayScheduleCapacity];
        *buf = 138543874;
        v451 = v239;
        v452 = 2112;
        v453 = v240;
        v454 = 2112;
        v455 = v241;
        _os_log_impl(&dword_229538000, v238, OS_LOG_TYPE_INFO, "%{public}@Updating matterWeekDayScheduleCapacity from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v236);
      v242 = [v433 matterWeekDayScheduleCapacity];
      [v237 setMatterWeekDayScheduleCapacity:v242];

      [v432 markChanged];
    }
  }

  v243 = [v438 weekDayScheduleCapacity];
  v244 = HMFEqualObjects();

  obj |= v244 ^ 1;
LABEL_126:
  v245 = [v433 supportsMatterYearDaySchedule];
  if (v245)
  {
  }

  else
  {
    v246 = [v433 matterYearDayScheduleCapacity];
    v247 = v246 == 0;

    if (v247)
    {
      goto LABEL_140;
    }
  }

  v248 = [v438 yearDayScheduleCapacity];
  v249 = [v433 supportsMatterYearDaySchedule];
  if (v249)
  {
    v250 = [v433 supportsMatterYearDaySchedule];
    v251 = [v250 BOOLValue];
    v252 = [v438 supportsMatterYearDaySchedule];

    if (v251 != v252)
    {
      v253 = objc_autoreleasePoolPush();
      v254 = v438;
      v255 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v255, OS_LOG_TYPE_INFO))
      {
        v256 = HMFGetLogIdentifier();
        [v254 supportsMatterYearDaySchedule];
        v257 = HMFBooleanToString();
        v258 = [v433 supportsMatterYearDaySchedule];
        [v258 BOOLValue];
        v259 = HMFBooleanToString();
        *buf = 138543874;
        v451 = v256;
        v452 = 2112;
        v453 = v257;
        v454 = 2112;
        v455 = v259;
        _os_log_impl(&dword_229538000, v255, OS_LOG_TYPE_INFO, "%{public}@Updating supportsMatterYearDaySchedule from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v253);
      v260 = [v433 supportsMatterYearDaySchedule];
      [v254 setSupportsMatterYearDaySchedule:{objc_msgSend(v260, "BOOLValue")}];

      [v432 markChanged];
    }
  }

  v261 = [v433 matterYearDayScheduleCapacity];
  if (v261)
  {
    v262 = [v433 matterYearDayScheduleCapacity];
    v263 = [v438 matterYearDayScheduleCapacity];
    v264 = HMFEqualObjects();

    if ((v264 & 1) == 0)
    {
      v265 = objc_autoreleasePoolPush();
      v266 = v438;
      v267 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v267, OS_LOG_TYPE_INFO))
      {
        v268 = HMFGetLogIdentifier();
        v269 = [v266 matterYearDayScheduleCapacity];
        v270 = [v433 matterYearDayScheduleCapacity];
        *buf = 138543874;
        v451 = v268;
        v452 = 2112;
        v453 = v269;
        v454 = 2112;
        v455 = v270;
        _os_log_impl(&dword_229538000, v267, OS_LOG_TYPE_INFO, "%{public}@Updating matterYearDayScheduleCapacity from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v265);
      v271 = [v433 matterYearDayScheduleCapacity];
      [v266 setMatterYearDayScheduleCapacity:v271];

      [v432 markChanged];
    }
  }

  v272 = [v438 yearDayScheduleCapacity];
  v273 = HMFEqualObjects();

  obj |= v273 ^ 1;
LABEL_140:
  v274 = [v433 hasOnboardedForAdaptiveTemperatureAutomations];

  if (v274)
  {
    v275 = [v438 hasOnboardedForAdaptiveTemperatureAutomations];
    v276 = [v433 hasOnboardedForAdaptiveTemperatureAutomations];
    if ((HMFEqualObjects() & 1) == 0)
    {
      v277 = objc_autoreleasePoolPush();
      v278 = v438;
      v279 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v279, OS_LOG_TYPE_INFO))
      {
        v280 = HMFGetLogIdentifier();
        [v275 BOOLValue];
        v281 = HMFBooleanToString();
        [v276 BOOLValue];
        v282 = HMFBooleanToString();
        *buf = 138543874;
        v451 = v280;
        v452 = 2112;
        v453 = v281;
        v454 = 2112;
        v455 = v282;
        _os_log_impl(&dword_229538000, v279, OS_LOG_TYPE_INFO, "%{public}@Updating hasOnboardedForAdaptiveTemperatureAutomations from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v277);
      v283 = [v433 hasOnboardedForAdaptiveTemperatureAutomations];
      [v278 setHasOnboardedForAdaptiveTemperatureAutomations:v283];

      [v432 markChanged];
    }
  }

  v284 = [v433 hasOnboardedForCleanEnergyAutomation];

  if (v284)
  {
    v285 = [v438 hasOnboardedForCleanEnergyAutomation];
    v286 = [v433 hasOnboardedForCleanEnergyAutomation];
    if ((HMFEqualObjects() & 1) == 0)
    {
      v287 = objc_autoreleasePoolPush();
      v288 = v438;
      v289 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v289, OS_LOG_TYPE_INFO))
      {
        v290 = HMFGetLogIdentifier();
        [v285 BOOLValue];
        v291 = HMFBooleanToString();
        [v286 BOOLValue];
        v292 = HMFBooleanToString();
        *buf = 138543874;
        v451 = v290;
        v452 = 2112;
        v453 = v291;
        v454 = 2112;
        v455 = v292;
        _os_log_impl(&dword_229538000, v289, OS_LOG_TYPE_INFO, "%{public}@Updating hasOnboardedForCleanEnergyAutomation from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v287);
      v293 = [v433 hasOnboardedForCleanEnergyAutomation];
      [v288 setHasOnboardedForCleanEnergyAutomation:v293];

      [v432 markChanged];
    }
  }

  v294 = [v433 supportsAdaptiveTemperatureAutomations];

  if (v294)
  {
    v295 = [v438 supportsAdaptiveTemperatureAutomations];
    v296 = [v433 supportsAdaptiveTemperatureAutomations];
    v297 = HMFEqualObjects();
    if ((v297 & 1) == 0)
    {
      v298 = objc_autoreleasePoolPush();
      v299 = v438;
      v300 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v300, OS_LOG_TYPE_INFO))
      {
        v301 = HMFGetLogIdentifier();
        [v295 BOOLValue];
        v302 = HMFBooleanToString();
        [v296 BOOLValue];
        v303 = HMFBooleanToString();
        *buf = 138543874;
        v451 = v301;
        v452 = 2112;
        v453 = v302;
        v454 = 2112;
        v455 = v303;
        _os_log_impl(&dword_229538000, v300, OS_LOG_TYPE_INFO, "%{public}@Updating supportsAdaptiveTemperatureAutomations from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v298);
      v304 = [v433 supportsAdaptiveTemperatureAutomations];
      [v299 setSupportsAdaptiveTemperatureAutomations:v304];

      [v432 markChanged];
    }

    v305 = v297 ^ 1;
  }

  else
  {
    v305 = 0;
  }

  v306 = [v433 supportsCleanEnergyAutomation];

  if (v306)
  {
    v307 = [v438 supportsCleanEnergyAutomation];
    v308 = [v433 supportsCleanEnergyAutomation];
    if ((HMFEqualObjects() & 1) == 0)
    {
      v309 = objc_autoreleasePoolPush();
      v310 = v438;
      v311 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v311, OS_LOG_TYPE_INFO))
      {
        v312 = HMFGetLogIdentifier();
        [v307 BOOLValue];
        v313 = HMFBooleanToString();
        [v308 BOOLValue];
        v314 = HMFBooleanToString();
        *buf = 138543874;
        v451 = v312;
        v452 = 2112;
        v453 = v313;
        v454 = 2112;
        v455 = v314;
        _os_log_impl(&dword_229538000, v311, OS_LOG_TYPE_INFO, "%{public}@Updating supportsCleanEnergyAutomation from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v309);
      v315 = [v433 supportsCleanEnergyAutomation];
      [v310 setSupportsCleanEnergyAutomation:v315];

      [v432 markChanged];
      logAndPostNotification(@"HMDSupportsCleanEnergyAutomationUpdatedNotification", v310, 0);
    }
  }

  v316 = [v433 supportsMatCredACP];
  if (v316)
  {
    v317 = [v433 supportsMatCredACP];
    v318 = [v317 BOOLValue];
    v319 = [v438 supportsACWGProvisioning];

    if (v318 != v319)
    {
      v320 = objc_autoreleasePoolPush();
      v321 = v438;
      v322 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v322, OS_LOG_TYPE_INFO))
      {
        v323 = HMFGetLogIdentifier();
        [v321 supportsACWGProvisioning];
        v324 = HMFBooleanToString();
        v325 = [v433 supportsMatCredACP];
        [v325 BOOLValue];
        v326 = HMFBooleanToString();
        *buf = 138543874;
        v451 = v323;
        v452 = 2112;
        v453 = v324;
        v454 = 2112;
        v455 = v326;
        _os_log_impl(&dword_229538000, v322, OS_LOG_TYPE_INFO, "%{public}@Updating supportsACWGProvisioning from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v320);
      v327 = [v433 supportsMatCredACP];
      [v321 setSupportsACWGProvisioning:{objc_msgSend(v327, "BOOLValue")}];

      [v432 markChanged];
      obj = 1;
    }
  }

  v328 = [v433 supportsMatCredACB];
  if (v328)
  {
    v329 = [v433 supportsMatCredACB];
    v330 = [v329 BOOLValue];
    v331 = [v438 supportsACWGUWB];

    if (v330 != v331)
    {
      v332 = objc_autoreleasePoolPush();
      v333 = v438;
      v334 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v334, OS_LOG_TYPE_INFO))
      {
        v335 = HMFGetLogIdentifier();
        [v333 supportsACWGUWB];
        v336 = HMFBooleanToString();
        v337 = [v433 supportsMatCredACB];
        [v337 BOOLValue];
        v338 = HMFBooleanToString();
        *buf = 138543874;
        v451 = v335;
        v452 = 2112;
        v453 = v336;
        v454 = 2112;
        v455 = v338;
        _os_log_impl(&dword_229538000, v334, OS_LOG_TYPE_INFO, "%{public}@Updating supportsACWGUWB from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v332);
      v339 = [v433 supportsMatCredACB];
      [v333 setSupportsACWGUWB:{objc_msgSend(v339, "BOOLValue")}];

      [v432 markChanged];
      obj = 1;
    }
  }

  v340 = [v433 expeditedTransactionSupportedVersions];
  if (v340)
  {
    v341 = [v433 expeditedTransactionSupportedVersions];
    v342 = [v438 expeditedTransactionSupportedVersions];
    v343 = HMFEqualObjects();

    if ((v343 & 1) == 0)
    {
      v344 = objc_autoreleasePoolPush();
      v345 = v438;
      v346 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v346, OS_LOG_TYPE_INFO))
      {
        v347 = HMFGetLogIdentifier();
        v348 = [v345 expeditedTransactionSupportedVersions];
        v349 = [v433 expeditedTransactionSupportedVersions];
        *buf = 138543874;
        v451 = v347;
        v452 = 2112;
        v453 = v348;
        v454 = 2112;
        v455 = v349;
        _os_log_impl(&dword_229538000, v346, OS_LOG_TYPE_INFO, "%{public}@Updating expeditedTransactionSupportedVersions from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v344);
      v350 = [v433 expeditedTransactionSupportedVersions];
      [v345 setExpeditedTransactionSupportedVersions:v350];

      [v432 markChanged];
      obj = 1;
    }
  }

  v351 = [v433 bleUWBSupportedVersions];
  if (v351)
  {
    v352 = [v433 bleUWBSupportedVersions];
    v353 = [v438 bleUWBSupportedVersions];
    v354 = HMFEqualObjects();

    if ((v354 & 1) == 0)
    {
      v355 = objc_autoreleasePoolPush();
      v356 = v438;
      v357 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v357, OS_LOG_TYPE_INFO))
      {
        v358 = HMFGetLogIdentifier();
        v359 = [v356 bleUWBSupportedVersions];
        v360 = [v433 bleUWBSupportedVersions];
        *buf = 138543874;
        v451 = v358;
        v452 = 2112;
        v453 = v359;
        v454 = 2112;
        v455 = v360;
        _os_log_impl(&dword_229538000, v357, OS_LOG_TYPE_INFO, "%{public}@Updating bleUWBSupportedVersions from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v355);
      v361 = [v433 bleUWBSupportedVersions];
      [v356 setBleUWBSupportedVersions:v361];

      [v432 markChanged];
      obj = 1;
    }
  }

  v362 = [v433 bleAdvertisingVersion];
  if (v362)
  {
    v363 = [v433 bleAdvertisingVersion];
    v364 = [v438 bleAdvertisingVersion];
    v365 = HMFEqualObjects();

    if ((v365 & 1) == 0)
    {
      v366 = objc_autoreleasePoolPush();
      v367 = v438;
      v368 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v368, OS_LOG_TYPE_INFO))
      {
        v369 = HMFGetLogIdentifier();
        v370 = [v367 bleAdvertisingVersion];
        v371 = [v433 bleAdvertisingVersion];
        *buf = 138543874;
        v451 = v369;
        v452 = 2112;
        v453 = v370;
        v454 = 2112;
        v455 = v371;
        _os_log_impl(&dword_229538000, v368, OS_LOG_TYPE_INFO, "%{public}@Updating bleAdvertisingVersion from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v366);
      v372 = [v433 bleAdvertisingVersion];
      [v367 setBleAdvertisingVersion:v372];

      [v432 markChanged];
      obj = 1;
    }
  }

  v373 = [v433 matCredRGSI];
  if (v373)
  {
    v374 = [v433 matCredRGSI];
    v375 = [v438 readerGroupSubIdentifierACWG];
    v376 = HMFEqualObjects();

    if ((v376 & 1) == 0)
    {
      v377 = objc_autoreleasePoolPush();
      v378 = v438;
      v379 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v379, OS_LOG_TYPE_INFO))
      {
        v380 = HMFGetLogIdentifier();
        v381 = [v378 readerGroupSubIdentifierACWG];
        v382 = [v433 matCredRGSI];
        *buf = 138543874;
        v451 = v380;
        v452 = 2112;
        v453 = v381;
        v454 = 2112;
        v455 = v382;
        _os_log_impl(&dword_229538000, v379, OS_LOG_TYPE_INFO, "%{public}@Updating readerGroupSubIdentifierACWG from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v377);
      v383 = [v433 matCredRGSI];
      [v378 setReaderGroupSubIdentifierACWG:v383];

      [v432 markChanged];
    }
  }

  v384 = [v433 preexistingMatCredRGI];
  if (v384)
  {
    v385 = [v433 preexistingMatCredRGI];
    v386 = [v438 preexistingReaderGroupIdentifierACWG];
    v387 = HMFEqualObjects();

    if ((v387 & 1) == 0)
    {
      v388 = objc_autoreleasePoolPush();
      v389 = v438;
      v390 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v390, OS_LOG_TYPE_INFO))
      {
        v391 = HMFGetLogIdentifier();
        v392 = [v389 preexistingReaderGroupIdentifierACWG];
        v393 = [v433 preexistingMatCredRGI];
        *buf = 138543874;
        v451 = v391;
        v452 = 2112;
        v453 = v392;
        v454 = 2112;
        v455 = v393;
        _os_log_impl(&dword_229538000, v390, OS_LOG_TYPE_INFO, "%{public}@Updating preexistingReaderGroupIdentifierACWG from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v388);
      v394 = [v433 preexistingMatCredRGI];
      [v389 setPreexistingReaderGroupIdentifierACWG:v394];

      [v432 markChanged];
    }
  }

  v395 = [v433 mfiCertifiedACWG];
  if (v395)
  {
    v396 = [v433 mfiCertifiedACWG];
    v397 = [v396 BOOLValue];
    v398 = [v438 mfiCertifiedACWG];

    if (v397 != v398)
    {
      v399 = objc_autoreleasePoolPush();
      v400 = v438;
      v401 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v401, OS_LOG_TYPE_INFO))
      {
        v402 = HMFGetLogIdentifier();
        [v400 mfiCertifiedACWG];
        v403 = HMFBooleanToString();
        v404 = [v433 mfiCertifiedACWG];
        [v404 BOOLValue];
        v405 = HMFBooleanToString();
        *buf = 138543874;
        v451 = v402;
        v452 = 2112;
        v453 = v403;
        v454 = 2112;
        v455 = v405;
        _os_log_impl(&dword_229538000, v401, OS_LOG_TYPE_INFO, "%{public}@Updating mfiCertifiedACWG from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v399);
      v406 = [v433 mfiCertifiedACWG];
      [v400 setMfiCertifiedACWG:{objc_msgSend(v406, "BOOLValue")}];

      [v432 markChanged];
    }
  }

  if (obj)
  {
    logAndPostNotification(@"HMDAccessorySupportsWalletKeyDidChangeNotification", v438, 0);
  }

  if (!v305)
  {
    goto LABEL_213;
  }

  if ([v431 isAllowedToEnableAdaptiveTemperatureAutomations])
  {
    v407 = [v438 supportsAdaptiveTemperatureAutomations];
    if ([v407 BOOLValue])
    {
      v408 = [v438 hasOnboardedForAdaptiveTemperatureAutomations];
      v409 = [v408 BOOLValue];

      if (v409)
      {
        goto LABEL_213;
      }

      v410 = [v438 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ____transactionAccessoryUpdated_block_invoke_81047;
      block[3] = &unk_27868A728;
      v448 = v438;
      dispatch_async(v410, block);

      v407 = v448;
    }

LABEL_213:
    v411 = dispatch_group_create();
    v443 = 0u;
    v444 = 0u;
    v445 = 0u;
    v446 = 0u;
    obja = v430;
    v412 = [obja countByEnumeratingWithState:&v443 objects:v449 count:16];
    if (v412)
    {
      v413 = *v444;
      do
      {
        for (i = 0; i != v412; ++i)
        {
          if (*v444 != v413)
          {
            objc_enumerationMutation(obja);
          }

          v415 = *(*(&v443 + 1) + 8 * i);
          dispatch_group_enter(v411);
          if (v437)
          {
            v416 = [v415 mutableCopy];
            v417 = [v437 transport];
            [v416 setTransport:v417];
            v418 = [v416 copy];
          }

          else
          {
            v418 = v415;
          }

          v419 = [v438 msgDispatcher];
          v420 = [v438 uuid];
          v441[0] = MEMORY[0x277D85DD0];
          v441[1] = 3221225472;
          v441[2] = ____transactionAccessoryUpdated_block_invoke_2_81048;
          v441[3] = &unk_27868A728;
          v442 = v411;
          [v419 sendMessage:v418 target:v420 andInvokeCompletionHandler:v441];
        }

        v412 = [obja countByEnumeratingWithState:&v443 objects:v449 count:16];
      }

      while (v412);
    }

    dispatch_group_wait(v411, 0);
    v439[0] = MEMORY[0x277D85DD0];
    v439[1] = 3221225472;
    v439[2] = ____transactionAccessoryUpdated_block_invoke_3;
    v439[3] = &unk_278682310;
    v440 = v432;
    [v438 transactionAccessoryUpdatedForPreferredMediaUser:v433 completionHandler:v439];
    if (![v438 supportsCHIP])
    {
      goto LABEL_233;
    }

    v421 = [v431 featuresDataSource];
    if ([v421 isRVCEnabled])
    {
      v422 = [v433 supportsNativeMatter];
      if ([v422 BOOLValue])
      {
        v423 = [v438 convertingMatterAccessory];

        if (v423)
        {
LABEL_233:
          [v437 respondWithSuccess];

          goto LABEL_234;
        }

        v421 = [v438 matterAdapter];
        [v421 convertMatterAccessoryToNativeMatter:1];
      }

      else
      {
      }
    }

    goto LABEL_233;
  }

  v424 = objc_autoreleasePoolPush();
  v425 = v438;
  v426 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v426, OS_LOG_TYPE_INFO))
  {
    v427 = HMFGetLogIdentifier();
    *buf = 138543362;
    v451 = v427;
    _os_log_impl(&dword_229538000, v426, OS_LOG_TYPE_INFO, "%{public}@Not onboarding adaptive temperature automations, home is not qualified", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v424);
LABEL_234:

  v428 = *MEMORY[0x277D85DE8];
}

uint64_t ____transactionAccessoryUpdated_block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) markChanged];
  }

  return result;
}

void sub_229C9C970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229CA2248(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_229CA69FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229CAB180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229CAC7FC(_Unwind_Exception *a1)
{
  __HMFActivityScopeLeave();
  _Block_object_dispose(&STACK[0x2D8], 8);
  _Block_object_dispose(&STACK[0x308], 8);
  _Block_object_dispose(&STACK[0x338], 8);
  _Block_object_dispose(&STACK[0x358], 8);
  objc_destroyWeak(&STACK[0x378]);
  _Unwind_Resume(a1);
}

void sub_229CAF054(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x220]);
  objc_destroyWeak(&STACK[0x230]);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x380], 8);
  _Unwind_Resume(a1);
}

void sub_229CB3CC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_229CB93FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229CB9D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229CBA5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229CBD9D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 224));
  _Unwind_Resume(a1);
}

void sub_229CBE9F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_229CBFA04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 104));
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_229CC0764(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_229CC0980(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 64));
  _Unwind_Resume(a1);
}

void sub_229CC1E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  objc_destroyWeak(va);
  objc_destroyWeak((v10 - 88));
  _Unwind_Resume(a1);
}

void sub_229CC2594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229CC9658(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void __handleUpdatedPassword(void *a1, void *a2)
{
  v81 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v44 = a2;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v42 = v3;
  v4 = [v3 services];
  v5 = [v4 copy];

  obj = v5;
  v40 = [v5 countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v40)
  {
    v39 = *v53;
    do
    {
      v6 = 0;
      do
      {
        if (*v53 != v39)
        {
          v7 = v6;
          objc_enumerationMutation(obj);
          v6 = v7;
        }

        v41 = v6;
        v8 = *(*(&v52 + 1) + 8 * v6);
        v9 = [v8 type];
        v10 = [v9 isEqualToString:@"000000DA-0000-1000-8000-0026BB765291"];

        if (v10)
        {
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v43 = [v8 characteristics];
          v11 = [v43 countByEnumeratingWithState:&v48 objects:v58 count:16];
          if (!v11)
          {
            goto LABEL_46;
          }

          v45 = *v49;
          while (1)
          {
            v12 = 0;
            do
            {
              if (*v49 != v45)
              {
                objc_enumerationMutation(v43);
              }

              v13 = *(*(&v48 + 1) + 8 * v12);
              v14 = [v13 type];
              v15 = [v14 isEqualToString:@"000000E4-0000-1000-8000-0026BB765291"];

              if (v15)
              {
                v16 = [v13 value];

                if (v16)
                {
                  v17 = [v13 value];
                  v18 = v17;
                  if (v17)
                  {
                    v19 = v17;
                    v20 = v18;
                    [v20 bytes];
                    [v20 length];

                    *&buf = 0;
                    v56 = 0;
                    v57 = 0;
                    v21 = 0;
                    v22 = 0;
                    if (!TLV8Get() && v56 == 1)
                    {
                      v22 = *buf;
                      if (v22 > 1)
                      {
                        goto LABEL_21;
                      }

                      v23 = TLV8GetOrCopyCoalesced();
                      if (v23 == -6727 || !v56)
                      {
                        v21 = 0;
                        if (!v22)
                        {
                          goto LABEL_29;
                        }
                      }

                      else
                      {
                        if (v23)
                        {
LABEL_21:
                          v22 = 0;
                          v21 = 0;
                          goto LABEL_30;
                        }

                        v25 = objc_alloc(MEMORY[0x277CCACA8]);
                        v21 = [v25 initWithBytes:buf length:v56 encoding:4];
                        if (v57)
                        {
                          free(v57);
                          v57 = 0;
                        }

                        if (v21)
                        {
LABEL_29:
                          v26 = v21;
                          goto LABEL_30;
                        }
                      }

                      v22 = 0;
                    }

LABEL_30:
                  }

                  else
                  {
                    v22 = 0;
                    v21 = 0;
                  }

                  v24 = v21;
                }

                else
                {
                  v22 = 0;
                  v24 = 0;
                }

                v79 = 0u;
                v80 = 0u;
                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                v73 = 0u;
                v74 = 0u;
                v71 = 0u;
                v72 = 0u;
                v69 = 0u;
                v70 = 0u;
                v67 = 0u;
                v68 = 0u;
                v65 = 0u;
                v66 = 0u;
                v63 = 0u;
                v64 = 0u;
                v61 = 0u;
                v62 = 0u;
                buf = 0u;
                v27 = v44;
                TLV8BufferInit();
                v28 = v27;
                [v27 UTF8String];
                [v27 length];

                if (TLV8BufferAppend() || (LOBYTE(v57) = v44 != 0, TLV8BufferAppend()))
                {
                  v29 = 0;
                }

                else
                {
                  v29 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:?];
                }

                TLV8BufferFree();
                if (v22 != (v44 != 0) || v44 && ([v24 isEqualToString:v27] & 1) == 0)
                {
                  v30 = objc_autoreleasePoolPush();
                  v31 = v42;
                  v32 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                  {
                    v33 = HMFGetLogIdentifier();
                    LODWORD(buf) = 138543362;
                    *(&buf + 4) = v33;
                    _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@password does not match send update", &buf, 0xCu);
                  }

                  objc_autoreleasePoolPop(v30);
                  v34 = v29;
                  objc_initWeak(&buf, v31);
                  v35 = [v31 workQueue];
                  v46[0] = MEMORY[0x277D85DD0];
                  v46[1] = 3221225472;
                  v46[2] = ____handleUpdatedPassword_block_invoke;
                  v46[3] = &unk_278688A18;
                  objc_copyWeak(&v47, &buf);
                  [v31 writeValue:v34 toCharacteristic:v13 queue:v35 source:1040 completion:v46];

                  objc_destroyWeak(&v47);
                  objc_destroyWeak(&buf);
                }
              }

              ++v12;
            }

            while (v11 != v12);
            v36 = [v43 countByEnumeratingWithState:&v48 objects:v58 count:16];
            v11 = v36;
            if (!v36)
            {
LABEL_46:

              break;
            }
          }
        }

        v6 = v41 + 1;
      }

      while (v41 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v40);
  }

  v37 = *MEMORY[0x277D85DE8];
}

void sub_229CD1668(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x220]);
  _Unwind_Resume(a1);
}

void ____handleUpdatedPassword_block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@unable to update password setting value with error: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

void __handleUpdatedMinimumUserPrivilege(void *a1, void *a2)
{
  v93 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = objc_autoreleasePoolPush();
  val = v2;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = HMUserPrivilegeToString();
    *buf = 138543874;
    v84 = v5;
    v85 = 2112;
    v86 = v6;
    v87 = 2048;
    v88 = a2;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Handling updated minimum user privilege: %@ (%ld)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [val home];
  v8 = [v7 featuresDataSource];
  v9 = [v8 isMediaPrivilegeEnabled];

  if (v9)
  {
    obj = [val findCharacteristicType:@"000000EE-0000-1000-8000-0026BB765291" forServiceType:@"000000DA-0000-1000-8000-0026BB765291"];
    if (obj)
    {
      [val _scheduleMediaPrivilegeUpdate];
      goto LABEL_50;
    }

    v38 = [val findCharacteristicType:@"000000E5-0000-1000-8000-0026BB765291" forServiceType:@"000000DA-0000-1000-8000-0026BB765291"];
    v39 = v38;
    if (!v38)
    {
LABEL_49:

      obj = 0;
      goto LABEL_50;
    }

    v40 = [v38 value];
    v41 = v40;
    if (!a2 && !v40)
    {
      goto LABEL_36;
    }

    if ([v40 integerValue] == a2)
    {
LABEL_48:

      goto LABEL_49;
    }

    if (v41)
    {
      v42 = objc_autoreleasePoolPush();
      v47 = val;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        v49 = HMUserPrivilegeToString();
        [v41 integerValue];
        v50 = HMUserPrivilegeToString();
        *buf = 138544386;
        v84 = v48;
        v85 = 2112;
        v86 = v49;
        v87 = 2048;
        v88 = a2;
        v89 = 2112;
        v90 = v50;
        v91 = 2112;
        v92 = v41;
        _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@new privilege %@ (%ld) does not match current privilege %@ (%@). Send update", buf, 0x34u);
      }
    }

    else
    {
LABEL_36:
      v42 = objc_autoreleasePoolPush();
      v43 = val;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = HMFGetLogIdentifier();
        v46 = HMUserPrivilegeToString();
        *buf = 138543874;
        v84 = v45;
        v85 = 2112;
        v86 = v46;
        v87 = 2048;
        v88 = a2;
        _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@new privilege %@ (%ld), no existing value. Send update", buf, 0x20u);
      }
    }

    objc_autoreleasePoolPop(v42);
    v51 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v52 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v80 = v51;
    v53 = [v39 validateValueForWrite:v52 outValue:&v80];
    v54 = v80;

    if (v53)
    {
      v55 = objc_autoreleasePoolPush();
      v56 = val;
      v57 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v58 = HMFGetLogIdentifier();
        *buf = 138543874;
        v84 = v58;
        v85 = 2048;
        v86 = a2;
        v87 = 2112;
        v88 = v53;
        _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_ERROR, "%{public}@invalid privilege value - %ld, error - %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v55);
    }

    else
    {
      objc_initWeak(buf, val);
      v59 = [val workQueue];
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = ____handleUpdatedMinimumUserPrivilege_block_invoke;
      v78[3] = &unk_278688A18;
      objc_copyWeak(&v79, buf);
      [val writeValue:v54 toCharacteristic:v39 queue:v59 source:1040 completion:v78];

      objc_destroyWeak(&v79);
      objc_destroyWeak(buf);
    }

    goto LABEL_48;
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v10 = [val services];
  obj = [v10 copy];

  v63 = [obj countByEnumeratingWithState:&v74 objects:v82 count:16];
  if (v63)
  {
    v62 = *v75;
    do
    {
      v11 = 0;
      do
      {
        if (*v75 != v62)
        {
          v12 = v11;
          objc_enumerationMutation(obj);
          v11 = v12;
        }

        v64 = v11;
        v13 = *(*(&v74 + 1) + 8 * v11);
        v14 = [v13 type];
        v15 = [v14 isEqualToString:@"000000DA-0000-1000-8000-0026BB765291"];

        if (v15)
        {
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v16 = [v13 characteristics];
          v17 = [v16 countByEnumeratingWithState:&v70 objects:v81 count:16];
          if (v17)
          {
            v18 = *v71;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v71 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = *(*(&v70 + 1) + 8 * i);
                v21 = [v20 type];
                v22 = [v21 isEqualToString:@"000000E5-0000-1000-8000-0026BB765291"];

                if (v22)
                {
                  v23 = [v20 value];
                  v24 = [v23 integerValue] == a2;

                  if (!v24)
                  {
                    v25 = objc_autoreleasePoolPush();
                    v26 = val;
                    v27 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                    {
                      v28 = HMFGetLogIdentifier();
                      *buf = 138543362;
                      v84 = v28;
                      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@privilege does not match send update", buf, 0xCu);
                    }

                    objc_autoreleasePoolPop(v25);
                    v29 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
                    v30 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
                    v69 = v29;
                    v31 = [v20 validateValueForWrite:v30 outValue:&v69];
                    v32 = v69;

                    if (v31)
                    {
                      v33 = objc_autoreleasePoolPush();
                      v34 = v26;
                      v35 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                      {
                        v36 = HMFGetLogIdentifier();
                        *buf = 138543362;
                        v84 = v36;
                        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@invalid minimum user privilege value", buf, 0xCu);
                      }

                      objc_autoreleasePoolPop(v33);
                    }

                    else
                    {
                      objc_initWeak(buf, v26);
                      v37 = [v26 workQueue];
                      v67[0] = MEMORY[0x277D85DD0];
                      v67[1] = 3221225472;
                      v67[2] = ____handleUpdatedMinimumUserPrivilege_block_invoke_2277;
                      v67[3] = &unk_278688A18;
                      objc_copyWeak(&v68, buf);
                      [v26 writeValue:v32 toCharacteristic:v20 queue:v37 source:1040 completion:v67];

                      objc_destroyWeak(&v68);
                      objc_destroyWeak(buf);
                    }
                  }
                }
              }

              v17 = [v16 countByEnumeratingWithState:&v70 objects:v81 count:16];
            }

            while (v17);
          }
        }

        v11 = v64 + 1;
      }

      while (v64 + 1 != v63);
      v63 = [obj countByEnumeratingWithState:&v74 objects:v82 count:16];
    }

    while (v63);
  }

LABEL_50:

  v60 = *MEMORY[0x277D85DE8];
}

void sub_229CD217C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 176));
  _Unwind_Resume(a1);
}

void ____handleUpdatedMinimumUserPrivilege_block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@updated privilege value with error: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

void ____handleUpdatedMinimumUserPrivilege_block_invoke_2277(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@unable to update user privilege value with error: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_229CDBE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229CE2664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__81952(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229CE4870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void completeWithError(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (v5)
  {
    if (v3)
    {
      v5[2](v5, v3);
    }

    else
    {
      v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      v5[2](v5, v4);
    }
  }
}

id makeConfigurationControl(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CFECB0]);
  v3 = [objc_alloc(MEMORY[0x277CFECB8]) initWithValue:a1];
  [v2 setOperationType:v3];

  return v2;
}

id makeStationConfiguration(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CFECC8];
  v5 = a1;
  v6 = objc_alloc_init(v4);
  [v6 setSSID:v5];

  v7 = objc_alloc(MEMORY[0x277CFECC0]);
  if (v3)
  {
    v8 = [v7 initWithValue:1];
    [v6 setSecurityMode:v8];

    [v6 setPSK:v3];
  }

  else
  {
    v9 = [v7 initWithValue:0];
    [v6 setSecurityMode:v9];
  }

  return v6;
}

void sub_229CE8378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__82538(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id encodeRootObjectForRemote(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = [[HMDRemoteKeyedArchiver alloc] initForWritingWithRemoteDeviceIsOnSameAccount:0 remoteGateway:0 remoteUserIsAdministrator:0 user:v6 supportedFeatures:v7];
  [v9 encodeObject:v5 forKey:*MEMORY[0x277CCA308]];
  [v9 finishEncoding];
  v10 = [v9 encodedData];

  objc_autoreleasePoolPop(v8);

  return v10;
}

id encodeRootObjectForRemoteDeviceOnSameAccountMigrateToHH2(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.hmdutil.encode-remote-same."];
  if (a2)
  {
    v8 = homedSupportedFeatures;
    if (a3)
    {
      v9 = [MEMORY[0x277CBEB18] arrayWithArray:v8];
      [v9 addObject:&unk_283E72680];
      v10 = [v9 copy];

      v11 = 4;
      v8 = v10;
    }

    else
    {
      v11 = 4;
    }
  }

  else
  {
    v8 = &unk_283E75758;
    v11 = 3;
  }

  v12 = [[HMDRemoteKeyedArchiver alloc] initForWritingWithRemoteDeviceIsOnSameAccount:1 remoteGateway:0 remoteUserIsAdministrator:1 user:0 dataVersion:v11 supportedFeatures:v8];
  [v12 encodeObject:v5 forKey:*MEMORY[0x277CCA308]];
  [v12 finishEncoding];
  v13 = [v12 encodedData];

  objc_autoreleasePoolPop(v6);

  return v13;
}

id encodeRootObjectForIncomingXPCMessage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [[HMDXPCKeyedArchiver alloc] initForWritingWithMessage:v4];
  [v6 encodeObject:v3 forKey:*MEMORY[0x277CCA308]];
  [v6 finishEncoding];
  v7 = [v6 encodedData];

  objc_autoreleasePoolPop(v5);
  v8 = [v7 copy];

  return v8;
}

id encodeRootObjectForSPIClients(void *a1)
{
  v1 = MEMORY[0x277D0F818];
  v2 = a1;
  v3 = [v1 internalMessageWithName:@"kDummyMessageForEntitledXPC" messagePayload:0];
  v4 = encodeRootObjectForIncomingXPCMessage(v2, v3);

  return v4;
}

__CFString *locationAsString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (isInternalBuild())
    {
      v2 = [v1 description];
    }

    else
    {
      v2 = @"[]";
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *regionAsString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (isInternalBuild())
    {
      v2 = [v1 hm_description];
    }

    else
    {
      v2 = @"[]";
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void createDirectory(void *a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v20 = *MEMORY[0x277CCA180];
  v21[0] = &unk_283E72740;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = 0;
  if (![v3 fileExistsAtPath:v1 isDirectory:&v13])
  {
    v12 = 0;
    v8 = [v3 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:v2 error:&v12];
    v4 = v12;
    v13 = v8;
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v11 = v4;
    [v3 setAttributes:v2 ofItemAtPath:v1 error:&v11];
    v9 = v11;

    v4 = v9;
    goto LABEL_8;
  }

  v4 = 0;
  if (v13)
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v1;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Could not create directory path %@ - error %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
LABEL_8:

  v10 = *MEMORY[0x277D85DE8];
}

id mapHAPPairingErrorToHMError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = *MEMORY[0x277CFE770];

  if (v2 != v3)
  {
    goto LABEL_2;
  }

  v11 = [v1 code];
  if (v11 <= 24)
  {
    if (v11 <= 19)
    {
      if (v11 == 8)
      {
        v4 = MEMORY[0x277CCA9B8];
        v5 = @"Connection was lost with the accessory";
        v7 = @"Ensure there is good WiFi signal, reset the accessory and try again";
        v6 = 54;
        goto LABEL_4;
      }

      if (v11 == 18)
      {
        v4 = MEMORY[0x277CCA9B8];
        v5 = @"Accessory is already paired";
        v6 = 13;
        goto LABEL_3;
      }
    }

    else
    {
      switch(v11)
      {
        case 20:
          v4 = MEMORY[0x277CCA9B8];
          v5 = @"Currently associated WiFi network is not compatible with the accessory";
          v7 = @"Associate with a 2.4 GHz WiFi network and try again";
          v6 = 90;
          goto LABEL_4;
        case 21:
          v4 = MEMORY[0x277CCA9B8];
          v5 = @"This device is not currently associated to a Home WiFi network";
          v7 = @"Associate to a WiFi network (from Settings -> WiFi) and try again";
          v6 = 78;
          goto LABEL_4;
        case 23:
          v4 = MEMORY[0x277CCA9B8];
          v5 = @"Accessories cannot be added to enterprise network";
          v6 = 99;
          goto LABEL_3;
      }
    }

LABEL_2:
    v4 = MEMORY[0x277CCA9B8];
    v5 = @"Pairing Failed";
    v6 = 18;
LABEL_3:
    v7 = 0;
LABEL_4:
    v8 = [v4 hmErrorWithCode:v6 description:v5 reason:0 suggestion:v7 underlyingError:v1];
    goto LABEL_5;
  }

  if (v11 > 33)
  {
    if (v11 != 34)
    {
      if (v11 == 35)
      {
        v4 = MEMORY[0x277CCA9B8];
        v5 = @"Home hub required";
        v7 = @"Add a Home hub to Apple Home and try again";
        v6 = 91;
        goto LABEL_4;
      }

      if (v11 == 36)
      {
        v4 = MEMORY[0x277CCA9B8];
        v6 = 79;
        v5 = 0;
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = @"Failed to connect";
    v14 = 2015;
  }

  else
  {
    switch(v11)
    {
      case 25:
        v12 = MEMORY[0x277CCA9B8];
        v13 = @"Accessory did not join the configured network";
        v14 = 2016;
        break;
      case 26:
        v4 = MEMORY[0x277CCA9B8];
        v5 = @"Failed to join WiFi network";
        v7 = @"Ensure there is good WiFi signal and try again";
        v6 = 102;
        goto LABEL_4;
      case 30:
        v12 = MEMORY[0x277CCA9B8];
        v13 = @"No supported Thread router or Thread credentials not found";
        v14 = 2010;
        break;
      default:
        goto LABEL_2;
    }
  }

  v8 = [v12 hmPrivateErrorWithCode:v14 description:v13 underlyingError:v1];
LABEL_5:
  v9 = v8;

  return v9;
}

id determineHomeKitDaemonRootStorePath()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v1 = [v0 firstObject];
  if (v1)
  {
    v2 = v1;
    v3 = [MEMORY[0x277D0F8E8] productInfo];
    v4 = [v3 productPlatform];

    if (v4 == 1)
    {
      v5 = @"HomeKit";
    }

    else
    {
      v5 = @"homed";
    }

    v6 = [v2 stringByAppendingPathComponent:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void initializePaths()
{
  if (initializePaths_onceToken != -1)
  {
    dispatch_once(&initializePaths_onceToken, &__block_literal_global_82738);
  }
}

void __initializePaths_block_invoke()
{
  v69[1] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = determineHomeKitDaemonRootStorePath();
  v2 = storeDirectoryPath;
  storeDirectoryPath = v1;

  if (storeDirectoryPath)
  {
    v3 = [storeDirectoryPath stringByAppendingPathComponent:@"protected-home.config"];
    v4 = configProtectedDataStorePath;
    configProtectedDataStorePath = v3;

    v5 = [storeDirectoryPath stringByAppendingPathComponent:@"vendor-id-store"];
    v6 = configVendorIDStorePath;
    configVendorIDStorePath = v5;

    v7 = [storeDirectoryPath stringByAppendingPathComponent:@"plain-metadata.config"];
    v8 = configPlainMetadataPath;
    configPlainMetadataPath = v7;

    v9 = [storeDirectoryPath stringByAppendingPathComponent:@"server-token"];
    v10 = serverTokenDataStorePath;
    serverTokenDataStorePath = v9;

    v11 = [storeDirectoryPath stringByAppendingPathComponent:@"transaction-journal"];
    v12 = transactionJournalDataStorePath;
    transactionJournalDataStorePath = v11;

    v13 = [storeDirectoryPath stringByAppendingPathComponent:@"datasync-journal"];
    v14 = idsDataSyncJournalDataStorePath;
    idsDataSyncJournalDataStorePath = v13;

    v15 = [storeDirectoryPath stringByAppendingPathComponent:@"blacklisted-bundles"];
    v16 = blacklistedBundlesStorePath;
    blacklistedBundlesStorePath = v15;

    v17 = [storeDirectoryPath stringByAppendingPathComponent:@"registered-applications"];
    v18 = registeredApplicationsDataStorePath;
    registeredApplicationsDataStorePath = v17;

    v19 = [storeDirectoryPath stringByAppendingPathComponent:@"bulletin-board"];
    v20 = bulletinBoardDataStorePath;
    bulletinBoardDataStorePath = v19;

    v21 = [storeDirectoryPath stringByAppendingPathComponent:@"cloud-cache"];
    v22 = cloudCachePath;
    cloudCachePath = v21;

    v23 = [storeDirectoryPath stringByAppendingPathComponent:@"datastore.sqlite"];
    v24 = sqlitePath;
    sqlitePath = v23;

    v25 = [storeDirectoryPath stringByAppendingPathComponent:@"eventstore-beta.sqlite"];
    v26 = eventStorePath;
    eventStorePath = v25;

    v27 = [storeDirectoryPath stringByAppendingString:@"/BLECache"];
    v28 = bleAccessoryCachePath;
    bleAccessoryCachePath = v27;

    v29 = [storeDirectoryPath stringByAppendingString:@"/AccessoryServerIPCache"];
    v30 = ipAccessoryCachePath;
    ipAccessoryCachePath = v29;

    v31 = [storeDirectoryPath stringByAppendingPathComponent:@"com.apple.relaunch.assertion.plist"];
    v32 = launchdAssertionPlistPath;
    launchdAssertionPlistPath = v31;

    v33 = [storeDirectoryPath stringByAppendingPathComponent:@"metricsCounters"];
    v34 = metricsCountersPersistentStorePath;
    metricsCountersPersistentStorePath = v33;

    v35 = [storeDirectoryPath stringByAppendingPathComponent:@"eventcounters-groupstore"];
    v36 = eventCountersDataStorePath;
    eventCountersDataStorePath = v35;

    v37 = [storeDirectoryPath stringByAppendingPathComponent:@"eventcounters-datastore"];
    v38 = eventCountersDataStoreLegacyPath;
    eventCountersDataStoreLegacyPath = v37;

    v39 = [storeDirectoryPath stringByAppendingPathComponent:@"eventflags-datastore"];
    v40 = eventFlagsDataStorePath;
    eventFlagsDataStorePath = v39;

    v41 = [storeDirectoryPath stringByAppendingPathComponent:@"core.sql"];
    v42 = coreDataDataStorePath;
    coreDataDataStorePath = v41;

    v43 = [storeDirectoryPath stringByAppendingPathComponent:@"/HH1ToHH2PerDeviceMigration"];
    v44 = hh1ToHH2PerDeviceMigrationDirectoryPath;
    hh1ToHH2PerDeviceMigrationDirectoryPath = v43;

    v45 = [storeDirectoryPath stringByAppendingPathComponent:@"/hh1TestArchives"];
    v46 = hh1TestArchivesDirectoryPath;
    hh1TestArchivesDirectoryPath = v45;

    v47 = [storeDirectoryPath stringByAppendingPathComponent:@"/demoMode"];
    v48 = demoModeV2ConfigPath;
    demoModeV2ConfigPath = v47;

    v49 = HMDCreateHomeKitDaemonCacheDirectory();
    v50 = [v49 stringByAppendingPathComponent:@"hh2MigratorRecordStore.plist"];
    v51 = hh2MigratorRecordStorePath;
    hh2MigratorRecordStorePath = v50;

    v52 = [v49 stringByAppendingPathComponent:@"hh2MigrationFailureRecordStore.plist"];
    v53 = hh2MigrationFailureRecordStorePath;
    hh2MigrationFailureRecordStorePath = v52;

    v54 = [v49 stringByAppendingPathComponent:@"hh2MigrationLogEventStore.plist"];
    v55 = hh2MigrationLogEventPath;
    hh2MigrationLogEventPath = v54;

    v68 = *MEMORY[0x277CCA180];
    v69[0] = &unk_283E72740;
    v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:&v68 count:1];
    v67[0] = storeDirectoryPath;
    v67[1] = bleAccessoryCachePath;
    v67[2] = hh1ToHH2PerDeviceMigrationDirectoryPath;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:3];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = ___initializeProtectedStorePaths_block_invoke;
    v65[3] = &unk_2786778F0;
    v66 = v56;
    v58 = v56;
    [v57 hmf_enumerateWithAutoreleasePoolUsingBlock:v65];
  }

  v59 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HomeKitDaemon"];
  v60 = [v59 pathForResource:@"plain-metadata-full.config" ofType:0];
  v61 = builtinConfigMetadataDictionaryPath;
  builtinConfigMetadataDictionaryPath = v60;

  if (!builtinConfigMetadataDictionaryPath)
  {
    v62 = [v59 pathForResource:@"plain-metadata.config" ofType:0];
    v63 = builtinConfigMetadataDictionaryPath;
    builtinConfigMetadataDictionaryPath = v62;
  }

  objc_autoreleasePoolPop(v0);
  v64 = *MEMORY[0x277D85DE8];
}

id HMDCreateHomeKitDaemonCacheDirectory()
{
  v49 = *MEMORY[0x277D85DE8];
  v0 = HMCacheSubdirectoryWithRelativePath();
  v1 = 0x277CCA000uLL;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v41 = 0;
  v3 = [v2 createDirectoryAtPath:v0 withIntermediateDirectories:1 attributes:0 error:&v41];
  v4 = v41;

  if (v3)
  {
    v5 = v0;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = getuid();
      *buf = 138544130;
      v43 = v8;
      v44 = 1024;
      *v45 = v9;
      *&v45[4] = 2114;
      *&v45[6] = v0;
      *&v45[14] = 2114;
      *&v45[16] = v4;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to create HomeKit daemon cache directory for user %d at %{public}@: %{public}@", buf, 0x26u);
    }

    v28 = v4;

    objc_autoreleasePoolPop(v6);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = v0;
    obj = [v0 pathComponents];
    v35 = [obj countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v35)
    {
      v34 = *v38;
      v33 = *MEMORY[0x277CCA180];
      v32 = *MEMORY[0x277CCA158];
      v31 = *MEMORY[0x277CCA118];
      v10 = &stru_283CF9D50;
      do
      {
        v11 = 0;
        v12 = v10;
        do
        {
          if (*v38 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [(__CFString *)v12 stringByAppendingPathComponent:*(*(&v37 + 1) + 8 * v11), v28];

          v13 = [*(v1 + 2560) defaultManager];
          v36 = 0;
          v14 = [v13 attributesOfItemAtPath:v10 error:&v36];
          v15 = v36;

          if (v14)
          {
            v16 = [v14 objectForKeyedSubscript:v33];
            v17 = [v14 objectForKeyedSubscript:v32];
            v18 = [v14 objectForKeyedSubscript:v31];
            v19 = objc_autoreleasePoolPush();
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = HMFGetLogIdentifier();
              v22 = [v16 shortValue];
              *buf = 138544386;
              v43 = v21;
              v44 = 2112;
              *v45 = v10;
              *&v45[8] = 1024;
              *&v45[10] = v22;
              *&v45[14] = 2112;
              *&v45[16] = v17;
              v46 = 2112;
              v47 = v18;
              _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Path: %@, permissions: %o, owner uid: %@, owner gid: %@", buf, 0x30u);

              v1 = 0x277CCA000;
            }

            objc_autoreleasePoolPop(v19);
          }

          else
          {
            v23 = objc_autoreleasePoolPush();
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = HMFGetLogIdentifier();
              *buf = 138543874;
              v43 = v25;
              v44 = 2112;
              *v45 = v10;
              *&v45[8] = 2112;
              *&v45[10] = v15;
              _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to get attributes for path %@: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v23);
          }

          ++v11;
          v12 = v10;
        }

        while (v35 != v11);
        v35 = [obj countByEnumeratingWithState:&v37 objects:v48 count:16];
      }

      while (v35);
    }

    else
    {
      v10 = &stru_283CF9D50;
    }

    v5 = 0;
    v4 = v28;
    v0 = v29;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v5;
}

void ___initializeProtectedStorePaths_block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v7 fileExistsAtPath:v5 isDirectory:0])
  {
    v14 = 0;
    [v7 setAttributes:v6 ofItemAtPath:v5 error:&v14];
    v8 = v14;
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v8;
      v12 = "%{public}@Setting attributes to directory path %@ resulted into error : %@";
LABEL_6:
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, v12, buf, 0x20u);
    }
  }

  else
  {
    v14 = 0;
    [v7 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:v6 error:&v14];
    v8 = v14;
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v8;
      v12 = "%{public}@Create store directory path %@ finished with error %@";
      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
}

void __initializeCapabilitiesAndTimeouts_block_invoke(uint64_t a1)
{
  v160 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277D0F8E8] productInfo];
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v155 = v7;
    v156 = 2112;
    v157 = v4;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Initializing with product info: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v8 = MGCopyAnswer();
  if (v8)
  {
    v9 = v8;
    v10 = [MEMORY[0x277CCACA8] stringWithString:v8];
    v11 = uniqueDeviceId;
    uniqueDeviceId = v10;

    CFRelease(v9);
  }

  v12 = +[HMDDeviceCapabilities isAppleMediaAccessory];
  v13 = @"00000000-0000-0000-0000-C2EE6102B308";
  if (!v12)
  {
    v13 = @"20BC605A-C33B-4D36-B885-C2EE6102B308";
  }

  v14 = v13;
  if (([(__CFString *)v14 isEqualToString:@"20BC605A-C33B-4D36-B885-C2EE6102B308"]& 1) != 0)
  {
    v15 = @"NonMediaDevice/";
  }

  else if ([(__CFString *)v14 isEqualToString:@"00000000-0000-0000-0000-C2EE6102B308"])
  {
    v15 = @"UnknownMediaDevice/";
  }

  else
  {
    v15 = &stru_283CF9D50;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543874;
    v155 = v18;
    v156 = 2112;
    v157 = v15;
    v158 = 2112;
    v159 = v14;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Setting media remote ID: %@%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  v19 = _mediaRouteIdentifier;
  _mediaRouteIdentifier = v14;

  v20 = +[HMDHomeKitVersion currentVersion];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%tu.%tu", objc_msgSend(v20, "majorVersion"), objc_msgSend(v20, "minorVersion")];
  v22 = MEMORY[0x277CCABB0];
  [v21 doubleValue];
  v23 = [v22 numberWithDouble:?];
  v24 = homedVersion;
  homedVersion = v23;

  v25 = +[HMDHomeKitVersion version3];
  v26 = minimumSupportedResidentHomeKitVersion;
  minimumSupportedResidentHomeKitVersion = v25;

  v27 = homedSupportedFeatures;
  homedSupportedFeatures = &unk_283E75770;

  if (isiOSDevice() || isTVOSDevice())
  {
    v28 = [homedSupportedFeatures arrayByAddingObjectsFromArray:&unk_283E75788];
    v29 = homedSupportedFeatures;
    homedSupportedFeatures = v28;
  }

  v30 = +[HMDDeviceCapabilities deviceCapabilities];
  v31 = [v30 supportsFaceClassification];

  if (v31)
  {
    v32 = [homedSupportedFeatures arrayByAddingObject:&unk_283E727D0];
    v33 = homedSupportedFeatures;
    homedSupportedFeatures = v32;
  }

  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"NSDebugDescription", @"NSLocalizedDescription", @"RequestUUID", @"ServerErrorDescription", @"CKErrorDescription", 0}];
  v35 = ckErrorUserInfoKeys;
  ckErrorUserInfoKeys = v34;

  if ((isInternalBuild() & 1) != 0 || ([MEMORY[0x277D0F8E8] productInfo], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "productVariant"), v36, v37 == 2))
  {
    _overrideBoolValue(&skipAuthPromptDialog);
    _overrideBoolValue(&showAuthDialog);
    _overrideBoolValue(&disableCloudDataSync);
    _overrideBoolValue(&disableLegacyCloudDataSync);
    _overrideBoolValue(&enableWakeNotifications);
    _overrideBoolValue(&disableWACBrowser);
    _overrideBoolValue(&delayBatchedReadWrite);
    _overrideBoolValue(&enableNetworkLogging);
    v153 = 0;
    v38 = *MEMORY[0x277CD0030];
    CFDictionaryGetTypeID();
    v39 = CFPrefs_CopyTypedValue();
    v148 = v2;
    v40 = [MEMORY[0x277CBEB38] dictionary];
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v147 = v39;
    v41 = v39;
    v42 = [v41 countByEnumeratingWithState:&v149 objects:buf count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v150;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v150 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v149 + 1) + 8 * i);
          v47 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v46];
          v48 = objc_alloc(MEMORY[0x277CCAD78]);
          v49 = [v41 objectForKey:v46];
          v50 = [v48 initWithUUIDString:v49];

          [v40 setObject:v50 forKey:v47];
        }

        v43 = [v41 countByEnumeratingWithState:&v149 objects:buf count:16];
      }

      while (v43);
    }

    v51 = preferredPrimaryForHome;
    preferredPrimaryForHome = v40;
    v52 = v40;

    v2 = v148;
    CFStringGetTypeID();
    v53 = CFPrefs_CopyTypedValue();
    if (v53)
    {
      v54 = v53;
      v55 = CKContainerEnvironmentFromString();
      v56 = objc_autoreleasePoolPush();
      v57 = HMFGetOSLogHandle();
      v58 = v57;
      if (v55)
      {
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v59 = HMFGetLogIdentifier();
          *buf = 138543618;
          v155 = v59;
          v156 = 2112;
          v157 = v54;
          _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@Overriding CloudKit container environment to %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v56);
        cloudKitContainerEnvironment = v55;
      }

      else
      {
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v60 = HMFGetLogIdentifier();
          *buf = 138543618;
          v155 = v60;
          v156 = 2112;
          v157 = v54;
          _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_ERROR, "%{public}@Invalid CloudKit environment %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v56);
      }

      CFRelease(v54);
    }

    *buf = 0;
    Int64 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudPushBatchLimit = Int64;
    }

    *buf = 0;
    v62 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maxCloudOperationRetries = v62;
    }

    CFPrefs_GetDouble();
    minimumTimerRecurrence = v63;
    *buf = 0;
    v64 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudUploadTimerInterval = v64;
    }

    *buf = 0;
    v65 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudUploadMaximumTimerInterval = v65;
    }

    *buf = 0;
    v66 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudUploadTimerIntervalExponentialFactor = v66;
    }

    *buf = 0;
    v67 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudZoneUploadTimerInitialInterval = v67;
    }

    *buf = 0;
    v68 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudZoneUploadTimerInterval = v68;
    }

    *buf = 0;
    CFPrefs_GetInt64();
    *buf = 0;
    v69 = CFPrefs_GetInt64();
    if (!*buf)
    {
      userPushCacheTimeInterval = v69;
    }

    *buf = 0;
    v70 = CFPrefs_GetInt64();
    if (!*buf)
    {
      aggressiveControllerKeyPollInterval = v70;
    }

    *buf = 0;
    v71 = CFPrefs_GetInt64();
    if (!*buf)
    {
      watchdogControllerKeyPollTimeout = v71;
    }

    *buf = 0;
    v72 = CFPrefs_GetInt64();
    if (!*buf)
    {
      controllerKeyPollInterval = v72;
    }

    *buf = 0;
    v73 = CFPrefs_GetInt64();
    if (!*buf)
    {
      keychainPopupTimerInterval = v73;
    }

    *buf = 0;
    v74 = CFPrefs_GetInt64();
    if (!*buf)
    {
      checkRemoteAccessTimeout = v74;
    }

    *buf = 0;
    v75 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsCommitTimeoutNanoseconds = 1000000000 * v75;
    }

    *buf = 0;
    v76 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsIdleClientTimeoutNanoseconds = 1000000000 * v76;
    }

    *buf = 0;
    v77 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsIdleServertTimeoutNanoseconds = 1000000000 * v77;
    }

    *buf = 0;
    v78 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsSendInternalRequestTimeoutNanoseconds = 1000000000 * v78;
    }

    *buf = 0;
    v79 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsSendInternalRequestToWatchTimeoutNanoseconds = 1000000000 * v79;
    }

    *buf = 0;
    v80 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsSendUserRequestTimeoutNanoseconds = 1000000000 * v80;
    }

    *buf = 0;
    v81 = CFPrefs_GetInt64();
    if (!*buf)
    {
      btleReachabilityTimerNanoseconds = 1000000000 * v81;
    }

    *buf = 0;
    v82 = CFPrefs_GetInt64();
    if (!*buf)
    {
      btleReachabilityLeewayNanoseconds = 1000000000 * v82;
    }

    *buf = 0;
    v83 = CFPrefs_GetInt64();
    if (!*buf)
    {
      btleReachabilityProbeReduceFactor = v83;
    }

    *buf = 0;
    v84 = CFPrefs_GetInt64();
    if (!*buf)
    {
      remotePendingResponseTimerNanoseconds = 1000000000 * v84;
    }

    *buf = 0;
    v85 = CFPrefs_GetInt64();
    if (!*buf)
    {
      remotePendingResponseLeewayNanoseconds = 1000000000 * v85;
    }

    *buf = 0;
    v86 = CFPrefs_GetInt64();
    if (!*buf)
    {
      remotePendingResponseDecayScale = v86;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      accessoryConnectivityWaitPeriod = v87;
    }

    *buf = 0;
    v88 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudDataSyncInProgressWaitPeriod = v88;
    }

    *buf = 0;
    v89 = CFPrefs_GetInt64();
    if (!*buf)
    {
      controllerKeyNotLandingWaitPeriod = v89;
    }

    *buf = 0;
    v90 = CFPrefs_GetInt64();
    if (!*buf)
    {
      controllerKeyNotLandingShortCircuitWaitPeriod = v90;
    }

    if (isHomePod())
    {
      assistantClientReadWriteTimeoutSeconds = 0x4022000000000000;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      assistantClientReadWriteTimeoutSeconds = v91;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      assistantClientActionSetTimeoutSeconds = v92;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      disableNotificationsDeferPeriod = v93;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      coalesceNotificationsPeriod = v94;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      pendingResponseTickPeriod = v95;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      pendingResponseMaxPeriod = v96;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      delayNotificationsPeriod = v97;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      remoteReachabilityNotificationsDeferPeriod = v98;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      remoteReachabilityDeregistrationDeferPeriod = v99;
    }

    *buf = 0;
    v100 = CFPrefs_GetInt64();
    if (!*buf)
    {
      deviceConnectionKeepAliveTimerPeriod = v100;
    }

    *buf = 0;
    v101 = CFPrefs_GetInt64();
    if (!*buf)
    {
      deviceConnectionKeepAliveResponseTimeoutPeriod = v101;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      pairingInterruptionGracePeriod = v102;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      pairingReconfirmWaitPeriod = v103;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      vendorInfoFetchPeriod = v104;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      attestationInfoFetchPeriod = v105;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      keyTransferBroadcastMaximumDelay = v106;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      mediaBrowserProcessingInterval = v107;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      disableReprivsionBrowsingPeriodInMinutes = v108;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      authServerRetryTimeIntervalInSeconds = v109;
    }

    *buf = 0;
    v110 = CFPrefs_GetInt64();
    if (!*buf)
    {
      authServerRetryCount = v110;
    }

    _overrideNumberArray(&supportedResolutions);
    _overrideNumberArray(&supportedVideoCodecs);
    _overrideNumberArray(&supportedAudioCodecs);
    _overrideNumberArray(&supportedSRTPAuths);
    *buf = 0;
    v111 = CFPrefs_GetInt64();
    if (!*buf)
    {
      videoAttributesUpgradeDebouceTimer = v111;
    }

    *buf = 0;
    v112 = CFPrefs_GetInt64();
    if (!*buf)
    {
      videoAttributesDowngradeDebouceTimer = v112;
    }

    _overrideBoolValue(&cameraStreamNetworkAdaptation);
    _overrideNumber(&rtpPtime);
    _overrideNumber(&snapshotResolution);
    *buf = 0;
    v113 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumSimultaneousRemoteStreams = v113;
    }

    *buf = 0;
    v114 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumSecureRemoteStreams = v114;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      secureSessionMessageTimeout = v115;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      snapshotCacheValidPeriod = v116;
    }

    *buf = 0;
    v117 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumHomes = v117;
    }

    *buf = 0;
    v118 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumAccessoriesPerHome = v118;
    }

    *buf = 0;
    v119 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumRoomsPerHome = v119;
    }

    *buf = 0;
    v120 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumZonesPerHome = v120;
    }

    *buf = 0;
    v121 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumTriggersPerHome = v121;
    }

    *buf = 0;
    v122 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumActionSetsPerHome = v122;
    }

    *buf = 0;
    v123 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumServiceGroupsPerHome = v123;
    }

    *buf = 0;
    v124 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumUsersPerHome = v124;
    }

    *buf = 0;
    v125 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumRoomsPerZone = v125;
    }

    *buf = 0;
    v126 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumActionsPerActionSet = v126;
    }

    *buf = 0;
    v127 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumServicesPerServiceGroup = v127;
    }

    *buf = 0;
    v128 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumAccessoriesPerBridge = v128;
    }

    *buf = 0;
    v129 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumServicesPerAccessory = v129;
    }

    *buf = 0;
    v130 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumCharacteristicsPerService = v130;
    }

    *buf = 0;
    v131 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumDataSyncFragmentSize = v131;
    }

    *buf = 0;
    v132 = CFPrefs_GetInt64();
    if (!*buf)
    {
      bulletinSecureTriggerTimeoutInSeconds = v132;
    }

    *buf = 0;
    v133 = CFPrefs_GetInt64();
    if (!*buf)
    {
      secureTriggerUserResponseTimeoutInSeconds = v133;
    }

    *buf = 0;
    v134 = CFPrefs_GetInt64();
    if (!*buf)
    {
      broadcastKeyRefreshTimeInSeconds = v134;
    }

    *buf = 0;
    v135 = CFPrefs_GetInt64();
    if (!*buf)
    {
      bluetoothGSNMaxValue = v135;
    }

    v136 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    allowAnonymousServerConnections = [v136 BOOLForKey:@"allowAnonymousServerConnections"];

    _overrideNSString(&vendorInfoDatabaseServerURLOverride);
    _overrideNSString(&appleConfigurationServer);
    _overrideNSString(&homeKitConfigurationPath);
    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      remoteDeviceMonitorHealthTimerTimeInterval = v137;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      remoteDeviceMonitorRetryTimerMinimumTimeInterval = v138;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      remoteDeviceMonitorRetryTimerMaximumTimeInterval = v139;
    }

    *buf = 0;
    v140 = CFPrefs_GetInt64();
    if (!*buf)
    {
      remoteDeviceMonitorRetryTimerFactor = v140;
    }

    *buf = 0;
    v141 = CFPrefs_GetInt64();
    if (!*buf)
    {
      presenceFeedRefreshInMinutes = v141;
    }

    *buf = 0;
    v142 = CFPrefs_GetInt64();
    if (!*buf)
    {
      presenceMonitorAuditInMinutes = v142;
    }

    *buf = 0;
    v143 = CFPrefs_GetInt64();
    if (!*buf)
    {
      presenceMonitorRefreshGracePeriodInMinutes = v143;
    }

    *buf = 0;
    v144 = CFPrefs_GetInt64();
    if (!*buf)
    {
      startCharacteristicsMonitorWaitPeriod = v144;
    }

    *buf = 0;
    v145 = CFPrefs_GetInt64();
    if (!*buf)
    {
      requestHomeDataSyncRetryPeriodInMinutes = v145;
    }
  }

  objc_autoreleasePoolPop(v2);
  v146 = *MEMORY[0x277D85DE8];
}

BOOL isTVOSDevice()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productPlatform] == 4;

  return v1;
}

uint64_t _overrideBoolValue(BOOL *a1)
{
  v2 = *MEMORY[0x277CD0030];
  result = CFPrefs_GetInt64();
  *a1 = result != 0;
  return result;
}

BOOL isHomePod()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productClass] == 6;

  return v1;
}

void _overrideNumberArray(void **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v2 = *MEMORY[0x277CD0030];
  CFArrayGetTypeID();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = CFPrefs_CopyTypedValue();
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = v3;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = v3;
  v10 = *a1;
  *a1 = v9;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

void _overrideNumber(id *a1)
{
  v2 = *MEMORY[0x277CD0030];
  CFNumberGetTypeID();
  v3 = CFPrefs_CopyTypedValue();
  objc_storeStrong(a1, v3);
}

void _overrideNSString(id *a1)
{
  v2 = *MEMORY[0x277CD0030];
  CFStringGetTypeID();
  v3 = CFPrefs_CopyTypedValue();
  objc_storeStrong(a1, v3);
}

BOOL isAppleTV()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productClass] == 4;

  return v1;
}

BOOL isMac()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productPlatform] == 1;

  return v1;
}

uint64_t isCharacteristicHeartBeat(void *a1, void *a2)
{
  v3 = a2;
  if ([a1 isEqualToString:@"00000239-0000-1000-8000-0026BB765291"])
  {
    v4 = [v3 isEqualToString:@"0000024A-0000-1000-8000-0026BB765291"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t isBTLECapableDevice()
{
  v0 = [MEMORY[0x277D0F910] systemInfo];
  v1 = [v0 supportsBLE];

  return v1;
}

id demoModeV2Status()
{
  v0 = MEMORY[0x277CCACA8];
  isDemoModeV2Active();
  v1 = HMFBooleanToString();
  isDemoModeV2Locked();
  v2 = HMFBooleanToString();
  isCloudKitRequiredForDemoModeV2();
  v3 = HMFBooleanToString();
  isDemoModeV2MadeForDemoBundle();
  v4 = HMFBooleanToString();
  v5 = getDemoModeV2Type();
  v6 = [v0 stringWithFormat:@"[DemoModeV2: Active: %@, Locked: %@, CK: %@, MadeForBundle: %@, Type: %@]", v1, v2, v3, v4, v5];

  return v6;
}

uint64_t isDemoModeV2Locked()
{
  v0 = CFPreferencesCopyValue(@"lockDemoModeV2", @"com.apple.homed", @"mobile", *MEMORY[0x277CBF030]);
  v1 = [v0 BOOLValue];

  return v1;
}

uint64_t isCloudKitRequiredForDemoModeV2()
{
  v0 = CFPreferencesCopyValue(@"demoModeRequiresCloudKit", @"com.apple.homed", @"mobile", *MEMORY[0x277CBF030]);
  v1 = [v0 BOOLValue];

  return v1;
}

uint64_t isDemoModeV2MadeForDemoBundle()
{
  v0 = CFPreferencesCopyValue(@"HomeUtilDemoModeMadeForDemoBundleKey", @"com.apple.homed", @"mobile", *MEMORY[0x277CBF030]);
  v1 = [v0 BOOLValue];

  return v1;
}

void __demoModeV2Types_block_invoke()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"retail";
  v3[1] = @"press";
  v3[2] = @"test";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:3];
  v1 = demoModeV2Types_demoModeV2Types;
  demoModeV2Types_demoModeV2Types = v0;

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t isRetailDemoModeV2Enabled()
{
  v0 = getDemoModeV2Type();
  v1 = [v0 isEqualToString:@"retail"];

  return v1;
}

uint64_t shouldLoadDemoModeFromBackup()
{
  if (isDemoModeV2Locked())
  {
    return 1;
  }

  v1 = CFPreferencesCopyValue(@"loadDemoModeV2Backup", @"com.apple.homed", @"mobile", *MEMORY[0x277CBF030]);
  v2 = [v1 BOOLValue];

  return v2;
}

BOOL isiPadDevice()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productClass] == 3;

  return v1;
}

BOOL isiPhoneDevice()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productClass] == 1;

  return v1;
}

uint64_t productClass()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productClass];

  return v1;
}

id deviceName()
{
  v0 = [MEMORY[0x277D0F910] systemInfo];
  v1 = [v0 name];

  return v1;
}

__CFString *getDeviceClass()
{
  if (isAppleTV())
  {
    v0 = @"kDeviceClassTypeResident";
  }

  else
  {
    v0 = @"kDeviceClassTypeTransient";
  }

  return v0;
}

BOOL isPasscodeEnabledOnThisDevice()
{
  v13 = *MEMORY[0x277D85DE8];
  if (+[HMDDeviceCapabilities supportsDeviceLock])
  {
    v0 = MKBGetDeviceLockState();
    v1 = objc_autoreleasePoolPush();
    v2 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v3;
      v11 = 2048;
      v12 = v0;
      _os_log_impl(&dword_229538000, v2, OS_LOG_TYPE_INFO, "%{public}@Device lock state (passcode): %ld", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v1);
    result = v0 != 3;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Device does not support device lock (passcode).", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

double getDiscoveryBackoffPeriod()
{
  v0 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v1 = [v0 preferenceForKey:@"DiscoveryBackoffInSeconds"];
  v2 = [v1 numberValue];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

id getBLEAccessoryCachePath()
{
  v29[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = v0;
  v21 = 0;
  if (storeDirectoryPath)
  {
    if (!bleAccessoryCachePath || ([v0 fileExistsAtPath:bleAccessoryCachePath isDirectory:&v21] & 1) == 0)
    {
      v28 = *MEMORY[0x277CCA180];
      v29[0] = &unk_283E72740;
      v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v3 = [storeDirectoryPath stringByAppendingString:@"/BLECache"];
      v4 = bleAccessoryCachePath;
      bleAccessoryCachePath = v3;

      v20 = 0;
      v5 = [v1 createDirectoryAtPath:bleAccessoryCachePath withIntermediateDirectories:1 attributes:v2 error:&v20];
      v6 = v20;
      v7 = v6;
      v21 = v5;
      if (v5)
      {
        v19 = v6;
        [v1 setAttributes:v2 ofItemAtPath:bleAccessoryCachePath error:&v19];
        v8 = v19;

        v7 = v8;
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = HMFGetLogIdentifier();
          *buf = 138543874;
          v23 = v15;
          v24 = 2112;
          v25 = bleAccessoryCachePath;
          v26 = 2112;
          v27 = v7;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not create BLE Cache directory path %@ - error %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v13);
      }
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v11;
      v24 = 2112;
      v25 = storeDirectoryPath;
      v12 = storeDirectoryPath;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Store Directory not initialized: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v16 = bleAccessoryCachePath;

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}