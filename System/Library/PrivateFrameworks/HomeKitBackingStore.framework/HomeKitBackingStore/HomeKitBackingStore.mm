uint64_t __execSQLite3(void *a1, sqlite3_stmt *a2, void *a3)
{
  v5 = a1;
  if (sqlite3_step(a2) != 101)
  {
    if (a3)
    {
      *a3 = [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Statement:a2];
    }

    sqlite3_reset(a2);
LABEL_8:
    v7 = 0;
    goto LABEL_10;
  }

  v6 = sqlite3_changes([v5 connection]);
  if (!sqlite3_reset(a2))
  {
    v7 = v6;
    goto LABEL_10;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Statement:a2];
  *a3 = v7 = 0;
LABEL_10:

  return v7;
}

id __getRebuilder(void *a1)
{
  v1 = a1;
  os_unfair_lock_lock_with_options();
  v2 = [(os_unfair_lock_s *)v1 rebuilder];
  os_unfair_lock_unlock(v1 + 2);

  return v2;
}

id __createRebuilderIfNeeded(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = a1;
  os_unfair_lock_lock_with_options();
  v2 = [(os_unfair_lock_s *)v1 cloudDatabase];
  v3 = [v2 configuration];
  v4 = [(HMBPrivateCloudZoneRebuilder *)v3 isManateeContainer];
  if (!v4)
  {
    v7 = 0;
    v8 = 0;
LABEL_6:
    v9 = v4 ^ 1;

    goto LABEL_14;
  }

  v5 = [(os_unfair_lock_s *)v1 configuration];
  v6 = [v5 shouldSkipCloudPulls];

  if (v6)
  {
    v7 = 0;
    v8 = 0;
LABEL_4:
    v9 = 1;
    goto LABEL_14;
  }

  v10 = [(os_unfair_lock_s *)v1 rebuilder];

  if (v10)
  {
    v11 = [(os_unfair_lock_s *)v1 rebuilder];
    v12 = [v11 rebuildCompleteFuture];
    v13 = [v12 isFinished];

    if (v13)
    {
      [(os_unfair_lock_s *)v1 setRebuilder:0];
      v7 = 0;
      v8 = 1;
    }

    else
    {
      v8 = 0;
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v14 = [(os_unfair_lock_s *)v1 rebuilder];

  if (!v14)
  {
    v26 = [(os_unfair_lock_s *)v1 cloudZoneID];
    v27 = [v26 scope];

    if (v27 == 2)
    {
      v3 = [[HMBPrivateCloudZoneRebuilder alloc] initWithCloudZone:v1];
      [(os_unfair_lock_s *)v1 setRebuilder:v3];
    }

    else
    {
      v28 = [(os_unfair_lock_s *)v1 cloudZoneID];
      v29 = [v28 scope];

      if (v29 != 3)
      {
        goto LABEL_4;
      }

      v3 = [[HMBSharedCloudZoneRebuilder alloc] initWithCloudZone:v1];
      [(os_unfair_lock_s *)v1 setRebuilder:v3];
    }

    goto LABEL_6;
  }

  v9 = 0;
LABEL_14:
  v15 = [(os_unfair_lock_s *)v1 rebuilder];

  os_unfair_lock_unlock(v1 + 2);
  v16 = objc_autoreleasePoolPush();
  v17 = v1;
  v18 = HMFGetOSLogHandle();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v19)
    {
      v20 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v20;
      _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Rebuilder not allowed on zone.", &v30, 0xCu);
    }
  }

  else if (v8)
  {
    if (v19)
    {
      v21 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v21;
      _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Re-Created rebuilder for zone (existed but had completed).", &v30, 0xCu);
    }
  }

  else if (v7)
  {
    if (v19)
    {
      v22 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v22;
      _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Re-using rebuilder for zone.", &v30, 0xCu);
    }
  }

  else if (v19)
  {
    v23 = HMFGetLogIdentifier();
    v30 = 138543362;
    v31 = v23;
    _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Created rebuilder for zone.", &v30, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  v24 = *MEMORY[0x277D85DE8];

  return v15;
}

void __destroyRebuilder(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  os_unfair_lock_lock_with_options();
  [(os_unfair_lock_s *)v1 setRebuilder:0];
  os_unfair_lock_unlock(v1 + 2);

  v2 = objc_autoreleasePoolPush();
  v3 = v1;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_22AD27000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Destroyed rebuilder for zone.", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22AD2D9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ____fetchNextBatch_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 72))
  {
    v4 = [*(a1 + 32) statement];
    v5 = [v4 statement];
    v6 = *(a1 + 72);
    v7 = [*(a1 + 32) currentSequence];
    v28 = 0;
    hmbBindIntSQLite3(v5, v6, [v7 longLongValue], &v28);
    v8 = v28;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 32);
  v10 = [v9 statement];
  v27 = v8;
  [v9 bindPropertiesToStatement:objc_msgSend(v10 error:{"statement"), &v27}];
  v11 = v27;

  v12 = [*(a1 + 32) statement];
  v13 = [v12 statement];
  v14 = *(a1 + 64);
  v26 = v11;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = ____fetchNextBatch_block_invoke_2;
  v23[3] = &unk_2786E1748;
  v22 = *(a1 + 32);
  v15 = v22;
  v16 = *(a1 + 48);
  v24 = v22;
  v25 = v16;
  LOBYTE(v14) = [v3 fetchSQLite3:v13 limit:v14 error:&v26 block:v23];
  v17 = v26;
  v18 = v26;

  if ((v14 & 1) == 0)
  {
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = 0;
  }

  return v17;
}

id ____fetchNextBatch_block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v12 = 0;
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 48) + 8);
  v11 = 0;
  v7 = [v5 fetchRowFromStatement:a2 skip:&v12 updatedSequence:v6 + 24 error:&v11];
  v8 = v11;
  if (v7)
  {
    if ((v12 & 1) == 0)
    {
      [*(*(*(a1 + 56) + 8) + 40) addObject:v7];
    }

    v9 = 0;
  }

  else
  {
    *a3 = 1;
    [*(a1 + 32) setCurrentSequence:0];
    v9 = v8;
  }

  return v9;
}

void sub_22AD304BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__536(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AD30654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AD3135C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AD35A7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak(&STACK[0x690]);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x578], 8);
  _Block_object_dispose(&STACK[0x5E8], 8);
  _Block_object_dispose(&STACK[0x660], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__688(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ____finishEnqueueForOutput_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 unsignedIntegerValue];
  v6 = *(a1 + 40);
  v9 = 0;
  [v4 _updateBlockWithRow:v5 options:v6 error:&v9];

  v7 = v9;

  return v7;
}

void ____finishEnqueueForOutput_block_invoke_143(id *a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        v13 = [a1[4] identifier];
        v14 = [v13 shortDescription];
        v15 = a1[5];
        *buf = 138544130;
        *&buf[4] = v12;
        *&buf[12] = 2114;
        *&buf[14] = v14;
        *&buf[22] = 2112;
        v61 = v15;
        LOWORD(v62) = 2112;
        *(&v62 + 2) = v6;
        _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Rolling back block %@ due to push failure: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v8);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v61 = __Block_byref_object_copy__688;
      *&v62 = __Block_byref_object_dispose__689;
      *(&v62 + 1) = 0;
      v16 = [v9 sql];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = ____finishEnqueueForOutput_block_invoke_144;
      v51[3] = &unk_2786E2500;
      v53 = buf;
      v52 = a1[5];
      v17 = [v16 sqlBlockWithActivity:0 block:v51];

      if (v17)
      {
        context = objc_autoreleasePoolPush();
        v18 = v9;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          v21 = [a1[4] identifier];
          v22 = [v21 shortDescription];
          *v54 = 138543874;
          v55 = v20;
          v56 = 2114;
          v57 = v22;
          v58 = 2112;
          v59 = v17;
          _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to get block for rollback: %@", v54, 0x20u);
        }
      }

      else
      {
        v38 = *(*&buf[8] + 40);
        if (v38)
        {
          __rollbackBlock(v9, v38);
          context = objc_autoreleasePoolPush();
          v39 = v9;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v40 = HMFGetLogIdentifier();
            v41 = [a1[4] identifier];
            v42 = [v41 shortDescription];
            v43 = a1[5];
            *v54 = 138543874;
            v55 = v40;
            v56 = 2114;
            v57 = v42;
            v58 = 2112;
            v59 = v43;
            _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Rollback completed successfully for block %@.", v54, 0x20u);
          }
        }

        else
        {
          context = objc_autoreleasePoolPush();
          v44 = v9;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v45 = HMFGetLogIdentifier();
            v46 = [a1[4] identifier];
            v47 = [v46 shortDescription];
            *v54 = 138543618;
            v55 = v45;
            v56 = 2114;
            v57 = v47;
            _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] No block fetched! (no block found)", v54, 0x16u);
          }
        }
      }

      objc_autoreleasePoolPop(context);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (v11)
      {
        v26 = HMFGetLogIdentifier();
        v27 = [a1[4] identifier];
        v28 = [v27 shortDescription];
        v29 = a1[5];
        *buf = 138543874;
        *&buf[4] = v26;
        *&buf[12] = 2114;
        *&buf[14] = v28;
        *&buf[22] = 2112;
        v61 = v29;
        _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Removing unused rollback block %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      v30 = [a1[5] unsignedIntegerValue];
      v50 = 0;
      v31 = [v9 removeBlockWithRow:v30 error:&v50];
      v17 = v50;
      if ((v31 & 1) == 0)
      {
        v32 = objc_autoreleasePoolPush();
        v33 = v9;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          v36 = [a1[4] identifier];
          v37 = [v36 shortDescription];
          *buf = 138543874;
          *&buf[4] = v35;
          *&buf[12] = 2114;
          *&buf[14] = v37;
          *&buf[22] = 2112;
          v61 = v17;
          _os_log_impl(&dword_22AD27000, v34, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to cleanup rollback block: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v32);
      }
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_ERROR, "%{public}@[LocalZone] unable to clean up rollback block: (lost self)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_22AD37374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ____finishEnqueueForOutput_block_invoke_144(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v11 = 0;
  v5 = [v4 _selectBlockWithRow:objc_msgSend(v3 error:{"unsignedIntegerValue"), &v11}];

  v6 = v11;
  v7 = v11;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  return v6;
}

void __rollbackBlock(void *a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x277CCAAC8];
  v6 = objc_opt_class();
  v7 = [v4 optionsData];
  v41 = 0;
  v8 = [v5 unarchivedObjectOfClass:v6 fromData:v7 error:&v41];
  v9 = v41;

  v10 = objc_autoreleasePoolPush();
  v11 = v3;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v14;
      v44 = 2112;
      v45 = v8;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Rolling back block using options: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v40 = v9;
    v15 = [v11 fetchItemsInBlock:v4 error:&v40];
    v16 = v40;

    v17 = [v11 sql];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = ____rollbackBlock_block_invoke;
    v36[3] = &unk_2786E2418;
    v18 = v11;
    v37 = v18;
    v19 = v4;
    v38 = v19;
    v20 = v15;
    v39 = v20;
    v21 = [v17 sqlTransactionWithActivity:0 block:v36];

    if (v21)
    {
      v34 = v20;
      v22 = v8;
      v23 = objc_autoreleasePoolPush();
      v24 = v18;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v26;
        v44 = 2112;
        v45 = v21;
        _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to roll back block: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v8 = v22;
      v20 = v34;
    }

    v35 = v21;
    v27 = [v18 removeBlockWithRow:objc_msgSend(v19 error:{"blockRow"), &v35}];
    v9 = v35;

    if ((v27 & 1) == 0)
    {
      v28 = objc_autoreleasePoolPush();
      v29 = v18;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v31;
        v44 = 2112;
        v45 = v9;
        _os_log_impl(&dword_22AD27000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove rollback block: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v32;
      v44 = 2112;
      v45 = v9;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine options for rollback block: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v33 = *MEMORY[0x277D85DE8];
}

id ____rollbackBlock_block_invoke(id *a1, void *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v48 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = a1[4];
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [a1[5] blockRow];
    *buf = 138543618;
    v57 = v6;
    v58 = 2048;
    v59 = v7;
    _os_log_impl(&dword_22AD27000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Clearing push row for block: %lu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [a1[5] blockRow];
  v55 = 0;
  [v48 _updateRecordsClearPushWithPushBlockRow:v8 error:&v55];
  v9 = v55;
  if (!v9)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = a1[6];
    v45 = [obj countByEnumeratingWithState:&v51 objects:v66 count:16];
    if (v45)
    {
      v44 = *v52;
      v40 = a1;
      while (2)
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v52 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v51 + 1) + 8 * i);
          v12 = objc_alloc(MEMORY[0x277CCAD78]);
          v13 = [v11 externalData];
          v14 = [v12 initWithUUIDBytes:{objc_msgSend(v13, "bytes")}];

          v15 = [a1[4] zoneRow];
          v50 = 0;
          v16 = [v48 _selectRecordWithZoneRow:v15 modelID:v14 returning:2 error:&v50];
          v17 = v50;
          v9 = v17;
          if (v16)
          {
            goto LABEL_10;
          }

          if (v17)
          {
            v16 = 0;
LABEL_23:

            goto LABEL_24;
          }

          if (![v11 modelEncoding])
          {
LABEL_10:
            v46 = v9;
            v47 = v14;
            v18 = objc_autoreleasePoolPush();
            v19 = a1[4];
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = HMFGetLogIdentifier();
              v42 = [v16 recordRow];
              v22 = [v47 UUIDString];
              v43 = v16;
              v23 = v18;
              v24 = [v11 modelEncoding];
              v25 = [v11 modelData];
              v26 = [v25 hmbDescription];
              *buf = 138544386;
              v57 = v21;
              v58 = 2048;
              v59 = v42;
              v60 = 2112;
              v61 = v22;
              v62 = 2048;
              v63 = v24;
              v18 = v23;
              v16 = v43;
              v64 = 2112;
              v65 = v26;
              _os_log_impl(&dword_22AD27000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Reverting record row %lu / %@ to %lu / %@", buf, 0x34u);

              a1 = v40;
            }

            objc_autoreleasePoolPop(v18);
            v27 = [v16 recordRow];
            v28 = [v11 modelEncoding];
            v29 = [v11 modelData];
            v30 = [v16 modelSchema];
            v49 = v46;
            [v48 _updateRecordWithRow:v27 modelEncoding:v28 modelData:v29 modelSchema:v30 error:&v49];
            v9 = v49;

            v14 = v47;
            if (v9)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v31 = objc_autoreleasePoolPush();
            v32 = a1[4];
            v33 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v34 = HMFGetLogIdentifier();
              v35 = [a1[4] zoneRow];
              v36 = [v14 UUIDString];
              *buf = 138543874;
              v57 = v34;
              v58 = 2048;
              v59 = v35;
              a1 = v40;
              v60 = 2112;
              v61 = v36;
              _os_log_impl(&dword_22AD27000, v33, OS_LOG_TYPE_ERROR, "%{public}@Rollback is having issues. Expected to find a record row %lu / %@, but we didn't", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v31);
          }
        }

        v45 = [obj countByEnumeratingWithState:&v51 objects:v66 count:16];
        if (v45)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_24:
  }

  v37 = v9;

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

void __pushRecords(void *a1, void *a2, void *a3, void *a4, char a5, unsigned int a6, void *a7, void *a8)
{
  v113 = *MEMORY[0x277D85DE8];
  v72 = a1;
  v13 = a2;
  v64 = a3;
  v63 = a4;
  v14 = a7;
  v60 = a8;
  v74 = v14;
  if (!v14)
  {
    v15 = objc_alloc(MEMORY[0x277D0F770]);
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"__pushRecords"];
    v74 = [v15 initWithName:v16 options:1];
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = v13;
  v17 = [obj countByEnumeratingWithState:&v101 objects:v112 count:16];
  if (v17)
  {
    v69 = *v102;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v102 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v101 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        v21 = v72;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = HMFGetLogIdentifier();
          v24 = [v74 identifier];
          v25 = [v24 shortDescription];
          v26 = [v19 hmbDescription];
          *buf = 138543874;
          v107 = v23;
          v108 = 2114;
          v109 = v25;
          v110 = 2112;
          v111 = v26;
          _os_log_impl(&dword_22AD27000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Pushing update for record: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v20);
        v27 = [v19 hmbDescription];
        [v74 markWithFormat:@"about to update: %@", v27, v60];
      }

      v17 = [obj countByEnumeratingWithState:&v101 objects:v112 count:16];
    }

    while (v17);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v65 = v64;
  v28 = [v65 countByEnumeratingWithState:&v97 objects:v105 count:16];
  if (v28)
  {
    v70 = *v98;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v98 != v70)
        {
          objc_enumerationMutation(v65);
        }

        v30 = *(*(&v97 + 1) + 8 * j);
        v31 = objc_autoreleasePoolPush();
        v32 = v72;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = HMFGetLogIdentifier();
          v35 = [v74 identifier];
          v36 = [v35 shortDescription];
          v37 = [v30 hmbDescription];
          *buf = 138543874;
          v107 = v34;
          v108 = 2114;
          v109 = v36;
          v110 = 2112;
          v111 = v37;
          _os_log_impl(&dword_22AD27000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Pushing removal for record: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v31);
        v38 = [v30 hmbDescription];
        [v74 markWithFormat:@"about to remove: %@", v38];
      }

      v28 = [v65 countByEnumeratingWithState:&v97 objects:v105 count:16];
    }

    while (v28);
  }

  v39 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(obj, "count")}];
  v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v65, "count")}];
  v41 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:obj recordIDsToDelete:v65];
  [v41 setConfiguration:v63];
  [v41 setSavePolicy:0];
  [v41 setMarkAsParticipantNeedsNewInvitationToken:a6];
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = ____pushRecords_block_invoke;
  v93[3] = &unk_2786E17C0;
  v42 = v72;
  v94 = v42;
  v43 = v74;
  v95 = v43;
  v44 = v39;
  v96 = v44;
  [v41 setPerRecordSaveBlock:v93];
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = ____pushRecords_block_invoke_15;
  v89[3] = &unk_2786E05C8;
  v45 = v42;
  v90 = v45;
  v46 = v43;
  v91 = v46;
  v47 = v40;
  v92 = v47;
  [v41 setPerRecordDeleteBlock:v89];
  objc_initWeak(&location, v41);
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = ____pushRecords_block_invoke_17;
  v76[3] = &unk_2786E0618;
  v48 = v45;
  v77 = v48;
  v75 = v46;
  v78 = v75;
  v86 = a5;
  v49 = obj;
  v79 = v49;
  v66 = v65;
  v80 = v66;
  obja = v63;
  v81 = obja;
  v87 = a6;
  v73 = v60;
  v82 = v73;
  objc_copyWeak(&v85, &location);
  v71 = v44;
  v83 = v71;
  v50 = v47;
  v84 = v50;
  [v41 setModifyRecordsCompletionBlock:v76];
  v51 = objc_autoreleasePoolPush();
  v52 = v48;
  v53 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = HMFGetLogIdentifier();
    v55 = [v75 identifier];
    v56 = [v55 shortDescription];
    v57 = [v41 operationID];
    *buf = 138543874;
    v107 = v54;
    v108 = 2114;
    v109 = v56;
    v110 = 2114;
    v111 = v57;
    _os_log_impl(&dword_22AD27000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Starting CKModifyRecordsOperation with operationID: %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v51);
  v58 = [v52 database];
  [v58 addOperation:v41];

  objc_destroyWeak(&v85);
  objc_destroyWeak(&location);

  v59 = *MEMORY[0x277D85DE8];
}

void sub_22AD3E99C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak(&a34);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____pushRecords_block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = a1[4];
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      [a1[5] identifier];
      v15 = v22 = v7;
      v16 = [v15 shortDescription];
      v17 = [v8 hmbDescription];
      *buf = 138543874;
      v24 = v14;
      v25 = 2114;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully saved record: %@", buf, 0x20u);

      v7 = v22;
    }

    objc_autoreleasePoolPop(v10);
    [a1[6] addObject:v8];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [a1[5] identifier];
      v20 = [v19 shortDescription];
      *buf = 138544130;
      v24 = v18;
      v25 = 2114;
      v26 = v20;
      v27 = 2112;
      v28 = v7;
      v29 = 2114;
      v30 = v9;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to save record with ID %@: %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void ____pushRecords_block_invoke_15(id *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] identifier];
      v13 = [v12 shortDescription];
      v14 = [v5 hmbDescription];
      v20 = 138544130;
      v21 = v11;
      v22 = 2114;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      v26 = 2114;
      v27 = v6;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to delete record with ID %@: %{public}@", &v20, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [a1[5] identifier];
      v17 = [v16 shortDescription];
      v18 = [v5 hmbDescription];
      v20 = 138543874;
      v21 = v15;
      v22 = 2114;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully deleted record with ID: %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [a1[6] addObject:v5];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void ____pushRecords_block_invoke_17(uint64_t a1, void *a2, void *a3, void *a4)
{
  v114 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v13)
    {
      v35 = HMFGetLogIdentifier();
      v36 = [*(a1 + 40) identifier];
      v37 = [v36 shortDescription];
      *buf = 138543618;
      *&buf[4] = v35;
      *&buf[12] = 2114;
      *&buf[14] = v37;
      _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKModifyRecordsOperation succeeded", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 40) markWithReason:@"success"];
    goto LABEL_18;
  }

  if (v13)
  {
    v14 = HMFGetLogIdentifier();
    v15 = [*(a1 + 40) identifier];
    v16 = [v15 shortDescription];
    *buf = 138543874;
    *&buf[4] = v14;
    *&buf[12] = 2114;
    *&buf[14] = v16;
    *&buf[22] = 2114;
    v104 = v9;
    _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKModifyRecordsOperation failed: %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  if ([v9 hmbIsCKLimitExceededError] && (*(a1 + 104) & 1) == 0)
  {
    v88 = v8;
    v94 = v7;
    v43 = *(a1 + 48);
    v44 = *(a1 + 56);
    v45 = *(a1 + 105);
    v46 = *(a1 + 40);
    v48 = *(a1 + 64);
    v47 = *(a1 + 72);
    v49 = *(a1 + 32);
    v50 = v43;
    v51 = v44;
    v90 = v48;
    v87 = v46;
    v52 = v47;
    v53 = v51;
    v54 = v52;
    v92 = v50;
    if ([v50 count] <= 1 && objc_msgSend(v51, "count") <= 1)
    {
      v55 = objc_autoreleasePoolPush();
      v56 = v49;
      v57 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v59 = v58 = v54;
        *v108 = 138543874;
        v109 = v59;
        v110 = 2112;
        v111 = v92;
        v112 = 2112;
        v113 = v53;
        _os_log_impl(&dword_22AD27000, v57, OS_LOG_TYPE_ERROR, "%{public}@Cannot bifurcate, not enough items: (updates: %@, removes: %@)", v108, 0x20u);

        v54 = v58;
      }

      objc_autoreleasePoolPop(v55);
      v7 = v94;
      v8 = v88;
      goto LABEL_12;
    }

    v83 = v45;
    v85 = v54;
    v60 = [v50 count] >> 1;
    v61 = [v50 subarrayWithRange:{0, v60}];
    v89 = [v92 subarrayWithRange:{v60, objc_msgSend(v92, "count") - v60}];
    v62 = [v51 count] >> 1;
    v63 = [v51 subarrayWithRange:{0, v62}];
    v64 = [v51 subarrayWithRange:{v62, objc_msgSend(v51, "count") - v62}];
    v65 = objc_autoreleasePoolPush();
    v66 = v49;
    v67 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      v68 = HMFGetLogIdentifier();
      v69 = [v92 count];
      v70 = [v53 count];
      *v108 = 138543874;
      v109 = v68;
      v110 = 2048;
      v111 = v69;
      v112 = 2048;
      v113 = v70;
      _os_log_impl(&dword_22AD27000, v67, OS_LOG_TYPE_INFO, "%{public}@Record limit exceeded (updates: %lu, removes: %lu), bifurcating operation", v108, 0x20u);
    }

    objc_autoreleasePoolPop(v65);
    v71 = objc_alloc_init(MEMORY[0x277D2C900]);
    v72 = objc_alloc_init(MEMORY[0x277D2C900]);
    v82 = v63;
    __pushRecords(v66, v61, v63, v90, 0, v83, v87, v71);
    v81 = v64;
    __pushRecords(v66, v89, v64, v90, 0, v83, v87, v72);
    v73 = MEMORY[0x277D2C900];
    v107[0] = v71;
    v107[1] = v72;
    v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:2];
    v75 = [v66 operationScheduler];
    v76 = [v73 combineAllFutures:v74 ignoringErrors:0 scheduler:v75];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ____pushRecordsBifurcated_block_invoke;
    v104 = &unk_2786E0640;
    v105 = v66;
    v106 = v85;
    v77 = v85;
    v86 = v66;
    v78 = [v76 addSuccessBlock:buf];
    [v77 errorOnlyCompletionHandlerAdapter];
    v79 = v84 = v53;
    v80 = [v78 addFailureBlock:v79];

    v7 = v94;
    v8 = v88;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 96));
    if (!WeakRetained)
    {
      _HMFPreconditionFailure();
    }

    v18 = WeakRetained;
    v19 = *(a1 + 32);
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = ____pushRecords_block_invoke_21;
    v95[3] = &unk_2786E05F0;
    v96 = v19;
    v97 = *(a1 + 48);
    v98 = *(a1 + 56);
    v99 = *(a1 + 64);
    v102 = *(a1 + 104);
    v100 = *(a1 + 40);
    v101 = *(a1 + 72);
    v20 = [v96 retryCloudKitOperation:v18 afterError:v9 retryBlock:v95];
    v21 = v20;
    if (v20)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v25 = v91 = v22;
        [*(a1 + 40) identifier];
        v26 = v93 = v7;
        [v26 shortDescription];
        v28 = v27 = v8;
        *buf = 138543618;
        *&buf[4] = v25;
        *&buf[12] = 2114;
        *&buf[14] = v28;
        _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] CKModifyRecordsOperation will be retried", buf, 0x16u);

        v8 = v27;
        v7 = v93;

        v22 = v91;
      }

      objc_autoreleasePoolPop(v22);
      [*(a1 + 40) markWithReason:@"deferred"];
    }

    if ((v21 & 1) == 0)
    {
LABEL_12:
      v29 = objc_autoreleasePoolPush();
      v30 = *(a1 + 32);
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        v33 = [*(a1 + 40) identifier];
        v34 = [v33 shortDescription];
        *buf = 138543874;
        *&buf[4] = v32;
        *&buf[12] = 2114;
        *&buf[14] = v34;
        *&buf[22] = 2114;
        v104 = v9;
        _os_log_impl(&dword_22AD27000, v31, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] CKModifyRecordsOperation failed and cannot be retried: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v29);
      [*(a1 + 40) markWithFormat:@"failed with error: %@", v9];
LABEL_18:
      v38 = [HMBCloudZoneRecordPushResult alloc];
      v39 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 80)];
      v40 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 88)];
      v41 = [(HMBCloudZoneRecordPushResult *)v38 initWithUpdatedRecords:v39 deletedRecordIDs:v40 error:v9];

      [*(a1 + 72) finishWithResult:v41];
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

void ____pushRecordsBifurcated_block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v3 lastObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v6)
  {
    v14 = v9 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v3 firstObject];
      v17 = [v3 lastObject];
      v23 = 138543874;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_ERROR, "%{public}@Both bifurcated pushes failed: %@, %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v18 = *(a1 + 40);
    v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [v18 finishWithError:v19];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v21;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_INFO, "%{public}@Bifurcated push succeeded, merging results", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v19 = [v6 pushResultByMergingWithPushResult:v9];
    [*(a1 + 40) finishWithResult:v19];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void ____buildTableForClass_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ BLOB", a2];
  [v2 addObject:v3];
}

void ____updateIndexesForClass_block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 hasPrefix:@"q"] && (objc_msgSend(v3, "isEqualToString:", *(a1 + 32)) & 1) == 0)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"DROP INDEX %@", v3];
    v5 = [*(a1 + 40) runSQLite3:{objc_msgSend(v4, "UTF8String")}];
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 48);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_22AD27000, v8, OS_LOG_TYPE_INFO, "%{public}@Removing unused index: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    if (v5)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 48);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v16 = v13;
        v17 = 2112;
        v18 = v5;
        _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to drop index: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }

    [*(a1 + 56) removeObjectForKey:v3];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void ____updateIndexesForClass_block_invoke_193(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
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

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v5 indexName];
    v8 = [v6 objectForKey:v7];

    if (!v8)
    {
      v9 = MEMORY[0x277CBEB98];
      v10 = [v5 indexedColumns];
      v11 = [v9 setWithArray:v10];
      v12 = [v11 count];
      v13 = [v5 indexedColumns];
      v14 = [v13 count];

      if (v12 == v14)
      {
        v15 = MEMORY[0x277CCACA8];
        v16 = [v5 indexName];
        v17 = [*(a1 + 40) modelType];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"queryable_%@", v17];
        v19 = [v5 indexedColumns];
        v20 = [v19 componentsJoinedByString:{@", "}];
        v21 = [v15 stringWithFormat:@"CREATE INDEX IF NOT EXISTS %@ ON %@ (%@)", v16, v18, v20];

        v22 = objc_autoreleasePoolPush();
        v23 = *(a1 + 40);
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543618;
          v45 = v25;
          v46 = 2112;
          v47 = v21;
          _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_INFO, "%{public}@Creating index: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
        v26 = [*(a1 + 48) runSQLite3:{objc_msgSend(v21, "UTF8String")}];
        if (v26)
        {
          v27 = objc_autoreleasePoolPush();
          v28 = *(a1 + 40);
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = HMFGetLogIdentifier();
            *buf = 138543874;
            v45 = v30;
            v46 = 2112;
            v47 = v21;
            v48 = 2112;
            v49 = v26;
            _os_log_impl(&dword_22AD27000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unable to create index %@: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v27);
        }

        else
        {
          *(*(*(a1 + 56) + 8) + 24) = 1;
          v38 = *(a1 + 32);
          v39 = [HMBLocalSQLContextQueryIndex alloc];
          v40 = [v5 indexedColumns];
          v41 = [(HMBLocalSQLContextQueryIndex *)v39 initWithColumns:v40];
          v42 = [v5 indexName];
          [v38 setObject:v41 forKey:v42];
        }
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = *(a1 + 40);
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          v35 = [v5 indexName];
          v36 = [v5 indexedColumns];
          v37 = [v36 componentsJoinedByString:{@", "}];
          *buf = 138543874;
          v45 = v34;
          v46 = 2112;
          v47 = v35;
          v48 = 2112;
          v49 = v37;
          _os_log_impl(&dword_22AD27000, v33, OS_LOG_TYPE_ERROR, "%{public}@Column list for query %@ has duplicate values: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v31);
      }
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

void ____prepareStatementsForClass_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"?%lu", a3 + 3];
  [v3 addObject:v4];
}

void ____prepareStatementsForClass_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 prepareOnTable:*(a1 + 32)];
  if (v3)
  {
    v5 = v3;
    v4 = [*(a1 + 32) userQueries];
    [v4 addObject:v5];

    v3 = v5;
  }
}

id ____updateIndexesForClass_block_invoke(uint64_t a1, void *a2)
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
  v5 = [v4 indexName];

  return v5;
}

void sub_22AD46B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1743(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AD4828C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1816(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __setProperty(void *a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [objc_opt_class() hmbProperties];
  v9 = [v8 objectForKey:v6];

  if (!v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v5;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v11 hmbCanonicalType];
      *buf = 138544130;
      v27 = v13;
      v28 = 2112;
      v29 = v6;
      v30 = 2112;
      v31 = v14;
      v32 = 2112;
      v33 = objc_opt_class();
      v15 = v33;
      v16 = "%{public}@Unable to set property %@ of %@ from type %@ (no such property exists)";
      goto LABEL_10;
    }

LABEL_12:

    objc_autoreleasePoolPop(v10);
    goto LABEL_13;
  }

  if (([v5 hmbPropertyIsAvailable:v6] & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v5;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v11 hmbCanonicalType];
      *buf = 138544130;
      v27 = v13;
      v28 = 2112;
      v29 = v6;
      v30 = 2112;
      v31 = v14;
      v32 = 2112;
      v33 = objc_opt_class();
      v15 = v33;
      v16 = "%{public}@Unable to set property %@ of %@ from type %@ (property is unavailable)";
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if ([v5 hmbPropertyIsReadOnly:v6])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v5;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v11 hmbCanonicalType];
      *buf = 138544130;
      v27 = v13;
      v28 = 2112;
      v29 = v6;
      v30 = 2112;
      v31 = v14;
      v32 = 2112;
      v33 = objc_opt_class();
      v15 = v33;
      v16 = "%{public}@Unable to set property %@ of %@ from type %@ (property is read-only)";
LABEL_10:
      _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_ERROR, v16, buf, 0x2Au);

LABEL_11:
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (v7)
  {
    [v9 classObj];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = v5;
        v12 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_12;
        }

        v13 = HMFGetLogIdentifier();
        v21 = [v11 hmbCanonicalType];
        v22 = objc_opt_class();
        v24 = v22;
        NSStringFromClass([v9 classObj]);
        v23 = v25 = v10;
        *buf = 138544386;
        v27 = v13;
        v28 = 2112;
        v29 = v6;
        v30 = 2112;
        v31 = v21;
        v32 = 2112;
        v33 = v22;
        v34 = 2112;
        v35 = v23;
        _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to set property %@ of %@ from type %@ (does not match the expected type %@)", buf, 0x34u);

        v10 = v25;
        goto LABEL_11;
      }
    }
  }

  v18 = [v5 hmbReserved];

  if (!v18)
  {
    v19 = [MEMORY[0x277CBEB38] dictionary];
    [v5 setHmbReserved:v19];
  }

  v20 = [v5 hmbReserved];
  [v20 setObject:v7 forKeyedSubscript:v6];

LABEL_13:
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __isEqualDeepCompare(void *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 count];
      if (v5 == [v4 count])
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v6 = v3;
        v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v30;
          while (2)
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v30 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v29 + 1) + 8 * i);
              v12 = [v6 objectForKey:v11];
              v13 = [v4 objectForKey:v11];
              if (!v13 || !__isEqualDeepCompare(v12, v13))
              {

                goto LABEL_29;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
            v14 = 1;
            if (v8)
            {
              continue;
            }

            goto LABEL_30;
          }
        }

LABEL_25:
        v14 = 1;
LABEL_30:

        goto LABEL_31;
      }

LABEL_27:
      v14 = 0;
      goto LABEL_31;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v3 count];
      if (v15 == [v4 count])
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v6 = v3;
        v16 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          v19 = *v26;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v26 != v19)
              {
                objc_enumerationMutation(v6);
              }

              v21 = *(*(&v25 + 1) + 8 * j);
              v22 = [v4 objectAtIndex:{v18, v25}];
              LODWORD(v21) = __isEqualDeepCompare(v21, v22);

              if (!v21)
              {
LABEL_29:
                v14 = 0;
                goto LABEL_30;
              }

              ++v18;
            }

            v17 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_25;
      }

      goto LABEL_27;
    }
  }

  v14 = HMFEqualObjects();
LABEL_31:

  v23 = *MEMORY[0x277D85DE8];
  return v14;
}

void __calculateUnavailableReadOnly(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [objc_opt_class() hmbProperties];
  v6 = [v3 hmbReserved];
  v7 = [v6 hmf_dictionaryForKey:@"_U"];

  v8 = [v3 hmbReserved];
  v9 = [v8 hmf_dictionaryForKey:@"_R"];

  if (v4)
  {
    v10 = [v4 dataVersion];
    v11 = [v3 hmbDataVersion];
    v12 = [v10 isGreaterThan:v11];

    if (v12)
    {
      v13 = [v4 unavailableVersionsForModelClass:objc_opt_class()];

      v14 = [v4 readOnlyVersionsForModelClass:objc_opt_class()];

      v9 = v14;
      v7 = v13;
    }
  }

  v15 = [v3 hmbIsModelReadOnly];
  v16 = [v3 hmbIsModelGenericRepresentation];
  v17 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v5, "count")}];
  v18 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v5, "count")}];
  v19 = [v3 hmbContainerDataVersion];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = ____calculateUnavailableReadOnly_block_invoke;
  v28 = &unk_2786E09E8;
  v29 = v7;
  v30 = v9;
  v34 = v16;
  v31 = v19;
  v32 = v17;
  v35 = v15;
  v33 = v18;
  v20 = v18;
  v21 = v17;
  v22 = v19;
  v23 = v9;
  v24 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:&v25];
  [v3 setHmbUnavailableProperties:{v21, v25, v26, v27, v28}];
  [v3 setHmbReadOnlyProperties:v20];
}

void ____calculateUnavailableReadOnly_block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) objectForKey:v7];
  v4 = [*(a1 + 40) objectForKey:v7];
  if ((*(a1 + 72) & 1) != 0 || (v5 = *(a1 + 48)) != 0 && v3 && [v5 isGreaterThanOrEqualTo:v3])
  {
    [*(a1 + 56) addObject:v7];
  }

  if ((*(a1 + 73) & 1) != 0 || (v6 = *(a1 + 48)) != 0 && v4 && [v6 isLessThanOrEqualTo:v4])
  {
    [*(a1 + 64) addObject:v7];
  }
}

void sub_22AD4C0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AD4CDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1993(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __modelReferenceFields(void *a1)
{
  v1 = a1;
  if (__modelReferenceFields_onceToken != -1)
  {
    dispatch_once(&__modelReferenceFields_onceToken, &__block_literal_global_427);
  }

  v2 = objc_opt_class();
  os_unfair_lock_lock_with_options();
  v3 = [__modelReferenceFields_referenceFields objectForKey:v2];
  if (!v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [MEMORY[0x277CBEB58] set];
      v5 = [v2 hmbProperties];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = ____modelReferenceFields_block_invoke_2;
      v9[3] = &unk_2786E0E00;
      v6 = v4;
      v10 = v6;
      [v5 enumerateKeysAndObjectsUsingBlock:v9];
      v3 = v6;
      [__modelReferenceFields_referenceFields setObject:v3 forKey:v2];
    }

    else
    {
      v3 = [MEMORY[0x277CBEB98] set];
      [__modelReferenceFields_referenceFields setObject:v3 forKey:v2];
    }
  }

  v7 = v3;

  os_unfair_lock_unlock(&__modelReferenceFields_lock);

  return v7;
}

void ____modelReferenceFields_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([objc_msgSend(a3 "classObj")])
  {
    [*(a1 + 32) addObject:v5];
  }
}

uint64_t ____modelReferenceFields_block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v1 = __modelReferenceFields_referenceFields;
  __modelReferenceFields_referenceFields = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id keyFromSelector(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  if ([v1 hasPrefix:@"set"] && objc_msgSend(v1, "length") != 3)
  {
    v2 = [v1 substringWithRange:{3, 1}];
    v3 = [v2 lowercaseString];
    v4 = [v2 isEqualToString:v3];

    if (v4)
    {
      v5 = v1;

      goto LABEL_7;
    }

    v6 = [v2 lowercaseString];
    v7 = [v1 substringWithRange:{4, objc_msgSend(v1, "length") - 5}];
    v8 = [v6 stringByAppendingString:v7];

    v1 = v8;
  }

  v5 = v1;
LABEL_7:

  return v5;
}

void setPropertyIMP(void *a1, const char *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = keyFromSelector(a2);
  if (![v10 hmbPropertyIsReadOnly:v11])
  {
    v17 = [objc_opt_class() hmbProperties];
    v18 = [v17 objectForKey:v11];
    v19 = [v18 classObj];

    if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = MEMORY[0x277CBEAD8];
      v26 = *MEMORY[0x277CBE658];
      v27 = MEMORY[0x277CCACA8];
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = v29;
      if (v19)
      {
        v34 = NSStringFromClass(v19);
        v35 = [v27 stringWithFormat:@"Property for parameter %@ was supplied as %@, but was expected to be %@.", v11, v30, v34];
        v32 = [v25 exceptionWithName:v26 reason:v35 userInfo:0];
        v36 = v32;
      }

      else
      {
        v31 = [v27 stringWithFormat:@"Property for parameter %@ was supplied as %@, but was expected to be <UNKNOWN>.", v11, v29];
        v32 = [v25 exceptionWithName:v26 reason:v31 userInfo:0];
        v33 = v32;
      }

      objc_exception_throw(v32);
    }

    v20 = [v10 hmbReserved];

    if (v20)
    {
      if (v6)
      {
LABEL_12:
        v21 = [v10 hmbReserved];
        v22 = [v11 hmf_stringWithSmallestEncoding];
        [v21 setValue:v6 forKey:v22];

        goto LABEL_13;
      }
    }

    else
    {
      v24 = [MEMORY[0x277CBEB38] dictionary];
      [v10 setHmbReserved:v24];

      if (v6)
      {
        goto LABEL_12;
      }
    }

    v6 = [MEMORY[0x277CBEB68] null];
    goto LABEL_12;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = v10;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v13 hmbContainerDataVersion];
    *buf = 138544130;
    v38 = v15;
    v39 = 2112;
    v40 = v11;
    v41 = 2112;
    v42 = v13;
    v43 = 2112;
    v44 = v16;
    _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_ERROR, "%{public}@Attempting to write property %@ on %@, unwritable in homed data version %@.", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
LABEL_13:

  objc_autoreleasePoolPop(v7);
  v23 = *MEMORY[0x277D85DE8];
}

id propertyIMP(void *a1, const char *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1;
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

  v6 = objc_autoreleasePoolPush();
  v7 = NSStringFromSelector(a2);
  if ([v5 hmbPropertyIsAvailable:v7])
  {
    v8 = [objc_opt_class() hmbProperties];
    v9 = [v8 objectForKey:v7];

    if (v9)
    {
      v10 = [v5 hmbReserved];
      v11 = [v10 objectForKey:v7];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v11)
        {

          objc_autoreleasePoolPop(v6);
          goto LABEL_17;
        }

        v21 = [v9 defaultValue];
        goto LABEL_16;
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v5;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v24 = 138543874;
        v25 = v20;
        v26 = 2112;
        v27 = v7;
        v28 = 2112;
        v29 = v18;
        _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_ERROR, "%{public}@Attempting to read property %@ from %@, does not appear defined.", &v24, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      v11 = 0;
    }

    v21 = 0;
LABEL_16:

    objc_autoreleasePoolPop(v6);
    v11 = v21;
    goto LABEL_17;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = v5;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v13 hmbContainerDataVersion];
    v24 = 138544130;
    v25 = v15;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v16;
    _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_ERROR, "%{public}@Attempting to read property %@ on %@, unavailable in homed data version %@ (returning nil).", &v24, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  objc_autoreleasePoolPop(v6);
  v11 = 0;
LABEL_17:

  v22 = *MEMORY[0x277D85DE8];

  return v11;
}

void ____modelExternalStorageFields_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 externalRecordField];

  if (v5)
  {
    [*(a1 + 32) addObject:v6];
  }
}

uint64_t ____modelExternalStorageFields_block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v1 = __modelExternalStorageFields_externalStorageFields;
  __modelExternalStorageFields_externalStorageFields = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __fetchChanges(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v120[1] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v73 = a2;
  v68 = a3;
  v10 = a4;
  v69 = a5;
  v71 = v10;
  if (!v10)
  {
    v11 = objc_alloc(MEMORY[0x277D0F770]);
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"__fetchChanges"];
    v71 = [v11 initWithName:v12 options:1];
  }

  v72 = [v9 localZone];
  if (v72)
  {
    if (v73)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    LODWORD(v62) = v13;
    v106[0] = 0;
    v106[1] = v106;
    v106[2] = 0x3032000000;
    v106[3] = __Block_byref_object_copy__2243;
    v106[4] = __Block_byref_object_dispose__2244;
    v107 = 0;
    v104[0] = 0;
    v104[1] = v104;
    v104[2] = 0x3032000000;
    v104[3] = __Block_byref_object_copy__2243;
    v104[4] = __Block_byref_object_dispose__2244;
    v105 = 0;
    v67 = [MEMORY[0x277CBEB18] array];
    v70 = objc_alloc_init(MEMORY[0x277CBC3A0]);
    v14 = [v9 defaultDesiredKeys];
    [v70 setDesiredKeys:v14];

    [v70 setPreviousServerChangeToken:v73];
    v103 = 0;
    v15 = [v72 createMirrorInputWithError:&v103];
    v65 = v103;
    v66 = v15;
    if (v15)
    {
      v16 = objc_alloc(MEMORY[0x277CBC3B8]);
      v17 = [v9 cloudZoneID];
      v18 = [v17 zoneID];
      v120[0] = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v120 count:1];
      v20 = [v9 cloudZoneID];
      v21 = [v20 zoneID];
      v118 = v21;
      v119 = v70;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
      v23 = [v16 initWithRecordZoneIDs:v19 configurationsByRecordZoneID:v22];

      v24 = [v9 cloudDatabase];
      v25 = [v24 operationConfigurationWithProcessingOptions:v68];
      [v23 setConfiguration:v25];

      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = ____fetchChanges_block_invoke;
      v96[3] = &unk_2786E0A90;
      v26 = v9;
      v97 = v26;
      v27 = v71;
      v98 = v27;
      v99 = v70;
      v102 = v63;
      v28 = v67;
      v100 = v28;
      v29 = v66;
      v101 = v29;
      [v23 setRecordWasChangedBlock:v96];
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = ____fetchChanges_block_invoke_16;
      v91[3] = &unk_2786E0AB8;
      v95 = v63;
      v30 = v27;
      v92 = v30;
      v31 = v26;
      v93 = v31;
      v32 = v29;
      v94 = v32;
      [v23 setRecordWithIDWasDeletedBlock:v91];
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = ____fetchChanges_block_invoke_18;
      v86[3] = &unk_2786E0AE0;
      v89 = v104;
      v90 = v106;
      v33 = v31;
      v87 = v33;
      v34 = v30;
      v88 = v34;
      [v23 setRecordZoneFetchCompletionBlock:v86];
      objc_initWeak(&location, v23);
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = ____fetchChanges_block_invoke_20;
      v74[3] = &unk_2786E0B30;
      v82 = v104;
      v35 = v33;
      v75 = v35;
      v36 = v34;
      v76 = v36;
      v77 = v32;
      v37 = v68;
      v78 = v37;
      v79 = v69;
      objc_copyWeak(&v84, &location);
      v38 = v73;
      v80 = v38;
      v81 = v28;
      v83 = v106;
      [v23 setFetchRecordZoneChangesCompletionBlock:v74];
      v39 = objc_autoreleasePoolPush();
      v40 = v35;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v64 = v39;
        v42 = HMFGetLogIdentifier();
        v43 = [v36 identifier];
        v44 = [v43 shortDescription];
        v45 = [v23 operationID];
        *buf = 138544386;
        v109 = v42;
        v110 = 2114;
        v111 = v44;
        v112 = 2112;
        v113 = v38;
        v114 = 2112;
        v115 = v37;
        v116 = 2114;
        v117 = v45;
        _os_log_impl(&dword_22AD27000, v41, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Starting CKFetchRecordZoneChangesOperation with token: %@ options: %@ operationID: %{public}@", buf, 0x34u);

        v39 = v64;
      }

      objc_autoreleasePoolPop(v39);
      v46 = [v40 database];
      [v46 addOperation:v23];

      objc_destroyWeak(&v84);
      objc_destroyWeak(&location);

      v47 = v66;
    }

    else
    {
      v55 = objc_autoreleasePoolPush();
      v56 = v9;
      v57 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v58 = HMFGetLogIdentifier();
        v59 = [v71 identifier];
        v60 = [v59 shortDescription];
        *buf = 138543874;
        v109 = v58;
        v110 = 2114;
        v111 = v60;
        v112 = 2114;
        v113 = v65;
        _os_log_impl(&dword_22AD27000, v57, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to create a new mirror input: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v55);
      v47 = 0;
      [v71 markWithReason:@"failed mirror input creation"];
      [v69 finishWithError:v65];
    }

    _Block_object_dispose(v104, 8);
    _Block_object_dispose(v106, 8);
  }

  else
  {
    v48 = objc_autoreleasePoolPush();
    v49 = v9;
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = HMFGetLogIdentifier();
      v52 = [v71 identifier];
      v53 = [v52 shortDescription];
      *buf = 138543618;
      v109 = v51;
      v110 = 2114;
      v111 = v53;
      _os_log_impl(&dword_22AD27000, v50, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Lost localZone in __fetchChanges", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v48);
    v54 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    [v69 finishWithError:v54];
  }

  v61 = *MEMORY[0x277D85DE8];
}

void sub_22AD513C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose((v61 - 256), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2243(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ____fetchChanges_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v94 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = *(a1 + 32);
    v11 = MEMORY[0x277CBEB98];
    v12 = [*(a1 + 48) desiredKeys];
    v13 = [v11 setWithArray:v12];
    v79 = 0;
    v14 = [v10 decodeModelFromRecord:v8 externalRecordFields:v13 source:2 error:&v79];
    v15 = v79;

    v16 = objc_autoreleasePoolPush();
    if (!v14)
    {
      v33 = *(a1 + 32);
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v35 = v70 = v16;
        v36 = [*(a1 + 40) identifier];
        v37 = [v36 shortDescription];
        v38 = [v8 hmbDescription];
        *buf = 138544130;
        v81 = v35;
        v82 = 2114;
        v83 = v37;
        v84 = 2112;
        v85 = v38;
        v86 = 2114;
        v87 = v15;
        _os_log_impl(&dword_22AD27000, v34, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to decode received record %@: %{public}@", buf, 0x2Au);

        v14 = 0;
        v16 = v70;
      }

      objc_autoreleasePoolPop(v16);
      goto LABEL_27;
    }

    v17 = HMFGetOSLogHandle();
    v18 = *(a1 + 72);
    v73 = v9;
    v74 = v14;
    if (os_log_type_enabled(v17, v18))
    {
      v64 = HMFGetLogIdentifier();
      v67 = [*(a1 + 40) identifier];
      [v67 shortDescription];
      v19 = v66 = v15;
      v65 = [v8 recordID];
      v20 = [v65 hmbDescription];
      v21 = [v8 recordChangeTag];
      v63 = [v8 modifiedByDevice];
      v22 = [v8 modificationDate];
      [v22 timeIntervalSince1970];
      v78[0] = v23;
      [v8 modificationDate];
      v24 = v69 = v16;
      [v24 timeIntervalSince1970];
      v78[1] = (v25 * 1000000000.0) % 0x3B9ACA00uLL;
      *buf = 138544898;
      v81 = v64;
      v82 = 2114;
      v83 = v19;
      v84 = 2114;
      v85 = v20;
      v86 = 2114;
      v87 = v21;
      v88 = 2112;
      v89 = v63;
      v90 = 1040;
      v91 = 16;
      v92 = 2096;
      v93 = v78;
      _os_log_impl(&dword_22AD27000, v17, v18, "%{public}@[%{public}@] Received and decoded record: %{public}@/%{public}@/%@/%{timespec}.*P", buf, 0x44u);

      v16 = v69;
      v14 = v74;

      v9 = v73;
      v15 = v66;
    }

    objc_autoreleasePoolPop(v16);
    if ([*(a1 + 32) isInternalModel:v14])
    {
      [*(a1 + 56) addObject:v14];
LABEL_27:

      goto LABEL_28;
    }

    v77 = v15;
    v39 = [v8 externalID:&v77];
    v40 = v77;

    if (!v39)
    {
      v52 = objc_autoreleasePoolPush();
      v53 = *(a1 + 32);
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v55 = HMFGetLogIdentifier();
        v56 = [*(a1 + 40) identifier];
        [v56 shortDescription];
        v58 = v57 = v7;
        *buf = 138544130;
        v81 = v55;
        v82 = 2114;
        v83 = v58;
        v84 = 2112;
        v85 = v8;
        v86 = 2114;
        v87 = v40;
        _os_log_impl(&dword_22AD27000, v54, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to encode externalID from record %@: %{public}@", buf, 0x2Au);

        v7 = v57;
        v9 = v73;
      }

      objc_autoreleasePoolPop(v52);
      goto LABEL_26;
    }

    v76 = v40;
    v41 = [v8 externalData:&v76];
    v42 = v76;

    if (v41)
    {
      v43 = *(a1 + 64);
      v75 = v42;
      v44 = [v43 stageAdditionForModel:v74 externalID:v39 externalData:v41 error:&v75];
      v40 = v75;

      if (v44)
      {
LABEL_25:
        v9 = v73;

LABEL_26:
        v15 = v40;
        v14 = v74;
        goto LABEL_27;
      }

      v68 = v7;
      v71 = objc_autoreleasePoolPush();
      v45 = *(a1 + 32);
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v48 = v47 = v45;
        v49 = [*(a1 + 40) identifier];
        v50 = [v49 shortDescription];
        *buf = 138543874;
        v81 = v48;
        v82 = 2114;
        v83 = v50;
        v84 = 2114;
        v85 = v40;
        _os_log_impl(&dword_22AD27000, v46, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to add model to update to block: %{public}@", buf, 0x20u);

        v45 = v47;
      }

      v42 = v40;
      v51 = v71;
    }

    else
    {
      v68 = v7;
      v51 = objc_autoreleasePoolPush();
      v45 = *(a1 + 32);
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v59 = v72 = v45;
        v60 = [*(a1 + 40) identifier];
        v61 = [v60 shortDescription];
        *buf = 138544130;
        v81 = v59;
        v82 = 2114;
        v83 = v61;
        v84 = 2112;
        v85 = v8;
        v86 = 2114;
        v87 = v42;
        _os_log_impl(&dword_22AD27000, v46, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to encode externalData from record %@: %{public}@", buf, 0x2Au);

        v45 = v72;
      }
    }

    objc_autoreleasePoolPop(v51);
    v40 = v42;
    v7 = v68;
    goto LABEL_25;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = *(a1 + 32);
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = HMFGetLogIdentifier();
    v30 = [*(a1 + 40) identifier];
    v31 = [v30 shortDescription];
    v32 = [v7 hmbDescription];
    *buf = 138544130;
    v81 = v29;
    v82 = 2114;
    v83 = v31;
    v84 = 2112;
    v85 = v32;
    v86 = 2114;
    v87 = v9;
    _os_log_impl(&dword_22AD27000, v28, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch changes for record with ID %@: %{public}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v26);
LABEL_28:

  v62 = *MEMORY[0x277D85DE8];
}

void ____fetchChanges_block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = HMFGetOSLogHandle();
  v9 = *(a1 + 56);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 32) identifier];
    v12 = [v11 shortDescription];
    v13 = [v5 recordName];
    *buf = 138544130;
    v32 = v10;
    v33 = 2114;
    v34 = v12;
    v35 = 2114;
    v36 = v6;
    v37 = 2114;
    v38 = v13;
    _os_log_impl(&dword_22AD27000, v8, v9, "%{public}@[%{public}@] Received record deletion for %{public}@/%{public}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v30 = 0;
  v14 = [v5 externalID:&v30];
  v15 = v30;
  if (!v14)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 40);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [*(a1 + 32) identifier];
      v27 = [v26 shortDescription];
      *buf = 138544130;
      v32 = v25;
      v33 = 2114;
      v34 = v27;
      v35 = 2114;
      v36 = v5;
      v37 = 2114;
      v38 = v15;
      _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to encode externalID from recordID %{public}@: %{public}@", buf, 0x2Au);
    }

    goto LABEL_10;
  }

  v16 = *(a1 + 48);
  v29 = v15;
  v17 = [v16 stageRemovalForModelWithExternalID:v14 error:&v29];
  v18 = v29;

  if ((v17 & 1) == 0)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 40);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [*(a1 + 32) identifier];
      v24 = [v23 shortDescription];
      *buf = 138543874;
      v32 = v22;
      v33 = 2114;
      v34 = v24;
      v35 = 2114;
      v36 = v18;
      _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to add model to remove to block: %{public}@", buf, 0x20u);
    }

    v15 = v18;
LABEL_10:

    objc_autoreleasePoolPop(v19);
    v18 = v15;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void ____fetchChanges_block_invoke_18(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v42 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a6);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v14 = *(*(*(a1 + 48) + 8) + 40);
  v15 = objc_autoreleasePoolPush();
  v16 = *(a1 + 32);
  v17 = HMFGetOSLogHandle();
  v18 = v17;
  if (v14)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      [*(a1 + 40) identifier];
      v32 = v13;
      v20 = v12;
      v21 = v11;
      v23 = v22 = v10;
      v24 = [v23 shortDescription];
      v25 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543874;
      v35 = v19;
      v36 = 2114;
      v37 = v24;
      v38 = 2114;
      v39 = v25;
      _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Failed to fetch newest records: %{public}@", buf, 0x20u);

      v10 = v22;
      v11 = v21;
      v12 = v20;
      v13 = v32;
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    v31 = [*(a1 + 40) identifier];
    v33 = v10;
    v27 = [v31 shortDescription];
    v28 = HMFBooleanToString();
    v29 = [*(*(*(a1 + 56) + 8) + 40) hmbDescription];
    *buf = 138544130;
    v35 = v26;
    v36 = 2114;
    v37 = v27;
    v38 = 2112;
    v39 = v28;
    v40 = 2112;
    v41 = v29;
    _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched newest records with moreComing: %@ and serverChangeToken: %@", buf, 0x2Au);

    v10 = v33;
  }

  objc_autoreleasePoolPop(v15);
  v30 = *MEMORY[0x277D85DE8];
}

void ____fetchChanges_block_invoke_20(uint64_t a1, void *a2)
{
  v87 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(*(a1 + 88) + 8) + 40);
  v70 = v3;
  if (!v4)
  {
    v4 = v3;
  }

  v5 = v4;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) identifier];
      v12 = [v11 shortDescription];
      *buf = 138543874;
      v82 = v10;
      v83 = 2114;
      v84 = v12;
      v85 = 2114;
      v86 = v5;
      _os_log_impl(&dword_22AD27000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKFetchRecordZoneChangesOperation failed: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 48) abort];
    if ([v5 hmbIsCKChangeTokenExpiredError])
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [*(a1 + 40) identifier];
        v18 = [v17 shortDescription];
        *buf = 138543874;
        v82 = v16;
        v83 = 2114;
        v84 = v18;
        v85 = 2114;
        v86 = v5;
        _os_log_impl(&dword_22AD27000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Performing cloud pull again with nil change token due to expired change token error: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      __fetchChanges(*(a1 + 32), 0, *(a1 + 56), *(a1 + 40), *(a1 + 64));
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((a1 + 104));
      if (!WeakRetained)
      {
        _HMFPreconditionFailure();
      }

      v46 = WeakRetained;
      v47 = *(a1 + 32);
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = ____fetchChanges_block_invoke_24;
      v75[3] = &unk_2786E2300;
      v76 = v47;
      v77 = *(a1 + 72);
      v78 = *(a1 + 56);
      v79 = *(a1 + 40);
      v80 = *(a1 + 64);
      if ([v76 retryCloudKitOperation:v46 afterError:v5 retryBlock:v75])
      {
        v48 = objc_autoreleasePoolPush();
        v49 = *(a1 + 32);
        v50 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v51 = HMFGetLogIdentifier();
          v52 = [*(a1 + 40) identifier];
          v53 = [v52 shortDescription];
          *buf = 138543618;
          v82 = v51;
          v83 = 2114;
          v84 = v53;
          _os_log_impl(&dword_22AD27000, v50, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] CKFetchRecordZoneChangesOperation will be retried", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v48);
        [*(a1 + 40) markWithReason:@"deferred"];
      }

      else
      {
        if ([v5 hmbIsCKZoneDeletedError])
        {
          v54 = objc_autoreleasePoolPush();
          v55 = *(a1 + 32);
          v56 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v57 = HMFGetLogIdentifier();
            v58 = [*(a1 + 40) identifier];
            v59 = [v58 shortDescription];
            *buf = 138543874;
            v82 = v57;
            v83 = 2114;
            v84 = v59;
            v85 = 2114;
            v86 = v5;
            _os_log_impl(&dword_22AD27000, v56, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Received cloud zone deletion error: %{public}@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v54);
          [*(a1 + 32) handleDeletion];
        }

        v60 = objc_autoreleasePoolPush();
        v61 = *(a1 + 32);
        v62 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v63 = HMFGetLogIdentifier();
          v64 = [*(a1 + 40) identifier];
          v65 = [v64 shortDescription];
          *buf = 138543874;
          v82 = v63;
          v83 = 2114;
          v84 = v65;
          v85 = 2114;
          v86 = v5;
          _os_log_impl(&dword_22AD27000, v62, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch record zone changes: %{public}@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v60);
        [*(a1 + 64) finishWithError:v5];
      }
    }
  }

  else
  {
    if (v9)
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 40) identifier];
      v21 = [v20 shortDescription];
      *buf = 138543618;
      v82 = v19;
      v83 = 2114;
      v84 = v21;
      _os_log_impl(&dword_22AD27000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Committing mirror input block", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v22 = *(a1 + 48);
    v23 = *(a1 + 56);
    v74 = 0;
    v24 = [v22 commitWithOptions:v23 error:&v74];
    v25 = v74;
    v26 = objc_autoreleasePoolPush();
    v27 = *(a1 + 32);
    v28 = HMFGetOSLogHandle();
    v29 = v28;
    if (v24)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = HMFGetLogIdentifier();
        v31 = [*(a1 + 40) identifier];
        v32 = [v31 shortDescription];
        v33 = [*(a1 + 80) count];
        *buf = 138543874;
        v82 = v30;
        v83 = 2114;
        v84 = v32;
        v85 = 2048;
        v86 = v33;
        _os_log_impl(&dword_22AD27000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Successfully committed block. Handling %lu internal model updates", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      if (*(*(*(a1 + 96) + 8) + 40))
      {
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = ____fetchChanges_block_invoke_32;
        v71[3] = &unk_2786E0B08;
        v34 = *(a1 + 32);
        v35 = *(a1 + 96);
        v72 = v34;
        v73 = v35;
        v36 = [v24 addSuccessBlock:v71];
      }

      if ([*(a1 + 80) count])
      {
        [*(a1 + 32) handleUpdatedInternalModels:*(a1 + 80)];
      }

      v37 = objc_autoreleasePoolPush();
      v38 = *(a1 + 32);
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = HMFGetLogIdentifier();
        v41 = [*(a1 + 40) identifier];
        v42 = [v41 shortDescription];
        *buf = 138543618;
        v82 = v40;
        v83 = 2114;
        v84 = v42;
        _os_log_impl(&dword_22AD27000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKFetchRecordZoneChangesOperation succeeded", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v37);
      v43 = *(a1 + 64);
      v44 = [[HMBCloudZonePullResult alloc] initWithProcessingFuture:v24];
      [v43 finishWithResult:v44];

      [*(a1 + 40) markWithReason:@"success"];
    }

    else
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v66 = HMFGetLogIdentifier();
        v67 = [*(a1 + 40) identifier];
        v68 = [v67 shortDescription];
        *buf = 138543874;
        v82 = v66;
        v83 = 2114;
        v84 = v68;
        v85 = 2114;
        v86 = v25;
        _os_log_impl(&dword_22AD27000, v29, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to commit block: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      [*(a1 + 40) markWithReason:@"failed (commit)."];
      [*(a1 + 64) finishWithError:v25];
    }
  }

  v69 = *MEMORY[0x277D85DE8];
}

void ____fetchChanges_block_invoke_32(uint64_t a1)
{
  v5 = [*(a1 + 32) cloudDatabase];
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = [v2 cloudZoneID];
  [v5 updateServerChangeToken:v3 forZoneWithID:v4];
}

void __performCodeOperation(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v62 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  if (!v17)
  {
    v19 = objc_alloc(MEMORY[0x277D0F770]);
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"__performCodeOperation"];
    v17 = [v19 initWithName:v20 options:1];
  }

  v21 = [objc_alloc(MEMORY[0x277CBC1F8]) initWithServiceName:v14 functionName:v15 responseClass:a5];
  [v21 setRequest:v16];
  v22 = [v13 operationConfigurationWithProcessingOptions:0];
  [v21 setConfiguration:v22];

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = ____performCodeOperation_block_invoke;
  v49[3] = &unk_2786E0B80;
  v23 = v13;
  v50 = v23;
  v24 = v17;
  v51 = v24;
  [v21 setRequestCompletedBlock:v49];
  objc_initWeak(&location, v21);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = ____performCodeOperation_block_invoke_7;
  v40[3] = &unk_2786E0BD0;
  v25 = v23;
  v41 = v25;
  v26 = v24;
  v42 = v26;
  objc_copyWeak(v47, &location);
  v39 = v14;
  v43 = v39;
  v27 = v15;
  v44 = v27;
  v37 = v16;
  v45 = v37;
  v47[1] = a5;
  v38 = v18;
  v46 = v38;
  [v21 setCodeOperationCompletionBlock:v40];
  v28 = objc_autoreleasePoolPush();
  v29 = v25;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    v32 = [v26 identifier];
    v33 = [v32 shortDescription];
    v34 = [v21 operationID];
    *buf = 138544386;
    v53 = v31;
    v54 = 2114;
    v55 = v33;
    v56 = 2112;
    v57 = v27;
    v58 = 2112;
    v59 = v39;
    v60 = 2114;
    v61 = v34;
    _os_log_impl(&dword_22AD27000, v30, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Starting %@ CKCodeOperation for service: %@ operationID: %{public}@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v28);
  v35 = [v29 privateDatabase];
  [v35 addOperation:v21];

  objc_destroyWeak(v47);
  objc_destroyWeak(&location);

  v36 = *MEMORY[0x277D85DE8];
}

void sub_22AD53FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____performCodeOperation_block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) identifier];
    v9 = [v8 shortDescription];
    v10 = [v3 requestUUID];
    v12 = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] CKCodeOperation finished with request UUID: %{public}@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *MEMORY[0x277D85DE8];
}

void ____performCodeOperation_block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      *buf = 138543874;
      v38 = v11;
      v39 = 2114;
      v40 = v13;
      v41 = 2114;
      v42 = v6;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKCodeOperation failed: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    if (!WeakRetained)
    {
      _HMFPreconditionFailure();
    }

    v15 = WeakRetained;
    v16 = *(a1 + 32);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = ____performCodeOperation_block_invoke_9;
    v29[3] = &unk_2786E0BA8;
    v30 = v16;
    v31 = *(a1 + 48);
    v32 = *(a1 + 56);
    v17 = *(a1 + 64);
    v18 = *(a1 + 88);
    v33 = v17;
    v36 = v18;
    v34 = *(a1 + 40);
    v35 = *(a1 + 72);
    if ([v30 retryCloudKitOperation:v15 afterError:v6 retryBlock:v29])
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [*(a1 + 40) identifier];
        v24 = [v23 shortDescription];
        *buf = 138543618;
        v38 = v22;
        v39 = 2114;
        v40 = v24;
        _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] CKCodeOperation will be retried", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
    }

    else
    {
      [*(a1 + 72) finishWithError:v6];
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [*(a1 + 40) identifier];
      v27 = [v26 shortDescription];
      *buf = 138543618;
      v38 = v25;
      v39 = 2114;
      v40 = v27;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] CKCodeOperation succeeded", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 72) finishWithResult:v5];
  }

  v28 = *MEMORY[0x277D85DE8];
}

id __transitionToState(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  buf[3] = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a3;
  v13 = [v11 cloudZone];
  v14 = [v13 localZone];
  v15 = [v14 localDatabase];
  v16 = [v15 queue];

  if (v16)
  {
    buf[0] = &a9;
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v12 arguments:&a9];
    objc_initWeak(&location, v11);
    v18 = objc_alloc_init(MEMORY[0x277D2C918]);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = ____transitionToState_block_invoke;
    v30[3] = &unk_2786E0C48;
    objc_copyWeak(v33, &location);
    v19 = v18;
    v31 = v19;
    v33[1] = a2;
    v20 = v17;
    v32 = v20;
    [v16 addOperationWithBlock:v30];
    v21 = [v19 future];

    objc_destroyWeak(v33);
    objc_destroyWeak(&location);
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v11;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      LODWORD(buf[0]) = 138543362;
      *(buf + 4) = v25;
      _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to get operation queue to change state transition", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v26 = MEMORY[0x277D2C900];
    v27 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    v21 = [v26 futureWithError:v27];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v21;
}

void sub_22AD54BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____transitionToState_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    __updateState(WeakRetained, *(a1 + 56), *(a1 + 40), *(a1 + 32));
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_22AD27000, v5, OS_LOG_TYPE_ERROR, "%{public}@Lost self for cloud zone rebuild", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    [v7 finishWithError:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __updateState(void *a1, uint64_t a2, void *a3, void *a4)
{
  v127 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v116 = a3;
  v115 = a4;
  v8 = [v7 rebuilderStatus];
  context = [v8 rebuildState];

  v9 = objc_autoreleasePoolPush();
  v10 = v7;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if ((a2 - 1) >= 2)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [HMBCloudZoneRebuilderStatus rebuilderStateString:context];
      v27 = [HMBCloudZoneRebuilderStatus rebuilderStateString:a2];
      v28 = [(os_unfair_lock_s *)v10 rebuildCompleteFuture];
      [v28 isFinished];
      v29 = HMFBooleanToString();
      *buf = 138544130;
      *&buf[4] = v25;
      *&buf[12] = 2112;
      *&buf[14] = v26;
      *&buf[22] = 2112;
      v125 = v27;
      *v126 = 2112;
      *&v126[2] = v29;
      _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Requested state transition from %@ to %@ (finished: %@).", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    if (a2 == 7 && !context)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = v10;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v33;
        _os_log_impl(&dword_22AD27000, v32, OS_LOG_TYPE_INFO, "%{public}@Initial state transition to complete finishes waitForRebuildCompletion early.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
      v34 = [(os_unfair_lock_s *)v31 rebuildCompleteFuture];
      [v34 finishWithNoResult];

      v35 = 1;
      goto LABEL_23;
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [HMBCloudZoneRebuilderStatus rebuilderStateString:context];
      v15 = [HMBCloudZoneRebuilderStatus rebuilderStateString:a2];
      v16 = [(os_unfair_lock_s *)v10 rebuildCompleteFuture];
      [v16 isFinished];
      v17 = HMFBooleanToString();
      *buf = 138544130;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      *&buf[22] = 2112;
      v125 = v15;
      *v126 = 2112;
      *&v126[2] = v17;
      _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_ERROR, "%{public}@Requested state transition from %@ to %@ (finished: %@).", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
  }

  if ((a2 - 1) < 6)
  {
    os_unfair_lock_lock_with_options();
    v18 = [(os_unfair_lock_s *)v10 rebuildCompleteFuture];
    v19 = [v18 isFinished];

    if (v19)
    {
      v20 = objc_alloc_init(MEMORY[0x277D2C900]);
      [(os_unfair_lock_s *)v10 setRebuildCompleteFuture:v20];

      os_unfair_lock_unlock(v10 + 2);
      v21 = objc_autoreleasePoolPush();
      v22 = v10;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v24;
        _os_log_impl(&dword_22AD27000, v23, OS_LOG_TYPE_ERROR, "%{public}@Expected future to be in-progress but it's NOT!", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
    }

    else
    {
      os_unfair_lock_unlock(v10 + 2);
    }

    goto LABEL_19;
  }

  if (a2 == 7)
  {
LABEL_19:
    v35 = 0;
    goto LABEL_24;
  }

  v36 = objc_autoreleasePoolPush();
  v37 = v10;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = HMFGetLogIdentifier();
    v40 = [HMBCloudZoneRebuilderStatus rebuilderStateString:a2];
    *buf = 138543618;
    *&buf[4] = v39;
    *&buf[12] = 2112;
    *&buf[14] = v40;
    _os_log_impl(&dword_22AD27000, v38, OS_LOG_TYPE_ERROR, "%{public}@Attempting to transition into invalid state %@ (treating as Complete)", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v36);
  v35 = 0;
LABEL_23:
  a2 = 7;
LABEL_24:
  v41 = [[HMBCloudZoneRebuilderStatus alloc] initWithState:a2 message:v116];
  [(os_unfair_lock_s *)v10 setRebuilderStatus:v41];

  v42 = [(os_unfair_lock_s *)v10 cloudZone];
  v43 = [v42 cloudDatabase];
  v44 = [(os_unfair_lock_s *)v10 rebuilderStatus];
  v45 = [v42 cloudZoneID];
  [v43 updateRebuildStatus:v44 forZoneWithID:v45];

  if (context == a2)
  {
    v46 = 1;
  }

  else
  {
    v46 = v35;
  }

  if ((v46 & 1) == 0)
  {
    v47 = [v42 delegate];
    v48 = objc_autoreleasePoolPush();
    v49 = v10;
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = HMFGetLogIdentifier();
      v52 = [(os_unfair_lock_s *)v49 rebuilderStatus];
      *buf = 138543874;
      *&buf[4] = v51;
      *&buf[12] = 2112;
      *&buf[14] = v47;
      *&buf[22] = 2112;
      v125 = v52;
      _os_log_impl(&dword_22AD27000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@Notifying delegate %@ of updated rebuild status: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v48);
    if (objc_opt_respondsToSelector())
    {
      v53 = [(os_unfair_lock_s *)v49 rebuilderStatus];
      [v47 cloudZone:v42 didChangeRebuildStatus:v53];
    }

    else
    {
      v54 = objc_autoreleasePoolPush();
      v55 = v49;
      v56 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v57 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v57;
        _os_log_impl(&dword_22AD27000, v56, OS_LOG_TYPE_INFO, "%{public}@Delegate does not respond to selector.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v54);
    }
  }

  if (a2 <= 4)
  {
    if (a2 != 2)
    {
      if (a2 == 4)
      {
        v59 = v10;
        v60 = __fetchSentinelModel(v59);
        objc_initWeak(&location, v59);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = ____checkLockAcquire_block_invoke;
        v125 = &unk_2786E0C70;
        objc_copyWeak(v126, &location);
        v61 = [v60 addSuccessBlock:buf];
        v121[0] = MEMORY[0x277D85DD0];
        v121[1] = 3221225472;
        v121[2] = ____checkLockAcquire_block_invoke_2;
        v121[3] = &unk_2786E0CC0;
        objc_copyWeak(&v122, &location);
        v62 = [v60 addFailureBlock:v121];
        objc_destroyWeak(&v122);
        objc_destroyWeak(v126);
        objc_destroyWeak(&location);
      }

      goto LABEL_67;
    }

    v79 = v10;
    v114 = arc4random_uniform(0x3938700u);
    v80 = __transitionToState(v79, 3, @"Delaying rebuild for %lu usec");
    v81 = dispatch_time(0, 1000 * v114);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ____holdoffDelay_block_invoke;
    v125 = &unk_2786E0F48;
    *v126 = v79;
    v82 = v79;
    dispatch_after(v81, MEMORY[0x277D85CD0], buf);

    [v115 finishWithNoResult];
  }

  else
  {
    if (a2 == 5)
    {
      v63 = v10;
      v64 = objc_autoreleasePoolPush();
      v65 = v63;
      v66 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v67;
        *&buf[12] = 2048;
        *&buf[14] = 0x4082C00000000000;
        _os_log_impl(&dword_22AD27000, v66, OS_LOG_TYPE_DEFAULT, "%{public}@Waiting %.2f seconds for an expected cloud push.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v64);
      os_unfair_lock_lock_with_options();
      v68 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:600.0];
      [(os_unfair_lock_s *)v65 setUploadMonitorWatchdogTimer:v68];

      os_unfair_lock_unlock(v65 + 2);
      v69 = [(os_unfair_lock_s *)v65 uploadMonitorWatchdogTimer];
      [v69 setDelegate:v65];

      v70 = [(os_unfair_lock_s *)v65 uploadMonitorWatchdogTimer];
      [v70 resume];

      goto LABEL_67;
    }

    if (a2 == 6)
    {
      v71 = v10;
      v72 = [(os_unfair_lock_s *)v71 cloudZone];
      v73 = [v72 localZone];
      v74 = [v72 modelContainer];
      v75 = [v73 localDatabase];
      v76 = [v75 queue];

      if (v72 && v73 && v74 && v76)
      {
        v77 = [v73 queryAllRowRecordsReturning:2];
        v78 = [[HMBCloudZoneEncodingContext alloc] initWithModelContainer:v74];
        __pushChunk(v71, v72, v73, v74, v76, v78, v77);
      }

      else
      {
        contexta = objc_autoreleasePoolPush();
        v83 = v71;
        v84 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          v85 = HMFGetLogIdentifier();
          v86 = @"<NON-NULL>";
          if (!v76)
          {
            v86 = @"operationQueue";
          }

          if (!v74)
          {
            v86 = @"modelContainer";
          }

          if (!v73)
          {
            v86 = @"localZone";
          }

          if (!v72)
          {
            v86 = @"cloudZone";
          }

          *buf = 138543618;
          *&buf[4] = v85;
          *&buf[12] = 2112;
          *&buf[14] = v86;
          v87 = v85;
          _os_log_impl(&dword_22AD27000, v84, OS_LOG_TYPE_ERROR, "%{public}@Lost %@ for cloud zone rebuild", buf, 0x16u);
        }

        objc_autoreleasePoolPop(contexta);
      }

      goto LABEL_67;
    }

    if (a2 != 7)
    {
LABEL_67:
      [v115 finishWithNoResult];
      goto LABEL_68;
    }

    [(os_unfair_lock_s *)v10 setLastRebuildUUID:0];
    [(os_unfair_lock_s *)v10 setPreviousSentinelRebuildRecord:0];
    if (!context || context == 7)
    {
LABEL_42:
      v58 = [(os_unfair_lock_s *)v10 rebuildCompleteFuture];
      [v58 finishWithNoResult];

      goto LABEL_67;
    }

    contextb = [v42 localZone];
    v89 = [v42 cloudDatabase];
    v90 = v89;
    if (v42)
    {
      v91 = contextb == 0;
    }

    else
    {
      v91 = 1;
    }

    v93 = v91 || v89 == 0;
    v94 = objc_autoreleasePoolPush();
    v95 = v10;
    v96 = HMFGetOSLogHandle();
    v97 = v96;
    if (v93)
    {
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        v98 = HMFGetLogIdentifier();
        v99 = v98;
        v100 = @"<NON-NULL>";
        if (!v90)
        {
          v100 = @"cloudDatabase";
        }

        if (!contextb)
        {
          v100 = @"localZone";
        }

        if (!v42)
        {
          v100 = @"cloudZone";
        }

        *buf = 138543618;
        *&buf[4] = v98;
        *&buf[12] = 2112;
        *&buf[14] = v100;
        _os_log_impl(&dword_22AD27000, v97, OS_LOG_TYPE_ERROR, "%{public}@Lost %@ while completing rebuild.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v94);
      __failedToComplete(v95, v115);
    }

    else
    {
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        v101 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v101;
        _os_log_impl(&dword_22AD27000, v97, OS_LOG_TYPE_DEFAULT, "%{public}@Removing all records and resetting serverChangeToken.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v94);
      v120 = 0;
      v102 = [contextb destroyWithError:&v120];
      v103 = v120;
      if (v102)
      {
        v104 = [v42 cloudZoneID];
        [v90 updateServerChangeToken:0 forZoneWithID:v104];

        v105 = [HMBProcessingOptions optionsWithLabel:@"Rebuild Complete Fetch."];
        v106 = [v42 performCloudPullWithOptions:v105];
        v107 = [v90 delegate];
        if (objc_opt_respondsToSelector())
        {
          v108 = [v42 cloudZoneID];
          [v107 cloudDatabase:v90 didChangeManateeKeysForZoneWithID:v108];
        }

        goto LABEL_42;
      }

      v109 = objc_autoreleasePoolPush();
      v110 = v95;
      v111 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        v112 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v112;
        *&buf[12] = 2112;
        *&buf[14] = v103;
        _os_log_impl(&dword_22AD27000, v111, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove all records from local zone: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v109);
      __failedToComplete(v110, v115);
    }
  }

LABEL_68:

  v88 = *MEMORY[0x277D85DE8];
}

void sub_22AD55CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __fetchSentinelModel(void *a1)
{
  v1 = a1;
  v2 = [v1 cloudZone];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBC5D0]);
    v4 = +[HMBCloudZoneRebuilderModel sentinelUUID];
    v5 = [v4 UUIDString];
    v6 = [v2 cloudZoneID];
    v7 = [v6 zoneID];
    v8 = [v3 initWithRecordName:v5 zoneID:v7];

    v9 = [v2 fetchRecordWithRecordID:v8 canRetry:0];
    objc_initWeak(&location, v1);
    v10 = MEMORY[0x277D2C900];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ____fetchSentinelModel_block_invoke;
    v17[3] = &unk_2786E1830;
    v11 = v9;
    v18 = v11;
    objc_copyWeak(&v19, &location);
    v12 = [v2 operationScheduler];
    v13 = [v10 futureWithBlock:v17 scheduler:v12];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = MEMORY[0x277D2C900];
    v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    v13 = [v14 futureWithError:v15];
  }

  return v13;
}

void sub_22AD55F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____checkLockAcquire_block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 hasCompleted];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v7 = __transitionToState(WeakRetained, 7, @"Rebuild found complete at start of check lock acquire.");
    }

    else
    {
      v11 = [v3 uniqueToken];
      v12 = [WeakRetained lastRebuildUUID];
      v13 = [v11 isEqual:v12];

      if (v13)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = WeakRetained;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543362;
          v30 = v17;
          _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Sentinel record has not mutated.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
        v18 = [v15 cloudZone];
        v19 = [v18 localZone];
        v20 = [v19 localDatabase];
        v21 = [v20 queue];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = ____checkLockAcquire_block_invoke_174;
        v27[3] = &unk_2786E0F48;
        v28 = v15;
        [v21 addOperationWithBlock:v27];
      }

      else
      {
        v22 = [WeakRetained lastRebuildUUID];
        v26 = [v3 uniqueToken];
        v23 = __transitionToState(WeakRetained, 5, @"Continue monitoring of upload (token change %@ -> %@)");

        v24 = [v3 uniqueToken];
        [WeakRetained setLastRebuildUUID:v24];
      }
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v10;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_ERROR, "%{public}@Lost self for cloud zone rebuild", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void ____checkLockAcquire_block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained cloudZone];
  val = [v5 cloudDatabase];
  if (WeakRetained && v5 && val)
  {
    if ([v3 isHMFError] && objc_msgSend(v3, "code") == 2)
    {
      v6 = [v5 localZone];
      v7 = [v6 localDatabase];
      v8 = [v7 queue];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = ____checkLockAcquire_block_invoke_181;
      v25[3] = &unk_2786E0F48;
      v26 = WeakRetained;
      [v8 addOperationWithBlock:v25];
    }

    else if ([v3 hmbIsCloudKitError])
    {
      if ([v3 code] == 26 || objc_msgSend(v3, "code") == 28)
      {
        v15 = __transitionToState(WeakRetained, 7, @"Zone appears removed by the user.");
        objc_initWeak(buf, val);
        v16 = [v5 startUp];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = ____checkLockAcquire_block_invoke_2_188;
        v22[3] = &unk_2786E0C98;
        objc_copyWeak(&v24, buf);
        v23 = WeakRetained;
        v17 = [v16 addSuccessBlock:v22];

        objc_destroyWeak(&v24);
        objc_destroyWeak(buf);
      }

      else if ([v3 code] != 112)
      {
        v20 = __transitionToState(WeakRetained, 2, @"Failed to fetch rebuild model with non-zone related failure: %@");
      }
    }

    else
    {
      v18 = __transitionToState(WeakRetained, 2, @"Unable to fetch rebuild model: %@");
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = WeakRetained;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = v12;
      v14 = @"<NON-NULL>";
      if (!val)
      {
        v14 = @"cloudDatabase";
      }

      if (!v5)
      {
        v14 = @"cloudZone";
      }

      if (!WeakRetained)
      {
        v14 = @"self";
      }

      *buf = 138543618;
      v28 = v12;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_ERROR, "%{public}@Lost %@ for cloud zone rebuild", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_22AD5661C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __pushChunk(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v104 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v79 = a2;
  v78 = a3;
  v80 = a4;
  v74 = a5;
  v76 = a6;
  v14 = a7;
  v75 = [MEMORY[0x277CBEB38] dictionary];
  v77 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
  v15 = 0;
  v16 = 0;
  v73 = 0;
  do
  {
    v17 = v16;
    while (2)
    {
      v18 = v15;
      do
      {
        v15 = [v14 nextObject];

        if (!v15)
        {
          v57 = 0;
          v16 = v17;
          goto LABEL_34;
        }

        v18 = v15;
      }

      while (![v15 modelEncoding]);
      v19 = [v15 modelData];
      v20 = [v15 modelEncoding];
      v95 = v17;
      v21 = [v80 modelFromData:v19 encoding:v20 storageLocation:2 error:&v95];
      v22 = v95;

      if (!v21)
      {
        v37 = objc_autoreleasePoolPush();
        v38 = v13;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = HMFGetLogIdentifier();
          v41 = [v15 recordRow];
          *buf = 138543874;
          v99 = v40;
          v100 = 2048;
          v101 = v41;
          v102 = 2112;
          v103 = v22;
          _os_log_impl(&dword_22AD27000, v39, OS_LOG_TYPE_ERROR, "%{public}@unable to decode model from row %lu: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v37);
        v42 = [v15 modelID];
        v97 = v42;
        v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v97 count:1];
        v17 = [v78 remove:v43];

        if (v17)
        {
          v44 = objc_autoreleasePoolPush();
          v45 = v38;
          v46 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = HMFGetLogIdentifier();
            *buf = 138543618;
            v99 = v47;
            v100 = 2112;
            v101 = v17;
            _os_log_impl(&dword_22AD27000, v46, OS_LOG_TYPE_ERROR, "%{public}@unable to remove corrupt record: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v44);
        }

        goto LABEL_24;
      }

      v23 = objc_opt_class();
      if (v23 == objc_opt_class() || (v24 = objc_opt_class(), v24 == objc_opt_class()))
      {
        v17 = v22;
LABEL_24:

        continue;
      }

      break;
    }

    v94 = v22;
    v25 = [v79 encodeRecordFromModel:v21 existingRecord:0 encodingContext:v76 error:&v94];
    v16 = v94;

    if (!v25)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v13;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [v21 hmbDescription];
        *buf = 138543874;
        v99 = v29;
        v100 = 2112;
        v101 = v30;
        v102 = 2112;
        v103 = v16;
        _os_log_impl(&dword_22AD27000, v28, OS_LOG_TYPE_ERROR, "%{public}@unable to re-encode model %@ for cloud: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      v31 = [v15 modelID];
      v96 = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v96 count:1];
      v17 = [v78 remove:v32];

      if (v17)
      {
        v33 = objc_autoreleasePoolPush();
        v34 = v27;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543618;
          v99 = v36;
          v100 = 2112;
          v101 = v17;
          _os_log_impl(&dword_22AD27000, v35, OS_LOG_TYPE_ERROR, "%{public}@unable to remove corrupt record: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_24;
    }

    v48 = [v76 createdRecords];
    v49 = [v25 recordID];
    v50 = [v21 hmbModelID];
    [v48 setObject:v49 forKey:v50];

    v51 = [v25 size];
    v52 = [v25 recordID];
    [v75 setObject:v15 forKey:v52];

    [v77 addObject:v25];
    v53 = [v77 count];
    v54 = v51 + v73;
    v73 += v51;
    v56 = v53 > 0x64 || v54 > 0x200000;

    v57 = v15;
  }

  while (!v56);
LABEL_34:
  v58 = [v14 error];
  v59 = v58 == 0;

  if (v59)
  {
    v61 = v15 == 0;
    v62 = [v13 previousSentinelRebuildRecord];
    v93 = v16;
    v63 = __updatedSentinelRecord(v13, v62, v15 == 0, &v93);
    v64 = v93;

    if (v63)
    {
      [v77 addObject:v63];
    }

    else
    {
      v65 = objc_autoreleasePoolPush();
      v66 = v13;
      v67 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v68 = HMFGetLogIdentifier();
        *buf = 138543618;
        v99 = v68;
        v100 = 2112;
        v101 = v64;
        _os_log_impl(&dword_22AD27000, v67, OS_LOG_TYPE_ERROR, "%{public}@Unable to generate updated sentinel model: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v65);
    }

    v69 = [v79 pushRecordsToUpdate:v77 recordIDsToRemove:MEMORY[0x277CBEBF8] configuration:0 rollbackEnabled:1];
    objc_initWeak(buf, v13);
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = ____pushChunk_block_invoke;
    v83[3] = &unk_2786E0D88;
    objc_copyWeak(&v91, buf);
    v84 = v75;
    v85 = v78;
    v92 = v61;
    v86 = v74;
    v87 = v79;
    v88 = v80;
    v89 = v76;
    v90 = v14;
    v70 = [v69 addSuccessBlock:v83];
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = ____pushChunk_block_invoke_2;
    v81[3] = &unk_2786E13E8;
    v82 = v13;
    v71 = [v69 addFailureBlock:v81];

    objc_destroyWeak(&v91);
    objc_destroyWeak(buf);

    v16 = v64;
  }

  else
  {
    v60 = __transitionToState(v13, 2, @"Iteration of rows failed: %@");
  }

  v72 = *MEMORY[0x277D85DE8];
}

void sub_22AD56F58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void __failedToComplete(void *a1, void *a2)
{
  v3 = a2;
  v10 = a1;
  v4 = [v10 cloudZone];
  v5 = [v4 configuration];
  v6 = [v5 shouldRebuildOnManateeKeyLoss];

  if (v6)
  {
    v7 = @"Going to try to rebuild again.";
    v8 = v10;
    v9 = 2;
  }

  else
  {
    v7 = @"Waiting for a rebuild.";
    v8 = v10;
    v9 = 1;
  }

  __updateState(v8, v9, v7, v3);
}

id __updatedSentinelRecord(void *a1, void *a2, uint64_t a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = [v7 cloudZone];
  if (v9)
  {
    v10 = objc_alloc_init(HMBCloudZoneRebuilderModel);
    v11 = [MEMORY[0x277CCABB0] numberWithBool:a3];
    [(HMBCloudZoneRebuilderModel *)v10 setHasCompleted:v11];

    v12 = [MEMORY[0x277CCAD78] UUID];
    [(HMBCloudZoneRebuilderModel *)v10 setUniqueToken:v12];

    v24 = 0;
    v13 = [v9 encodeRecordFromModel:v10 existingRecord:v8 error:&v24];
    v14 = v24;
    v15 = v14;
    if (v13)
    {
      v16 = v13;
    }

    else
    {
      if (a4)
      {
        v17 = v14;
        *a4 = v15;
      }

      v18 = objc_autoreleasePoolPush();
      v19 = v7;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v26 = v21;
        v27 = 2112;
        v28 = v15;
        _os_log_impl(&dword_22AD27000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode sentinel model: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
    }
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    *a4 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

void ____pushChunk_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v5 = [v3 fatalError];
  if ([v5 hmbIsCloudKitError])
  {
    v6 = [v3 fatalError];
    v7 = [v6 code];

    if (v7 == 1)
    {
      v25 = [v3 fatalError];
      v8 = __transitionToState(WeakRetained, 2, @"Failed recovery push with error: %@");

      goto LABEL_11;
    }
  }

  else
  {
  }

  v9 = [v3 conflicts];
  v10 = [v9 count];

  if (v10)
  {
    v11 = __transitionToState(WeakRetained, 2, @"Failed recovery push due to conflicts.");
  }

  else
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__2619;
    v42 = __Block_byref_object_dispose__2620;
    v43 = 0;
    v12 = +[HMBCloudZoneRebuilderModel sentinelUUID];
    v13 = [v12 UUIDString];

    v14 = [v3 updatedRecords];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = ____pushChunk_block_invoke_233;
    v32[3] = &unk_2786E0D38;
    v15 = v13;
    v33 = v15;
    v37 = &v38;
    v16 = WeakRetained;
    v34 = v16;
    v35 = *(a1 + 32);
    v36 = *(a1 + 40);
    [v14 enumerateObjectsUsingBlock:v32];

    os_unfair_lock_lock_with_options();
    [(os_unfair_lock_s *)v16 setPreviousSentinelRebuildRecord:v39[5]];
    os_unfair_lock_unlock(v16 + 2);
    if (*(a1 + 96) == 1)
    {
      v17 = __transitionToState(v16, 7, @"Successfully completed recovery.");
    }

    else
    {
      v18 = *(a1 + 48);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = ____pushChunk_block_invoke_238;
      v26[3] = &unk_2786E0D60;
      v27 = v16;
      v19 = *(a1 + 56);
      v20 = *(a1 + 40);
      v21 = *(a1 + 64);
      v22 = *(a1 + 48);
      *&v23 = v21;
      *(&v23 + 1) = v22;
      *&v24 = v19;
      *(&v24 + 1) = v20;
      v28 = v24;
      v29 = v23;
      v30 = *(a1 + 72);
      v31 = *(a1 + 80);
      [v18 addOperationWithBlock:v26];
    }

    _Block_object_dispose(&v38, 8);
  }

LABEL_11:
}

void sub_22AD575F8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v1 + v2));
  _Block_object_dispose((v3 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2619(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ____pushChunk_block_invoke_233(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [v4 recordID];
  v6 = [v5 recordName];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  }

  else
  {
    v8 = [v4 recordID];
    v35 = 0;
    v9 = [v8 externalID:&v35];
    v10 = v35;

    if (!v9)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 40);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v4 recordID];
        v16 = [v15 hmbDescription];
        *buf = 138543874;
        v37 = v14;
        v38 = 2112;
        v39 = v16;
        v40 = 2112;
        v41 = v10;
        _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to generate externalID from %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
    }

    v34 = v10;
    v17 = [v4 externalData:&v34];
    v18 = v34;

    if (!v17)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 40);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [v4 hmbDescription];
        *buf = 138543874;
        v37 = v22;
        v38 = 2112;
        v39 = v23;
        v40 = 2112;
        v41 = v18;
        _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to generate externalData from %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
    }

    v24 = *(a1 + 48);
    v25 = [v4 recordID];
    v26 = [v24 objectForKey:v25];

    if (v26)
    {
      v27 = [*(a1 + 56) setExternalID:v9 externalData:v17 forRecordRow:{objc_msgSend(v26, "recordRow")}];

      if (v27)
      {
        v28 = objc_autoreleasePoolPush();
        v29 = *(a1 + 40);
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          v32 = [v26 recordRow];
          *buf = 138543874;
          v37 = v31;
          v38 = 2048;
          v39 = v32;
          v40 = 2112;
          v41 = v27;
          _os_log_impl(&dword_22AD27000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unable to reset externalID and externalData for %lu: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v28);
      }
    }

    else
    {
      v27 = v18;
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void ____checkLockAcquire_block_invoke_2_188(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) cloudZone];
    v6 = [v5 cloudZoneID];
    v7 = [WeakRetained removePrivateZoneWithID:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_ERROR, "%{public}@Lost cloudDatabase for cloud zone rebuild", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __lockAcquire(void *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = v1;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v32 = v5;
    _os_log_impl(&dword_22AD27000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Attempting to acquire lock.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [v3 cloudZone];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 cloudDatabase];
    if (v8)
    {
      v9 = MEMORY[0x277D2C900];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = ____lockAcquire_block_invoke;
      v28[3] = &unk_2786E10F8;
      v10 = v3;
      v29 = v10;
      v11 = [v7 operationScheduler];
      v12 = [v9 lazyFutureWithBlock:v28 scheduler:v11];

      v13 = [v7 cloudZoneID];
      v14 = [v8 removePrivateZoneWithID:v13];
      v30[0] = v14;
      v15 = [v7 cloudZoneID];
      v16 = [v8 createPrivateZoneWithID:v15];
      v30[1] = v16;
      v30[2] = v12;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];

      v18 = [MEMORY[0x277D2C900] chainFutures:v17];
      objc_initWeak(buf, v10);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = ____lockAcquire_block_invoke_2;
      v26[3] = &unk_2786E0CE8;
      objc_copyWeak(&v27, buf);
      v19 = [v18 addSuccessBlock:v26];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = ____lockAcquire_block_invoke_3;
      v24[3] = &unk_2786E0CC0;
      objc_copyWeak(&v25, buf);
      v20 = [v18 addFailureBlock:v24];
      objc_destroyWeak(&v25);
      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
    }

    else
    {
      v22 = __transitionToState(v3, 2, @"Lost pointer to cloudDatabase");
    }
  }

  else
  {
    v21 = __transitionToState(v3, 2, @"Lost pointer to cloudZone");
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_22AD57F10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void ____lockAcquire_block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = __transitionToState(WeakRetained, 6, @"Acquired zone lock for rebuild.");
}

void ____lockAcquire_block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = __transitionToState(WeakRetained, 2, @"Failed to acquire lock due to sentinel model push failure: %@");
}

void __pushSentinelModel(void *a1, uint64_t a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v7 = [v5 cloudZone];
  if (v7)
  {
    v32 = 0;
    v8 = __updatedSentinelRecord(v5, 0, a2, &v32);
    v9 = v32;
    v10 = objc_autoreleasePoolPush();
    v11 = v5;
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v8)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v8 hmbDescription];
        *buf = 138543618;
        v35 = v14;
        v36 = 2112;
        v37 = v15;
        _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_INFO, "%{public}@Pushing sentinel record: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v33 = v8;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
      v17 = [v7 pushRecordsToUpdate:v16 recordIDsToRemove:MEMORY[0x277CBEBF8] configuration:0 rollbackEnabled:1];

      v18 = [v6 errorOnlyCompletionHandlerAdapter];
      v19 = [v17 addFailureBlock:v18];

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = ____pushSentinelModel_block_invoke;
      v28[3] = &unk_2786E0D10;
      v29 = v11;
      v30 = v6;
      v31 = v7;
      v20 = [v17 addSuccessBlock:v28];
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [v7 zoneID];
        *buf = 138543874;
        v35 = v25;
        v36 = 2112;
        v37 = v26;
        v38 = 2112;
        v39 = v9;
        _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to create sentinel model for %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      [v6 finishWithError:v9];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v5;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v24;
      v36 = 2112;
      v37 = @"cloudZone";
      _os_log_impl(&dword_22AD27000, v23, OS_LOG_TYPE_ERROR, "%{public}@Lost %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    [v6 finishWithError:v9];
  }

  v27 = *MEMORY[0x277D85DE8];
}

void ____pushSentinelModel_block_invoke(id *a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [(__CFString *)v3 fatalError];
  if (([v4 hmbIsCloudKitError] & 1) == 0)
  {

LABEL_7:
    v13 = [a1[4] cloudZone];
    if (!v13)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = a1[4];
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v54 = v30;
        v55 = 2112;
        v56 = @"localCloudZone";
        _os_log_impl(&dword_22AD27000, v29, OS_LOG_TYPE_ERROR, "%{public}@Lost %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v31 = a1[5];
      v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
      [v31 finishWithError:v20];
      goto LABEL_34;
    }

    v14 = [(__CFString *)v3 conflicts];
    v15 = [v14 anyObject];

    if (v15)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = a1[4];
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v54 = v19;
        _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Sentinel record already exists on the server. Returning server version.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v20 = [v15 serverRecord];
      v21 = 0;
      if (v20)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v32 = [(__CFString *)v3 updatedRecords];
      v21 = [v32 anyObject];

      v20 = v21;
      if (v21)
      {
LABEL_12:
        v52 = 0;
        v51 = [v13 decodeModelFromRecord:v20 externalRecordFields:0 source:4 error:&v52];
        v22 = v52;
        if (v22)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = a1[4];
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543618;
            v54 = v26;
            v55 = 2112;
            v56 = v22;
            _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode model from CK Record: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
          [a1[5] finishWithError:v22];
        }

        else
        {
          v38 = v51;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = v38;
          }

          else
          {
            v39 = 0;
          }

          v40 = v39;

          if (v40)
          {
            [a1[6] handleUpdatedRebuilderModel:v40];
            v41 = a1[4];
            os_unfair_lock_lock_with_options();
            [a1[4] setPreviousSentinelRebuildRecord:v21];
            os_unfair_lock_unlock(v41 + 2);
            [a1[5] finishWithResult:v40];
          }

          else
          {
            context = objc_autoreleasePoolPush();
            v42 = a1[4];
            v43 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v49 = HMFGetLogIdentifier();
              v44 = objc_opt_class();
              v45 = NSStringFromClass(v44);
              *buf = 138543618;
              v54 = v49;
              v55 = 2112;
              v56 = v45;
              _os_log_impl(&dword_22AD27000, v43, OS_LOG_TYPE_ERROR, "%{public}@Record was not expected type (got %@)", buf, 0x16u);
            }

            objc_autoreleasePoolPop(context);
            v46 = a1[5];
            v47 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
            [v46 finishWithError:v47];
          }
        }

LABEL_33:
LABEL_34:

        goto LABEL_35;
      }
    }

    v33 = objc_autoreleasePoolPush();
    v34 = a1[4];
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v54 = v36;
      v55 = 2112;
      v56 = v3;
      _os_log_impl(&dword_22AD27000, v35, OS_LOG_TYPE_ERROR, "%{public}@Unable to find appropriate error for sentinel record push result: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v37 = a1[5];
    v22 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    [v37 finishWithError:v22];
    goto LABEL_33;
  }

  v5 = [(__CFString *)v3 fatalError];
  v6 = [v5 code];

  if (v6 != 1)
  {
    goto LABEL_7;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [(__CFString *)v3 fatalError];
    *buf = 138543618;
    v54 = v10;
    v55 = 2112;
    v56 = v11;
    _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_ERROR, "%{public}@Sentinel model push failed with fatal error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = a1[5];
  v13 = [(__CFString *)v3 fatalError];
  [v12 finishWithError:v13];
LABEL_35:

  v48 = *MEMORY[0x277D85DE8];
}

void ____fetchSentinelModel_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 errorOnlyCompletionHandlerAdapter];
  v6 = [v4 addFailureBlock:v5];

  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ____fetchSentinelModel_block_invoke_2;
  v10[3] = &unk_2786E0DD8;
  objc_copyWeak(&v12, (a1 + 40));
  v8 = v3;
  v11 = v8;
  v9 = [v7 addSuccessBlock:v10];

  objc_destroyWeak(&v12);
}

void ____fetchSentinelModel_block_invoke_2(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained cloudZone];
    v7 = v6;
    if (v6)
    {
      v35 = 0;
      v8 = [v6 decodeModelFromRecord:v3 externalRecordFields:0 source:4 error:&v35];
      v9 = v35;
      if (v9)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = v5;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543618;
          v37 = v13;
          v38 = 2112;
          v39 = v9;
          _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode model from CK Record: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
        [*(a1 + 32) finishWithError:v9];
      }

      else
      {
        v23 = v8;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        v25 = v24;

        if (!v25)
        {
          context = objc_autoreleasePoolPush();
          v26 = v5;
          v27 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v33 = HMFGetLogIdentifier();
            v28 = objc_opt_class();
            v29 = NSStringFromClass(v28);
            *buf = 138543618;
            v37 = v33;
            v38 = 2112;
            v39 = v29;
            _os_log_impl(&dword_22AD27000, v27, OS_LOG_TYPE_ERROR, "%{public}@Record was not expected type (got %@)", buf, 0x16u);
          }

          objc_autoreleasePoolPop(context);
          v30 = *(a1 + 32);
          v31 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
          [v30 finishWithError:v31];
        }

        [v5 setPreviousSentinelRebuildRecord:v3];
        [*(a1 + 32) finishWithResult:v25];
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = v5;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v21;
        _os_log_impl(&dword_22AD27000, v20, OS_LOG_TYPE_ERROR, "%{public}@Lost cloudZone for cloud zone rebuild", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      v22 = *(a1 + 32);
      v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
      [v22 finishWithError:v9];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v16;
      _os_log_impl(&dword_22AD27000, v15, OS_LOG_TYPE_ERROR, "%{public}@Lost self for cloud zone rebuild", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v17 = *(a1 + 32);
    v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    [v17 finishWithError:v7];
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_22AD59D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __processSentinelModel(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 hasCompleted];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v11 = @"Startup with completed sentinel model.";
    v12 = v3;
    v13 = 7;
  }

  else
  {
    v14 = [v3 cloudZone];
    v15 = [v14 configuration];
    v16 = [v15 shouldRebuildOnManateeKeyLoss];

    v11 = @"Startup with missing manatee key.";
    v12 = v3;
    if (v16)
    {
      v13 = 4;
    }

    else
    {
      v13 = 1;
    }
  }

  v17 = __transitionToState(v12, v13, v11, v6, v7, v8, v9, v10, v19);

  return v17;
}

void ____startUp_block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __processSentinelModel(*(a1 + 32), v3);
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched sentinel model: %@.", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [*(a1 + 40) completionHandlerAdapter];
  v10 = [v4 addCompletionBlock:v9];

  v11 = *MEMORY[0x277D85DE8];
}

void ____startUp_block_invoke_248(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    *v24 = 138543618;
    *&v24[4] = v7;
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_ERROR, "%{public}@Sentinel model push failed: %@.", v24, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v13 = [v3 hmbIsCKMissingManateeIdentityError];
  v14 = *(a1 + 32);
  if (v13)
  {
    v15 = [v14 cloudZone];
    v16 = [v15 configuration];
    v17 = [v16 shouldRebuildOnManateeKeyLoss];

    v14 = *(a1 + 32);
    if (v17)
    {
      v18 = @"Came up in Manatee Key Loss. Going to try to blow things away and fix them.";
      v19 = 4;
    }

    else
    {
      v18 = @"Don't have keys, waiting for someone else to rebuild the zone.";
      v19 = 1;
    }
  }

  else
  {
    v18 = @"Unable to push sentinel model due to some other issue. Letting startup continue normally.";
    v19 = 7;
  }

  v20 = __transitionToState(v14, v19, v18, v8, v9, v10, v11, v12, *v24);
  v21 = [*(a1 + 40) completionHandlerAdapter];
  v22 = [v20 addCompletionBlock:v21];

  v23 = *MEMORY[0x277D85DE8];
}

void sub_22AD5F28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3415(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ____fetchStoreInfo_block_invoke(uint64_t a1, void *a2)
{
  v9 = 0;
  v3 = [a2 _fetchAllZones:&v9];
  v4 = v9;
  v5 = v9;
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  return v4;
}

id ____createZone_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 token];
  v6 = [*(a1 + 40) name];
  v10 = 0;
  v7 = [v4 _insertZoneWithIdentification:v5 name:v6 error:&v10];

  v8 = v10;
  [*(a1 + 32) setZoneRow:v7];

  return v8;
}

void sub_22AD61398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __waitForAccountAvailability(void *a1)
{
  v1 = a1;
  objc_initWeak(&location, v1);
  v2 = MEMORY[0x277D2C900];
  v6 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v7, &location);
  v3 = [v1 operationScheduler];
  v4 = [v2 lazyFutureWithBlock:&v6 scheduler:v3];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void sub_22AD66C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____waitForAccountAvailability_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained credentialsAvailabilityListener];
  v5 = [v4 waitForAccountAvailability];
  v6 = [v3 completionHandlerAdapter];

  v7 = [v5 addCompletionBlock:v6];
}

id __synchronizeZoneStateForZoneIDs(void *a1, void *a2, void *a3, char a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  os_unfair_lock_lock_with_options();
  v10 = [v9 lastAdministrativeFetch];
  v11 = [v9 database];
  v12 = [v9 cloudID];
  v13 = [v9 hmbModelID];
  os_unfair_lock_unlock(v7 + 2);
  if ((a4 & 1) != 0 || ([v10 timeIntervalSinceNow], v14 < -604800.0))
  {
    v15 = MEMORY[0x277D2C900];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = ____synchronizeZoneStateForZoneIDs_block_invoke;
    v25[3] = &unk_2786E1210;
    v26 = v8;
    v27 = v7;
    v28 = v12;
    v29 = v11;
    v30 = v13;
    v31 = v9;
    v16 = [(os_unfair_lock_s *)v27 operationScheduler];
    v17 = [v15 lazyFutureWithBlock:v25 scheduler:v16];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v18 = v7;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = HMFGetLogIdentifier();
      v20 = HMFBooleanToString();
      *buf = 138544130;
      v33 = v23;
      v34 = 2114;
      v35 = v12;
      v36 = 2114;
      v37 = v20;
      v38 = 2114;
      v39 = v10;
      _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Not synchronizing zone state for %{public}@ because force=%{public}@ and last administrative fetch was %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(context);
    v17 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

void ____synchronizeZoneStateForZoneIDs_block_invoke(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v42 = a2;
  v3 = objc_alloc(MEMORY[0x277D0F770]);
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"__synchronizeZoneStateForZoneIDs_block_invoke"];
  v5 = [v3 initWithName:v4 options:1];

  v6 = *(a1 + 32) == 0;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v10)
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v5 identifier];
      v17 = [v16 shortDescription];
      v18 = *(a1 + 48);
      *buf = 138543874;
      v57 = v15;
      v58 = 2114;
      v59 = v17;
      v60 = 2112;
      v61 = v18;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Synchronizing zone state for all zone IDs in database: %@", buf, 0x20u);
    }
  }

  else if (v10)
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v5 identifier];
    v13 = [v12 shortDescription];
    v14 = [*(a1 + 32) hmbDescription];
    *buf = 138543874;
    v57 = v11;
    v58 = 2114;
    v59 = v13;
    v60 = 2112;
    v61 = v14;
    _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Synchronizing zone state for zone IDs: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v19 = [MEMORY[0x277CBEB38] dictionary];
  v20 = *(a1 + 40);
  os_unfair_lock_lock_with_options();
  v21 = [*(a1 + 40) zoneStateByZoneID];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = ____synchronizeZoneStateForZoneIDs_block_invoke_318;
  v51[3] = &unk_2786E1120;
  v52 = *(a1 + 32);
  v53 = *(a1 + 48);
  v22 = v19;
  v54 = v22;
  [v21 enumerateKeysAndObjectsUsingBlock:v51];

  os_unfair_lock_unlock(v20 + 2);
  v23 = objc_autoreleasePoolPush();
  v24 = *(a1 + 40);
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = HMFGetLogIdentifier();
    v27 = [v5 identifier];
    v28 = [v27 shortDescription];
    *buf = 138543874;
    v57 = v26;
    v58 = 2114;
    v59 = v28;
    v60 = 2112;
    v61 = v22;
    _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Created pre-fetch mapping of zone state by zone ID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v23);
  v29 = [*(a1 + 40) fetchZonesWithIDs:*(a1 + 32) inDatabase:*(a1 + 56)];
  v30 = [*(a1 + 40) fetchSubscriptionsInDatabase:*(a1 + 56)];
  v31 = MEMORY[0x277D2C900];
  v55[0] = v29;
  v55[1] = v30;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  v33 = [v31 chainFutures:v32];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = ____synchronizeZoneStateForZoneIDs_block_invoke_319;
  v43[3] = &unk_2786E11E8;
  v44 = *(a1 + 40);
  v45 = v5;
  v46 = v29;
  v47 = *(a1 + 64);
  v48 = v30;
  v49 = *(a1 + 72);
  v50 = v22;
  v34 = v22;
  v35 = v30;
  v36 = v29;
  v37 = v5;
  v38 = [v33 addSuccessBlock:v43];

  v39 = [v42 completionHandlerAdapter];
  v40 = [v38 addCompletionBlock:v39];

  v41 = *MEMORY[0x277D85DE8];
}

void ____synchronizeZoneStateForZoneIDs_block_invoke_318(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (!v6 || [v6 containsObject:v11])
  {
    v7 = [v5 copy];
    v8 = [v11 scope];
    if (v8 == [*(a1 + 40) scope])
    {
      v9 = [v7 needsZoneCreation];
      v10 = [v9 BOOLValue];

      if ((v10 & 1) == 0)
      {
        [*(a1 + 48) setObject:v7 forKeyedSubscript:v11];
      }
    }
  }
}

void ____synchronizeZoneStateForZoneIDs_block_invoke_319(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v47 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [*(a1 + 40) identifier];
    v8 = [v7 shortDescription];
    *buf = 138543618;
    v71 = v6;
    v72 = 2114;
    v73 = v8;
    _os_log_impl(&dword_22AD27000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Processing fetched zones and subscriptions for zone state synchronization", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CBEB18] array];
  v13 = [MEMORY[0x277CBEB38] dictionary];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = ____synchronizeZoneStateForZoneIDs_block_invoke_320;
  v66[3] = &unk_2786E1148;
  v14 = *(a1 + 48);
  v67 = *(a1 + 56);
  v15 = v13;
  v68 = v15;
  v16 = [v14 addSuccessBlock:v66];
  v17 = *(a1 + 32);
  v18 = *(a1 + 64);
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = ____synchronizeZoneStateForZoneIDs_block_invoke_2;
  v62[3] = &unk_2786E1170;
  v63 = v17;
  v64 = *(a1 + 72);
  v19 = v15;
  v65 = v19;
  v20 = [v18 addSuccessBlock:v62];
  v21 = (*(a1 + 32) + 8);
  os_unfair_lock_lock_with_options();
  v22 = *(a1 + 80);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = ____synchronizeZoneStateForZoneIDs_block_invoke_3;
  v56[3] = &unk_2786E1198;
  v23 = v19;
  v57 = v23;
  v58 = *(a1 + 32);
  v59 = *(a1 + 40);
  v24 = v10;
  v60 = v24;
  v48 = v12;
  v61 = v48;
  [v22 enumerateKeysAndObjectsUsingBlock:v56];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = ____synchronizeZoneStateForZoneIDs_block_invoke_322;
  v51[3] = &unk_2786E11C0;
  v52 = *(a1 + 32);
  v53 = *(a1 + 40);
  v50 = v11;
  v54 = v50;
  v49 = v9;
  v55 = v49;
  [v23 enumerateKeysAndObjectsUsingBlock:v51];
  v46 = v23;
  v25 = [*(a1 + 32) stateZone];
  v26 = v24;
  v27 = [v25 update:v50];

  if (v27)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 32);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      v32 = [*(a1 + 40) identifier];
      v33 = [v32 shortDescription];
      *buf = 138544130;
      v71 = v31;
      v72 = 2114;
      v73 = v33;
      v74 = 2112;
      v75 = v50;
      v76 = 2112;
      v77 = v27;
      _os_log_impl(&dword_22AD27000, v30, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to update zone models in local DB %@: %@", buf, 0x2Au);

      v26 = v24;
    }

    objc_autoreleasePoolPop(v28);
  }

  os_unfair_lock_unlock(v21);
  [*(a1 + 32) handleRemovedZoneIDs:v26 userInitiated:0];
  [*(a1 + 32) handleCreatedZoneIDs:v49];
  v34 = (*(a1 + 32) + 8);
  os_unfair_lock_lock_with_options();
  v35 = [MEMORY[0x277CBEAA8] date];
  [*(a1 + 72) setLastAdministrativeFetch:v35];

  v36 = [*(a1 + 32) stateZone];
  v69 = *(a1 + 72);
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
  v38 = [v36 update:v37 remove:v48];

  if (v38)
  {
    v39 = objc_autoreleasePoolPush();
    v40 = *(a1 + 32);
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      v43 = [*(a1 + 40) identifier];
      v44 = [v43 shortDescription];
      *buf = 138543874;
      v71 = v42;
      v72 = 2114;
      v73 = v44;
      v74 = 2112;
      v75 = v38;
      _os_log_impl(&dword_22AD27000, v41, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to update database state for zone state synchronization: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v39);
  }

  os_unfair_lock_unlock(v34);
  v45 = *MEMORY[0x277D85DE8];
}

void ____synchronizeZoneStateForZoneIDs_block_invoke_320(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ____processZones_block_invoke;
  v8[3] = &unk_2786E10D0;
  v9 = v4;
  v10 = v5;
  v6 = v4;
  v7 = v5;
  [a2 hmf_enumerateWithAutoreleasePoolUsingBlock:v8];
}

void ____synchronizeZoneStateForZoneIDs_block_invoke_2(void *a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = v4;
  v8 = v5;
  v9 = v3;
  v39 = v6;
  os_unfair_lock_lock_with_options();
  v38 = v8;
  v45 = [v8 cloudID];
  v44 = v7;
  os_unfair_lock_unlock(v7 + 2);
  v40 = [MEMORY[0x277CBEB58] set];
  v43 = [MEMORY[0x277CBEB38] dictionary];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v10)
  {
    v11 = *v47;
    v41 = *MEMORY[0x277CBBF28];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v46 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if (v15)
        {
          if ([v45 scope] == 3 && (objc_msgSend(v15, "zoneID"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "ownerName"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", v41), v17, v16, v18))
          {
            v19 = objc_autoreleasePoolPush();
            v20 = v44;
            v21 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              v22 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v22;
              *&buf[12] = 2112;
              *&buf[14] = v15;
              _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring unexpected subscription on shared zone: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v19);
          }

          else
          {
            v23 = [HMBCloudZoneID alloc];
            v24 = [(os_unfair_lock_s *)v44 containerID];
            v25 = [v45 scope];
            v26 = [v15 zoneID];
            v27 = [(HMBCloudZoneID *)v23 initWithContainerID:v24 scope:v25 zoneID:v26];

            v28 = [v43 objectForKeyedSubscript:v27];
            if (!v28)
            {
              v28 = [MEMORY[0x277CBEB58] set];
              [v43 setObject:v28 forKeyedSubscript:v27];
            }

            [v28 addObject:v15];
          }
        }

        else
        {
          v29 = v13;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = v29;
          }

          else
          {
            v30 = 0;
          }

          v31 = v30;

          if (v31)
          {
            [v40 addObject:v31];
          }

          else
          {
            v32 = objc_autoreleasePoolPush();
            v33 = v44;
            v34 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v35 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v35;
              *&buf[12] = 2112;
              *&buf[14] = v29;
              _os_log_impl(&dword_22AD27000, v34, OS_LOG_TYPE_ERROR, "%{public}@Got unexpected subscription %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v32);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v10);
  }

  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = ____processSubscriptions_block_invoke;
  v51 = &unk_2786E10A8;
  v36 = v43;
  v52 = v36;
  [v39 enumerateKeysAndObjectsUsingBlock:buf];
  os_unfair_lock_lock_with_options();
  [v38 setSubscriptions:v40];
  os_unfair_lock_unlock(v44 + 2);

  v37 = *MEMORY[0x277D85DE8];
}

void ____synchronizeZoneStateForZoneIDs_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 48) identifier];
      v13 = [v12 shortDescription];
      v20 = 138543874;
      v21 = v11;
      v22 = 2114;
      v23 = v13;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Zone was deleted with ID: %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = *(a1 + 56);
    v15 = [v6 zoneID];
    [v14 addObject:v15];

    v16 = *(a1 + 64);
    v17 = [v6 hmbModelID];
    [v16 addObject:v17];

    v18 = [*(a1 + 40) zoneStateByZoneID];
    [v18 removeObjectForKey:v5];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void ____synchronizeZoneStateForZoneIDs_block_invoke_322(id *a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] zoneStateByZoneID];
  v8 = [v7 objectForKeyedSubscript:v5];

  if (v8)
  {
    v9 = [v8 subscriptions];
    v10 = [v6 subscriptions];
    v11 = HMFEqualObjects();

    if ((v11 & 1) == 0)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = a1[4];
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v30 = [a1[5] identifier];
        v16 = [v30 shortDescription];
        [v6 subscriptions];
        v29 = v31 = v12;
        v17 = [v29 hmbDescription];
        v28 = [v8 subscriptions];
        v18 = [v28 hmbDescription];
        *buf = 138544386;
        v33 = v15;
        v34 = 2114;
        v35 = v16;
        v36 = 2112;
        v37 = v5;
        v38 = 2112;
        v39 = v17;
        v40 = 2112;
        v41 = v18;
        _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Updating subscriptions for zone ID %@ from %@ to %@", buf, 0x34u);

        v12 = v31;
      }

      objc_autoreleasePoolPop(v12);
      v19 = [v6 subscriptions];
      [v8 setSubscriptions:v19];

      [a1[6] addObject:v8];
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = a1[4];
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [a1[5] identifier];
      v25 = [v24 shortDescription];
      *buf = 138543874;
      v33 = v23;
      v34 = 2114;
      v35 = v25;
      v36 = 2112;
      v37 = v5;
      _os_log_impl(&dword_22AD27000, v22, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Zone was created with ID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    [a1[7] addObject:v5];
    [a1[6] addObject:v6];
    v26 = [a1[4] zoneStateByZoneID];
    [v26 setObject:v6 forKey:v5];
  }

  v27 = *MEMORY[0x277D85DE8];
}

void ____processSubscriptions_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v5)
  {
    [v7 setSubscriptions:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
    [v7 setSubscriptions:v6];
  }
}

void ____processZones_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMBCloudZoneStateModel alloc];
  v5 = [v3 modelID];
  v6 = [(HMBCloudZoneStateModel *)v4 initWithModelID:v5 parentModelID:*(a1 + 32)];

  [(HMBCloudZoneStateModel *)v6 setZoneID:v3];
  [*(a1 + 40) setObject:v6 forKey:v3];
}

void sub_22AD68F1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void ____synchronizeAllZoneState_block_invoke(uint64_t a1, void *a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 privateDatabaseState];
  v6 = __synchronizeZoneStateForZoneIDs(v4, 0, v5, *(a1 + 40));
  v19[0] = v6;
  v7 = *(a1 + 32);
  v8 = [v7 sharedDatabaseState];
  v9 = __synchronizeZoneStateForZoneIDs(v7, 0, v8, *(a1 + 40));
  v19[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];

  v11 = MEMORY[0x277D2C900];
  v12 = [*(a1 + 32) operationScheduler];
  v13 = [v11 combineAllFutures:v10 scheduler:v12];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ____synchronizeAllZoneState_block_invoke_2;
  v17[3] = &unk_2786E1058;
  v18 = v3;
  v14 = v3;
  v15 = [v13 addCompletionBlock:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void ____removeDeletedZones_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v6 = [*(a1 + 32) zoneStateByZoneID];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ____removeDeletedZones_block_invoke_2;
  v12[3] = &unk_2786E10A8;
  v7 = v4;
  v13 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v12];

  os_unfair_lock_unlock(v5 + 2);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ____removeDeletedZones_block_invoke_3;
  v9[3] = &unk_2786E10D0;
  v10 = *(a1 + 32);
  v11 = v3;
  v8 = v3;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];
  [v8 finishWithNoResult];
}

void ____removeDeletedZones_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [v8 needsZoneDeletion];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v8 zoneID];
    [v6 addObject:v7];
  }
}

void ____removeDeletedZones_block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@Found zone ID that needs deletion: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) removeZoneWithID:v3];
  v9 = [*(a1 + 40) completionHandlerAdapter];
  v10 = [v8 addCompletionBlock:v9];

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t ____synchronizeAllZoneState_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithNoResult];
  }

  else
  {
    return [v2 finishWithError:?];
  }
}

void __modifyRecordZoneOperation(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v35 = a1;
  v36 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  v37 = v12;
  v38 = v11;
  if (v11 | v12)
  {
    v34 = v14;
    v16 = v35;
    if (!v13)
    {
      v17 = objc_alloc(MEMORY[0x277D0F770]);
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"__modifyRecordZoneOperation"];
      v13 = [v17 initWithName:v18 options:1];
    }

    v19 = objc_alloc_init(MEMORY[0x277CBC490]);
    v20 = [v35 operationConfigurationWithProcessingOptions:0];
    [v19 setConfiguration:v20];

    if (v38)
    {
      v60[0] = v38;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];
      [v19 setRecordZonesToSave:v21];
    }

    if (v12)
    {
      v59 = v12;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
      [v19 setRecordZoneIDsToDelete:v22];
    }

    objc_initWeak(&location, v35);
    objc_initWeak(&from, v19);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = ____modifyRecordZoneOperation_block_invoke;
    v39[3] = &unk_2786E1320;
    objc_copyWeak(&v45, &location);
    v13 = v13;
    v40 = v13;
    objc_copyWeak(&v46, &from);
    v41 = v34;
    v33 = v36;
    v42 = v33;
    v23 = v38;
    v43 = v23;
    v24 = v12;
    v44 = v24;
    [v19 setModifyRecordZonesCompletionBlock:v39];
    context = objc_autoreleasePoolPush();
    v25 = v35;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [v13 identifier];
      v29 = [v28 shortDescription];
      v30 = [v19 operationID];
      *buf = 138544386;
      v50 = v27;
      v51 = 2114;
      v52 = v29;
      v53 = 2112;
      v54 = v23;
      v55 = 2112;
      v56 = v24;
      v57 = 2114;
      v58 = v30;
      _os_log_impl(&dword_22AD27000, v26, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Starting CKModifyRecordZonesOperation with zoneToSave: %@ zoneIDToRemove: %@ operationID: %{public}@", buf, 0x34u);

      v16 = v35;
    }

    objc_autoreleasePoolPop(context);
    [v33 addOperation:v19];

    objc_destroyWeak(&v46);
    objc_destroyWeak(&v45);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);

    v15 = v34;
  }

  else
  {
    [v14 finishWithNoResult];
    v16 = v35;
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_22AD6BAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location, id a28)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a28);
  _Unwind_Resume(a1);
}

void ____modifyRecordZoneOperation_block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v33 = a2;
  v34 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[4] identifier];
      v15 = [v14 shortDescription];
      *buf = 138543874;
      v44 = v13;
      v45 = 2114;
      v46 = v15;
      v47 = 2114;
      v48 = v7;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKModifyRecordZonesOperation failed: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = objc_loadWeakRetained(a1 + 10);
    if (!v16)
    {
      _HMFPreconditionFailure();
      __break(1u);
    }

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = ____modifyRecordZoneOperation_block_invoke_32;
    v35[3] = &unk_2786E12F8;
    objc_copyWeak(&v42, a1 + 9);
    v36 = a1[5];
    v17 = v7;
    v37 = v17;
    v38 = a1[6];
    v39 = a1[7];
    v40 = a1[8];
    v41 = a1[4];
    v18 = [v10 retryCloudKitOperation:v16 afterError:v17 retryBlock:v35];
    context = objc_autoreleasePoolPush();
    v19 = v10;
    if (v18)
    {
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [a1[4] identifier];
        v23 = [v22 shortDescription];
        *buf = 138543618;
        v44 = v21;
        v45 = 2114;
        v46 = v23;
        _os_log_impl(&dword_22AD27000, v20, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] CKModifyRecordZonesOperation will be retried", buf, 0x16u);
      }

      objc_autoreleasePoolPop(context);
      [a1[4] markWithReason:@"deferred"];
    }

    else
    {
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [a1[4] identifier];
        v30 = [v29 shortDescription];
        *buf = 138543874;
        v44 = v28;
        v45 = 2114;
        v46 = v30;
        v47 = 2114;
        v48 = v17;
        _os_log_impl(&dword_22AD27000, v27, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] CKModifyRecordZonesOperation failed and cannot be retried: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(context);
      [a1[4] markWithFormat:@"failed with error: %@", v17];
      [a1[5] finishWithError:v17];
    }

    objc_destroyWeak(&v42);
  }

  else
  {
    if (v12)
    {
      v24 = HMFGetLogIdentifier();
      v25 = [a1[4] identifier];
      v26 = [v25 shortDescription];
      *buf = 138543618;
      v44 = v24;
      v45 = 2114;
      v46 = v26;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKModifyRecordZonesOperation succeeded", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [a1[5] finishWithNoResult];
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_22AD6BFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void ____modifyRecordZoneOperation_block_invoke_32(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    __modifyRecordZoneOperation(WeakRetained, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 32));
  }

  else
  {
    [*(a1 + 32) finishWithError:*(a1 + 40)];
  }
}

void __fetchCloudZones(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v61 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v12)
  {
    v14 = objc_alloc(MEMORY[0x277D0F770]);
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"__fetchCloudZones"];
    v12 = [v14 initWithName:v15 options:1];
  }

  v16 = [MEMORY[0x277CBEB58] set];
  if (v10)
  {
    v17 = objc_alloc(MEMORY[0x277CBC3D0]);
    v18 = [v10 allObjects];
    v19 = [v17 initWithRecordZoneIDs:v18];
  }

  else
  {
    v19 = [MEMORY[0x277CBC3D0] fetchAllRecordZonesOperation];
  }

  v20 = [v9 operationConfigurationWithProcessingOptions:0];
  [v19 setConfiguration:v20];

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = ____fetchCloudZones_block_invoke;
  v49[3] = &unk_2786E1280;
  v21 = v9;
  v50 = v21;
  v22 = v12;
  v51 = v22;
  v23 = v16;
  v52 = v23;
  [v19 setPerRecordZoneCompletionBlock:v49];
  objc_initWeak(&location, v19);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = ____fetchCloudZones_block_invoke_17;
  v40[3] = &unk_2786E12D0;
  v24 = v21;
  v41 = v24;
  v39 = v22;
  v42 = v39;
  objc_copyWeak(&v47, &location);
  v25 = v10;
  v43 = v25;
  v26 = v11;
  v44 = v26;
  v37 = v13;
  v45 = v37;
  v38 = v23;
  v46 = v38;
  [v19 setFetchRecordZonesCompletionBlock:v40];
  v27 = objc_autoreleasePoolPush();
  v28 = v24;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v36 = v25;
    v30 = HMFGetLogIdentifier();
    v31 = [v39 identifier];
    v32 = [v31 shortDescription];
    v33 = [v26 hmbDescription];
    v34 = [v19 operationID];
    *buf = 138544130;
    v54 = v30;
    v55 = 2114;
    v56 = v32;
    v57 = 2112;
    v58 = v33;
    v59 = 2114;
    v60 = v34;
    _os_log_impl(&dword_22AD27000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Starting CKFetchRecordZonesOperation for database: %@ operationID: %{public}@", buf, 0x2Au);

    v25 = v36;
  }

  objc_autoreleasePoolPop(v27);
  [v26 addOperation:v19];

  objc_destroyWeak(&v47);
  objc_destroyWeak(&location);

  v35 = *MEMORY[0x277D85DE8];
}

void sub_22AD6CCAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____fetchCloudZones_block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
LABEL_7:
    [a1[6] addObject:v7];
    goto LABEL_8;
  }

  if (([v9 hmbIsCKMissingManateeIdentityError] & 1) != 0 || objc_msgSend(v10, "hmbIsCKUnsyncedKeychainError"))
  {
    v11 = objc_autoreleasePoolPush();
    v12 = a1[4];
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [a1[5] identifier];
      v16 = [v15 shortDescription];
      [v7 hmbDescription];
      v17 = v26 = v11;
      *buf = 138544130;
      v28 = v14;
      v29 = 2114;
      v30 = v16;
      v31 = 2114;
      v32 = v17;
      v33 = 2114;
      v34 = v10;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Ignoring Manatee error for zoneID %{public}@: %{public}@", buf, 0x2Au);

      v11 = v26;
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_7;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = a1[4];
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = HMFGetLogIdentifier();
    v23 = [a1[5] identifier];
    v24 = [v23 shortDescription];
    v25 = [v7 hmbDescription];
    *buf = 138544130;
    v28 = v22;
    v29 = 2114;
    v30 = v24;
    v31 = 2114;
    v32 = v25;
    v33 = 2114;
    v34 = v10;
    _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Could not fetch record with zone ID %{public}@: %{public}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v19);
LABEL_8:

  v18 = *MEMORY[0x277D85DE8];
}

void ____fetchCloudZones_block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && ([v6 hmbIsCKPartialFailureError] & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [*(a1 + 40) identifier];
      v25 = [v24 shortDescription];
      *buf = 138543874;
      v54 = v23;
      v55 = 2114;
      v56 = v25;
      v57 = 2114;
      v58 = v7;
      _os_log_impl(&dword_22AD27000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKFetchRecordZonesOperation failed: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    if (!WeakRetained)
    {
      _HMFPreconditionFailure();
    }

    v19 = WeakRetained;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = ____fetchCloudZones_block_invoke_19;
    v49[3] = &unk_2786E2300;
    v27 = *(a1 + 32);
    v28 = *(a1 + 48);
    v29 = *(a1 + 56);
    v30 = *(a1 + 40);
    *&v31 = v29;
    *(&v31 + 1) = v30;
    *&v32 = v27;
    *(&v32 + 1) = v28;
    v50 = v32;
    v51 = v31;
    v52 = *(a1 + 64);
    v33 = [v27 retryCloudKitOperation:v19 afterError:v7 retryBlock:v49];
    v34 = objc_autoreleasePoolPush();
    v35 = *(a1 + 32);
    v36 = HMFGetOSLogHandle();
    v37 = v36;
    if (v33)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        v39 = [*(a1 + 40) identifier];
        v40 = [v39 shortDescription];
        *buf = 138543618;
        v54 = v38;
        v55 = 2114;
        v56 = v40;
        _os_log_impl(&dword_22AD27000, v37, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] CKFetchRecordZonesOperation will be retried", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      [*(a1 + 40) markWithReason:@"deferred"];
    }

    else
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        v42 = [*(a1 + 40) identifier];
        v43 = [v42 shortDescription];
        *buf = 138543874;
        v54 = v41;
        v55 = 2114;
        v56 = v43;
        v57 = 2114;
        v58 = v7;
        _os_log_impl(&dword_22AD27000, v37, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] CKFetchRecordZonesOperation failed and cannot be retried: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v34);
      [*(a1 + 40) markWithFormat:@"failed with error: %@", v7];
      [*(a1 + 64) finishWithError:v7];
    }
  }

  else
  {
    v8 = *(a1 + 72);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = ____fetchCloudZones_block_invoke_27;
    v46[3] = &unk_2786E12A8;
    v47 = *(a1 + 32);
    v48 = *(a1 + 56);
    v9 = [v8 na_map:v46];
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 40) identifier];
      v15 = [v14 shortDescription];
      [v9 hmbDescription];
      v45 = v10;
      v16 = v7;
      v18 = v17 = v5;
      *buf = 138543874;
      v54 = v13;
      v55 = 2114;
      v56 = v15;
      v57 = 2112;
      v58 = v18;
      _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKFetchRecordZonesOperation succeeded with zones: %@", buf, 0x20u);

      v5 = v17;
      v7 = v16;
      v10 = v45;
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 64) finishWithResult:v9];

    v19 = v47;
  }

  v44 = *MEMORY[0x277D85DE8];
}

HMBCloudZoneID *____fetchCloudZones_block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMBCloudZoneID alloc];
  v5 = [*(a1 + 32) containerID];
  v6 = -[HMBCloudZoneID initWithContainerID:scope:zoneID:](v4, "initWithContainerID:scope:zoneID:", v5, [*(a1 + 40) scope], v3);

  return v6;
}

void ____bindProperties_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a3;
  v5 = MEMORY[0x277CBEB68];
  v6 = a2;
  v7 = [v5 null];

  v8 = *(a1 + 32);
  v9 = [v6 intValue];

  v10 = v15;
  if (v7 == v15)
  {
    v17 = 0;
    v11 = &v17;
    v12 = &v17;
    v13 = v8;
    v14 = v9;
    v10 = 0;
  }

  else
  {
    v16 = 0;
    v11 = &v16;
    v12 = &v16;
    v13 = v8;
    v14 = v9;
  }

  hmbBindDataSQLite3(v13, v14, v10, v12);
}

void sub_22AD6E018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3999(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AD6E340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AD6E778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AD6ED84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __encodeArguments(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = MEMORY[0x277CBEB38];
  v8 = a2;
  v9 = [v8 arguments];
  v10 = [v7 dictionaryWithCapacity:{objc_msgSend(v9, "count")}];

  v11 = [v8 arguments];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ____encodeArguments_block_invoke;
  v17[3] = &unk_2786E14E0;
  v18 = v5;
  v19 = v6;
  v20 = v10;
  v12 = v10;
  v13 = v6;
  v14 = v5;
  [v11 enumerateKeysAndObjectsUsingBlock:v17];

  v15 = [v12 copy];

  return v15;
}

void ____encodeArguments_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v5 = a3;
  if (([v22 hasPrefix:@"_"] & 1) == 0)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = v22;
    v10 = [v8 objectForKeyedSubscript:v9];
    if (v10)
    {
      v11 = [MEMORY[0x277CBEB68] null];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        v13 = [MEMORY[0x277CBEB68] null];
LABEL_9:

        if (v13)
        {
          [*(a1 + 48) setObject:v13 forKeyedSubscript:v5];

          goto LABEL_11;
        }

        _HMFPreconditionFailure();
LABEL_15:
        v17 = _HMFPreconditionFailure();
        [(HMBModelUnindexedQuery *)v17 queryWithSQLPredicate:v18 ascending:v19 arguments:v20, v21];
        return;
      }

      v16 = [v7 argumentFields];
      v14 = [v16 objectForKey:v9];

      if (!v14)
      {
        goto LABEL_15;
      }

      v15 = [v14 encodeQueryableValue:v10];
    }

    else
    {
      v14 = [v7 encodedDefaultValuesByArgumentName];
      v15 = [v14 objectForKeyedSubscript:v9];
    }

    v13 = v15;

    goto LABEL_9;
  }

LABEL_11:
}

void sub_22AD7325C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AD74614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4549(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AD74EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __fetchRecordsWithRecordIDs(void *a1, void *a2, char a3, void *a4, void *a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = a5;
  if (!v11)
  {
    v13 = objc_alloc(MEMORY[0x277D0F770]);
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"__fetchRecordsWithRecordIDs"];
    v11 = [v13 initWithName:v14 options:1];
  }

  v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v10, "count")}];
  v16 = objc_alloc(MEMORY[0x277CBC3E0]);
  v17 = [v10 allObjects];
  v18 = [v16 initWithRecordIDs:v17];

  v19 = [v9 cloudDatabase];
  v20 = [v19 operationConfigurationWithProcessingOptions:0];
  [v18 setConfiguration:v20];

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = ____fetchRecordsWithRecordIDs_block_invoke;
  v48[3] = &unk_2786E16A8;
  v21 = v9;
  v49 = v21;
  v22 = v11;
  v50 = v22;
  v23 = v15;
  v51 = v23;
  [v18 setPerRecordCompletionBlock:v48];
  objc_initWeak(&location, v18);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = ____fetchRecordsWithRecordIDs_block_invoke_69;
  v39[3] = &unk_2786E16F8;
  v24 = v21;
  v40 = v24;
  v38 = v22;
  v41 = v38;
  objc_copyWeak(&v45, &location);
  v46 = a3;
  v25 = v10;
  v42 = v25;
  v36 = v12;
  v43 = v36;
  v37 = v23;
  v44 = v37;
  [v18 setFetchRecordsCompletionBlock:v39];
  v26 = objc_autoreleasePoolPush();
  v27 = v24;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = HMFGetLogIdentifier();
    v30 = [v38 identifier];
    v31 = [v30 shortDescription];
    v32 = [v25 hmbDescription];
    v33 = [v18 operationID];
    *buf = 138544130;
    v53 = v29;
    v54 = 2114;
    v55 = v31;
    v56 = 2112;
    v57 = v32;
    v58 = 2114;
    v59 = v33;
    _os_log_impl(&dword_22AD27000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Starting CKFetchRecordsOperation with record IDs: %@ operationID: %{public}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v26);
  v34 = [v27 database];
  [v34 addOperation:v18];

  objc_destroyWeak(&v45);
  objc_destroyWeak(&location);

  v35 = *MEMORY[0x277D85DE8];
}

void sub_22AD79A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____fetchRecordsWithRecordIDs_block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = a1[4];
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v7)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [a1[5] identifier];
      [v15 shortDescription];
      v16 = v23 = v9;
      v17 = [v8 hmbDescription];
      *buf = 138544130;
      v25 = v14;
      v26 = 2114;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched record with ID %@: %@", buf, 0x2Au);

      v9 = v23;
    }

    objc_autoreleasePoolPop(v10);
    [a1[6] setObject:v7 forKeyedSubscript:v8];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [a1[5] identifier];
      v20 = [v19 shortDescription];
      v21 = [v8 hmbDescription];
      *buf = 138544130;
      v25 = v18;
      v26 = 2114;
      v27 = v20;
      v28 = 2112;
      v29 = v21;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch record with ID %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void ____fetchRecordsWithRecordIDs_block_invoke_69(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      *buf = 138543874;
      v47 = v11;
      v48 = 2114;
      v49 = v13;
      v50 = 2114;
      v51 = v6;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKFetchRecordsOperation failed: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    if (!WeakRetained)
    {
      _HMFPreconditionFailure();
    }

    v15 = WeakRetained;
    v16 = *(a1 + 32);
    if (*(a1 + 80) == 1)
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = ____fetchRecordsWithRecordIDs_block_invoke_73;
      v40[3] = &unk_2786E16D0;
      v41 = v16;
      v42 = *(a1 + 48);
      v45 = *(a1 + 80);
      v43 = *(a1 + 40);
      v44 = *(a1 + 56);
      v17 = [v41 retryCloudKitOperation:v15 afterError:v6 retryBlock:v40];

      if (v17)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = *(a1 + 32);
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          v22 = [*(a1 + 40) identifier];
          v23 = [v22 shortDescription];
          *buf = 138543618;
          v47 = v21;
          v48 = 2114;
          v49 = v23;
          _os_log_impl(&dword_22AD27000, v20, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] CKFetchRecordsOperation will be retried", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        [*(a1 + 40) markWithReason:@"deferred"];
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      [v16 notifyDelegateOfError:v6 forOperation:v15];
    }

    if ([v6 hmbIsCKPartialFailureError] && *(a1 + 64))
    {
      v27 = objc_autoreleasePoolPush();
      v28 = *(a1 + 32);
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = HMFGetLogIdentifier();
        v31 = [*(a1 + 40) identifier];
        v32 = [v31 shortDescription];
        *buf = 138543618;
        v47 = v30;
        v48 = 2114;
        v49 = v32;
        _os_log_impl(&dword_22AD27000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKFetchRecordsOperation partially failed, but returning those records that were successfully fetched", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      [*(a1 + 56) finishWithResult:*(a1 + 64)];
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = *(a1 + 32);
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        v37 = [*(a1 + 40) identifier];
        v38 = [v37 shortDescription];
        *buf = 138543874;
        v47 = v36;
        v48 = 2114;
        v49 = v38;
        v50 = 2114;
        v51 = v6;
        _os_log_impl(&dword_22AD27000, v35, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] CKFetchRecordsOperation failed and cannot be retried: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v33);
      [*(a1 + 40) markWithFormat:@"failed with error: %@", v6];
      [*(a1 + 56) finishWithError:v6];
    }

    goto LABEL_22;
  }

  if (v10)
  {
    v24 = HMFGetLogIdentifier();
    v25 = [*(a1 + 40) identifier];
    v26 = [v25 shortDescription];
    *buf = 138543618;
    v47 = v24;
    v48 = 2114;
    v49 = v26;
    _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKFetchRecordsOperation succeeded", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 40) markWithReason:@"succeeded"];
  [*(a1 + 56) finishWithResult:*(a1 + 64)];
LABEL_23:

  v39 = *MEMORY[0x277D85DE8];
}

void sub_22AD7B588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5204(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ____fetchNextBatch_block_invoke_5207(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 statement];
  v6 = [v5 statement];
  v7 = [*(a1 + 32) currentSequenceAsData];
  v21 = 0;
  [v3 bindPropertiesToStatement:v6 currentSequence:v7 error:&v21];
  v8 = v21;

  v9 = [*(a1 + 32) statement];
  v10 = [v9 statement];
  v20 = v8;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = ____fetchNextBatch_block_invoke_2_5210;
  v16[3] = &unk_2786E1748;
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 56);
  LOBYTE(v10) = [v4 fetchSQLite3:v10 error:&v20 block:v16];

  v11 = v20;
  v12 = v20;

  if ((v10 & 1) == 0)
  {
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;
  }

  return v11;
}

id ____fetchNextBatch_block_invoke_2_5210(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v15 = 0;
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  v13 = 0;
  obj = v7;
  v8 = [v5 fetchRowFromStatement:a2 skip:&v15 updatedSequenceColumn:&obj error:&v13];
  objc_storeStrong((v6 + 40), obj);
  v9 = v13;
  if (v8)
  {
    if ((v15 & 1) != 0 || (*(*(*(a1 + 48) + 8) + 24) = 1, [*(*(*(a1 + 56) + 8) + 40) addObject:v8], v10 = objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "count"), v10 < +[HMBSQLQueryIterator maximumRowsPerSelect](HMBSQLQueryIterator, "maximumRowsPerSelect")))
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      *a3 = 1;
    }
  }

  else
  {
    *a3 = 1;
    [*(a1 + 32) setCurrentSequence:0];
    v11 = v9;
  }

  return v11;
}

void __queryRecordsWithRecordType(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v67 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (v15)
  {
    if (v14)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x277D0F770]);
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"__queryRecordsWithRecordType"];
    v15 = [v17 initWithName:v18 options:1];

    if (v14)
    {
      goto LABEL_6;
    }
  }

  v14 = [MEMORY[0x277CBEB58] set];
LABEL_6:
  v19 = objc_alloc(MEMORY[0x277CBC578]);
  v20 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  v21 = [v19 initWithRecordType:v12 predicate:v20];

  v22 = objc_alloc(MEMORY[0x277CBC590]);
  v44 = v21;
  if (v13)
  {
    v23 = [v22 initWithCursor:v13];
  }

  else
  {
    v23 = [v22 initWithQuery:v21];
  }

  v24 = v23;
  v25 = [v11 cloudZoneID];
  v26 = [v25 zoneID];
  [v24 setZoneID:v26];

  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = ____queryRecordsWithRecordType_block_invoke;
  v55[3] = &unk_2786E17C0;
  v27 = v11;
  v56 = v27;
  v28 = v15;
  v57 = v28;
  v29 = v14;
  v58 = v29;
  [v24 setRecordMatchedBlock:v55];
  objc_initWeak(&location, v24);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = ____queryRecordsWithRecordType_block_invoke_9;
  v46[3] = &unk_2786E17E8;
  v30 = v27;
  v47 = v30;
  v31 = v28;
  v48 = v31;
  objc_copyWeak(&v53, &location);
  v45 = v12;
  v49 = v45;
  v32 = v13;
  v50 = v32;
  v42 = v29;
  v51 = v42;
  v43 = v16;
  v52 = v43;
  [v24 setQueryCompletionBlock:v46];
  v33 = objc_autoreleasePoolPush();
  v34 = v30;
  v35 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v36 = HMFGetLogIdentifier();
    v37 = [v31 identifier];
    v38 = [v37 shortDescription];
    v39 = [v24 operationID];
    *buf = 138544130;
    v60 = v36;
    v61 = 2114;
    v62 = v38;
    v63 = 2112;
    v64 = v45;
    v65 = 2114;
    v66 = v39;
    _os_log_impl(&dword_22AD27000, v35, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Starting CKQueryOperation for record type: %@ operationID: %{public}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v33);
  v40 = [v34 database];
  [v40 addOperation:v24];

  objc_destroyWeak(&v53);
  objc_destroyWeak(&location);

  v41 = *MEMORY[0x277D85DE8];
}

void sub_22AD7C4AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____queryRecordsWithRecordType_block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = a1[4];
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [a1[5] identifier];
      v16 = [v15 shortDescription];
      [v8 hmbDescription];
      v25 = v10;
      v17 = v9;
      v19 = v18 = v7;
      *buf = 138543874;
      v27 = v14;
      v28 = 2114;
      v29 = v16;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Queried record: %@", buf, 0x20u);

      v7 = v18;
      v9 = v17;
      v10 = v25;
    }

    objc_autoreleasePoolPop(v10);
    [a1[6] addObject:v8];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [a1[5] identifier];
      v22 = [v21 shortDescription];
      v23 = [v7 hmbDescription];
      *buf = 138544130;
      v27 = v20;
      v28 = 2114;
      v29 = v22;
      v30 = 2112;
      v31 = v23;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to query record with ID %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void ____queryRecordsWithRecordType_block_invoke_9(id *a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[5] identifier];
      v12 = [v11 shortDescription];
      *buf = 138543874;
      v50 = v10;
      v51 = 2114;
      v52 = v12;
      v53 = 2114;
      v54 = v6;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKQueryOperation failed: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    WeakRetained = objc_loadWeakRetained(a1 + 10);
    if (!WeakRetained)
    {
      _HMFPreconditionFailure();
    }

    v14 = WeakRetained;
    v15 = a1[4];
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = ____queryRecordsWithRecordType_block_invoke_11;
    v42 = &unk_2786E2C70;
    v43 = v15;
    v44 = a1[6];
    v45 = a1[7];
    v46 = a1[8];
    v47 = a1[5];
    v48 = a1[9];
    if ([v43 retryCloudKitOperation:v14 afterError:v6 retryBlock:&v39])
    {
      v16 = objc_autoreleasePoolPush();
      v17 = a1[4];
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [a1[5] identifier];
        v21 = [v20 shortDescription];
        *buf = 138543618;
        v50 = v19;
        v51 = 2114;
        v52 = v21;
        _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] CKQueryOperation will be retried", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }

    else
    {
      if ([v6 hmbIsCKZoneDeletedError])
      {
        v29 = objc_autoreleasePoolPush();
        v30 = a1[4];
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = HMFGetLogIdentifier();
          v33 = [a1[5] identifier];
          v34 = [v33 shortDescription];
          *buf = 138543874;
          v50 = v32;
          v51 = 2114;
          v52 = v34;
          v53 = 2114;
          v54 = v6;
          _os_log_impl(&dword_22AD27000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Received cloud zone deletion error: %{public}@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v29);
        [a1[4] handleDeletion];
      }

      [a1[9] finishWithError:v6];
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = a1[4];
    v24 = HMFGetOSLogHandle();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v25)
      {
        v26 = HMFGetLogIdentifier();
        v27 = [a1[5] identifier];
        v28 = [v27 shortDescription];
        *buf = 138543874;
        v50 = v26;
        v51 = 2114;
        v52 = v28;
        v53 = 2112;
        v54 = v5;
        _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] CKQueryOperation finished with cursor: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      __queryRecordsWithRecordType(a1[4], a1[6], v5, a1[8], a1[5], a1[9]);
    }

    else
    {
      if (v25)
      {
        v36 = HMFGetLogIdentifier();
        v37 = [a1[5] identifier];
        v38 = [v37 shortDescription];
        *buf = 138543618;
        v50 = v36;
        v51 = 2114;
        v52 = v38;
        _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] CKQueryOperation succeeded", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      [a1[9] finishWithResult:a1[8]];
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void sub_22AD7D964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5419(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AD7F46C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __fetchSubscriptions(void *a1, void *a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v11 = objc_alloc(MEMORY[0x277D0F770]);
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"__fetchSubscriptions"];
    v9 = [v11 initWithName:v12 options:1];
  }

  v13 = [MEMORY[0x277CBC418] fetchAllSubscriptionsOperation];
  v14 = [v7 operationConfigurationWithProcessingOptions:0];
  [v13 setConfiguration:v14];

  objc_initWeak(&location, v13);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ____fetchSubscriptions_block_invoke;
  v29[3] = &unk_2786E1858;
  v15 = v7;
  v30 = v15;
  v16 = v9;
  v31 = v16;
  objc_copyWeak(&v34, &location);
  v17 = v8;
  v32 = v17;
  v18 = v10;
  v33 = v18;
  [v13 setFetchSubscriptionCompletionBlock:v29];
  context = objc_autoreleasePoolPush();
  v19 = v15;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v27 = v18;
    v21 = HMFGetLogIdentifier();
    v22 = [v16 identifier];
    v23 = [v22 shortDescription];
    v24 = [v17 hmbDescription];
    v25 = [v13 operationID];
    *buf = 138544130;
    v37 = v21;
    v38 = 2114;
    v39 = v23;
    v40 = 2112;
    v41 = v24;
    v42 = 2114;
    v43 = v25;
    _os_log_impl(&dword_22AD27000, v20, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Starting CKFetchSubscriptionsOperation for database: %@ operationID: %{public}@", buf, 0x2Au);

    v18 = v27;
  }

  objc_autoreleasePoolPop(context);
  [v17 addOperation:v13];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);

  v26 = *MEMORY[0x277D85DE8];
}

void sub_22AD7F7F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____fetchSubscriptions_block_invoke(id *a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] identifier];
      v13 = [v12 shortDescription];
      *buf = 138543874;
      v49 = v11;
      v50 = 2114;
      v51 = v13;
      v52 = 2114;
      v53 = v6;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKFetchSubscriptionsOperation failed: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    WeakRetained = objc_loadWeakRetained(a1 + 8);
    if (!WeakRetained)
    {
      _HMFPreconditionFailure();
    }

    v15 = WeakRetained;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = ____fetchSubscriptions_block_invoke_20;
    v45[3] = &unk_2786E2050;
    v16 = a1[4];
    v17 = a1[6];
    v18 = a1[5];
    v19 = a1[7];
    *&v20 = v18;
    *(&v20 + 1) = v19;
    *&v21 = v16;
    *(&v21 + 1) = v17;
    v46 = v21;
    v47 = v20;
    v22 = [v16 retryCloudKitOperation:v15 afterError:v6 retryBlock:v45];
    v23 = objc_autoreleasePoolPush();
    v24 = a1[4];
    v25 = HMFGetOSLogHandle();
    v26 = v25;
    if (v22)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [a1[5] identifier];
        [v28 shortDescription];
        v30 = v29 = v5;
        *buf = 138543618;
        v49 = v27;
        v50 = 2114;
        v51 = v30;
        _os_log_impl(&dword_22AD27000, v26, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] CKFetchSubscriptionsOperation will be retried", buf, 0x16u);

        v5 = v29;
      }

      objc_autoreleasePoolPop(v23);
      [a1[5] markWithReason:@"deferred"];
    }

    else
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        v40 = [a1[5] identifier];
        [v40 shortDescription];
        v42 = v41 = v5;
        *buf = 138543874;
        v49 = v39;
        v50 = 2114;
        v51 = v42;
        v52 = 2114;
        v53 = v6;
        _os_log_impl(&dword_22AD27000, v26, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] CKFetchSubscriptionsOperation failed and cannot be retried: %{public}@", buf, 0x20u);

        v5 = v41;
      }

      objc_autoreleasePoolPop(v23);
      [a1[5] markWithFormat:@"failed with error: %@", v6];
      [a1[7] finishWithError:v6];
    }

    v38 = v46;
  }

  else
  {
    if (v10)
    {
      v31 = HMFGetLogIdentifier();
      v32 = [a1[5] identifier];
      v33 = [v32 shortDescription];
      [v5 allKeys];
      v34 = v44 = v5;
      v35 = [v34 hmbDescription];
      *buf = 138543874;
      v49 = v31;
      v50 = 2114;
      v51 = v33;
      v52 = 2112;
      v53 = v35;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] CKFetchSubscriptionsOperation succeeded with subscription IDs: %@", buf, 0x20u);

      v5 = v44;
    }

    objc_autoreleasePoolPop(v7);
    v36 = a1[7];
    v37 = MEMORY[0x277CBEB98];
    v15 = [v5 allValues];
    v38 = [v37 setWithArray:v15];
    [v36 finishWithResult:v38];
  }

  v43 = *MEMORY[0x277D85DE8];
}

void ____performCloudPush_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v7 = [*(a1 + 32) inProgressPushFuturesByOutputBlockRow];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  [v7 setObject:0 forKeyedSubscript:v8];

  os_unfair_lock_unlock(v6 + 2);
}

void sub_22AD81838(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 80));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak(&STACK[0x230]);
  _Unwind_Resume(a1);
}

void __pushWithRecovery(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [v13 cloudDatabase];
  v20 = [v19 operationConfigurationWithProcessingOptions:v17];

  v21 = [v15 allValues];
  v22 = [v13 pushRecordsToUpdate:v21 recordIDsToRemove:v16 configuration:v20 rollbackEnabled:{objc_msgSend(v17, "shouldRollBackIfMirrorOutputFails")}];

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = ____pushWithRecovery_block_invoke;
  v41[3] = &unk_2786E1948;
  v23 = v13;
  v42 = v23;
  v24 = v18;
  v43 = v24;
  v25 = [v22 addFailureBlock:v41];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = ____pushWithRecovery_block_invoke_38;
  v33[3] = &unk_2786E1970;
  v34 = v24;
  v35 = v17;
  v36 = v23;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v40 = a2;
  v26 = v16;
  v27 = v15;
  v28 = v14;
  v29 = v23;
  v30 = v17;
  v31 = v24;
  v32 = [v22 addSuccessBlock:v33];
}

void sub_22AD82E28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5701(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ____modelRequiresPostProcessing_block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  if ([a3 conformsToHMBModelNativeCKWrapper])
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = MEMORY[0x277CBEC38];

    *a4 = 1;
  }
}

void ____pushWithRecovery_block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_ERROR, "%{public}@Records push failed immediately: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) finishWithError:v3];

  v8 = *MEMORY[0x277D85DE8];
}

void ____pushWithRecovery_block_invoke_38(uint64_t a1, void *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 conflicts];
  v5 = [v4 count];

  if (!v5)
  {
LABEL_26:
    [*(a1 + 32) finishWithResult:v3];
    goto LABEL_27;
  }

  v49 = a1;
  if ([*(a1 + 40) shouldRollBackIfMirrorOutputFails])
  {
    goto LABEL_23;
  }

  v6 = [*(a1 + 48) delegate];
  v7 = a1;
  v8 = objc_opt_respondsToSelector();
  v9 = *(v7 + 48);
  v10 = [v3 conflicts];
  v11 = v10;
  if (v8)
  {
    v12 = [v10 allObjects];
    v13 = [v6 cloudZone:v9 didEncounterConflicts:v12 options:*(v7 + 40)];
  }

  else
  {
    v13 = [v9 resolveConflicts:v10 options:*(v7 + 40)];
  }

  a1 = v7;
  if ((v13 & 1) == 0)
  {
LABEL_23:
    v38 = objc_autoreleasePoolPush();
    v39 = *(a1 + 48);
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543362;
      v59 = v41;
      _os_log_impl(&dword_22AD27000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@Drop all cloud records requested by conflict resolution delegate callback.", buf, 0xCu);

      a1 = v49;
    }

    objc_autoreleasePoolPop(v38);
    goto LABEL_26;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v48 = v3;
  obj = [v3 conflicts];
  v14 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v55;
    v50 = *v55;
    do
    {
      v17 = 0;
      v51 = v15;
      do
      {
        if (*v55 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v54 + 1) + 8 * v17);
        v19 = *(a1 + 56);
        v20 = [v18 recordID];
        v21 = [v19 objectForKeyedSubscript:v20];

        v22 = objc_autoreleasePoolPush();
        v23 = *(a1 + 48);
        v24 = HMFGetOSLogHandle();
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
        if (v21)
        {
          if (v25)
          {
            HMFGetLogIdentifier();
            v26 = v53 = v22;
            v27 = [v18 recordID];
            v28 = [v27 hmbDescription];
            v29 = [v21 model];
            v30 = [v29 hmbDescription];
            *buf = 138543874;
            v59 = v26;
            v60 = 2112;
            v61 = v28;
            v62 = 2112;
            v63 = v30;
            _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping cloud push record %@ / %@ due to conflict.", buf, 0x20u);

            v15 = v51;
            v16 = v50;

            a1 = v49;
            v22 = v53;
          }
        }

        else if (v25)
        {
          v31 = HMFGetLogIdentifier();
          v32 = [v18 recordID];
          v33 = [v32 hmbDescription];
          *buf = 138543618;
          v59 = v31;
          v60 = 2112;
          v61 = v33;
          _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping cloud push record %@ due to conflict.", buf, 0x16u);

          v15 = v51;
          v16 = v50;
        }

        objc_autoreleasePoolPop(v22);
        v34 = *(a1 + 56);
        v35 = [v18 recordID];
        [v34 setObject:0 forKeyedSubscript:v35];

        v36 = *(a1 + 64);
        v37 = [v18 recordID];
        [v36 setObject:0 forKeyedSubscript:v37];

        ++v17;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v15);
  }

  if ([*(a1 + 64) count] || objc_msgSend(*(a1 + 72), "count"))
  {
    __pushWithRecovery(*(a1 + 48), *(a1 + 80), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 40), *(a1 + 32));
  }

  else
  {
    v43 = *(a1 + 32);
    v44 = [HMBCloudZoneRecordPushResult alloc];
    v45 = [MEMORY[0x277CBEB98] set];
    v46 = [MEMORY[0x277CBEB98] set];
    v47 = [(HMBCloudZoneRecordPushResult *)v44 initWithUpdatedRecords:v45 deletedRecordIDs:v46 error:0];
    [v43 finishWithResult:v47];
  }

  v3 = v48;
LABEL_27:

  v42 = *MEMORY[0x277D85DE8];
}

void sub_22AD8404C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

id ____reindexTable_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) zoneRow];
  v5 = 0;
  [v1 _deleteAllQueriesForZoneRow:v2 error:&v5];
  v3 = v5;

  return v3;
}

uint64_t __Block_byref_object_copy__5822(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ____reindexTable_block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) buildQueriableFieldsForModel:v5];
  v7 = [*(a1 + 32) context];
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ____reindexTable_block_invoke_3;
  v13[3] = &unk_2786E1A60;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v9 = v5;
  v16 = v9;
  v10 = v6;
  v11 = *(a1 + 56);
  v17 = v10;
  v18 = v11;
  v12 = [v7 sqlBlockWithActivity:0 error:&obj block:v13];
  objc_storeStrong((v8 + 40), obj);

  if ((v12 & 1) == 0)
  {
    *a3 = 1;
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }
}

id ____reindexTable_block_invoke_86(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = [*(a1 + 40) modelType];
  v10 = 0;
  [v4 _insertIndexSentinelWithZoneRow:v5 modelType:v6 error:&v10];

  v7 = v10;
  v8 = v10;

  return v7;
}

id ____reindexTable_block_invoke_3(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) zoneRow];
  v6 = [*(a1 + 48) hmbRecordRow];
  v7 = *(a1 + 56);
  v19 = 0;
  [v4 _updateQueryForZoneRow:v5 recordRow:v6 encodedColumns:v7 error:&v19];
  v8 = v19;
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 24);
  *(v9 + 24) = v10 + 1;
  if ((v10 & 0x3FF) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(*(*(a1 + 64) + 8) + 24) - 1;
      v16 = [*(a1 + 32) modelType];
      *buf = 138543874;
      v21 = v14;
      v22 = 2048;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_INFO, "%{public}@Have re-indexed %lu records of %@ type.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

void sub_22AD848B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ____initializeShareParticipantModels_block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 participant];
  v5 = *(a1 + 32);
  v6 = [v4 ckShareParticipant];
  v7 = [v6 participantID];
  v8 = [v5 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = *(a1 + 64);
    v10 = [v3 participant];
    v11 = [v10 clientIdentifier];
    [v9 setObject:v3 forKeyedSubscript:v11];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v4 ckShareParticipant];
      v17 = [v16 participantID];
      *buf = 138543618;
      v25 = v15;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Removing participant that is no longer on share: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v18 = *(a1 + 48);
    v19 = [v3 hmbModelID];
    v23 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    v21 = [v18 remove:v20];

    v10 = [*(a1 + 40) recordIDForModel:v3];
    [*(a1 + 56) addObject:v10];
  }

  v22 = *MEMORY[0x277D85DE8];
}

id __removeParticipantFromShare(void *a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = v5;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v57 = v11;
    v58 = 2112;
    v59 = v6;
    v60 = 2112;
    v61 = v7;
    _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing participant %@ from share %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v7 participants];
  v51 = MEMORY[0x277D85DD0];
  v52 = 3221225472;
  v53 = ____removeParticipantFromShare_block_invoke;
  v54 = &unk_2786E1DE8;
  v13 = v6;
  v55 = v13;
  v14 = [v12 na_firstObjectPassingTest:&v51];

  if (!v14)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v9;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v57 = v25;
      _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_INFO, "%{public}@Not removing participant from share: No equal participant exists on the share", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x277D2C900] futureWithResult:v7];
    goto LABEL_20;
  }

  if ([v14 role] == 1)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v9;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v57 = v18;
      _os_log_impl(&dword_22AD27000, v17, OS_LOG_TYPE_FAULT, "%{public}@Cannot remove participant from share: Cannot remove the owner from a share", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = MEMORY[0x277D2C900];
    v20 = MEMORY[0x277CCA9B8];
    v21 = @"Cannot remove the owner from a share";
LABEL_15:
    v31 = [v20 hmfErrorWithCode:5 reason:v21];
    v32 = [v19 futureWithError:v31];

    goto LABEL_21;
  }

  if ([v14 isCurrentUser])
  {
    v27 = objc_autoreleasePoolPush();
    v28 = v9;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v57 = v30;
      _os_log_impl(&dword_22AD27000, v29, OS_LOG_TYPE_FAULT, "%{public}@Cannot remove participant from share: Cannot remove the current user from the share", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v19 = MEMORY[0x277D2C900];
    v20 = MEMORY[0x277CCA9B8];
    v21 = @"Cannot remove the current user from the share";
    goto LABEL_15;
  }

  v33 = [v7 currentUserParticipant];
  if ([v33 role] == 1)
  {

LABEL_19:
    [v7 removeParticipant:v14];
    v26 = [v9 _pushUpdatedShare:v7];
LABEL_20:
    v32 = v26;
    goto LABEL_21;
  }

  v34 = [v7 currentUserParticipant];
  v35 = [v34 role];

  if (v35 == 2)
  {
    goto LABEL_19;
  }

  v38 = objc_autoreleasePoolPush();
  v39 = v9;
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
  {
    v41 = HMFGetLogIdentifier();
    v42 = [v7 currentUserParticipant];
    v43 = [v42 role];
    *buf = 138543618;
    v57 = v41;
    v58 = 2048;
    v59 = v43;
    _os_log_impl(&dword_22AD27000, v40, OS_LOG_TYPE_FAULT, "%{public}@Current user participant with non-owner role %ld cannot remove participants from a share", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v38);
  v44 = MEMORY[0x277D2C900];
  v45 = MEMORY[0x277CCA9B8];
  v46 = MEMORY[0x277CCACA8];
  v47 = [v7 currentUserParticipant];
  v48 = [v47 role];
  v49 = [v46 stringWithFormat:@"Current user participant with non-owner role %ld cannot remove participants from a share", v48, v51, v52, v53, v54];
  v50 = [v45 hmfErrorWithCode:5 reason:v49];
  v32 = [v44 futureWithError:v50];

LABEL_21:
  v36 = *MEMORY[0x277D85DE8];

  return v32;
}

void sub_22AD8D304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6375(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __addParticipantToShare(void *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = v5;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v26 = v11;
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding participant %@ to share %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v7 participants];
  v13 = [v12 containsObject:v6];

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v9;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543874;
      v26 = v17;
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_INFO, "%{public}@Removing participant %@ because it already exists on share %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v18 = __removeParticipantFromShare(v15, v6, v7);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = ____addParticipantToShare_block_invoke;
    v22[3] = &unk_2786E1CD0;
    v23 = v15;
    v24 = v6;
    v19 = [v18 flatMap:v22];
  }

  else
  {
    [v7 addParticipant:v6];
    v19 = [v9 _pushUpdatedShare:v7];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}