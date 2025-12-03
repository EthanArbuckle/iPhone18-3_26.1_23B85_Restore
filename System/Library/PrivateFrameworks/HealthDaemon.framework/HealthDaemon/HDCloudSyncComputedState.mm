@interface HDCloudSyncComputedState
- (HDCloudSyncComputedState)init;
- (NSArray)pullTargets;
- (NSArray)pushTargets;
- (NSArray)targets;
- (id)detailedDescription;
- (void)addTargets:(id)targets;
- (void)replaceTargets:(id)targets;
- (void)resetTargets;
@end

@implementation HDCloudSyncComputedState

- (HDCloudSyncComputedState)init
{
  v6.receiver = self;
  v6.super_class = HDCloudSyncComputedState;
  v2 = [(HDCloudSyncComputedState *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    targets = v2->_targets;
    v2->_targets = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (NSArray)targets
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_targets;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)addTargets:(id)targets
{
  targetsCopy = targets;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_targets addObjectsFromArray:targetsCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)pushTargets
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_targets hk_filter:&__block_literal_global_181];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)pullTargets
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_targets hk_filter:&__block_literal_global_294_0];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)replaceTargets:(id)targets
{
  targetsCopy = targets;
  os_unfair_lock_lock(&self->_lock);
  targets = self->_targets;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__HDCloudSyncComputedState_replaceTargets___block_invoke;
  v11[3] = &unk_278614BF0;
  v12 = targetsCopy;
  v6 = targetsCopy;
  v7 = [(NSMutableArray *)targets hk_filter:v11];
  v8 = [v7 arrayByAddingObjectsFromArray:v6];

  v9 = [v8 copy];
  v10 = self->_targets;
  self->_targets = v9;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)resetTargets
{
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  targets = self->_targets;
  self->_targets = v3;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)detailedDescription
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  pushTargets = [(HDCloudSyncComputedState *)self pushTargets];
  [v3 appendFormat:@"Push Targets (%lu):\n", objc_msgSend(pushTargets, "count")];
  if ([pushTargets count])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = pushTargets;
    v5 = pushTargets;
    v6 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v36;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v35 + 1) + 8 * i);
          v11 = [v10 description];
          v12 = [v11 hk_stringIndentedBy:4];
          [v3 appendString:v12];

          [v3 appendString:@"\n"];
          storeRecord = [v10 storeRecord];
          v14 = [storeRecord description];
          v15 = [v14 hk_stringIndentedBy:4];
          [v3 appendString:v15];

          [v3 appendString:@"\n"];
        }

        v7 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v7);
    }

    pushTargets = v30;
  }

  pullTargets = [(HDCloudSyncComputedState *)self pullTargets];
  [v3 appendFormat:@"\nPull Targets (%lu):\n", objc_msgSend(pullTargets, "count")];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = pullTargets;
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v31 + 1) + 8 * j);
        v23 = [v22 description];
        v24 = [v23 hk_stringIndentedBy:4];
        [v3 appendString:v24];

        [v3 appendString:@"\n"];
        storeRecord2 = [v22 storeRecord];
        v26 = [storeRecord2 description];
        v27 = [v26 hk_stringIndentedBy:4];
        [v3 appendString:v27];

        [v3 appendString:@"\n"];
      }

      v19 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v19);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v3;
}

@end