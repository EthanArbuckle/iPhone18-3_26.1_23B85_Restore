@interface CADFullLoggingSpotlightIndex
- (CADFullLoggingSpotlightIndex)initWithIndex:(id)a3;
- (void)beginIndexBatch;
- (void)deleteAllSearchableItemsForBundleID:(id)a3 completionHandler:(id)a4;
- (void)deleteSearchableItemsWithDomainIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)endIndexBatchWithExpectedClientState:(id)a3 newClientState:(id)a4 completionHandler:(id)a5;
- (void)indexSearchableItems:(id)a3 completionHandler:(id)a4;
@end

@implementation CADFullLoggingSpotlightIndex

- (CADFullLoggingSpotlightIndex)initWithIndex:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CADFullLoggingSpotlightIndex;
  v6 = [(CADFullLoggingSpotlightIndex *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedIndex, a3);
  }

  return v7;
}

- (void)beginIndexBatch
{
  v3 = CADSpotlightHandle;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_INFO, "beginIndexBatch called", v4, 2u);
  }

  [(CADSpotlightIndex *)self->_wrappedIndex beginIndexBatch];
}

- (void)endIndexBatchWithExpectedClientState:(id)a3 newClientState:(id)a4 completionHandler:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CADSpotlightHandle;
  v12 = os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v12)
    {
      *v17 = 138412290;
      *&v17[4] = v8;
      v13 = "endIndexBatchWithExpectedClientState called with expectedClientState %@";
      v14 = v11;
      v15 = 12;
LABEL_6:
      _os_log_impl(&dword_22430B000, v14, OS_LOG_TYPE_INFO, v13, v17, v15);
    }
  }

  else if (v12)
  {
    *v17 = 0;
    v13 = "endIndexBatchWithExpectedClientState called";
    v14 = v11;
    v15 = 2;
    goto LABEL_6;
  }

  [(CADSpotlightIndex *)self->_wrappedIndex endIndexBatchWithExpectedClientState:v8 newClientState:v9 completionHandler:v10, *v17];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)deleteSearchableItemsWithDomainIdentifiers:(id)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = CADSpotlightHandle;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    *buf = 134218242;
    v16 = [v6 count];
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_INFO, "deleteSearchableItems called with %lu domain identifiers: %@", buf, 0x16u);
  }

  wrappedIndex = self->_wrappedIndex;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __93__CADFullLoggingSpotlightIndex_deleteSearchableItemsWithDomainIdentifiers_completionHandler___block_invoke;
  v13[3] = &unk_27851B190;
  v14 = v7;
  v11 = v7;
  [(CADSpotlightIndex *)wrappedIndex deleteSearchableItemsWithDomainIdentifiers:v6 completionHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __93__CADFullLoggingSpotlightIndex_deleteSearchableItemsWithDomainIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CADSpotlightHandle;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_INFO, "deleteSearchableItems finished with error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x277D85DE8];
}

- (void)indexSearchableItems:(id)a3 completionHandler:(id)a4
{
  v25 = self;
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26 = a4;
  v6 = CADSpotlightHandle;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    *buf = 134217984;
    v34 = [v5 count];
    _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_INFO, "indexSearchableItems called with %lu searchable items: [", buf, 0xCu);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = [v13 attributeSet];
        v15 = [v14 attributeDictionary];
        v16 = [v15 mutableCopy];

        [v16 removeObjectForKey:@"_kMDItemProviderDataTypes"];
        v17 = CADSpotlightHandle;
        if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO))
        {
          v18 = v17;
          v19 = [v13 attributeSet];
          v20 = [v19 customAttributeDictionary];
          *buf = 138412546;
          v34 = v16;
          v35 = 2112;
          v36 = v20;
          _os_log_impl(&dword_22430B000, v18, OS_LOG_TYPE_INFO, "Item %@\n%@", buf, 0x16u);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v10);
  }

  v21 = CADSpotlightHandle;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v21, OS_LOG_TYPE_INFO, "]", buf, 2u);
  }

  wrappedIndex = v25->_wrappedIndex;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __71__CADFullLoggingSpotlightIndex_indexSearchableItems_completionHandler___block_invoke;
  v27[3] = &unk_27851B190;
  v28 = v26;
  v23 = v26;
  [(CADSpotlightIndex *)wrappedIndex indexSearchableItems:v8 completionHandler:v27];

  v24 = *MEMORY[0x277D85DE8];
}

void __71__CADFullLoggingSpotlightIndex_indexSearchableItems_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CADSpotlightHandle;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_INFO, "indexSearchableItems finished with error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllSearchableItemsForBundleID:(id)a3 completionHandler:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = CADSpotlightHandle;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_22430B000, v8, OS_LOG_TYPE_INFO, "deleteSearchableItemsForBundleID called with bundle id: %@", buf, 0xCu);
  }

  wrappedIndex = self->_wrappedIndex;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__CADFullLoggingSpotlightIndex_deleteAllSearchableItemsForBundleID_completionHandler___block_invoke;
  v12[3] = &unk_27851B190;
  v13 = v7;
  v10 = v7;
  [(CADSpotlightIndex *)wrappedIndex deleteAllSearchableItemsForBundleID:v6 completionHandler:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __86__CADFullLoggingSpotlightIndex_deleteAllSearchableItemsForBundleID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CADSpotlightHandle;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_INFO, "deleteAllSearchableItemsForBundleID finished with error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x277D85DE8];
}

@end