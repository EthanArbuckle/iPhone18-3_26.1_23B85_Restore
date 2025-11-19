@interface NMSMediaQuotaManager_Legacy
- (BOOL)isItemGroupWithinQuota:(id)a3;
- (NMSMediaQuotaManager_Legacy)initWithGroupIterators:(id)a3 quota:(unint64_t)a4;
- (id)_containerListForBundleIdentifier:(id)a3;
- (id)downloadInfoWithinQuota;
- (id)downloadInfoWithinQuotaForBundleIdentifier:(id)a3;
- (id)groupIteratorForBundleIdentifier:(id)a3;
- (unint64_t)sizeOfItemsWithinQuotaForBundleIdentifier:(id)a3;
- (unint64_t)sizeOfNominatedItemsForBundleIdentifier:(id)a3;
- (void)_evaluateAddedItemsIfNecessary;
@end

@implementation NMSMediaQuotaManager_Legacy

- (NMSMediaQuotaManager_Legacy)initWithGroupIterators:(id)a3 quota:(unint64_t)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = NMSMediaQuotaManager_Legacy;
  v7 = [(NMSMediaQuotaManager_Legacy *)&v15 init];
  if (v7)
  {
    v8 = [v6 copy];
    groupIterators = v7->_groupIterators;
    v7->_groupIterators = v8;

    v7->_quota = a4;
    v10 = [NMSMediaDownloadInfo alloc];
    v11 = objc_opt_new();
    v12 = [(NMSMediaDownloadInfo *)v10 initWithItems:v11];
    downloadInfoWithinQuota = v7->_downloadInfoWithinQuota;
    v7->_downloadInfoWithinQuota = v12;

    v7->_quotaUsage = 0;
    v7->_hasEvaluated = 0;
  }

  return v7;
}

- (id)groupIteratorForBundleIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSDictionary *)self->_groupIterators objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)downloadInfoWithinQuota
{
  [(NMSMediaQuotaManager_Legacy *)self _evaluateAddedItemsIfNecessary];
  downloadInfoWithinQuota = self->_downloadInfoWithinQuota;

  return downloadInfoWithinQuota;
}

- (id)downloadInfoWithinQuotaForBundleIdentifier:(id)a3
{
  v4 = a3;
  [(NMSMediaQuotaManager_Legacy *)self _evaluateAddedItemsIfNecessary];
  v5 = [(NMSMediaQuotaManager_Legacy *)self _containerListForBundleIdentifier:v4];

  v6 = [v5 downloadInfoWithinQuota];

  return v6;
}

- (unint64_t)sizeOfItemsWithinQuotaForBundleIdentifier:(id)a3
{
  v4 = a3;
  [(NMSMediaQuotaManager_Legacy *)self _evaluateAddedItemsIfNecessary];
  v5 = [(NMSMediaQuotaManager_Legacy *)self _containerListForBundleIdentifier:v4];

  v6 = [v5 sizeForItemListWithinQuota];
  return v6;
}

- (unint64_t)sizeOfNominatedItemsForBundleIdentifier:(id)a3
{
  v4 = a3;
  [(NMSMediaQuotaManager_Legacy *)self _evaluateAddedItemsIfNecessary];
  v5 = [(NMSMediaQuotaManager_Legacy *)self _containerListForBundleIdentifier:v4];

  v6 = [v5 nominatedItemSize];
  return v6;
}

- (BOOL)isItemGroupWithinQuota:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v35 = a3;
  [(NMSMediaQuotaManager_Legacy *)self _evaluateAddedItemsIfNecessary];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v4 = [(NSDictionary *)self->_groupIterators allValues];
  v30 = [v4 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v30)
  {
    v5 = *v41;
    v32 = v4;
    v29 = *v41;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v41 != v5)
        {
          objc_enumerationMutation(v4);
        }

        v31 = v6;
        v7 = *(*(&v40 + 1) + 8 * v6);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v8 = [v7 itemGroups];
        v9 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (!v9)
        {
          goto LABEL_24;
        }

        v10 = v9;
        v11 = *v37;
        v34 = v8;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v37 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v36 + 1) + 8 * i);
            v14 = [v7 iteratingOrder];
            if (v14 == 1)
            {
              v15 = [v13 quotaData];
              if ([v15 numItemsAdded])
              {
                goto LABEL_21;
              }

              v21 = [v13 quotaData];
              if (([v21 hasItemsAboveQuota] & 1) == 0)
              {

LABEL_21:
                continue;
              }

              v22 = [v13 quotaData];
              v23 = [v22 quotaRefObj];
              v24 = [v35 quotaData];
              v25 = [v24 quotaRefObj];
              v33 = [v23 isEqual:v25];

              v8 = v34;
              if (v33)
              {
LABEL_27:

                v26 = 0;
                v4 = v32;
                goto LABEL_29;
              }
            }

            else
            {
              if (v14)
              {
                continue;
              }

              v15 = [v13 quotaData];
              if (![v15 hasItemsAboveQuota])
              {
                goto LABEL_21;
              }

              v16 = [v13 quotaData];
              v17 = [v16 quotaRefObj];
              v18 = [v35 quotaData];
              v19 = [v18 quotaRefObj];
              v20 = [v17 isEqual:v19];

              v8 = v34;
              if (v20)
              {
                goto LABEL_27;
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }

LABEL_24:

        v6 = v31 + 1;
        v4 = v32;
        v5 = v29;
      }

      while (v31 + 1 != v30);
      v26 = 1;
      v30 = [v32 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (!v30)
      {
        goto LABEL_29;
      }
    }
  }

  v26 = 1;
LABEL_29:

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (id)_containerListForBundleIdentifier:(id)a3
{
  v4 = a3;
  [(NMSMediaQuotaManager_Legacy *)self _evaluateAddedItemsIfNecessary];
  v5 = [(NSDictionary *)self->_groupIterators objectForKeyedSubscript:v4];

  return v5;
}

- (void)_evaluateAddedItemsIfNecessary
{
  v89 = *MEMORY[0x277D85DE8];
  if (!self->_hasEvaluated)
  {
    context = objc_autoreleasePoolPush();
    v2 = NMLogForCategory(5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CBEAA8] date];
      *buf = 138412802;
      *&buf[4] = @"[MediaQuota]";
      *&buf[12] = 2080;
      *&buf[14] = "[NMSMediaQuotaManager_Legacy _evaluateAddedItemsIfNecessary]";
      *&buf[22] = 2112;
      v86 = v3;
      _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "%@ %s ****** Started QuotaEvaluation %@!", buf, 0x20u);
    }

    v4 = NMLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      groupIterators = self->_groupIterators;
      quota = self->_quota;
      *buf = 138413058;
      *&buf[4] = @"[MediaQuota]";
      *&buf[12] = 2080;
      *&buf[14] = "[NMSMediaQuotaManager_Legacy _evaluateAddedItemsIfNecessary]";
      *&buf[22] = 2048;
      v86 = quota;
      LOWORD(v87) = 2114;
      *(&v87 + 2) = groupIterators;
      _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "%@ %s Evaluating items with quota %llu for container lists %{public}@", buf, 0x2Au);
    }

    v53 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v55 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSDictionary count](self->_groupIterators, "count")}];
    v54 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSDictionary count](self->_groupIterators, "count")}];
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = self->_groupIterators;
    v7 = [(NSDictionary *)obj countByEnumeratingWithState:&v79 objects:v88 count:16];
    if (v7)
    {
      v8 = *v80;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v80 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v79 + 1) + 8 * i);
          v11 = self->_quota;
          v12 = [(NSDictionary *)self->_groupIterators count];
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11 / v12];
          [v55 setObject:v13 forKey:v10];

          v14 = [NMLogActionsCoalescer alloc];
          v15 = NMLogForCategory(6);
          v16 = [(NMLogActionsCoalescer *)v14 initWithIdentifier:v10 logCategory:v15];

          v17 = [@"[MediaQuota]" stringByAppendingString:@" QuotaEvaluation process"];
          [(NMLogActionsCoalescer *)v16 setPrefix:v17];

          [v54 setObject:v16 forKeyedSubscript:v10];
        }

        v7 = [(NSDictionary *)obj countByEnumeratingWithState:&v79 objects:v88 count:16];
      }

      while (v7);
    }

    v18 = NMLogForCategory(5);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = @"[MediaQuota]";
      *&buf[12] = 2080;
      *&buf[14] = "[NMSMediaQuotaManager_Legacy _evaluateAddedItemsIfNecessary]";
      *&buf[22] = 2114;
      v86 = v55;
      _os_log_impl(&dword_25B27B000, v18, OS_LOG_TYPE_DEFAULT, "%@ %s Calculated initial per bundleIdentifier quotas %{public}@", buf, 0x20u);
    }

    v19 = [(NSDictionary *)self->_groupIterators mutableCopy];
    v49 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSDictionary count](self->_groupIterators, "count")}];
    obja = [MEMORY[0x277CBEB58] set];
    if ([v19 count])
    {
      v20 = MEMORY[0x277D85DD0];
      do
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v86 = __Block_byref_object_copy__1;
        *&v87 = __Block_byref_object_dispose__1;
        *(&v87 + 1) = 0;
        do
        {
          v72[0] = v20;
          v72[1] = 3221225472;
          v72[2] = __61__NMSMediaQuotaManager_Legacy__evaluateAddedItemsIfNecessary__block_invoke;
          v72[3] = &unk_27993DDB0;
          v21 = v55;
          v73 = v21;
          v22 = v54;
          v74 = v22;
          v78 = buf;
          v75 = v53;
          v76 = self;
          v77 = obja;
          [v19 enumerateKeysAndObjectsUsingBlock:v72];
          if (!*(*&buf[8] + 40))
          {
            v71[0] = 0;
            v71[1] = v71;
            v71[2] = 0x2020000000;
            v71[3] = 0;
            v70[0] = MEMORY[0x277D85DD0];
            v70[1] = 3221225472;
            v70[2] = __61__NMSMediaQuotaManager_Legacy__evaluateAddedItemsIfNecessary__block_invoke_2;
            v70[3] = &unk_27993DDD8;
            v70[4] = v71;
            v70[5] = buf;
            [v19 enumerateKeysAndObjectsUsingBlock:v70];
            _Block_object_dispose(v71, 8);
          }
        }

        while (!*(*&buf[8] + 40));
        v50 = [v19 objectForKeyedSubscript:?];
        [v49 setObject:v50 forKeyedSubscript:*(*&buf[8] + 40)];
        [v19 removeObjectForKey:*(*&buf[8] + 40)];
        v23 = [v22 objectForKeyedSubscript:*(*&buf[8] + 40)];
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Removing item list"];
        v25 = [NMGenericMessageLogAction logActionWithMessage:v24];
        [v23 addLogAction:v25];

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v26 = [v49 allValues];
        v27 = 0;
        v28 = [v26 countByEnumeratingWithState:&v66 objects:v84 count:16];
        if (v28)
        {
          v29 = *v67;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v67 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v27 += [*(*(&v66 + 1) + 8 * j) sizeForItemListWithinQuota];
            }

            v28 = [v26 countByEnumeratingWithState:&v66 objects:v84 count:16];
          }

          while (v28);
        }

        v31 = self->_quota;
        v32 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v19, "count")}];

        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __61__NMSMediaQuotaManager_Legacy__evaluateAddedItemsIfNecessary__block_invoke_3;
        v61[3] = &unk_27993DE00;
        v65 = v31 - v27;
        v33 = v19;
        v62 = v33;
        v55 = v32;
        v63 = v55;
        v64 = v22;
        [v33 enumerateKeysAndObjectsUsingBlock:v61];

        _Block_object_dispose(buf, 8);
      }

      while ([v33 count]);
    }

    v34 = [[NMSMediaDownloadInfo alloc] initWithItems:v53];
    downloadInfoWithinQuota = self->_downloadInfoWithinQuota;
    self->_downloadInfoWithinQuota = v34;

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v36 = [v54 allValues];
    v37 = [v36 countByEnumeratingWithState:&v57 objects:v83 count:16];
    if (v37)
    {
      v38 = *v58;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v58 != v38)
          {
            objc_enumerationMutation(v36);
          }

          [*(*(&v57 + 1) + 8 * k) flush];
        }

        v37 = [v36 countByEnumeratingWithState:&v57 objects:v83 count:16];
      }

      while (v37);
    }

    v40 = NMLogForCategory(5);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = self->_quota;
      v42 = [(NMSMediaDownloadInfo *)self->_downloadInfoWithinQuota totalItemCount];
      *buf = 138413058;
      *&buf[4] = @"[MediaQuota]";
      *&buf[12] = 2080;
      *&buf[14] = "[NMSMediaQuotaManager_Legacy _evaluateAddedItemsIfNecessary]";
      *&buf[22] = 2048;
      v86 = v41;
      LOWORD(v87) = 2048;
      *(&v87 + 2) = v42;
      _os_log_impl(&dword_25B27B000, v40, OS_LOG_TYPE_DEFAULT, "%@ %s QuotaEvaluation result: downloadInfoWithinQuota (quota: %llu) (count: %lu)", buf, 0x2Au);
    }

    v43 = NMLogForCategory(5);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      quotaUsage = self->_quotaUsage;
      *buf = 138412802;
      *&buf[4] = @"[MediaQuota]";
      *&buf[12] = 2080;
      *&buf[14] = "[NMSMediaQuotaManager_Legacy _evaluateAddedItemsIfNecessary]";
      *&buf[22] = 2048;
      v86 = quotaUsage;
      _os_log_impl(&dword_25B27B000, v43, OS_LOG_TYPE_DEFAULT, "%@ %s QuotaEvaluation result: downloadInfoWithinQuota using %llu bytes", buf, 0x20u);
    }

    [(NSDictionary *)self->_groupIterators enumerateKeysAndObjectsUsingBlock:&__block_literal_global_0];
    v45 = NMLogForCategory(5);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [MEMORY[0x277CBEAA8] date];
      *buf = 138412802;
      *&buf[4] = @"[MediaQuota]";
      *&buf[12] = 2080;
      *&buf[14] = "[NMSMediaQuotaManager_Legacy _evaluateAddedItemsIfNecessary]";
      *&buf[22] = 2112;
      v86 = v46;
      _os_log_impl(&dword_25B27B000, v45, OS_LOG_TYPE_DEFAULT, "%@ %s ****** Finished QuotaEvaluation! %@", buf, 0x20u);
    }

    self->_hasEvaluated = 1;
    objc_autoreleasePoolPop(context);
  }

  v47 = *MEMORY[0x277D85DE8];
}

@end