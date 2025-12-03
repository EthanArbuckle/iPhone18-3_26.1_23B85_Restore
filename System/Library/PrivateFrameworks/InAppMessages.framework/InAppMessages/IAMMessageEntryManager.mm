@interface IAMMessageEntryManager
+ (id)messageEntries:(id)entries withSatisfiedPresentationTriggerForTriggerContext:(id)context;
+ (id)targetIdentifiersForMessageEntries:(id)entries;
+ (id)uniqueMessageEntriesInMessageEntriesByTrigger:(id)trigger;
+ (void)_addMessageEntry:(id)entry toTriggerKeyDictionary:(id)dictionary atKey:(id)key;
- (IAMMessageEntryManager)initWithModalTargetIdentifier:(id)identifier;
- (id)messageEntriesByTriggerForEventContext:(id)context;
- (id)messageEntriesForContextPropertiesContext:(id)context;
- (void)_updateMessageIndexes;
- (void)addPriorityMessageEntry:(id)entry;
- (void)setMessageEntries:(id)entries;
@end

@implementation IAMMessageEntryManager

- (void)_updateMessageIndexes
{
  selfCopy = self;
  v116 = *MEMORY[0x277D85DE8];
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = __Block_byref_object_copy_;
  v106 = __Block_byref_object_dispose_;
  v107 = objc_opt_new();
  v96 = 0;
  v97 = &v96;
  v98 = 0x3032000000;
  v99 = __Block_byref_object_copy_;
  v100 = __Block_byref_object_dispose_;
  v101 = objc_opt_new();
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy_;
  v94 = __Block_byref_object_dispose_;
  v95 = objc_opt_new();
  v2 = objc_opt_new();
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __47__IAMMessageEntryManager__updateMessageIndexes__block_invoke;
  v89[3] = &unk_2797A7070;
  v89[4] = &v90;
  v89[5] = &v102;
  v89[6] = &v96;
  v74 = MEMORY[0x259C23D00](v89);
  v69 = objc_opt_new();
  v72 = objc_opt_new();
  v3 = [(NSDictionary *)selfCopy->_messageEntryByIdentifier copy];
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = v3;
  v68 = [obj countByEnumeratingWithState:&v85 objects:v115 count:16];
  if (v68)
  {
    v67 = *v86;
    do
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v86 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v4 = [obj objectForKey:{*(*(&v85 + 1) + 8 * i), selfCopy}];
        applicationMessage = [v4 applicationMessage];
        targets = [applicationMessage targets];
        v75 = applicationMessage;
        if ([applicationMessage messageType] == 1)
        {
          modalTargetIdentifier = selfCopy->_modalTargetIdentifier;
          v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&modalTargetIdentifier count:1];

          v8 = [v7 mutableCopy];
          [v75 setTargets:v8];

          if (v7)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v7 = targets;
          if (targets)
          {
LABEL_10:
            if ([v7 count])
            {
              goto LABEL_14;
            }
          }
        }

        v9 = IAMLogCategoryDefault();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          identifier = [v75 identifier];
          *buf = 138543362;
          v109 = identifier;
          _os_log_impl(&dword_254AF4000, v9, OS_LOG_TYPE_ERROR, "Error indexing message, message specifies no targets = %{public}@", buf, 0xCu);
        }

LABEL_14:
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v76 = v7;
        v11 = [v76 countByEnumeratingWithState:&v81 objects:v113 count:16];
        if (v11)
        {
          v12 = *v82;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v82 != v12)
              {
                objc_enumerationMutation(v76);
              }

              v14 = *(*(&v81 + 1) + 8 * j);
              v15 = [v2 objectForKeyedSubscript:v14];
              v16 = v15;
              v17 = MEMORY[0x277CBEBF8];
              if (v15)
              {
                v17 = v15;
              }

              v18 = v17;

              if (([v18 containsObject:v4] & 1) == 0)
              {
                v19 = [v18 arrayByAddingObject:v4];
                [v2 setObject:v19 forKeyedSubscript:v14];
              }
            }

            v11 = [v76 countByEnumeratingWithState:&v81 objects:v113 count:16];
          }

          while (v11);
        }

        presentationTriggers = [v75 presentationTriggers];
        v21 = [presentationTriggers copy];

        v71 = [v21 count];
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v22 = v21;
        v23 = [v22 countByEnumeratingWithState:&v77 objects:v112 count:16];
        if (v23)
        {
          v24 = *v78;
          do
          {
            for (k = 0; k != v23; ++k)
            {
              if (*v78 != v24)
              {
                objc_enumerationMutation(v22);
              }

              v26 = *(*(&v77 + 1) + 8 * k);
              if ([v26 hasTriggerName])
              {
                if ([v26 hasKind])
                {
                  triggerName = [v26 triggerName];
                  hasKind = [v26 hasKind];
                  kind = [v26 kind];
                  bundleIdentifier = [v26 bundleIdentifier];
                  (v74)[2](v74, v4, triggerName, hasKind, kind, bundleIdentifier);
                }

                else
                {
                  triggerName = IAMLogCategoryDefault();
                  if (os_log_type_enabled(triggerName, OS_LOG_TYPE_ERROR))
                  {
                    triggerName2 = [v26 triggerName];
                    identifier2 = [v75 identifier];
                    *buf = 138543618;
                    v109 = triggerName2;
                    v110 = 2114;
                    v111 = identifier2;
                    _os_log_impl(&dword_254AF4000, triggerName, OS_LOG_TYPE_ERROR, "Error indexing message, message presentation trigger = %{public}@ missing kind = %{public}@", buf, 0x16u);
                  }
                }
              }

              else
              {
                triggerName = IAMLogCategoryDefault();
                if (os_log_type_enabled(triggerName, OS_LOG_TYPE_ERROR))
                {
                  identifier3 = [v75 identifier];
                  *buf = 138543362;
                  v109 = identifier3;
                  _os_log_impl(&dword_254AF4000, triggerName, OS_LOG_TYPE_ERROR, "Error indexing message, message presentation trigger missing triggerName = %{public}@", buf, 0xCu);
                }
              }
            }

            v23 = [v22 countByEnumeratingWithState:&v77 objects:v112 count:16];
          }

          while (v23);
        }

        rule = [v75 rule];
        v35 = rule;
        if (rule)
        {
          if (!v71)
          {
            triggerEventName = [rule triggerEventName];
            v37 = triggerEventName == 0;

            if (!v37)
            {
              rule2 = [v75 rule];
              triggerEventName2 = [rule2 triggerEventName];

              v40 = [[IAMTriggerKey alloc] initWithName:triggerEventName2 bundleIdentifier:0];
              [IAMMessageEntryManager _addMessageEntry:v4 toTriggerKeyDictionary:v103[5] atKey:v40];
            }
          }

          [v69 addObject:v35];
          [v72 addObject:v4];
        }
      }

      v68 = [obj countByEnumeratingWithState:&v85 objects:v115 count:16];
    }

    while (v68);
  }

  while ([v69 count])
  {
    lastObject = [v69 lastObject];
    lastObject2 = [v72 lastObject];
    [v69 removeLastObject];
    [v72 removeLastObject];
    triggerEventName3 = [lastObject triggerEventName];
    if (triggerEventName3)
    {
      triggerCondition = [lastObject triggerCondition];
      if (triggerCondition)
      {
      }

      else
      {
        subrules = [lastObject subrules];
        v46 = subrules == 0;

        if (v46)
        {
          goto LABEL_57;
        }
      }
    }

    type = [lastObject type];
    if (type == 1)
    {
      subrules2 = [lastObject subrules];
      [v69 addObjectsFromArray:subrules2];

      for (m = 0; ; ++m)
      {
        subrules3 = [lastObject subrules];
        v56 = [subrules3 count] > m;

        if (!v56)
        {
          break;
        }

        [v72 addObject:lastObject2];
      }
    }

    else if (!type)
    {
      triggerCondition2 = [lastObject triggerCondition];
      identifier4 = [triggerCondition2 identifier];
      if (identifier4)
      {
        hasKind2 = [triggerCondition2 hasKind];
        kind2 = [triggerCondition2 kind];
        bundleIdentifier2 = [triggerCondition2 bundleIdentifier];
        (v74)[2](v74, lastObject2, identifier4, hasKind2, kind2, bundleIdentifier2);
      }
    }

LABEL_57:
  }

  v57 = [v103[5] copy];
  messageEntriesByEventTriggers = selfCopy->_messageEntriesByEventTriggers;
  selfCopy->_messageEntriesByEventTriggers = v57;

  v59 = [v97[5] copy];
  messageEntriesByContextPropertyTriggers = selfCopy->_messageEntriesByContextPropertyTriggers;
  selfCopy->_messageEntriesByContextPropertyTriggers = v59;

  v61 = [v91[5] copy];
  messageEntriesByUnknownKindTriggers = selfCopy->_messageEntriesByUnknownKindTriggers;
  selfCopy->_messageEntriesByUnknownKindTriggers = v61;

  v63 = [v2 copy];
  messageEntriesByTargetIdentifier = selfCopy->_messageEntriesByTargetIdentifier;
  selfCopy->_messageEntriesByTargetIdentifier = v63;

  _Block_object_dispose(&v90, 8);
  _Block_object_dispose(&v96, 8);

  _Block_object_dispose(&v102, 8);
  v65 = *MEMORY[0x277D85DE8];
}

- (IAMMessageEntryManager)initWithModalTargetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = IAMMessageEntryManager;
  v5 = [(IAMMessageEntryManager *)&v16 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    modalTargetIdentifier = v5->_modalTargetIdentifier;
    v5->_modalTargetIdentifier = v6;

    messageEntryByIdentifier = v5->_messageEntryByIdentifier;
    v9 = MEMORY[0x277CBEC10];
    v5->_messageEntryByIdentifier = MEMORY[0x277CBEC10];

    priorityMessageEntryByIdentifier = v5->_priorityMessageEntryByIdentifier;
    v5->_priorityMessageEntryByIdentifier = v9;

    messageEntriesByEventTriggers = v5->_messageEntriesByEventTriggers;
    v5->_messageEntriesByEventTriggers = v9;

    messageEntriesByContextPropertyTriggers = v5->_messageEntriesByContextPropertyTriggers;
    v5->_messageEntriesByContextPropertyTriggers = v9;

    messageEntriesByUnknownKindTriggers = v5->_messageEntriesByUnknownKindTriggers;
    v5->_messageEntriesByUnknownKindTriggers = v9;

    messageEntriesByTargetIdentifier = v5->_messageEntriesByTargetIdentifier;
    v5->_messageEntriesByTargetIdentifier = v9;
  }

  return v5;
}

- (void)setMessageEntries:(id)entries
{
  v24 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v5 = [entriesCopy copy];
  messageEntries = self->_messageEntries;
  self->_messageEntries = v5;

  v7 = objc_opt_new();
  if (entriesCopy)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = entriesCopy;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          applicationMessage = [v13 applicationMessage];
          identifier = [applicationMessage identifier];

          [v7 setObject:v13 forKeyedSubscript:identifier];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }
  }

  v16 = [v7 copy];
  messageEntryByIdentifier = self->_messageEntryByIdentifier;
  self->_messageEntryByIdentifier = v16;

  [(IAMMessageEntryManager *)self _updateMessageIndexes];
  v18 = *MEMORY[0x277D85DE8];
}

- (id)messageEntriesForContextPropertiesContext:(id)context
{
  v36 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v29 = objc_opt_new();
  v5 = [(NSDictionary *)self->_messageEntriesByContextPropertyTriggers copy];
  v6 = [(NSDictionary *)self->_messageEntriesByUnknownKindTriggers copy];
  contextPropertyNames = [contextCopy contextPropertyNames];
  v27 = contextCopy;
  bundleIdentifier = [contextCopy bundleIdentifier];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = contextPropertyNames;
  v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = [[IAMTriggerKey alloc] initWithName:v12 bundleIdentifier:bundleIdentifier];
        v14 = [[IAMTriggerKey alloc] initWithName:v12 bundleIdentifier:0];
        v15 = objc_opt_new();
        v16 = [v5 objectForKeyedSubscript:v13];

        if (v16)
        {
          v17 = [v5 objectForKeyedSubscript:v13];
          [v15 addObjectsFromArray:v17];
        }

        v18 = [v5 objectForKeyedSubscript:v14];

        if (v18)
        {
          v19 = [v5 objectForKeyedSubscript:v14];
          [v15 addObjectsFromArray:v19];
        }

        v20 = [v6 objectForKeyedSubscript:v13];

        if (v20)
        {
          v21 = [v6 objectForKeyedSubscript:v13];
          [v15 addObjectsFromArray:v21];
        }

        v22 = [v6 objectForKeyedSubscript:v14];

        if (v22)
        {
          v23 = [v6 objectForKeyedSubscript:v14];
          [v15 addObjectsFromArray:v23];
        }

        if ([v15 count])
        {
          [v29 addObjectsFromArray:v15];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v9);
  }

  allObjects = [v29 allObjects];

  v25 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (id)messageEntriesByTriggerForEventContext:(id)context
{
  v79 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = [(NSDictionary *)self->_messageEntriesByEventTriggers copy];
  v6 = [(NSDictionary *)self->_messageEntriesByUnknownKindTriggers copy];
  event = [contextCopy event];
  bundleIdentifier = [contextCopy bundleIdentifier];
  objc_opt_class();
  LOBYTE(self) = objc_opt_isKindOfClass();
  v67 = objc_opt_new();
  if (self)
  {
    v68 = bundleIdentifier;
    v65 = contextCopy;
    v66 = v6;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v64 = v5;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v74;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v74 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v73 + 1) + 8 * i);
          v15 = [v9 objectForKey:v14];
          if ([v15 count])
          {
            bundleIdentifier2 = [v14 bundleIdentifier];
            v17 = bundleIdentifier2;
            if (!bundleIdentifier2 || [bundleIdentifier2 isEqualToString:v68])
            {
              name = [v14 name];
              v19 = [event matchesWithKey:name];

              if (v19)
              {
                v20 = [v67 objectForKeyedSubscript:v14];

                if (!v20)
                {
                  v21 = objc_opt_new();
                  [v67 setObject:v21 forKeyedSubscript:v14];
                }

                v22 = [v67 objectForKeyedSubscript:v14];
                [v22 addObjectsFromArray:v15];
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v73 objects:v78 count:16];
      }

      while (v11);
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v23 = v66;
    v24 = [v23 countByEnumeratingWithState:&v69 objects:v77 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v70;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v70 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v69 + 1) + 8 * j);
          v29 = [v23 objectForKey:v28];
          if ([v29 count])
          {
            bundleIdentifier3 = [v28 bundleIdentifier];
            v31 = bundleIdentifier3;
            if (!bundleIdentifier3 || [bundleIdentifier3 isEqualToString:v68])
            {
              name2 = [v28 name];
              v33 = [event matchesWithKey:name2];

              if (v33)
              {
                v34 = [v67 objectForKeyedSubscript:v28];

                if (!v34)
                {
                  v35 = objc_opt_new();
                  [v67 setObject:v35 forKeyedSubscript:v28];
                }

                v36 = [v67 objectForKeyedSubscript:v28];
                [v36 addObjectsFromArray:v29];
              }
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v69 objects:v77 count:16];
      }

      while (v25);
    }

    v37 = [v67 copy];
    v5 = v64;
    contextCopy = v65;
    v6 = v66;
    bundleIdentifier = v68;
  }

  else
  {
    v38 = [IAMTriggerKey alloc];
    name3 = [event name];
    v40 = [(IAMTriggerKey *)v38 initWithName:name3 bundleIdentifier:bundleIdentifier];

    v41 = [IAMTriggerKey alloc];
    name4 = [event name];
    v43 = [(IAMTriggerKey *)v41 initWithName:name4 bundleIdentifier:0];

    v44 = [v5 objectForKeyedSubscript:v40];

    if (v44)
    {
      v45 = objc_opt_new();
      [v67 setObject:v45 forKeyedSubscript:v40];

      v46 = [v67 objectForKeyedSubscript:v40];
      v47 = [v5 objectForKeyedSubscript:v40];
      [v46 addObjectsFromArray:v47];
    }

    v48 = [v5 objectForKeyedSubscript:v43];

    if (v48)
    {
      v49 = objc_opt_new();
      [v67 setObject:v49 forKeyedSubscript:v43];

      v50 = [v67 objectForKeyedSubscript:v43];
      v51 = [v5 objectForKeyedSubscript:v43];
      [v50 addObjectsFromArray:v51];
    }

    v52 = [v6 objectForKeyedSubscript:v40];

    if (v52)
    {
      v53 = [v67 objectForKeyedSubscript:v40];

      if (!v53)
      {
        v54 = objc_opt_new();
        [v67 setObject:v54 forKeyedSubscript:v40];
      }

      v55 = [v67 objectForKeyedSubscript:v40];
      v56 = [v6 objectForKeyedSubscript:v40];
      [v55 addObjectsFromArray:v56];
    }

    v57 = [v6 objectForKeyedSubscript:v43];

    if (v57)
    {
      v58 = [v67 objectForKeyedSubscript:v43];

      if (!v58)
      {
        v59 = objc_opt_new();
        [v67 setObject:v59 forKeyedSubscript:v43];
      }

      v60 = [v67 objectForKeyedSubscript:v43];
      v61 = [v6 objectForKeyedSubscript:v43];
      [v60 addObjectsFromArray:v61];
    }

    v37 = [v67 copy];
  }

  v62 = *MEMORY[0x277D85DE8];

  return v37;
}

+ (id)targetIdentifiersForMessageEntries:(id)entries
{
  v20 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = entriesCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        applicationMessage = [*(*(&v15 + 1) + 8 * i) applicationMessage];
        targets = [applicationMessage targets];

        if (targets)
        {
          [v4 addObjectsFromArray:targets];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  allObjects = [v4 allObjects];

  v13 = *MEMORY[0x277D85DE8];

  return allObjects;
}

+ (id)messageEntries:(id)entries withSatisfiedPresentationTriggerForTriggerContext:(id)context
{
  v46 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  contextCopy = context;
  v7 = objc_opt_new();
  v8 = v7;
  if (entriesCopy)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v31 = entriesCopy;
    v9 = entriesCopy;
    v35 = [v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (!v35)
    {
      goto LABEL_33;
    }

    v33 = v9;
    v34 = *v41;
    v32 = v8;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(v9);
        }

        v11 = *(*(&v40 + 1) + 8 * v10);
        applicationMessage = [v11 applicationMessage];
        presentationTriggers = [applicationMessage presentationTriggers];
        rule = [applicationMessage rule];
        v15 = [presentationTriggers count];
        if (rule)
        {
          triggerEventName = [rule triggerEventName];
          v17 = triggerEventName != 0;
        }

        else
        {
          v17 = 0;
        }

        if (v15)
        {
          v18 = 0;
        }

        else
        {
          v18 = !v17;
        }

        if (v18)
        {
LABEL_26:
          [v8 addObject:v11];
          goto LABEL_27;
        }

        if (!contextCopy)
        {
          goto LABEL_27;
        }

        if (v15)
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v19 = presentationTriggers;
          v20 = [v19 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v37;
            while (2)
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v37 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                if ([contextCopy satisfiesPresentationTrigger:*(*(&v36 + 1) + 8 * i)])
                {

                  v8 = v32;
                  v9 = v33;
                  goto LABEL_26;
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v36 objects:v44 count:16];
              v8 = v32;
              if (v21)
              {
                continue;
              }

              break;
            }
          }

          v9 = v33;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            event = [contextCopy event];
            triggerEventName2 = [rule triggerEventName];
            v26 = [event matchesWithKey:triggerEventName2];

            v9 = v33;
            if (v26)
            {
              goto LABEL_26;
            }
          }
        }

LABEL_27:

        ++v10;
      }

      while (v10 != v35);
      v27 = [v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
      v35 = v27;
      if (!v27)
      {
LABEL_33:

        v28 = [v8 copy];
        entriesCopy = v31;
        goto LABEL_35;
      }
    }
  }

  v28 = [v7 copy];
LABEL_35:

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)uniqueMessageEntriesInMessageEntriesByTrigger:(id)trigger
{
  v19 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = triggerCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v5 objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
        [v4 unionSet:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  allObjects = [v4 allObjects];

  v12 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (void)addPriorityMessageEntry:(id)entry
{
  priorityMessageEntryByIdentifier = self->_priorityMessageEntryByIdentifier;
  entryCopy = entry;
  v10 = [(NSDictionary *)priorityMessageEntryByIdentifier mutableCopy];
  applicationMessage = [entryCopy applicationMessage];
  identifier = [applicationMessage identifier];
  [v10 setObject:entryCopy forKeyedSubscript:identifier];

  v8 = [v10 copy];
  v9 = self->_priorityMessageEntryByIdentifier;
  self->_priorityMessageEntryByIdentifier = v8;
}

+ (void)_addMessageEntry:(id)entry toTriggerKeyDictionary:(id)dictionary atKey:(id)key
{
  entryCopy = entry;
  dictionaryCopy = dictionary;
  keyCopy = key;
  v9 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
  v10 = v9;
  v11 = MEMORY[0x277CBEBF8];
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  if (([v12 containsObject:entryCopy] & 1) == 0)
  {
    v13 = [v12 arrayByAddingObject:entryCopy];
    [dictionaryCopy setObject:v13 forKeyedSubscript:keyCopy];
  }
}

void __47__IAMMessageEntryManager__updateMessageIndexes__block_invoke(uint64_t a1, void *a2, void *a3, int a4, int a5, void *a6)
{
  v15 = a2;
  v11 = a6;
  v12 = a3;
  v13 = [[IAMTriggerKey alloc] initWithName:v12 bundleIdentifier:v11];

  if (a4)
  {
    if (a5)
    {
      if (a5 != 1)
      {
        goto LABEL_8;
      }

      v14 = 48;
    }

    else
    {
      v14 = 40;
    }
  }

  else
  {
    v14 = 32;
  }

  [IAMMessageEntryManager _addMessageEntry:v15 toTriggerKeyDictionary:*(*(*(a1 + v14) + 8) + 40) atKey:v13];
LABEL_8:
}

@end