@interface HMDMessageFilterChain
- (BOOL)acceptMessage:(id)a3 error:(id *)a4;
- (BOOL)shouldCloudSyncData;
- (HMDMessageFilterChain)init;
- (NSArray)filters;
- (void)addMessageFilter:(id)a3;
- (void)removeMessageFilter:(id)a3;
- (void)resetConfiguration:(id)a3 completionHandler:(id)a4;
@end

@implementation HMDMessageFilterChain

- (NSArray)filters
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_filters copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)resetConfiguration:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_filters;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v15 + 1) + 8 * v11++) resetConfiguration];
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v6 && v7)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__HMDMessageFilterChain_resetConfiguration_completionHandler___block_invoke;
    block[3] = &unk_278688B80;
    v14 = v7;
    dispatch_async(v6, block);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldCloudSyncData
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(HMDMessageFilterChain *)self filters];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) shouldCloudSyncData])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)acceptMessage:(id)a3 error:(id *)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 destination];
  v8 = [v7 target];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = [(HMDMessageFilterChain *)self filters];
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v28 = self;
    v29 = a4;
    v12 = 0;
    v13 = *v32;
    while (2)
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v31 + 1) + 8 * v14);
        v30 = v15;
        v17 = [v16 acceptMessage:v6 target:v8 errorReason:&v30];
        v12 = v30;

        if ((v17 & 1) == 0)
        {
          v19 = objc_autoreleasePoolPush();
          v20 = v28;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = HMFGetLogIdentifier();
            v23 = [v16 name];
            v24 = [v6 name];
            *buf = 138544130;
            v36 = v22;
            v37 = 2112;
            v38 = v23;
            v39 = 2112;
            v40 = v24;
            v41 = 2112;
            v42 = v12;
            _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@%@ Message %@ was rejected due to reason: %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v19);
          v18 = 0;
          goto LABEL_13;
        }

        ++v14;
        v15 = v12;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v31 objects:v43 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v18 = 1;
LABEL_13:
    a4 = v29;
  }

  else
  {
    v12 = 0;
    v18 = 1;
  }

  if (a4)
  {
    if (v18)
    {
      v25 = 0;
    }

    else
    {
      v25 = v12;
    }

    *a4 = v25;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)removeMessageFilter:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_filters removeObject:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)addMessageFilter:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_filters addObject:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (HMDMessageFilterChain)init
{
  v6.receiver = self;
  v6.super_class = HMDMessageFilterChain;
  v2 = [(HMDMessageFilterChain *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    filters = v2->_filters;
    v2->_filters = v3;
  }

  return v2;
}

@end