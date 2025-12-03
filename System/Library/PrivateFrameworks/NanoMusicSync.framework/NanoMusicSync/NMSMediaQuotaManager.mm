@interface NMSMediaQuotaManager
- (NMSMediaQuotaManager)initWithItemEnumerators:(id)enumerators estimatedItemSizes:(id)sizes quota:(unint64_t)quota;
- (id)_newMutableItemEnumeratorDict;
- (id)downloadInfoWithinQuota;
- (id)downloadInfoWithinQuotaForBundleIdentifier:(id)identifier;
- (void)_evaluateAddedItemsIfNecessary;
@end

@implementation NMSMediaQuotaManager

- (NMSMediaQuotaManager)initWithItemEnumerators:(id)enumerators estimatedItemSizes:(id)sizes quota:(unint64_t)quota
{
  v34 = *MEMORY[0x277D85DE8];
  enumeratorsCopy = enumerators;
  sizesCopy = sizes;
  v32.receiver = self;
  v32.super_class = NMSMediaQuotaManager;
  v10 = [(NMSMediaQuotaManager *)&v32 init];
  if (v10)
  {
    v27 = sizesCopy;
    v11 = [enumeratorsCopy mutableCopy];
    itemEnumerators = v10->_itemEnumerators;
    v10->_itemEnumerators = v11;

    objc_storeStrong(&v10->_estimatedItemSizes, sizes);
    v10->_quota = quota;
    v13 = objc_alloc_init(NMSMutableMediaDownloadInfo);
    downloadInfoWithinQuota = v10->_downloadInfoWithinQuota;
    v10->_downloadInfoWithinQuota = v13;

    v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(enumeratorsCopy, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    keyEnumerator = [enumeratorsCopy keyEnumerator];
    v17 = [keyEnumerator countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        v20 = 0;
        do
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v21 = *(*(&v28 + 1) + 8 * v20);
          v22 = objc_alloc_init(NMSMutableMediaDownloadInfo);
          [v15 setObject:v22 forKeyedSubscript:v21];

          ++v20;
        }

        while (v18 != v20);
        v18 = [keyEnumerator countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v18);
    }

    v23 = [v15 copy];
    downloadInfoWithinQuotaForIdentifiers = v10->_downloadInfoWithinQuotaForIdentifiers;
    v10->_downloadInfoWithinQuotaForIdentifiers = v23;

    *&v10->_hasEvaluated = 0;
    sizesCopy = v27;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)downloadInfoWithinQuota
{
  [(NMSMediaQuotaManager *)self _evaluateAddedItemsIfNecessary];
  downloadInfoWithinQuota = self->_downloadInfoWithinQuota;

  return downloadInfoWithinQuota;
}

- (id)downloadInfoWithinQuotaForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(NMSMediaQuotaManager *)self _evaluateAddedItemsIfNecessary];
  v5 = [(NSDictionary *)self->_downloadInfoWithinQuotaForIdentifiers objectForKeyedSubscript:identifierCopy];

  return v5;
}

- (id)_newMutableItemEnumeratorDict
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_itemEnumerators, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  keyEnumerator = [(NSMutableDictionary *)self->_itemEnumerators keyEnumerator];
  v5 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = objc_alloc_init(NMSMutableItemEnumerator);
        [v3 setObject:v10 forKeyedSubscript:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)_evaluateAddedItemsIfNecessary
{
  v107 = *MEMORY[0x277D85DE8];
  if (!self->_hasEvaluated)
  {
    v3 = NMLogForCategory(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      date = [MEMORY[0x277CBEAA8] date];
      *buf = 138412802;
      *&buf[4] = @"[MediaQuota]";
      *&buf[12] = 2080;
      *&buf[14] = "[NMSMediaQuotaManager _evaluateAddedItemsIfNecessary]";
      *&buf[22] = 2112;
      v104 = date;
      _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s ****** Started QuotaEvaluation %@!", buf, 0x20u);
    }

    v5 = NMLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      quota = self->_quota;
      itemEnumerators = self->_itemEnumerators;
      *buf = 138413058;
      *&buf[4] = @"[MediaQuota]";
      *&buf[12] = 2080;
      *&buf[14] = "[NMSMediaQuotaManager _evaluateAddedItemsIfNecessary]";
      *&buf[22] = 2048;
      v104 = quota;
      LOWORD(v105) = 2114;
      *(&v105 + 2) = itemEnumerators;
      _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s Evaluating items with quota %llu for container lists %{public}@", buf, 0x2Au);
    }

    v60 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_itemEnumerators, "count")}];
    v59 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_itemEnumerators, "count")}];
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = [(NSMutableDictionary *)self->_itemEnumerators keyEnumerator];
    v8 = [obj countByEnumeratingWithState:&v96 objects:v106 count:16];
    if (v8)
    {
      v9 = *v97;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v97 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v96 + 1) + 8 * i);
          v12 = self->_quota;
          v13 = [(NSMutableDictionary *)self->_itemEnumerators count];
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12 / v13];
          [v60 setObject:v14 forKey:v11];

          v15 = [NMLogActionsCoalescer alloc];
          v16 = NMLogForCategory(6);
          v17 = [(NMLogActionsCoalescer *)v15 initWithIdentifier:v11 logCategory:v16];

          v18 = [@"[MediaQuota]" stringByAppendingString:@" QuotaEvaluation process"];
          [(NMLogActionsCoalescer *)v17 setPrefix:v18];

          [v59 setObject:v17 forKeyedSubscript:v11];
        }

        v8 = [obj countByEnumeratingWithState:&v96 objects:v106 count:16];
      }

      while (v8);
    }

    v19 = NMLogForCategory(5);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = @"[MediaQuota]";
      *&buf[12] = 2080;
      *&buf[14] = "[NMSMediaQuotaManager _evaluateAddedItemsIfNecessary]";
      *&buf[22] = 2114;
      v104 = v60;
      _os_log_impl(&dword_25B27B000, v19, OS_LOG_TYPE_DEFAULT, "%@ %s Calculated initial per bundleIdentifier quotas %{public}@", buf, 0x20u);
    }

    obja = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_itemEnumerators, "count")}];
    _newMutableItemEnumeratorDict = [(NMSMediaQuotaManager *)self _newMutableItemEnumeratorDict];
    _newMutableItemEnumeratorDict2 = [(NMSMediaQuotaManager *)self _newMutableItemEnumeratorDict];
    while ([(NSMutableDictionary *)self->_itemEnumerators count])
    {
      context = objc_autoreleasePoolPush();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v104 = __Block_byref_object_copy_;
      *&v105 = __Block_byref_object_dispose_;
      *(&v105 + 1) = objc_alloc_init(MEMORY[0x277CBEB18]);
      v22 = self->_itemEnumerators;
      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = __54__NMSMediaQuotaManager__evaluateAddedItemsIfNecessary__block_invoke;
      v89[3] = &unk_27993DBA0;
      v23 = v59;
      v90 = v23;
      v61 = v60;
      v91 = v61;
      selfCopy = self;
      v58 = _newMutableItemEnumeratorDict;
      v93 = v58;
      v57 = _newMutableItemEnumeratorDict2;
      v94 = v57;
      v95 = buf;
      [(NSMutableDictionary *)v22 enumerateKeysAndObjectsUsingBlock:v89];
      if (![*(*&buf[8] + 40) count])
      {
        v83 = 0;
        v84 = &v83;
        v85 = 0x3032000000;
        v86 = __Block_byref_object_copy_;
        v87 = __Block_byref_object_dispose_;
        v88 = 0;
        v82[0] = 0;
        v82[1] = v82;
        v82[2] = 0x2020000000;
        v82[3] = 0;
        v24 = self->_itemEnumerators;
        v81[0] = MEMORY[0x277D85DD0];
        v81[1] = 3221225472;
        v81[2] = __54__NMSMediaQuotaManager__evaluateAddedItemsIfNecessary__block_invoke_2;
        v81[3] = &unk_27993DBC8;
        v81[4] = self;
        v81[5] = v82;
        v81[6] = &v83;
        [(NSMutableDictionary *)v24 enumerateKeysAndObjectsUsingBlock:v81];
        [*(*&buf[8] + 40) addObject:v84[5]];
        if ([v84[5] isEqualToString:@"com.apple.NanoMusic"])
        {
          self->_legacy_musicDidSkipItem = 1;
        }

        _Block_object_dispose(v82, 8);
        _Block_object_dispose(&v83, 8);
      }

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v25 = *(*&buf[8] + 40);
      v26 = [v25 countByEnumeratingWithState:&v77 objects:v102 count:16];
      if (v26)
      {
        v27 = *v78;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v78 != v27)
            {
              objc_enumerationMutation(v25);
            }

            v29 = *(*(&v77 + 1) + 8 * j);
            v30 = [(NSMutableDictionary *)self->_itemEnumerators objectForKeyedSubscript:v29];
            [obja setObject:v30 forKeyedSubscript:v29];
            [(NSMutableDictionary *)self->_itemEnumerators removeObjectForKey:v29];
            v31 = [v23 objectForKeyedSubscript:v29];
            v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Removing item list"];
            v33 = [NMGenericMessageLogAction logActionWithMessage:v32];
            [v31 addLogAction:v33];
          }

          v26 = [v25 countByEnumeratingWithState:&v77 objects:v102 count:16];
        }

        while (v26);
      }

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      keyEnumerator = [obja keyEnumerator];
      v35 = 0;
      v36 = [keyEnumerator countByEnumeratingWithState:&v73 objects:v101 count:16];
      if (v36)
      {
        v37 = *v74;
        do
        {
          for (k = 0; k != v36; ++k)
          {
            if (*v74 != v37)
            {
              objc_enumerationMutation(keyEnumerator);
            }

            v39 = [(NSDictionary *)self->_downloadInfoWithinQuotaForIdentifiers objectForKeyedSubscript:*(*(&v73 + 1) + 8 * k)];
            totalItemSize = [v39 totalItemSize];

            v35 += totalItemSize;
          }

          v36 = [keyEnumerator countByEnumeratingWithState:&v73 objects:v101 count:16];
        }

        while (v36);
      }

      v41 = self->_quota;
      v42 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_itemEnumerators, "count")}];

      v43 = self->_itemEnumerators;
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __54__NMSMediaQuotaManager__evaluateAddedItemsIfNecessary__block_invoke_3;
      v69[3] = &unk_27993DBF0;
      v72 = v41 - v35;
      v69[4] = self;
      v60 = v42;
      v70 = v60;
      v71 = v23;
      [(NSMutableDictionary *)v43 enumerateKeysAndObjectsUsingBlock:v69];
      _newMutableItemEnumeratorDict = v57;

      _newMutableItemEnumeratorDict2 = [(NMSMediaQuotaManager *)self _newMutableItemEnumeratorDict];
      _Block_object_dispose(buf, 8);

      objc_autoreleasePoolPop(context);
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    allValues = [v59 allValues];
    v45 = [allValues countByEnumeratingWithState:&v65 objects:v100 count:16];
    if (v45)
    {
      v46 = *v66;
      do
      {
        for (m = 0; m != v45; ++m)
        {
          if (*v66 != v46)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v65 + 1) + 8 * m) flush];
        }

        v45 = [allValues countByEnumeratingWithState:&v65 objects:v100 count:16];
      }

      while (v45);
    }

    v48 = NMLogForCategory(5);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = self->_quota;
      totalItemCount = [(NMSMediaDownloadInfo *)self->_downloadInfoWithinQuota totalItemCount];
      *buf = 138413058;
      *&buf[4] = @"[MediaQuota]";
      *&buf[12] = 2080;
      *&buf[14] = "[NMSMediaQuotaManager _evaluateAddedItemsIfNecessary]";
      *&buf[22] = 2048;
      v104 = v49;
      LOWORD(v105) = 2048;
      *(&v105 + 2) = totalItemCount;
      _os_log_impl(&dword_25B27B000, v48, OS_LOG_TYPE_DEFAULT, "%@ %s QuotaEvaluation result: downloadInfoWithinQuota (quota: %llu) (count: %lu)", buf, 0x2Au);
    }

    v51 = NMLogForCategory(5);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      totalItemSize2 = [(NMSMediaDownloadInfo *)self->_downloadInfoWithinQuota totalItemSize];
      *buf = 138412802;
      *&buf[4] = @"[MediaQuota]";
      *&buf[12] = 2080;
      *&buf[14] = "[NMSMediaQuotaManager _evaluateAddedItemsIfNecessary]";
      *&buf[22] = 2048;
      v104 = totalItemSize2;
      _os_log_impl(&dword_25B27B000, v51, OS_LOG_TYPE_DEFAULT, "%@ %s QuotaEvaluation result: downloadInfoWithinQuota using %llu bytes", buf, 0x20u);
    }

    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __54__NMSMediaQuotaManager__evaluateAddedItemsIfNecessary__block_invoke_122;
    v64[3] = &unk_27993DC18;
    v64[4] = self;
    [obja enumerateKeysAndObjectsUsingBlock:v64];
    v53 = NMLogForCategory(5);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      *buf = 138412802;
      *&buf[4] = @"[MediaQuota]";
      *&buf[12] = 2080;
      *&buf[14] = "[NMSMediaQuotaManager _evaluateAddedItemsIfNecessary]";
      *&buf[22] = 2112;
      v104 = date2;
      _os_log_impl(&dword_25B27B000, v53, OS_LOG_TYPE_DEFAULT, "%@ %s ****** Finished QuotaEvaluation! %@", buf, 0x20u);
    }

    self->_hasEvaluated = 1;
  }

  v55 = *MEMORY[0x277D85DE8];
}

void __54__NMSMediaQuotaManager__evaluateAddedItemsIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = a2;
  v29 = a3;
  v30 = [*(a1 + 32) objectForKeyedSubscript:v31];
  v5 = [*(a1 + 40) objectForKeyedSubscript:v31];
  v6 = [v5 unsignedLongLongValue];

  v7 = [*(*(a1 + 48) + 16) objectForKeyedSubscript:v31];
  v8 = [v7 unsignedLongLongValue];

  v9 = [*(*(a1 + 48) + 40) objectForKeyedSubscript:v31];
  v10 = [*(a1 + 56) objectForKeyedSubscript:v31];
  v28 = [*(a1 + 64) objectForKeyedSubscript:v31];
  while (1)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [v10 nextItem];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v29 nextItem];
    }

    v15 = v14;

    v16 = [[NMSQuotaEvaluationState alloc] initWithCurrentItem:v15 downloadInfo:v9];
    if (!v15)
    {
      break;
    }

    if (([*(*(a1 + 48) + 32) containsItem:v15] & 1) == 0)
    {
      if ([v15 isManuallyAdded])
      {
        v17 = [NMSQuotaEvaluationLogAction logActionWithActionType:2 state:v16];
        [v30 addLogAction:v17];
      }

      else
      {
        v18 = [*(*(a1 + 48) + 32) totalItemSize];
        if (([v15 size] + v18) <= *(*(a1 + 48) + 24))
        {
          v20 = [v9 totalItemSize];
          if ([v15 size] + v20 <= v6)
          {
            v23 = [NMSQuotaEvaluationLogAction logActionWithActionType:0 state:v16];
            [v30 addLogAction:v23];

            [*(*(a1 + 48) + 32) addItem:v15];
            v22 = v9;
          }

          else
          {
            v21 = [NMSQuotaEvaluationLogAction logActionWithActionType:1 state:v16];
            [v30 addLogAction:v21];

            v22 = v28;
          }

          [v22 addItem:v15];
        }

        else
        {
          v19 = [NMSQuotaEvaluationLogAction logActionWithActionType:2 state:v16];
          [v30 addLogAction:v19];

          if ([v31 isEqualToString:@"com.apple.NanoMusic"])
          {
            *(*(a1 + 48) + 49) = 1;
          }
        }
      }
    }

    if ([v9 totalItemSize] + v8 > v6)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Ending iteration within %llu of list quota - estimated item size %llu", v6 - objc_msgSend(v9, "totalItemSize"), v8];
      v26 = [NMGenericMessageLogAction logActionWithMessage:v24];
      v25 = v30;
      [v30 addLogAction:v26];

      goto LABEL_21;
    }

    objc_autoreleasePoolPop(v11);
  }

  if ([v28 hasItems])
  {
    v24 = [NMGenericMessageLogAction logActionWithMessage:@"Ran out of items. Enumerator has skipped items remaining."];
    v25 = v30;
    [v30 addLogAction:v24];
LABEL_21:

    goto LABEL_23;
  }

  v27 = [NMGenericMessageLogAction logActionWithMessage:@"Ran out of items."];
  v25 = v30;
  [v30 addLogAction:v27];

  [*(*(*(a1 + 72) + 8) + 40) addObject:v31];
LABEL_23:

  objc_autoreleasePoolPop(v11);
}

void __54__NMSMediaQuotaManager__evaluateAddedItemsIfNecessary__block_invoke_2(void *a1, void *a2)
{
  v7 = a2;
  v4 = [*(a1[4] + 16) objectForKeyedSubscript:?];
  v5 = [v4 unsignedLongLongValue];
  v6 = *(*(a1[5] + 8) + 24);

  if (v5 > v6)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }
}

void __54__NMSMediaQuotaManager__evaluateAddedItemsIfNecessary__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = *(*(a1 + 32) + 8);
  v5 = a2;
  v6 = [v4 count];
  v7 = *(a1 + 40);
  v8 = v3 / v6;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
  [v7 setObject:v9 forKey:v5];

  v12 = [*(a1 + 48) objectForKeyedSubscript:v5];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Reset to iterate over bundle identifiers with new quota %llu", v8];
  v11 = [NMGenericMessageLogAction logActionWithMessage:v10];
  [v12 addLogAction:v11];
}

void __54__NMSMediaQuotaManager__evaluateAddedItemsIfNecessary__block_invoke_122(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = NMLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v3];
    v6 = [v5 totalItemSize];
    v7 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v3];
    v9 = 138413314;
    v10 = @"[MediaQuota]";
    v11 = 2080;
    v12 = "[NMSMediaQuotaManager _evaluateAddedItemsIfNecessary]_block_invoke";
    v13 = 2114;
    v14 = v3;
    v15 = 2048;
    v16 = v6;
    v17 = 2048;
    v18 = [v7 totalItemCount];
    _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "%@ %s Evaluation result: container list %{public}@ used %llu bytes for %lu items", &v9, 0x34u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __61__NMSMediaQuotaManager_Legacy__evaluateAddedItemsIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v36 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKey:v36];
  v8 = [v7 unsignedLongLongValue];

  v9 = [*(a1 + 40) objectForKeyedSubscript:v36];
  v10 = v9;
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    goto LABEL_21;
  }

  p_info = NMSKeepLocalRequestOptions.info;
  v35 = v9;
  while (1)
  {
    v12 = [v6 currentItem];
    v13 = [v6 sizeForCurrentIdentifier];
    v14 = [v6 sizeForItemListWithinQuota];
    if (!v12)
    {
      v32 = [NMGenericMessageLogAction logActionWithMessage:@"Ran out of items"];
      [v10 addLogAction:v32];

      objc_storeStrong((*(*(a1 + 72) + 8) + 40), v4);
      goto LABEL_20;
    }

    v15 = v14;
    if ([v12 isManuallyAdded])
    {
      v16 = [v6 evaluationState];
      v17 = [p_info + 56 logActionWithActionType:0 state:v16];
      [v10 addLogAction:v17];

      [*(a1 + 48) addObject:v12];
      v18 = v6;
      v19 = 0;
      goto LABEL_15;
    }

    if ([v6 estimatedItemSize] + v15 > v8)
    {
      break;
    }

    if (([v6 isCurrentIdentifierEstimate] & 1) == 0 && objc_msgSend(*(a1 + 48), "containsObject:", v12))
    {
      goto LABEL_14;
    }

    if ((*(*(a1 + 56) + 32) + v13) <= *(*(a1 + 56) + 16))
    {
      if (v15 + v13 <= v8)
      {
        v24 = [*(a1 + 64) containsObject:v12];
        [*(a1 + 64) removeObject:v12];
        v25 = v4;
        v26 = p_info + 56;
        [v6 evaluationState];
        v27 = v8;
        v29 = v28 = p_info;
        v30 = v26;
        v4 = v25;
        v10 = v35;
        v31 = [v30 logActionWithActionType:v24 state:v29];
        [v35 addLogAction:v31];

        p_info = v28;
        v8 = v27;
        [*(a1 + 48) addObject:v12];
        *(*(a1 + 56) + 32) += v13;
LABEL_14:
        v18 = v6;
        v19 = 1;
LABEL_15:
        [v18 addCurrentIdentifierToWithinQuotaListAndCountSizeTowardsQuota:v19];
        goto LABEL_16;
      }

      [v6 skipCurrentIdentifier];
      v22 = [v6 evaluationState];
      v23 = [p_info + 56 logActionWithActionType:2 state:v22];
      [v10 addLogAction:v23];
    }

    else
    {
      v20 = [v6 evaluationState];
      v21 = [p_info + 56 logActionWithActionType:3 state:v20];
      [v10 addLogAction:v21];

      [v6 removeCurrentIdentifier];
    }

LABEL_16:

    if (*(*(*(a1 + 72) + 8) + 40))
    {
      goto LABEL_21;
    }
  }

  v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Ending iteration within %llu of listQuota - estimated item size %llu", v8 - v15, objc_msgSend(v6, "estimatedItemSize")];
  v34 = [NMGenericMessageLogAction logActionWithMessage:v33];
  [v35 addLogAction:v34];

  v10 = v35;
  [v6 markAllRemainingContainersAsSkipped];
LABEL_20:

LABEL_21:
}

void __61__NMSMediaQuotaManager_Legacy__evaluateAddedItemsIfNecessary__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if ([a3 estimatedItemSize] > *(*(*(a1 + 32) + 8) + 24))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __61__NMSMediaQuotaManager_Legacy__evaluateAddedItemsIfNecessary__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  v9 = [v6 count];
  v10 = *(a1 + 40);
  v11 = v5 / v9;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
  [v10 setObject:v12 forKey:v8];

  [v7 resetToIterateOverQuotaIdentifiers];
  v15 = [*(a1 + 48) objectForKeyedSubscript:v8];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Reset to iterate over bundle identifiers with new quota %llu", v11];
  v14 = [NMGenericMessageLogAction logActionWithMessage:v13];
  [v15 addLogAction:v14];
}

void __61__NMSMediaQuotaManager_Legacy__evaluateAddedItemsIfNecessary__block_invoke_118(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = NMLogForCategory(5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 sizeForItemListWithinQuota];
    v8 = [v5 downloadInfoWithinQuota];
    v10 = 138413314;
    v11 = @"[MediaQuota]";
    v12 = 2080;
    v13 = "[NMSMediaQuotaManager_Legacy _evaluateAddedItemsIfNecessary]_block_invoke";
    v14 = 2114;
    v15 = v4;
    v16 = 2048;
    v17 = v7;
    v18 = 2048;
    v19 = [v8 totalItemCount];
    _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "%@ %s Evaluation result: container list %{public}@ used %llu bytes for %lu items", &v10, 0x34u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end