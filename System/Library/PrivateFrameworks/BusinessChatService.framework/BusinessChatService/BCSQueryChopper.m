@interface BCSQueryChopper
- (id)_chopItemIdentifiersToFetchFromURL:(int)a3 isBloomFilterCached:;
- (uint64_t)_indexOfItemIdentifierInfo:(void *)a3 inItemIdentifierInfos:;
- (void)_returnHighestPriorityLinkItemWithItemIdentifiersToFetch:(void *)a3 fetchedItems:(void *)a4 fetchedErrors:(void *)a5 metric:(void *)a6 completion:;
- (void)initWithMetricFactory:(void *)a1;
- (void)queryChopperDelegate:(id)a3 fetchLinkItemModelWithURL:(id)a4 isBloomFilterCached:(BOOL)a5 forClientBundleID:(id)a6 metric:(id)a7 completion:(id)a8;
- (void)queryChopperDelegate:(id)a3 isBusinessRegisteredForURL:(id)a4 isBloomFilterCached:(BOOL)a5 forClientBundleID:(id)a6 metric:(id)a7 completion:(id)a8;
@end

@implementation BCSQueryChopper

- (void)initWithMetricFactory:(void *)a1
{
  v4 = a2;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = BCSQueryChopper;
    v5 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
      v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
      v7 = dispatch_queue_create([@"com.apple.businesschatservice.querychopper.serialqueue" UTF8String], v6);
      v8 = a1[1];
      a1[1] = v7;
    }
  }

  return a1;
}

- (void)queryChopperDelegate:(id)a3 fetchLinkItemModelWithURL:(id)a4 isBloomFilterCached:(BOOL)a5 forClientBundleID:(id)a6 metric:(id)a7 completion:(id)a8
{
  v11 = a5;
  v60 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v14 = a4;
  v36 = a6;
  v37 = a7;
  v15 = a8;
  v16 = ABSLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[BCSQueryChopper queryChopperDelegate:fetchLinkItemModelWithURL:isBloomFilterCached:forClientBundleID:metric:completion:]";
    _os_log_impl(&dword_242072000, v16, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  if (v15)
  {
    v34 = [(BCSQueryChopper *)self _chopItemIdentifiersToFetchFromURL:v14 isBloomFilterCached:v11];
    if ([v34 count])
    {
      v17 = dispatch_group_create();
      v18 = objc_opt_new();
      v19 = objc_opt_new();
      v20 = objc_opt_new();
      *&buf = 0;
      *(&buf + 1) = &buf;
      v58 = 0x2020000000;
      v59 = 0;
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __122__BCSQueryChopper_queryChopperDelegate_fetchLinkItemModelWithURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke;
      v45[3] = &unk_278D39BB8;
      group = v17;
      v46 = group;
      v47 = self;
      v48 = v36;
      v49 = v35;
      v21 = v34;
      v50 = v21;
      v22 = v18;
      v51 = v22;
      v23 = v19;
      v52 = v23;
      v24 = v20;
      v53 = v24;
      p_buf = &buf;
      v25 = v37;
      v54 = v25;
      v26 = v15;
      v55 = v26;
      [v21 enumerateObjectsUsingBlock:v45];
      v27 = v14;
      if (self)
      {
        serialDispatchQueue = self->_serialDispatchQueue;
      }

      else
      {
        serialDispatchQueue = 0;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __122__BCSQueryChopper_queryChopperDelegate_fetchLinkItemModelWithURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_9;
      block[3] = &unk_278D39BE0;
      v44 = &buf;
      block[4] = self;
      v39 = v21;
      v40 = v23;
      v41 = v24;
      v42 = v25;
      v43 = v26;
      v29 = v24;
      v30 = v23;
      dispatch_group_notify(group, serialDispatchQueue, block);

      v14 = v27;
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v31 = ABSLogCommon();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[BCSQueryChopper queryChopperDelegate:fetchLinkItemModelWithURL:isBloomFilterCached:forClientBundleID:metric:completion:]";
        _os_log_impl(&dword_242072000, v31, OS_LOG_TYPE_DEFAULT, "%s No items to fetch, bailing...", &buf, 0xCu);
      }

      [v37 setSuccessfulChop:-1];
      (*(v15 + 2))(v15, 0, 0);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)_chopItemIdentifiersToFetchFromURL:(int)a3 isBloomFilterCached:
{
  v52[1] = *MEMORY[0x277D85DE8];
  v42 = a2;
  if (a1)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v40 = [v42 copy];
    v41 = [BCSLinkItemIdentifier identifierWithURL:v40];
    if (v41)
    {
      v6 = [BCSChoppedItemIdentifierInfo newWithLinkItemIdentifier:v41 chopID:1];
      [v5 addObject:v6];
    }

    v7 = [v40 host];
    v8 = [v7 length];

    if (v8 && a3)
    {
      v38 = [(NSURL *)v42 URLByDeletingFragment];
      v36 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v38 resolvingAgainstBaseURL:0];
      v9 = [v36 queryItems];
      v33 = [v9 firstObject];

      if (v33)
      {
        v52[0] = v33;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
        [v36 setQueryItems:v10];

        v11 = v36;
      }

      else
      {
        v11 = v36;
        [v36 setQueryItems:0];
      }

      v31 = [v11 URL];
      v35 = [BCSLinkItemIdentifier identifierWithURL:v31];
      if (v35)
      {
        v12 = [BCSChoppedItemIdentifierInfo newWithLinkItemIdentifier:v35 chopID:2];
        [v5 addObject:{v12, v31}];
      }

      v37 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v38 resolvingAgainstBaseURL:0];
      [v37 setQueryItems:0];
      v39 = [v37 URL];
      v34 = [BCSLinkItemIdentifier identifierWithURL:v39];
      if (v34)
      {
        v13 = [BCSChoppedItemIdentifierInfo newWithLinkItemIdentifier:v34 chopID:3];
        [v5 addObject:v13];
      }

      v14 = [v39 lastPathComponent];
      if ([v14 length])
      {
        v15 = v39;
        do
        {
          v16 = [v15 lastPathComponent];

          v17 = [BCSLinkItemIdentifier identifierWithURL:v15];
          if (v17)
          {
            if ([v16 isEqualToString:@"/"])
            {
              v18 = 5;
            }

            else
            {
              v18 = 4;
            }

            v19 = [BCSChoppedItemIdentifierInfo newWithLinkItemIdentifier:v17 chopID:v18];
            [v5 addObject:v19];
          }

          v20 = [v15 absoluteString];
          v21 = [v20 length];

          v22 = [v15 URLByDeletingLastPathComponent];

          v23 = [v22 absoluteString];
          v24 = [v23 length];

          if (![v16 length])
          {
            break;
          }

          v25 = [v16 isEqualToString:@"/"];
          v26 = v24 > v21 ? 1 : v25;
          v14 = v16;
          v15 = v22;
        }

        while (v26 != 1);
      }

      else
      {
        v16 = v14;
      }
    }

    v27 = v5;
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__4;
    v50 = __Block_byref_object_dispose__4;
    v51 = objc_opt_new();
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x3032000000;
    v44[3] = __Block_byref_object_copy__4;
    v44[4] = __Block_byref_object_dispose__4;
    v45 = objc_opt_new();
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __61__BCSQueryChopper__removeLinkItemDuplicatesInOrderFromArray___block_invoke;
    v43[3] = &unk_278D39D20;
    v43[4] = v44;
    v43[5] = &v46;
    [v27 enumerateObjectsUsingBlock:v43];
    v28 = [v47[5] copy];
    _Block_object_dispose(v44, 8);

    _Block_object_dispose(&v46, 8);
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

void __122__BCSQueryChopper_queryChopperDelegate_fetchLinkItemModelWithURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = *(a1 + 40);
  if (v4)
  {
    v4 = v4[2];
  }

  v5 = v4;
  v6 = [v5 measurementFactory];
  if (v3)
  {
    v7 = v3[1];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v6 businessLinkChoppedFetchTimingMeasurementForItemIdentifier:v8];

  [v9 begin];
  v10 = [BCSQuery alloc];
  if (v3)
  {
    v11 = v3[1];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(BCSQuery *)v10 initWithItemIdentifier:v11 clientBundleId:*(a1 + 48) shardType:2];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __122__BCSQueryChopper_queryChopperDelegate_fetchLinkItemModelWithURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_2;
  v23[3] = &unk_278D39B90;
  v13 = *(a1 + 40);
  v24 = v9;
  v25 = v13;
  v26 = v3;
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  *&v19 = v17;
  *(&v19 + 1) = v18;
  *&v20 = v15;
  *(&v20 + 1) = v16;
  v27 = v20;
  v28 = v19;
  v32 = *(a1 + 112);
  v29 = *(a1 + 96);
  v31 = *(a1 + 104);
  v30 = *(a1 + 32);
  v21 = v3;
  v22 = v9;
  [v14 fetchItemWithQuery:v12 completion:v23];
}

void __122__BCSQueryChopper_queryChopperDelegate_fetchLinkItemModelWithURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) end];
  v7 = [(BCSQueryChopper *)*(a1 + 40) _indexOfItemIdentifierInfo:*(a1 + 56) inItemIdentifierInfos:?];
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromBOOL();
    *buf = 136315906;
    v33 = "[BCSQueryChopper queryChopperDelegate:fetchLinkItemModelWithURL:isBloomFilterCached:forClientBundleID:metric:completion:]_block_invoke_2";
    v34 = 2114;
    v35 = v9;
    v36 = 2048;
    v37 = v7;
    v38 = 2112;
    v39 = v6;
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s - chop attempt found item: %{public}@ - itemPriority:%ld - error:%@", buf, 0x2Au);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __122__BCSQueryChopper_queryChopperDelegate_fetchLinkItemModelWithURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_3;
  block[3] = &unk_278D39B68;
  v19 = v5;
  v20 = *(a1 + 64);
  v31 = v7;
  v21 = *(a1 + 72);
  v22 = v6;
  v12 = *(a1 + 80);
  v30 = *(a1 + 112);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = *(a1 + 56);
  v27 = *(a1 + 88);
  v29 = *(a1 + 104);
  v28 = *(a1 + 96);
  v15 = v6;
  v16 = v5;
  dispatch_async(v11, block);

  v17 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_indexOfItemIdentifierInfo:(void *)a3 inItemIdentifierInfos:
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__BCSQueryChopper__indexOfItemIdentifierInfo_inItemIdentifierInfos___block_invoke;
    v10[3] = &unk_278D39CA8;
    v11 = v5;
    v12 = &v13;
    [v6 enumerateObjectsUsingBlock:v10];
    a1 = v14[3];
    if (a1 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = ABSLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v18 = "[BCSQueryChopper _indexOfItemIdentifierInfo:inItemIdentifierInfos:]";
        _os_log_error_impl(&dword_242072000, v7, OS_LOG_TYPE_ERROR, "%s - Index of item identifier not found", buf, 0xCu);
      }

      a1 = 0;
    }

    _Block_object_dispose(&v13, 8);
  }

  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

void __122__BCSQueryChopper_queryChopperDelegate_fetchLinkItemModelWithURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_3(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 128)];
  if (v3)
  {
    [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v4];

    [*(a1 + 48) addObject:*(a1 + 32)];
  }

  else
  {
    [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v4];

    v5 = *(a1 + 48);
    v6 = [MEMORY[0x277CBEB68] null];
    [v5 addObject:v6];
  }

  v7 = *(a1 + 64);
  if (*(a1 + 56))
  {
    [*(a1 + 64) addObject:?];
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = [MEMORY[0x277CBEB68] null];
    [v7 addObject:v8];

    if (!v3)
    {
      goto LABEL_23;
    }
  }

  if (*(*(*(a1 + 120) + 8) + 24))
  {
    goto LABEL_23;
  }

  v9 = *(a1 + 72);
  v10 = *(a1 + 40);
  v11 = *(a1 + 88);
  v12 = *(a1 + 80);
  v13 = v10;
  v14 = v11;
  if (!v9)
  {
    goto LABEL_17;
  }

  v15 = [(BCSQueryChopper *)v9 _indexOfItemIdentifierInfo:v12 inItemIdentifierInfos:v14];
  if (!v15)
  {

LABEL_20:
    *(*(*(a1 + 120) + 8) + 24) = 1;
    v23 = ABSLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136315138;
      v26 = "[BCSQueryChopper queryChopperDelegate:fetchLinkItemModelWithURL:isBloomFilterCached:forClientBundleID:metric:completion:]_block_invoke";
      _os_log_impl(&dword_242072000, v23, OS_LOG_TYPE_DEFAULT, "%s - all higher priority items queries have returned from server, return early", &v25, 0xCu);
    }

    [(BCSQueryChopper *)*(a1 + 72) _returnHighestPriorityLinkItemWithItemIdentifiersToFetch:*(a1 + 48) fetchedItems:*(a1 + 64) fetchedErrors:*(a1 + 96) metric:*(a1 + 112) completion:?];
    goto LABEL_23;
  }

  v16 = v15;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v18 = [v13 objectForKeyedSubscript:v17];

  if (!v18)
  {
LABEL_17:

    goto LABEL_23;
  }

  v19 = 1;
  while (v16 != v19)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
    v21 = [v13 objectForKeyedSubscript:v20];

    ++v19;
    if (!v21)
    {
      v22 = v19 - 1;
      goto LABEL_19;
    }
  }

  v22 = v16;
LABEL_19:

  if (v22 >= v16)
  {
    goto LABEL_20;
  }

LABEL_23:
  dispatch_group_leave(*(a1 + 104));
  v24 = *MEMORY[0x277D85DE8];
}

- (void)_returnHighestPriorityLinkItemWithItemIdentifiersToFetch:(void *)a3 fetchedItems:(void *)a4 fetchedErrors:(void *)a5 metric:(void *)a6 completion:
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a1)
  {
    if ([v11 count])
    {
      v23[0] = 0;
      v23[1] = v23;
      v23[2] = 0x2020000000;
      v24 = 0;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __121__BCSQueryChopper__returnHighestPriorityLinkItemWithItemIdentifiersToFetch_fetchedItems_fetchedErrors_metric_completion___block_invoke;
      v16[3] = &unk_278D39CF8;
      v17 = v12;
      v18 = v14;
      v21 = v15;
      v22 = v23;
      v19 = v11;
      v20 = v13;
      [v19 enumerateObjectsUsingBlock:v16];

      _Block_object_dispose(v23, 8);
    }

    else
    {
      [v14 setSuccessfulChop:-1];
      (*(v15 + 2))(v15, 0, 0);
    }
  }
}

void __122__BCSQueryChopper_queryChopperDelegate_fetchLinkItemModelWithURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_9(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 80) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    v3 = ABSLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[BCSQueryChopper queryChopperDelegate:fetchLinkItemModelWithURL:isBloomFilterCached:forClientBundleID:metric:completion:]_block_invoke";
      _os_log_impl(&dword_242072000, v3, OS_LOG_TYPE_DEFAULT, "%s - All remote queries have finished, return", &v5, 0xCu);
    }

    [(BCSQueryChopper *)*(a1 + 32) _returnHighestPriorityLinkItemWithItemIdentifiersToFetch:*(a1 + 48) fetchedItems:*(a1 + 56) fetchedErrors:*(a1 + 64) metric:*(a1 + 72) completion:?];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)queryChopperDelegate:(id)a3 isBusinessRegisteredForURL:(id)a4 isBloomFilterCached:(BOOL)a5 forClientBundleID:(id)a6 metric:(id)a7 completion:(id)a8
{
  v11 = a5;
  v90 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v43 = a4;
  v41 = a6;
  v42 = a7;
  v14 = a8;
  v15 = ABSLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[BCSQueryChopper queryChopperDelegate:isBusinessRegisteredForURL:isBloomFilterCached:forClientBundleID:metric:completion:]";
    _os_log_impl(&dword_242072000, v15, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  if (!v14)
  {
    goto LABEL_27;
  }

  v44 = [(BCSQueryChopper *)self _chopItemIdentifiersToFetchFromURL:v43 isBloomFilterCached:v11];
  if (![v44 count])
  {
    v37 = ABSLogCommon();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[BCSQueryChopper queryChopperDelegate:isBusinessRegisteredForURL:isBloomFilterCached:forClientBundleID:metric:completion:]";
      _os_log_impl(&dword_242072000, v37, OS_LOG_TYPE_DEFAULT, "%s No items to check, bailing...", &buf, 0xCu);
    }

    [v42 setSuccessfulChop:-1];
    (*(v14 + 2))(v14, 0, 0, 0);
    goto LABEL_26;
  }

  v39 = dispatch_group_create();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v86 = 0x3032000000;
  v87 = __Block_byref_object_copy__4;
  v88 = __Block_byref_object_dispose__4;
  v89 = 0;
  v80[0] = 0;
  v80[1] = v80;
  v80[2] = 0x2020000000;
  v81 = 0;
  v79[0] = 0;
  v79[1] = v79;
  v79[2] = 0x2020000000;
  v79[3] = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__4;
  v77 = __Block_byref_object_dispose__4;
  v78 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__4;
  v71 = __Block_byref_object_dispose__4;
  v72 = 0;
  if (!MEMORY[0x245D06CC0]("[BCSQueryChopper queryChopperDelegate:isBusinessRegisteredForURL:isBloomFilterCached:forClientBundleID:metric:completion:]"))
  {
    goto LABEL_20;
  }

  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v44, "count")}];
  v17 = v74[5];
  v74[5] = v16;

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v18 = v44;
  v19 = [v18 countByEnumeratingWithState:&v63 objects:v84 count:16];
  if (!v19)
  {
    goto LABEL_19;
  }

  v20 = *v64;
  do
  {
    v21 = 0;
    do
    {
      if (*v64 != v20)
      {
        objc_enumerationMutation(v18);
      }

      v22 = *(*(&v63 + 1) + 8 * v21);
      v23 = v74[5];
      if (v22)
      {
        v24 = *(v22 + 8);
        v25 = v24;
        if (v24)
        {
          v26 = *(v24 + 2);
          goto LABEL_14;
        }
      }

      else
      {
        v25 = 0;
      }

      v26 = 0;
LABEL_14:
      v27 = v26;
      v28 = [v27 absoluteString];
      [v23 addObject:v28];

      ++v21;
    }

    while (v19 != v21);
    v29 = [v18 countByEnumeratingWithState:&v63 objects:v84 count:16];
    v19 = v29;
  }

  while (v29);
LABEL_19:

  v30 = v74[5];
  v82 = @"BCSBusinessQueryServiceChoppedURLs";
  v83 = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
  v32 = v68[5];
  v68[5] = v31;

LABEL_20:
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __123__BCSQueryChopper_queryChopperDelegate_isBusinessRegisteredForURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke;
  v51[3] = &unk_278D39C58;
  v33 = v39;
  v52 = v33;
  v53 = v41;
  v54 = v40;
  v55 = self;
  v58 = v79;
  v59 = v80;
  v34 = v42;
  v56 = v34;
  v60 = &v73;
  v35 = v14;
  v57 = v35;
  v61 = &v67;
  p_buf = &buf;
  [v44 enumerateObjectsUsingBlock:v51];
  if (self)
  {
    serialDispatchQueue = self->_serialDispatchQueue;
  }

  else
  {
    serialDispatchQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __123__BCSQueryChopper_queryChopperDelegate_isBusinessRegisteredForURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_2_17;
  block[3] = &unk_278D39C80;
  v48 = v80;
  v46 = v34;
  v47 = v35;
  v49 = &v67;
  v50 = &buf;
  dispatch_group_notify(v33, serialDispatchQueue, block);

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v73, 8);

  _Block_object_dispose(v79, 8);
  _Block_object_dispose(v80, 8);
  _Block_object_dispose(&buf, 8);

LABEL_26:
LABEL_27:

  v38 = *MEMORY[0x277D85DE8];
}

void __123__BCSQueryChopper_queryChopperDelegate_isBusinessRegisteredForURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  dispatch_group_enter(*(a1 + 32));
  v6 = [BCSQuery alloc];
  if (v5)
  {
    v7 = v5[1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BCSQuery *)v6 initWithItemIdentifier:v7 clientBundleId:*(a1 + 40) shardType:2];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __123__BCSQueryChopper_queryChopperDelegate_isBusinessRegisteredForURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_2;
  v12[3] = &unk_278D39C30;
  v9 = *(a1 + 48);
  v10 = *(a1 + 64);
  v12[4] = *(a1 + 56);
  v17 = *(a1 + 80);
  v13 = v10;
  v14 = v5;
  v18 = *(a1 + 96);
  v20 = a3;
  v16 = *(a1 + 72);
  v19 = *(a1 + 104);
  v15 = *(a1 + 32);
  v11 = v5;
  [v9 fetchIsBusinessRegisteredWithQuery:v8 completion:v12];
}

void __123__BCSQueryChopper_queryChopperDelegate_isBusinessRegisteredForURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 hasBusiness];
  ++*(*(*(a1 + 72) + 8) + 24);
  v7 = ABSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromBOOL();
    v9 = *(*(*(a1 + 72) + 8) + 24);
    *buf = 136315906;
    v31 = "[BCSQueryChopper queryChopperDelegate:isBusinessRegisteredForURL:isBloomFilterCached:forClientBundleID:metric:completion:]_block_invoke_2";
    v32 = 2114;
    v33 = v8;
    v34 = 2048;
    v35 = v9;
    v36 = 2112;
    v37 = v5;
    _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s - chop attempt isBusinessRegistered: %{public}@ - attemptCount:%ld - error:%@", buf, 0x2Au);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __123__BCSQueryChopper_queryChopperDelegate_isBusinessRegisteredForURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_11;
  block[3] = &unk_278D39C08;
  v29 = v6;
  v19 = *(a1 + 80);
  v22 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 112);
  v23 = v12;
  v28 = v13;
  *&v14 = v19;
  *(&v14 + 1) = *(a1 + 88);
  v20 = v14;
  v15 = *(a1 + 64);
  v24 = v5;
  v27 = *(a1 + 96);
  *&v16 = *(a1 + 56);
  *(&v16 + 1) = v15;
  v25 = v16;
  v26 = v20;
  v17 = v5;
  dispatch_async(v11, block);

  v18 = *MEMORY[0x277D85DE8];
}

void __123__BCSQueryChopper_queryChopperDelegate_isBusinessRegisteredForURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_11(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(v2 + 16);
    }

    else
    {
      v3 = 0;
    }

    [*(a1 + 32) setSuccessfulChop:v3];
    if (MEMORY[0x245D06CC0]("[BCSQueryChopper queryChopperDelegate:isBusinessRegisteredForURL:isBloomFilterCached:forClientBundleID:metric:completion:]_block_invoke"))
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = *(a1 + 40);
      if (v5)
      {
        v5 = v5[1];
        if (v5)
        {
          v5 = v5[2];
        }
      }

      v6 = v5;
      v7 = [v6 absoluteString];
      v8 = [v4 stringWithFormat:@"%@ (REGISTERED)", v7];

      [*(*(*(a1 + 80) + 8) + 40) replaceObjectAtIndex:*(a1 + 104) withObject:v8];
    }

    v9 = *(*(*(a1 + 88) + 8) + 40);
    v10 = *(*(a1 + 64) + 16);

    v10();
  }

  else
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      objc_storeStrong((*(*(a1 + 96) + 8) + 40), v11);
    }

    v12 = *(a1 + 56);

    dispatch_group_leave(v12);
  }
}

uint64_t __123__BCSQueryChopper_queryChopperDelegate_isBusinessRegisteredForURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_2_17(uint64_t result)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(*(result + 48) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    *(v1 + 24) = 1;
    v3 = ABSLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[BCSQueryChopper queryChopperDelegate:isBusinessRegisteredForURL:isBloomFilterCached:forClientBundleID:metric:completion:]_block_invoke_2";
      _os_log_impl(&dword_242072000, v3, OS_LOG_TYPE_DEFAULT, "%s - All queries have finished, return", &v7, 0xCu);
    }

    [*(v2 + 32) setSuccessfulChop:-1];
    v4 = *(*(*(v2 + 56) + 8) + 40);
    v5 = *(*(*(v2 + 64) + 8) + 40);
    result = (*(*(v2 + 40) + 16))();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __68__BCSQueryChopper__indexOfItemIdentifierInfo_inItemIdentifierInfos___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = v8[1];
  }

  v12 = v7;
  if (v7)
  {
    v9 = v7[1];
  }

  else
  {
    v9 = 0;
  }

  v10 = v8;
  v11 = [v10 matchesItemIdentifying:v9];

  if (v11)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void __121__BCSQueryChopper__returnHighestPriorityLinkItemWithItemIdentifiersToFetch_fetchedItems_fetchedErrors_metric_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __121__BCSQueryChopper__returnHighestPriorityLinkItemWithItemIdentifiersToFetch_fetchedItems_fetchedErrors_metric_completion___block_invoke_2;
  v18[3] = &unk_278D39CD0;
  v19 = v7;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v22 = v10;
  v23 = v11;
  v24 = a4;
  v25 = a3;
  v12 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = *(a1 + 56);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  *&v16 = v9;
  *(&v16 + 1) = v12;
  v20 = v16;
  v21 = v15;
  v17 = v7;
  [v8 enumerateObjectsUsingBlock:v18];
}

void __121__BCSQueryChopper__returnHighestPriorityLinkItemWithItemIdentifiersToFetch_fetchedItems_fetchedErrors_metric_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = a2;
  v7 = [MEMORY[0x277CBEB68] null];

  if (v7 != v20)
  {
    v8 = [v20 linkURL];
    v9 = [BCSLinkItemIdentifier identifierWithURL:v8];

    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 8);
    }

    else
    {
      v11 = 0;
    }

    if ([v11 matchesItemIdentifying:v9])
    {
      v12 = *(a1 + 32);
      if (v12)
      {
        v13 = *(v12 + 16);
      }

      else
      {
        v13 = 0;
      }

      [*(a1 + 40) setSuccessfulChop:v13];
      (*(*(a1 + 72) + 16))();
      v14 = *(a1 + 88);
      *(*(*(a1 + 80) + 8) + 24) = 1;
      *a4 = 1;
      *v14 = 1;
    }
  }

  if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
  {
    v15 = *(a1 + 96);
    if (v15 == [*(a1 + 48) count] - 1 && objc_msgSend(*(a1 + 56), "count") - 1 == a3)
    {
      v16 = [*(a1 + 64) objectAtIndex:a3];
      [*(a1 + 40) setSuccessfulChop:-1];
      v17 = *(a1 + 72);
      v18 = [MEMORY[0x277CBEB68] null];
      if (v16 == v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16;
      }

      (*(v17 + 16))(v17, 0, v19);

      *a4 = 1;
      **(a1 + 88) = 1;
    }
  }
}

void __61__BCSQueryChopper__removeLinkItemDuplicatesInOrderFromArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v13 = v3;
  if (v3)
  {
    v5 = v3[1];
    v6 = v5;
    if (v5)
    {
      v7 = [v5[1] copy];
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
LABEL_4:
  v8 = [v4 objectForKeyedSubscript:v7];

  if (!v8)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v13];
  }

  v9 = *(*(*(a1 + 32) + 8) + 40);
  if (v13)
  {
    v10 = v13[1];
    v11 = v10;
    if (v10)
    {
      v12 = [v10[1] copy];
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = 0;
LABEL_9:
  [v9 setObject:MEMORY[0x277CBEC38] forKey:v12];
}

@end