@interface MGGroupsQueryAgent
- (MGGroupsQueryAgent)initWithDelegate:(id)a3;
- (MGGroupsQueryAgentDelegate)delegate;
- (id)outstandingQueryForIdentifier:(id)a3;
- (void)_performQueryExchangeUsingGroups:(id)a3 currentIdentifier:(id)a4;
- (void)_prepareWithGroups:(id)a3 currentIdentifier:(id)a4;
- (void)_queryOperation:(id)a3 didFindGroups:(id)a4;
- (void)_withLock:(id)a3;
- (void)addOutstandingQuery:(id)a3;
- (void)groupsMediator:(id)a3 didUpdateGroups:(id)a4;
- (void)groupsMediatorRemoved:(id)a3;
- (void)removeOutstandingQuery:(id)a3;
- (void)setCurrentDeviceIdentifier:(id)a3;
- (void)setCurrentIdentifier:(id)a3;
- (void)setGroups:(id)a3;
- (void)setGroupsByMediator:(id)a3;
@end

@implementation MGGroupsQueryAgent

- (MGGroupsQueryAgent)initWithDelegate:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v34.receiver = self;
  v34.super_class = MGGroupsQueryAgent;
  v5 = [(MGGroupsQueryAgent *)&v34 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = objc_alloc_init(MEMORY[0x277CCABD8]);
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = v6->_queue;
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"%@-%p", v12, v6];
    [(NSOperationQueue *)v9 setName:v13];

    v14 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    queries = v6->_queries;
    v6->_queries = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    operations = v6->_operations;
    v6->_operations = v16;

    v18 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    mediators = v6->_mediators;
    v6->_mediators = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    mediatorsByGroup = v6->_mediatorsByGroup;
    v6->_mediatorsByGroup = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    groupsByMediator = v6->_groupsByMediator;
    v6->_groupsByMediator = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    groups = v6->_groups;
    v6->_groups = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    containers = v6->_containers;
    v6->_containers = v26;

    v28 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v29 = [v28 integerForKey:@"com.apple.media-groups.max-operations"];
    if (v29 <= 5)
    {
      v30 = 5;
    }

    else
    {
      v30 = v29;
    }

    [(NSOperationQueue *)v6->_queue setMaxConcurrentOperationCount:v30];
    v31 = MGLogForCategory(4);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v36 = v6;
      v37 = 2048;
      v38 = v30;
      _os_log_impl(&dword_25863A000, v31, OS_LOG_TYPE_DEFAULT, "%p operating with a max concurrency of %ld", buf, 0x16u);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setGroups:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(MGGroupsQueryAgent *)self groups];
  v6 = [v5 isEqualToDictionary:v4];

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = [v4 copy];

    objc_storeStrong(&self->_groups, v7);
    v8 = MGLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      v12 = self;
      v13 = 2048;
      v14 = v7;
      _os_log_impl(&dword_25863A000, v8, OS_LOG_TYPE_DEFAULT, "%p groups updated to %p", &v11, 0x16u);
    }

    v9 = [(MGGroupsQueryAgent *)self currentIdentifier];
    [(MGGroupsQueryAgent *)self _performQueryExchangeUsingGroups:v7 currentIdentifier:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setGroupsByMediator:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(MGGroupsQueryAgent *)self groupsByMediator];
  v6 = [v5 isEqualToDictionary:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 copy];

    v22 = v7;
    objc_storeStrong(&self->_groupsByMediator, v7);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = [(NSDictionary *)self->_groupsByMediator allKeys];
    v11 = [v10 sortedArrayUsingComparator:&__block_literal_global];

    obj = v11;
    v26 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v26)
    {
      v24 = *v32;
      v25 = self;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          v14 = [(NSDictionary *)self->_groupsByMediator objectForKey:v13];
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v28;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v28 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v27 + 1) + 8 * j);
                v20 = [v14 objectForKey:v19];
                [v8 setObject:v20 forKey:v19];
                [v9 setObject:v13 forKey:v19];
              }

              v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v16);
          }

          self = v25;
        }

        v26 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v26);
    }

    [(MGGroupsQueryAgent *)self setMediatorsByGroup:v9];
    [(MGGroupsQueryAgent *)self setGroups:v8];

    v4 = v22;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentIdentifier:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_currentIdentifier == v4 || ([(MGGroupIdentifier *)v4 isEqual:?]& 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = [(MGGroupIdentifier *)v4 copy];

    objc_storeStrong(&self->_currentIdentifier, v5);
    v6 = MGLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218240;
      v10 = self;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEFAULT, "%p current identifier changed to %p", &v9, 0x16u);
    }

    v7 = [(MGGroupsQueryAgent *)self groups];
    [(MGGroupsQueryAgent *)self _performQueryExchangeUsingGroups:v7 currentIdentifier:v5];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentDeviceIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__MGGroupsQueryAgent_setCurrentDeviceIdentifier___block_invoke;
  v6[3] = &unk_27989EE80;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(MGGroupsQueryAgent *)self _withLock:v6];
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_performQueryExchangeUsingGroups:(id)a3 currentIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  v8 = [(MGGroupsQueryAgent *)self queue];
  [v8 cancelAllOperations];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__MGGroupsQueryAgent__performQueryExchangeUsingGroups_currentIdentifier___block_invoke;
  v11[3] = &unk_27989F120;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [v8 addBarrierBlock:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __73__MGGroupsQueryAgent__performQueryExchangeUsingGroups_currentIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _prepareWithGroups:*(a1 + 32) currentIdentifier:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_prepareWithGroups:(id)a3 currentIdentifier:(id)a4
{
  v124 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v112[0] = MEMORY[0x277D85DD0];
  v112[1] = 3221225472;
  v112[2] = __59__MGGroupsQueryAgent__prepareWithGroups_currentIdentifier___block_invoke;
  v112[3] = &unk_27989F170;
  v112[4] = self;
  v8 = v6;
  v113 = v8;
  v9 = v7;
  v114 = v9;
  v10 = MEMORY[0x259C85F90](v112);
  if ((v10[2])())
  {
    v11 = MGLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v121 = self;
      v122 = 2048;
      v123 = v8;
      _os_log_impl(&dword_25863A000, v11, OS_LOG_TYPE_DEFAULT, "%p got an update after %p", buf, 0x16u);
    }
  }

  else
  {
    v69 = self;
    v76 = v9;
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v12 setObject:v8 forKey:@"ALL_GROUPS_MAP"];
    v13 = [v8 allValues];
    v75 = v12;
    [v12 setObject:v13 forKey:@"ALL_GROUPS_LIST"];
    v14 = [MEMORY[0x277D27470] type];
    v119[0] = v14;
    v15 = [MEMORY[0x277D274C0] type];
    v119[1] = v15;
    v16 = [MEMORY[0x277D274A8] type];
    v119[2] = v16;
    v17 = [MEMORY[0x277D27488] type];
    v119[3] = v17;
    v18 = [MEMORY[0x277D27498] type];
    v119[4] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v119 count:5];

    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = __59__MGGroupsQueryAgent__prepareWithGroups_currentIdentifier___block_invoke_24;
    v110[3] = &unk_27989F198;
    v20 = v19;
    v111 = v20;
    v21 = [v13 indexesOfObjectsPassingTest:v110];
    v22 = [v13 objectsAtIndexes:v21];

    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = __59__MGGroupsQueryAgent__prepareWithGroups_currentIdentifier___block_invoke_2_26;
    v108[3] = &unk_27989F1C0;
    v71 = v20;
    v109 = v71;
    v23 = [v22 sortedArrayUsingComparator:v108];

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v104[0] = MEMORY[0x277D85DD0];
    v104[1] = 3221225472;
    v104[2] = __59__MGGroupsQueryAgent__prepareWithGroups_currentIdentifier___block_invoke_3;
    v104[3] = &unk_27989F1E8;
    v25 = v10;
    v107 = v25;
    v73 = v8;
    v74 = v8;
    v105 = v74;
    v26 = v24;
    v106 = v26;
    [v23 enumerateObjectsUsingBlock:v104];
    v72 = v10;
    v70 = v23;
    if (v10[2](v25))
    {
      v27 = MGLogForCategory(4);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v121 = v69;
        v122 = 2048;
        v123 = v74;
        _os_log_impl(&dword_25863A000, v27, OS_LOG_TYPE_DEFAULT, "%p got a newer update after %p", buf, 0x16u);
      }

      v11 = v75;
      v9 = v76;
    }

    else
    {
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v28 = v23;
      v29 = [v28 countByEnumeratingWithState:&v100 objects:v118 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v101;
        v77 = *v101;
        v78 = v28;
        do
        {
          v32 = 0;
          v80 = v30;
          do
          {
            if (*v101 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v100 + 1) + 8 * v32);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v82 = v32;
                v34 = [v33 identifier];
                v96 = 0u;
                v97 = 0u;
                v98 = 0u;
                v99 = 0u;
                v35 = [v33 memberIdentifiers];
                v36 = [v35 countByEnumeratingWithState:&v96 objects:v117 count:16];
                if (v36)
                {
                  v37 = v36;
                  v38 = *v97;
                  do
                  {
                    for (i = 0; i != v37; ++i)
                    {
                      if (*v97 != v38)
                      {
                        objc_enumerationMutation(v35);
                      }

                      v40 = [v26 objectForKey:*(*(&v96 + 1) + 8 * i)];
                      v94[0] = MEMORY[0x277D85DD0];
                      v94[1] = 3221225472;
                      v94[2] = __59__MGGroupsQueryAgent__prepareWithGroups_currentIdentifier___block_invoke_29;
                      v94[3] = &unk_27989F210;
                      v41 = v34;
                      v95 = v41;
                      v42 = [v40 objectsPassingTest:v94];

                      if ([v42 count])
                      {
                        v43 = [v26 objectForKey:v41];
                        if (!v43)
                        {
                          v43 = objc_alloc_init(MEMORY[0x277CBEB58]);
                          [v26 setObject:v43 forKey:v41];
                        }

                        [v43 unionSet:v42];
                      }
                    }

                    v37 = [v35 countByEnumeratingWithState:&v96 objects:v117 count:16];
                  }

                  while (v37);
                }

                v31 = v77;
                v28 = v78;
                v30 = v80;
                v32 = v82;
              }
            }

            ++v32;
          }

          while (v32 != v30);
          v30 = [v28 countByEnumeratingWithState:&v100 objects:v118 count:16];
        }

        while (v30);
      }

      v11 = v75;
      [v75 setObject:v26 forKey:@"CONTAINMENT_MAP"];
      if (v76 && ([v74 objectForKey:?], (v44 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v45 = v44;
        [v75 setObject:v44 forKey:@"CURRENT_SOLO_GROUP"];
        v115[0] = @"CURRENT_HOME";
        v46 = MEMORY[0x277CCAC30];
        v81 = [MEMORY[0x277D27470] type];
        v79 = [v46 predicateWithFormat:@"SELF.type == %@", v81];
        v116[0] = v79;
        v115[1] = @"CURRENT_ROOM";
        v47 = MEMORY[0x277CCAC30];
        v48 = [MEMORY[0x277D274A8] type];
        v49 = [v47 predicateWithFormat:@"SELF.type == %@", v48];
        v116[1] = v49;
        v115[2] = @"CURRENT_MEDIA_SYSTEM";
        v50 = MEMORY[0x277CCAC30];
        v51 = [MEMORY[0x277D27498] type];
        v52 = [v50 predicateWithFormat:@"SELF.type == %@", v51];
        v116[2] = v52;
        v115[3] = @"CURRENT_ZONE";
        v53 = MEMORY[0x277CCAC30];
        v54 = [MEMORY[0x277D274C0] type];
        v55 = [v53 predicateWithFormat:@"SELF.type == %@", v54];
        v116[3] = v55;
        v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:4];

        v56 = MEMORY[0x277CCAC30];
        v57 = [v45 identifier];
        v58 = [v56 predicateWithFormat:@"$CONTAINMENT_MAP[%@] != nil", v57];

        v59 = MEMORY[0x277CCAC30];
        v11 = v75;
        v60 = [v45 identifier];
        v61 = [v59 predicateWithFormat:@"SUBQUERY($CONTAINMENT_MAP[%@], $container, SELF.identifier IN $container)[SIZE] > 0", v60];

        v90[0] = MEMORY[0x277D85DD0];
        v90[1] = 3221225472;
        v90[2] = __59__MGGroupsQueryAgent__prepareWithGroups_currentIdentifier___block_invoke_2_60;
        v90[3] = &unk_27989F238;
        v91 = v58;
        v92 = v61;
        v93 = v75;
        v62 = v58;
        v63 = v61;
        [v83 enumerateKeysAndObjectsUsingBlock:v90];
      }

      else
      {
        v64 = [MEMORY[0x277CBEB68] null];
        [v75 setObject:v64 forKey:@"CURRENT_SOLO_GROUP"];

        v65 = [MEMORY[0x277CBEB68] null];
        [v75 setObject:v65 forKey:@"CURRENT_HOME"];

        v66 = [MEMORY[0x277CBEB68] null];
        [v75 setObject:v66 forKey:@"CURRENT_ROOM"];

        v67 = [MEMORY[0x277CBEB68] null];
        [v75 setObject:v67 forKey:@"CURRENT_MEDIA_SYSTEM"];

        v45 = [MEMORY[0x277CBEB68] null];
        [v75 setObject:v45 forKey:@"CURRENT_ZONE"];
      }

      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __59__MGGroupsQueryAgent__prepareWithGroups_currentIdentifier___block_invoke_3_64;
      v84[3] = &unk_27989F288;
      v85 = v74;
      v86 = v69;
      v9 = v76;
      v87 = v76;
      v88 = v26;
      v89 = v11;
      [(MGGroupsQueryAgent *)v69 _withLock:v84];

      v27 = v85;
    }

    v10 = v72;
    v8 = v73;
  }

  v68 = *MEMORY[0x277D85DE8];
}

uint64_t __59__MGGroupsQueryAgent__prepareWithGroups_currentIdentifier___block_invoke(uint64_t a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__MGGroupsQueryAgent__prepareWithGroups_currentIdentifier___block_invoke_2;
  v7[3] = &unk_27989F148;
  v11 = &v12;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v8 = v3;
  v9 = v4;
  v10 = *(a1 + 48);
  [v2 _withLock:v7];
  v5 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v5;
}

void __59__MGGroupsQueryAgent__prepareWithGroups_currentIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = [*(a1 + 40) groups];
  if ([v2 isEqualToDictionary:?])
  {
    v3 = *(a1 + 48);
    v4 = [*(a1 + 40) currentIdentifier];
    if (v3 == v4)
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    else
    {
      v5 = *(a1 + 48);
      v6 = [*(a1 + 40) currentIdentifier];
      *(*(*(a1 + 56) + 8) + 24) = [v5 isEqual:v6] ^ 1;
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

uint64_t __59__MGGroupsQueryAgent__prepareWithGroups_currentIdentifier___block_invoke_24(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 type];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __59__MGGroupsQueryAgent__prepareWithGroups_currentIdentifier___block_invoke_2_26(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 type];
  v8 = [v5 indexOfObject:v7];

  v9 = *(a1 + 32);
  v10 = [v6 type];

  v11 = [v9 indexOfObject:v10];
  v12 = -1;
  if (v8 >= v11)
  {
    v12 = 1;
  }

  if (v8 == v11)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

void __59__MGGroupsQueryAgent__prepareWithGroups_currentIdentifier___block_invoke_3(void **a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = (*(a1[6] + 2))();
  *a4 = v6;
  if ((v6 & 1) == 0)
  {
    _AddContainmentForGroup(v7, a1[4], MEMORY[0x277CBEBF8], a1[5], a1[6]);
  }
}

void __59__MGGroupsQueryAgent__prepareWithGroups_currentIdentifier___block_invoke_2_60(uint64_t a1, void *a2, void *a3)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CCA920];
  v8 = *(a1 + 40);
  v18[0] = *(a1 + 32);
  v18[1] = v6;
  v18[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v10 = [v7 andPredicateWithSubpredicates:v9];

  v11 = [v10 predicateWithSubstitutionVariables:*(a1 + 48)];

  v12 = [*(a1 + 48) objectForKey:@"ALL_GROUPS_LIST"];
  v13 = [v12 filteredArrayUsingPredicate:v11];

  v14 = *(a1 + 48);
  v15 = [v13 firstObject];
  if (v15)
  {
    [v14 setObject:v15 forKey:v5];
  }

  else
  {
    v16 = [MEMORY[0x277CBEB68] null];
    [v14 setObject:v16 forKey:v5];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __59__MGGroupsQueryAgent__prepareWithGroups_currentIdentifier___block_invoke_3_64(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) groups];
  if ([v2 isEqualToDictionary:v3])
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 40) currentIdentifier];
    v6 = v5;
    if (v4 == v5)
    {

LABEL_9:
      [*(a1 + 40) setContainers:*(a1 + 56)];
      [*(a1 + 40) setVariables:*(a1 + 64)];
      v12 = [*(a1 + 40) queue];
      v9 = [*(a1 + 40) queries];
      v13 = MGLogForCategory(4);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 40);
        *buf = 134218240;
        v28 = v14;
        v29 = 2048;
        v30 = [v9 count];
        _os_log_impl(&dword_25863A000, v13, OS_LOG_TYPE_DEFAULT, "%p spawning %lu queries", buf, 0x16u);
      }

      v15 = [*(a1 + 40) operations];
      v16 = [v15 mutableCopy];

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __59__MGGroupsQueryAgent__prepareWithGroups_currentIdentifier___block_invoke_65;
      v22[3] = &unk_27989F260;
      v21 = *(a1 + 32);
      v17 = v21.i64[0];
      v23 = vextq_s8(v21, v21, 8uLL);
      v24 = *(a1 + 64);
      v25 = v16;
      v26 = v12;
      v18 = v12;
      v19 = v16;
      [v9 enumerateKeysAndObjectsUsingBlock:v22];
      [*(a1 + 40) setOperations:v19];

      goto LABEL_12;
    }

    v7 = *(a1 + 48);
    v8 = [*(a1 + 40) currentIdentifier];
    LODWORD(v7) = [v7 isEqual:v8];

    if (v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v9 = MGLogForCategory(4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    *buf = 134218240;
    v28 = v10;
    v29 = 2048;
    v30 = v11;
    _os_log_impl(&dword_25863A000, v9, OS_LOG_TYPE_DEFAULT, "%p got a late update after %p", buf, 0x16u);
  }

LABEL_12:

  v20 = *MEMORY[0x277D85DE8];
}

void __59__MGGroupsQueryAgent__prepareWithGroups_currentIdentifier___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[MGGroupsQueryOperation alloc] initWithAgent:*(a1 + 32) query:v5 groups:*(a1 + 40) substitutionVariables:*(a1 + 48)];

  [*(a1 + 56) setObject:v7 forKey:v6];
  [*(a1 + 64) addOperation:v7];
}

- (void)_queryOperation:(id)a3 didFindGroups:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v8 = [v6 query];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__4;
  v27 = __Block_byref_object_dispose__4;
  v28 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __52__MGGroupsQueryAgent__queryOperation_didFindGroups___block_invoke;
  v16 = &unk_27989F2B0;
  v9 = v8;
  v17 = v9;
  v21 = &v29;
  v10 = v6;
  v18 = v10;
  v19 = self;
  v11 = v7;
  v20 = v11;
  v22 = &v23;
  [(MGGroupsQueryAgent *)self _withLock:&v13];
  if ((v30[3] & 1) == 0)
  {
    v12 = [(MGGroupsQueryAgent *)self delegate:v13];
    [v12 groupsQueryAgent:self didFindResults:v24[5] forQuery:v9];
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
}

void __52__MGGroupsQueryAgent__queryOperation_didFindGroups___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v34 = [*(a1 + 32) identifier];
  v2 = [*(a1 + 40) isCancelled];
  *(*(*(a1 + 64) + 8) + 24) = v2;
  if (v2)
  {
    v3 = MGLogForCategory(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v5 = [*(a1 + 56) count];
      *buf = 134218498;
      *&buf[4] = v4;
      v41 = 2112;
      v42 = v34;
      v43 = 2048;
      v44 = v5;
      _os_log_impl(&dword_25863A000, v3, OS_LOG_TYPE_DEFAULT, "%p canceled query %@ with %lu found items", buf, 0x20u);
    }
  }

  else
  {
    v33 = [*(a1 + 48) operations];
    v6 = *(a1 + 40);
    v7 = [v33 objectForKey:v34];
    *(*(*(a1 + 64) + 8) + 24) = v6 != v7;

    if (v6 == v7)
    {
      v11 = [v33 mutableCopy];
      [v11 removeObjectForKey:v34];
      v32 = v11;
      [*(a1 + 48) setOperations:v11];
      v12 = MGLogForCategory(4);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 48);
        v14 = [*(a1 + 56) count];
        *buf = 134218498;
        *&buf[4] = v13;
        v41 = 2112;
        v42 = v34;
        v43 = 2048;
        v44 = v14;
        _os_log_impl(&dword_25863A000, v12, OS_LOG_TYPE_DEFAULT, "%p completed query %@ with %lu found items", buf, 0x20u);
      }

      v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 56), "count")}];
      v16 = *(*(a1 + 72) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v18 = *(a1 + 56);
      v19 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v19)
      {
        v20 = *v36;
        do
        {
          v21 = 0;
          do
          {
            if (*v36 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v35 + 1) + 8 * v21);
            *buf = 0;
            v23 = [v22 identifier];
            v24 = [*(a1 + 48) mediatorsByGroup];
            v25 = [v24 objectForKey:v23];

            if (v25)
            {
              v26 = [*(a1 + 48) mediators];
              v27 = [v26 objectForKey:v25];
              objc_storeWeak(buf, v27);
            }

            v28 = [MGGroupsQueryAgentResult alloc];
            WeakRetained = objc_loadWeakRetained(buf);
            v30 = [(MGGroupsQueryAgentResult *)v28 initWithGroup:v22 mediator:WeakRetained];

            [*(*(*(a1 + 72) + 8) + 40) addObject:v30];
            objc_destroyWeak(buf);

            ++v21;
          }

          while (v19 != v21);
          v19 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v19);
      }
    }

    else
    {
      v8 = MGLogForCategory(4);
      v32 = v8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 48);
        v10 = [*(a1 + 56) count];
        *buf = 134218498;
        *&buf[4] = v9;
        v41 = 2112;
        v42 = v34;
        v43 = 2048;
        v44 = v10;
        _os_log_impl(&dword_25863A000, v8, OS_LOG_TYPE_DEFAULT, "%p subsumed query %@ with %lu found items", buf, 0x20u);
      }
    }

    v3 = v33;
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)addOutstandingQuery:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__MGGroupsQueryAgent_addOutstandingQuery___block_invoke;
  v8[3] = &unk_27989F010;
  v8[4] = self;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  [(MGGroupsQueryAgent *)self _withLock:v8];
}

void __42__MGGroupsQueryAgent_addOutstandingQuery___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) queries];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (!v3)
  {
    v4 = [v2 mutableCopy];
    [v4 setObject:*(a1 + 48) forKey:*(a1 + 40)];
    [*(a1 + 32) setQueries:v4];
    v5 = [*(a1 + 32) operations];
    v6 = [v5 objectForKey:*(a1 + 40)];

    if (!v6)
    {
      v7 = [MGGroupsQueryOperation alloc];
      v8 = *(a1 + 32);
      v9 = *(a1 + 48);
      v10 = [v8 groups];
      v11 = [*(a1 + 32) variables];
      v12 = [(MGGroupsQueryOperation *)v7 initWithAgent:v8 query:v9 groups:v10 substitutionVariables:v11];

      v13 = [*(a1 + 32) operations];
      v14 = [v13 mutableCopy];

      [v14 setObject:v12 forKey:*(a1 + 40)];
      [*(a1 + 32) setOperations:v14];
      v15 = [*(a1 + 32) queue];
      [v15 addOperation:v12];
    }

    v16 = MGLogForCategory(4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v20 = 134218242;
      v21 = v17;
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&dword_25863A000, v16, OS_LOG_TYPE_DEFAULT, "%p added query %@", &v20, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)removeOutstandingQuery:(id)a3
{
  v4 = [a3 identifier];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__MGGroupsQueryAgent_removeOutstandingQuery___block_invoke;
  v6[3] = &unk_27989EE80;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(MGGroupsQueryAgent *)self _withLock:v6];
}

void __45__MGGroupsQueryAgent_removeOutstandingQuery___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) queries];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v4 = [v2 mutableCopy];
    [v4 removeObjectForKey:*(a1 + 40)];
    [*(a1 + 32) setQueries:v4];
    v5 = MGLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v16 = 134218242;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_25863A000, v5, OS_LOG_TYPE_DEFAULT, "%p removed query %@", &v16, 0x16u);
    }
  }

  v8 = [*(a1 + 32) operations];
  v9 = [v8 objectForKey:*(a1 + 40)];
  v10 = v9;
  if (v9)
  {
    [v9 cancel];
    v11 = [v8 mutableCopy];
    [v11 removeObjectForKey:*(a1 + 40)];
    [*(a1 + 32) setOperations:v11];
    v12 = MGLogForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v16 = 134218242;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_25863A000, v12, OS_LOG_TYPE_DEFAULT, "%p canceled removed query %@", &v16, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)outstandingQueryForIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__MGGroupsQueryAgent_outstandingQueryForIdentifier___block_invoke;
  v8[3] = &unk_27989EEF8;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(MGGroupsQueryAgent *)self _withLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __52__MGGroupsQueryAgent_outstandingQueryForIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) queries];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)groupsMediator:(id)a3 didUpdateGroups:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__MGGroupsQueryAgent_groupsMediator_didUpdateGroups___block_invoke;
  v10[3] = &unk_27989F010;
  v10[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [(MGGroupsQueryAgent *)self _withLock:v10];
}

void __53__MGGroupsQueryAgent_groupsMediator_didUpdateGroups___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = MGLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v11 = 134218496;
    v12 = v3;
    v13 = 2048;
    v14 = v4;
    v15 = 2048;
    v16 = v5;
    _os_log_impl(&dword_25863A000, v2, OS_LOG_TYPE_DEFAULT, "%p received update %p from %p", &v11, 0x20u);
  }

  v6 = [*(a1 + 48) identifier];
  v7 = [*(a1 + 32) mediators];
  [v7 setObject:*(a1 + 48) forKey:v6];

  v8 = [*(a1 + 32) groupsByMediator];
  v9 = [v8 mutableCopy];

  [v9 setObject:*(a1 + 40) forKey:v6];
  [*(a1 + 32) setGroupsByMediator:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)groupsMediatorRemoved:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__MGGroupsQueryAgent_groupsMediatorRemoved___block_invoke;
  v6[3] = &unk_27989EE80;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(MGGroupsQueryAgent *)self _withLock:v6];
}

void __44__MGGroupsQueryAgent_groupsMediatorRemoved___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = MGLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v10 = 134218240;
    v11 = v3;
    v12 = 2048;
    v13 = v4;
    _os_log_impl(&dword_25863A000, v2, OS_LOG_TYPE_DEFAULT, "%p dropping %p", &v10, 0x16u);
  }

  v5 = [*(a1 + 40) identifier];
  v6 = [*(a1 + 32) mediators];
  [v6 removeObjectForKey:v5];

  v7 = [*(a1 + 32) groupsByMediator];
  v8 = [v7 mutableCopy];

  [v8 removeObjectForKey:v5];
  [*(a1 + 32) setGroupsByMediator:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (MGGroupsQueryAgentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end