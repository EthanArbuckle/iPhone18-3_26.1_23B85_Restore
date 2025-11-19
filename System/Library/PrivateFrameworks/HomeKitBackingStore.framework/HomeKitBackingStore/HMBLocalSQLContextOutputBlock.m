@interface HMBLocalSQLContextOutputBlock
+ (id)logCategory;
- (HMBLocalSQLContext)owner;
- (HMBLocalSQLContextOutputBlock)initWithOwner:(id)a3 identifier:(id)a4 zoneRow:(unint64_t)a5 blockRow:(unint64_t)a6;
- (id)abort;
- (id)commit:(id)a3;
- (id)updateModelID:(id)a3 modelEncoding:(unint64_t)a4 modelData:(id)a5;
@end

@implementation HMBLocalSQLContextOutputBlock

- (HMBLocalSQLContext)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (id)abort
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [(HMBLocalSQLContextOutputBlock *)self blockRow];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [(HMBLocalSQLContextOutputBlock *)v5 activity];
      v10 = [v9 identifier];
      v11 = [v10 shortDescription];
      *buf = 138543618;
      v36 = v8;
      v37 = 2114;
      v38 = v11;
      _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Aborting output block", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v12 = [(HMBLocalSQLContextOutputBlock *)v5 owner];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __38__HMBLocalSQLContextOutputBlock_abort__block_invoke;
    v34[3] = &unk_2786E24B0;
    v34[4] = v5;
    v13 = [v12 sqlBlockWithActivity:0 block:v34];

    v14 = objc_autoreleasePoolPush();
    v15 = v5;
    v16 = HMFGetOSLogHandle();
    v17 = v16;
    if (v13)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [(HMBLocalSQLContextOutputBlock *)v15 activity];
        v20 = [v19 identifier];
        v21 = [v20 shortDescription];
        *buf = 138543874;
        v36 = v18;
        v37 = 2114;
        v38 = v21;
        v39 = 2112;
        v40 = v13;
        _os_log_impl(&dword_22AD27000, v17, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to abort output block: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      [(HMBLocalSQLContextOutputBlock *)v15 setBlockRow:0];
      v22 = v13;
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [(HMBLocalSQLContextOutputBlock *)v15 activity];
        v29 = [v28 identifier];
        v30 = [v29 shortDescription];
        *buf = 138543618;
        v36 = v27;
        v37 = 2114;
        v38 = v30;
        _os_log_impl(&dword_22AD27000, v17, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Successfully aborted output block", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      [(HMBLocalSQLContextOutputBlock *)v15 setBlockRow:0];
      v31 = [(HMBLocalSQLContextOutputBlock *)v15 activity];
      [v31 invalidate];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [(HMBLocalSQLContextOutputBlock *)v5 activity];
      v25 = [v24 identifier];
      v26 = [v25 shortDescription];
      *buf = 138543618;
      v36 = v23;
      v37 = 2114;
      v38 = v26;
      _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Asked to abort invalid output block", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v13 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v13;
}

id __38__HMBLocalSQLContextOutputBlock_abort__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v11 = 0;
  [v4 _deleteItemsWithBlockRow:objc_msgSend(v3 error:{"blockRow"), &v11}];
  v5 = v11;
  v6 = [*(a1 + 32) blockRow];
  v10 = v5;
  [v4 _deleteBlockWithRow:v6 error:&v10];

  v7 = v10;
  v8 = v10;

  return v7;
}

- (id)commit:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMBLocalSQLContextOutputBlock *)self blockRow];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [(HMBLocalSQLContextOutputBlock *)v7 activity];
      v12 = [v11 identifier];
      v13 = [v12 shortDescription];
      *buf = 138543618;
      v45 = v10;
      v46 = 2114;
      v47 = v13;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Committing output block.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v14 = [(HMBLocalSQLContextOutputBlock *)v7 activity];
    [v14 markWithReason:@"committing block."];

    v15 = [(HMBLocalSQLContextOutputBlock *)v7 owner];
    v38 = MEMORY[0x277D85DD0];
    v39 = 3221225472;
    v40 = __40__HMBLocalSQLContextOutputBlock_commit___block_invoke;
    v41 = &unk_2786E1B00;
    v42 = v7;
    v43 = v4;
    v16 = [v15 sqlBlockWithActivity:0 block:&v38];

    v17 = objc_autoreleasePoolPush();
    v18 = v7;
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    if (v16)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [(HMBLocalSQLContextOutputBlock *)v18 activity:v38];
        v23 = [v22 identifier];
        v24 = [v23 shortDescription];
        *buf = 138543874;
        v45 = v21;
        v46 = 2114;
        v47 = v24;
        v48 = 2112;
        v49 = v16;
        _os_log_impl(&dword_22AD27000, v20, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to commit output block: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      v25 = [(HMBLocalSQLContextOutputBlock *)v18 abort];
      [(HMBLocalSQLContextOutputBlock *)v18 setBlockRow:0];
      v26 = v16;
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [(HMBLocalSQLContextOutputBlock *)v18 activity:v38];
        v33 = [v32 identifier];
        v34 = [v33 shortDescription];
        *buf = 138543618;
        v45 = v31;
        v46 = 2114;
        v47 = v34;
        _os_log_impl(&dword_22AD27000, v20, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Successfully committed input block", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      [(HMBLocalSQLContextOutputBlock *)v18 setBlockRow:0];
      v35 = [(HMBLocalSQLContextOutputBlock *)v18 activity];
      [v35 invalidate];
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [(HMBLocalSQLContextOutputBlock *)v7 activity];
      v29 = [v28 identifier];
      v30 = [v29 shortDescription];
      *buf = 138543618;
      v45 = v27;
      v46 = 2114;
      v47 = v30;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Asked to commit invalid output block", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v16 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v16;
}

id __40__HMBLocalSQLContextOutputBlock_commit___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 blockRow];
  v6 = *(a1 + 40);
  v9 = 0;
  [v4 _updateBlockWithRow:v5 options:v6 error:&v9];

  v7 = v9;

  return v7;
}

- (id)updateModelID:(id)a3 modelEncoding:(unint64_t)a4 modelData:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if ([(HMBLocalSQLContextOutputBlock *)self blockRow])
  {
    v10 = [(HMBLocalSQLContextOutputBlock *)self owner];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __71__HMBLocalSQLContextOutputBlock_updateModelID_modelEncoding_modelData___block_invoke;
    v32 = &unk_2786E1AD8;
    v33 = self;
    v34 = v8;
    v36 = a4;
    v35 = v9;
    v11 = [v10 sqlBlockWithActivity:0 block:&v29];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [(HMBLocalSQLContextOutputBlock *)v13 activity:v29];
        v17 = [v16 identifier];
        v18 = [v17 shortDescription];
        *buf = 138543874;
        v38 = v15;
        v39 = 2114;
        v40 = v18;
        v41 = 2112;
        v42 = v11;
        _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to add additional entries on output block: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      v19 = [(HMBLocalSQLContextOutputBlock *)v13 abort];
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
      v24 = [(HMBLocalSQLContextOutputBlock *)v21 activity];
      v25 = [v24 identifier];
      v26 = [v25 shortDescription];
      *buf = 138543618;
      v38 = v23;
      v39 = 2114;
      v40 = v26;
      _os_log_impl(&dword_22AD27000, v22, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Asked to add additional entries on invalid output block", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v11 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v11;
}

id __71__HMBLocalSQLContextOutputBlock_updateModelID_modelEncoding_modelData___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 zoneRow];
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "blockRow")}];
  v13 = 0;
  [v4 _updateRecordWithZoneRow:v5 modelID:v8 pushEncoding:v6 pushData:v7 pushBlockRow:v9 error:&v13];

  v10 = v13;
  v11 = v13;

  return v10;
}

- (HMBLocalSQLContextOutputBlock)initWithOwner:(id)a3 identifier:(id)a4 zoneRow:(unint64_t)a5 blockRow:(unint64_t)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v32.receiver = self;
  v32.super_class = HMBLocalSQLContextOutputBlock;
  v12 = [(HMBLocalSQLContextOutputBlock *)&v32 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a4);
    objc_storeWeak(&v13->_owner, v10);
    v13->_blockRow = a6;
    v13->_zoneRow = a5;
    v14 = objc_alloc(MEMORY[0x277D0F770]);
    v15 = MEMORY[0x277CCACA8];
    v16 = [(HMBLocalSQLContextOutputBlock *)v13 logIdentifier];
    v17 = [v15 stringWithFormat:@"HMBLocalSQLContextOutputBlock.%@", v16];
    v18 = [v14 initWithName:v17];
    activity = v13->_activity;
    v13->_activity = v18;

    v20 = objc_autoreleasePoolPush();
    v21 = v13;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [(HMBLocalSQLContextOutputBlock *)v21 activity];
      v25 = [v24 identifier];
      v26 = [v25 shortDescription];
      [(HMBLocalSQLContextOutputBlock *)v21 identifier];
      v31 = v20;
      v28 = v27 = v11;
      *buf = 138543874;
      v34 = v23;
      v35 = 2114;
      v36 = v26;
      v37 = 2112;
      v38 = v28;
      _os_log_impl(&dword_22AD27000, v22, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Creating Output Block for %@", buf, 0x20u);

      v11 = v27;
      v20 = v31;
    }

    objc_autoreleasePoolPop(v20);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11, &__block_literal_global_6072);
  }

  v3 = logCategory__hmf_once_v12;

  return v3;
}

uint64_t __44__HMBLocalSQLContextOutputBlock_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v12;
  logCategory__hmf_once_v12 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end