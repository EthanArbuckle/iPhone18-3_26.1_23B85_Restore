@interface HMDBackingStoreTransactionActions
+ (id)logCategory;
- (BOOL)addPostApplyActionIfNotPresent:(id)a3 usingBlock:(id)a4;
- (HMDBackingStore)backingStore;
- (HMDBackingStoreTransactionActions)initWithBackingStore:(id)a3 options:(id)a4;
- (NSMutableDictionary)userInfo;
- (id)description;
- (void)addPostApplyActionUsingBlock:(id)a3;
- (void)invokePostApplyActions;
@end

@implementation HMDBackingStoreTransactionActions

- (HMDBackingStore)backingStore
{
  WeakRetained = objc_loadWeakRetained(&self->_backingStore);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDBackingStoreTransactionOptions *)self _description];
  v5 = v4;
  v6 = "n";
  if (self->_local)
  {
    v7 = "y";
  }

  else
  {
    v7 = "n";
  }

  if (self->_changed)
  {
    v8 = "y";
  }

  else
  {
    v8 = "n";
  }

  if (self->_saveToAssistant)
  {
    v9 = "y";
  }

  else
  {
    v9 = "n";
  }

  if (self->_saveToSharedUserAccount)
  {
    v6 = "y";
  }

  v10 = [v3 stringWithFormat:@"<actions: %@ local=%s change=%s assistant=%s account=%s>", v4, v7, v8, v9, v6];

  return v10;
}

- (NSMutableDictionary)userInfo
{
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = self->_userInfo;
    self->_userInfo = v4;

    userInfo = self->_userInfo;
  }

  return userInfo;
}

- (void)invokePostApplyActions
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_postApplyActionsInvoked)
  {
    self->_postApplyActionsInvoked = 1;
    v3 = self->_postApplyActions;
    if (v3)
    {
      postApplyActions = self->_postApplyActions;
      self->_postApplyActions = 0;

      postApplyActionNames = self->_postApplyActionNames;
      self->_postApplyActionNames = 0;

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = v3;
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          v10 = 0;
          do
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            (*(*(*(&v12 + 1) + 8 * v10) + 16))(*(*(&v12 + 1) + 8 * v10));
            ++v10;
          }

          while (v8 != v10);
          v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)addPostApplyActionIfNotPresent:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_postApplyActionsInvoked)
  {
    goto LABEL_4;
  }

  postApplyActionNames = self->_postApplyActionNames;
  if (!postApplyActionNames)
  {
    v10 = [MEMORY[0x277CBEB58] setWithObject:v6];
    v11 = self->_postApplyActionNames;
    self->_postApplyActionNames = v10;

LABEL_7:
    [(HMDBackingStoreTransactionActions *)self addPostApplyActionUsingBlock:v7];
    v9 = 1;
    goto LABEL_8;
  }

  if (([(NSMutableSet *)postApplyActionNames containsObject:v6]& 1) == 0)
  {
    [(NSMutableSet *)self->_postApplyActionNames addObject:v6];
    goto LABEL_7;
  }

LABEL_4:
  v9 = 0;
LABEL_8:

  return v9;
}

- (void)addPostApplyActionUsingBlock:(id)a3
{
  v4 = a3;
  if (!self->_postApplyActionsInvoked)
  {
    postApplyActions = self->_postApplyActions;
    v10 = v4;
    if (postApplyActions)
    {
      v6 = _Block_copy(v4);
      [(NSMutableArray *)postApplyActions addObject:v6];
    }

    else
    {
      v7 = MEMORY[0x277CBEB18];
      v6 = _Block_copy(v4);
      v8 = [v7 arrayWithObject:v6];
      v9 = self->_postApplyActions;
      self->_postApplyActions = v8;
    }

    v4 = v10;
  }
}

- (HMDBackingStoreTransactionActions)initWithBackingStore:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 source];
  v9 = [v7 destination];
  v10 = [v7 label];
  v11 = [v7 mustReplay];
  v12 = [v7 mustPush];

  v16.receiver = self;
  v16.super_class = HMDBackingStoreTransactionActions;
  v13 = [(HMDBackingStoreTransactionOptions *)&v16 initWithSource:v8 destination:v9 label:v10 mustReplay:v11 mustPush:v12];

  if (v13)
  {
    objc_storeWeak(&v13->_backingStore, v6);
    v14 = v13;
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_46278 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_46278, &__block_literal_global_204);
  }

  v3 = logCategory__hmf_once_v4_46279;

  return v3;
}

uint64_t __48__HMDBackingStoreTransactionActions_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_46279;
  logCategory__hmf_once_v4_46279 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end