@interface HUFaceRecognitionRecentEventsItemProvider
+ (id)_coalescedItems:(id)a3;
- (HUFaceRecognitionRecentEventsItemProvider)initWithHome:(id)a3;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HUFaceRecognitionRecentEventsItemProvider

- (HUFaceRecognitionRecentEventsItemProvider)initWithHome:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = HUFaceRecognitionRecentEventsItemProvider;
  v6 = [(HFItemProvider *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
    v8 = [MEMORY[0x277CBEB58] set];
    personItems = v7->_personItems;
    v7->_personItems = v8;

    v10 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-604800.0];
    v11 = objc_alloc(MEMORY[0x277CCA970]);
    v12 = [MEMORY[0x277CBEAA8] now];
    v13 = [v11 initWithStartDate:v10 endDate:v12];
    dateRange = v7->_dateRange;
    v7->_dateRange = v13;

    v7->_fetchLimit = 1000;
  }

  return v7;
}

- (id)reloadItems
{
  v3 = [(HUFaceRecognitionRecentEventsItemProvider *)self home];
  v4 = [v3 hf_allCameraProfilesSupportingRecording];

  v5 = [v4 na_map:&__block_literal_global_207];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__24;
  v14[4] = __Block_byref_object_dispose__24;
  v15 = [MEMORY[0x277CBEB58] set];
  v6 = MEMORY[0x277D2C900];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__HUFaceRecognitionRecentEventsItemProvider_reloadItems__block_invoke_4;
  v13[3] = &unk_277DC15A0;
  v13[4] = self;
  v13[5] = v14;
  v7 = [v5 na_map:v13];
  v8 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v9 = [v6 combineAllFutures:v7 ignoringErrors:1 scheduler:v8];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__HUFaceRecognitionRecentEventsItemProvider_reloadItems__block_invoke_12;
  v12[3] = &unk_277DC15E8;
  v12[4] = self;
  v12[5] = v14;
  v10 = [v9 flatMap:v12];

  _Block_object_dispose(v14, 8);

  return v10;
}

id __56__HUFaceRecognitionRecentEventsItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__HUFaceRecognitionRecentEventsItemProvider_reloadItems__block_invoke_2;
  v14[3] = &unk_277DB8200;
  v14[4] = *(a1 + 32);
  v5 = v3;
  v15 = v5;
  v6 = [v4 futureWithBlock:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__HUFaceRecognitionRecentEventsItemProvider_reloadItems__block_invoke_5;
  v11[3] = &unk_277DC1578;
  v7 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v8 = v5;
  v9 = [v6 addCompletionBlock:v11];

  return v6;
}

void __56__HUFaceRecognitionRecentEventsItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dateRange];

  v5 = *(a1 + 40);
  if (v4)
  {
    v6 = [*(a1 + 32) dateRange];
    v7 = [*(a1 + 32) fetchLimit];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__HUFaceRecognitionRecentEventsItemProvider_reloadItems__block_invoke_4;
    v11[3] = &unk_277DB7628;
    v8 = &v12;
    v12 = v3;
    v9 = v3;
    [v5 fetchSignificantEventsWithDateInterval:v6 limit:v7 shouldOrderAscending:0 completion:v11];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__HUFaceRecognitionRecentEventsItemProvider_reloadItems__block_invoke_3;
    v13[3] = &unk_277DBBEB0;
    v8 = &v14;
    v14 = v3;
    v10 = v3;
    [v5 fetchAllSignificantEventsWithCompletion:v13];
  }
}

void __56__HUFaceRecognitionRecentEventsItemProvider_reloadItems__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CBEB98];
  v6 = a3;
  v7 = [v5 setWithArray:a2];
  [v4 finishWithResult:v7 error:v6];
}

void __56__HUFaceRecognitionRecentEventsItemProvider_reloadItems__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "Error on clip manager %@ fetching significant events %@", &v11, 0x16u);
    }
  }

  else
  {
    objc_opt_class();
    v9 = v5;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v7 = v10;

    [*(*(*(a1 + 40) + 8) + 40) unionSet:v7];
  }
}

id __56__HUFaceRecognitionRecentEventsItemProvider_reloadItems__block_invoke_12(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(*(*(a1 + 40) + 8) + 40) na_filter:&__block_literal_global_16_4];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v10 = [*(*(*(a1 + 40) + 8) + 40) count];
    *buf = 134218240;
    v14 = v10;
    v15 = 2048;
    v16 = [v2 count];
    _os_log_debug_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEBUG, "Recent Events reload: %lu significant events %lu have face classifications", buf, 0x16u);
  }

  v4 = *(a1 + 32);
  v5 = [v2 allObjects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__HUFaceRecognitionRecentEventsItemProvider_reloadItems__block_invoke_17;
  v12[3] = &unk_277DBCDF8;
  v12[4] = *(a1 + 32);
  v6 = [v4 reloadItemsWithHomeKitObjects:v5 filter:0 itemMap:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__HUFaceRecognitionRecentEventsItemProvider_reloadItems__block_invoke_2_21;
  v11[3] = &unk_277DBAFF8;
  v11[4] = *(a1 + 32);
  v7 = [v6 flatMap:v11];
  v8 = [v7 recover:&__block_literal_global_28_1];

  return v8;
}

BOOL __56__HUFaceRecognitionRecentEventsItemProvider_reloadItems__block_invoke_2_13(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 faceClassification];

  if (!v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_debug_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEBUG, "No face classification, skipping event %@", &v6, 0xCu);
    }
  }

  return v3 != 0;
}

id __56__HUFaceRecognitionRecentEventsItemProvider_reloadItems__block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 faceClassification];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D14680]);
    v9 = [*(a1 + 32) home];
    v10 = [v8 initWithSignificantEvent:v6 home:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __56__HUFaceRecognitionRecentEventsItemProvider_reloadItems__block_invoke_2_21(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 addedItems];
  v7 = [v5 existingItems];
  v8 = [v6 setByAddingObjectsFromSet:v7];
  v23 = [v8 allObjects];

  v9 = [HUFaceRecognitionRecentEventsItemProvider _coalescedItems:v23];
  v10 = [MEMORY[0x277CBEB98] setWithArray:v9];
  v11 = [v5 addedItems];
  v12 = [v10 na_setByIntersectingWithSet:v11];

  v13 = [v5 existingItems];
  v14 = [v13 na_setByRemovingObjectsFromSet:v10];

  v15 = [v5 existingItems];
  v16 = [v15 mutableCopy];

  [v16 minusSet:v14];
  v17 = [v5 removedItems];
  v18 = [v17 mutableCopy];

  [v18 unionSet:v14];
  v19 = [objc_alloc(MEMORY[0x277D14768]) initWithAddedItems:v12 removedItems:v18 existingItems:v16];
  v20 = [v10 mutableCopy];
  [*(a1 + 32) setPersonItems:v20];

  v21 = [MEMORY[0x277D2C900] futureWithResult:v19];

  return v21;
}

id __56__HUFaceRecognitionRecentEventsItemProvider_reloadItems__block_invoke_3_25(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_error_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_ERROR, "Recent Events person fetch failed with error %@", &v6, 0xCu);
  }

  v4 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v4;
}

+ (id)_coalescedItems:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[HUFaceRecognitionRecentEventsItemProvider cameraSignificantEventDateComparator];
  v5 = [v3 sortedArrayUsingComparator:v4];

  v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = [MEMORY[0x277CCAB58] indexSet];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __61__HUFaceRecognitionRecentEventsItemProvider__coalescedItems___block_invoke;
  v18 = &unk_277DC1630;
  v19 = v6;
  v8 = v7;
  v20 = v8;
  v9 = v6;
  [v5 enumerateObjectsUsingBlock:&v15];
  v10 = [v5 objectsAtIndexes:{v8, v15, v16, v17, v18}];
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = [v5 count];
    v14 = [v10 count];
    *buf = 134218240;
    v22 = v13;
    v23 = 2048;
    v24 = v14;
    _os_log_debug_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEBUG, "Reduced events from %lu to %lu", buf, 0x16u);
  }

  return v10;
}

void __61__HUFaceRecognitionRecentEventsItemProvider__coalescedItems___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 person];
  v10 = [v9 UUID];

  v11 = [v8 person];
  v12 = [v11 personLinks];

  v13 = [v12 na_map:&__block_literal_global_32_0];
  if (!v10)
  {
    goto LABEL_11;
  }

  if (([*(a1 + 32) containsObject:v10] & 1) == 0 && !objc_msgSend(*(a1 + 32), "intersectsSet:", v13))
  {
    [*(a1 + 32) addObject:v10];
    [*(a1 + 32) unionSet:v13];
LABEL_11:
    [*(a1 + 40) addIndex:a3];
    goto LABEL_12;
  }

  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v6 latestResults];
    v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277D13D60]];
    v17 = 138412546;
    v18 = v16;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEBUG, "Ignoring later event %@ %@", &v17, 0x16u);
  }

LABEL_12:
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HUFaceRecognitionRecentEventsItemProvider;
  v2 = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [v2 setByAddingObject:*MEMORY[0x277D13B58]];

  return v3;
}

uint64_t __81__HUFaceRecognitionRecentEventsItemProvider_cameraSignificantEventDateComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = v4;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  v9 = v5;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  objc_opt_class();
  v12 = v6;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  objc_opt_class();
  v15 = v9;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v31 = v8;
  v18 = [v8 latestResults];
  v19 = *MEMORY[0x277D13D60];
  v20 = [v18 objectForKeyedSubscript:*MEMORY[0x277D13D60]];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v23 = [v14 event];
    v22 = [v23 dateOfOccurrence];
  }

  v24 = [v11 latestResults];
  v25 = [v24 objectForKeyedSubscript:v19];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v28 = [v17 event];
    v27 = [v28 dateOfOccurrence];
  }

  if (v22)
  {
    v29 = -1;
  }

  else
  {
    v29 = v27 != 0;
  }

  if (v22 && v27)
  {
    v29 = [v27 compare:v22];
  }

  return v29;
}

@end