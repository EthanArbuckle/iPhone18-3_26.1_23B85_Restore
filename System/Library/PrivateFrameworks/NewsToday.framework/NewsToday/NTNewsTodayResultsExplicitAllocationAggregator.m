@interface NTNewsTodayResultsExplicitAllocationAggregator
- (NTNewsTodayResultsExplicitAllocationAggregator)init;
- (NTNewsTodayResultsExplicitAllocationAggregator)initWithConfigurationManager:(id)a3 feedPersonalizer:(id)a4 filterDate:(id)a5;
- (id)_itemsForSection:(id)a3 items:(id)a4 todayData:(id)a5 budgetInfo:(id)a6 previouslyChosenItems:(id)a7 priorClusterIDsInOtherSections:(id)a8 sectionItemsLimit:(unint64_t)a9 otherArticleIDs:(id)a10 remainingSlots:(double)a11 slotsUsed:(double *)a12 noMoreItemsToGive:(BOOL *)a13 noRoomForMoreItems:(BOOL *)a14 debugInspection:(id *)a15;
- (id)_sectionFilterTransformationWithDescriptor:(id)a3 todayData:(id)a4 priorClusterIDsInOtherSections:(id)a5 priorClusterIDsInSection:(id)a6 otherArticleIDs:(id)a7;
- (id)aggregateSections:(id)a3 itemsBySectionDescriptor:(id)a4 budgetInfo:(id)a5 todayData:(id)a6;
@end

@implementation NTNewsTodayResultsExplicitAllocationAggregator

- (NTNewsTodayResultsExplicitAllocationAggregator)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTNewsTodayResultsExplicitAllocationAggregator init]";
    v10 = 2080;
    v11 = "NTNewsTodayResultsExplicitAllocationAggregator.m";
    v12 = 1024;
    v13 = 160;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTNewsTodayResultsExplicitAllocationAggregator init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTNewsTodayResultsExplicitAllocationAggregator)initWithConfigurationManager:(id)a3 feedPersonalizer:(id)a4 filterDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator initWithConfigurationManager:feedPersonalizer:filterDate:];
    if (v11)
    {
      goto LABEL_6;
    }
  }

  else if (v11)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator initWithConfigurationManager:feedPersonalizer:filterDate:];
  }

LABEL_6:
  v17.receiver = self;
  v17.super_class = NTNewsTodayResultsExplicitAllocationAggregator;
  v12 = [(NTNewsTodayResultsExplicitAllocationAggregator *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configurationManager, a3);
    objc_storeStrong(&v13->_feedPersonalizer, a4);
    v14 = [v11 copy];
    filterDate = v13->_filterDate;
    v13->_filterDate = v14;
  }

  return v13;
}

- (id)aggregateSections:(id)a3 itemsBySectionDescriptor:(id)a4 budgetInfo:(id)a5 todayData:(id)a6
{
  v51[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator aggregateSections:itemsBySectionDescriptor:budgetInfo:todayData:];
  }

  if (!v11 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator aggregateSections:itemsBySectionDescriptor:budgetInfo:todayData:];
  }

  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  [v12 slotsLimit];
  v49[3] = v14;
  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v17 = objc_opt_new();
  v18 = objc_opt_new();
  v34 = objc_opt_new();
  if ([v12 respectMinMaxLimit])
  {
    v51[0] = &__block_literal_global_6;
    v19 = v51;
    v20 = &__block_literal_global_124;
  }

  else
  {
    v50 = &__block_literal_global_127;
    v19 = &v50;
    v20 = &__block_literal_global_129;
  }

  v19[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __114__NTNewsTodayResultsExplicitAllocationAggregator_aggregateSections_itemsBySectionDescriptor_budgetInfo_todayData___block_invoke_5;
  v36[3] = &unk_279983488;
  v22 = v10;
  v37 = v22;
  v48 = v49;
  v23 = v11;
  v38 = v23;
  v24 = v18;
  v39 = v24;
  v25 = v17;
  v40 = v25;
  v26 = v16;
  v41 = v26;
  v42 = self;
  v27 = v13;
  v43 = v27;
  v28 = v12;
  v44 = v28;
  v29 = v15;
  v45 = v29;
  v30 = v21;
  v46 = v30;
  v31 = v34;
  v47 = v31;
  [v30 enumerateObjectsUsingBlock:v36];
  v35 = [[NTItemAggregationResult alloc] initWithAggregatedItemsBySectionDescriptor:v25 unusedSectionDescriptors:v24 debugInspectionsBySectionDescriptor:v31];

  _Block_object_dispose(v49, 8);
  v32 = *MEMORY[0x277D85DE8];

  return v35;
}

void __114__NTNewsTodayResultsExplicitAllocationAggregator_aggregateSections_itemsBySectionDescriptor_budgetInfo_todayData___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __114__NTNewsTodayResultsExplicitAllocationAggregator_aggregateSections_itemsBySectionDescriptor_budgetInfo_todayData___block_invoke_6;
  v21[3] = &unk_279983460;
  v29 = *(a1 + 120);
  v30 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v28 = v7;
  v12 = *(a1 + 64);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v22 = v14;
  v23 = v13;
  v20 = *(a1 + 72);
  v15 = *(&v20 + 1);
  v16 = *(a1 + 88);
  v17 = *(a1 + 96);
  *&v18 = v16;
  *(&v18 + 1) = v17;
  v24 = v20;
  v25 = v18;
  v31 = a3;
  v26 = *(a1 + 104);
  v27 = *(a1 + 112);
  v19 = v7;
  [v8 enumerateObjectsUsingBlock:v21];
}

void __114__NTNewsTodayResultsExplicitAllocationAggregator_aggregateSections_itemsBySectionDescriptor_budgetInfo_todayData___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __114__NTNewsTodayResultsExplicitAllocationAggregator_aggregateSections_itemsBySectionDescriptor_budgetInfo_todayData___block_invoke_7;
  aBlock[3] = &__block_descriptor_48_e5_v8__0l;
  aBlock[4] = *(a1 + 128);
  aBlock[5] = a4;
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (*(*(*(a1 + 120) + 8) + 24) <= 0.0)
  {
    v49 = MEMORY[0x277D85DD0];
    v50 = 3221225472;
    v51 = __114__NTNewsTodayResultsExplicitAllocationAggregator_aggregateSections_itemsBySectionDescriptor_budgetInfo_todayData___block_invoke_8;
    v52 = &unk_2799827B8;
    v53 = v7;
    v53[2]();
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [*(a1 + 32) objectForKeyedSubscript:v6];
    if ([v10 count])
    {
      v11 = [*(a1 + 48) objectForKeyedSubscript:v6];
      v12 = (*(*(a1 + 112) + 16))();
      v13 = [v11 count];
      if (v12 != v13)
      {
        v38 = v12 - v13;
        v41 = v9;
        v14 = [*(a1 + 56) copy];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v40 = v11;
        v15 = v11;
        v16 = [v15 countByEnumeratingWithState:&v45 objects:v55 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v46;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v46 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = [*(*(&v45 + 1) + 8 * i) clusterID];
              if (v20)
              {
                [v14 removeObject:v20];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v45 objects:v55 count:16];
          }

          while (v17);
        }

        v44 = 0.0;
        v43 = 0;
        v21 = *(a1 + 64);
        v22 = *(a1 + 72);
        if (v15)
        {
          v23 = v15;
        }

        else
        {
          v23 = MEMORY[0x277CBEBF8];
        }

        v24 = *(a1 + 80);
        v25 = *(a1 + 88);
        v26 = *(*(*(a1 + 120) + 8) + 24);
        v42 = 0;
        v27 = [v21 _itemsForSection:v6 items:v10 todayData:v22 budgetInfo:v24 previouslyChosenItems:v23 priorClusterIDsInOtherSections:v14 sectionItemsLimit:v26 otherArticleIDs:v38 remainingSlots:v25 slotsUsed:&v44 noMoreItemsToGive:&v43 + 1 noRoomForMoreItems:&v43 debugInspection:&v42];
        v39 = v42;
        v28 = [v15 count];
        v29 = *(a1 + 136);
        v30 = [*(a1 + 96) count];
        if (!v28 && HIBYTE(v43) == 1 && v29 + 1 == v30)
        {
          [*(a1 + 40) addObject:v6];
        }

        if (v43 == 1)
        {
          v8[2](v8);
          v11 = v40;
          v9 = v41;
          v31 = v39;
        }

        else
        {
          v32 = *(a1 + 88);
          v33 = [v27 fc_setByTransformingWithBlock:&__block_literal_global_134];
          [v32 unionSet:v33];

          v34 = *(a1 + 56);
          v35 = [v27 fc_setByTransformingWithBlock:&__block_literal_global_136];
          [v34 unionSet:v35];

          if (v15)
          {
            [v15 addObjectsFromArray:v27];
          }

          else
          {
            v36 = [v27 mutableCopy];
            [*(a1 + 48) setObject:v36 forKeyedSubscript:v6];
          }

          v11 = v40;
          v9 = v41;
          v31 = v39;
          [*(a1 + 104) setObject:v39 forKeyedSubscript:v6];
          *(*(*(a1 + 120) + 8) + 24) = *(*(*(a1 + 120) + 8) + 24) - v44;
        }
      }
    }

    else
    {
      [*(a1 + 40) addObject:v6];
    }

    objc_autoreleasePoolPop(v9);
  }

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __114__NTNewsTodayResultsExplicitAllocationAggregator_aggregateSections_itemsBySectionDescriptor_budgetInfo_todayData___block_invoke_7(uint64_t result)
{
  v1 = *(result + 32);
  **(result + 40) = 1;
  *v1 = 1;
  return result;
}

- (id)_itemsForSection:(id)a3 items:(id)a4 todayData:(id)a5 budgetInfo:(id)a6 previouslyChosenItems:(id)a7 priorClusterIDsInOtherSections:(id)a8 sectionItemsLimit:(unint64_t)a9 otherArticleIDs:(id)a10 remainingSlots:(double)a11 slotsUsed:(double *)a12 noMoreItemsToGive:(BOOL *)a13 noRoomForMoreItems:(BOOL *)a14 debugInspection:(id *)a15
{
  v78 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v69 = a6;
  v68 = a7;
  v25 = a8;
  v26 = v22;
  v27 = v25;
  v72 = a10;
  if (!v22 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:];
  }

  v28 = v23;
  if (!v23 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:];
  }

  v30 = v68;
  v29 = v69;
  if (!v69 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:];
    if (v68)
    {
      goto LABEL_12;
    }
  }

  else if (v68)
  {
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:];
  }

LABEL_12:
  if (!v72 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:];
    if (v27)
    {
      goto LABEL_17;
    }
  }

  else if (v27)
  {
    goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:];
  }

LABEL_17:
  if (!a9 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:];
  }

  if (a11 < 0.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:];
    if (a12)
    {
      goto LABEL_25;
    }
  }

  else if (a12)
  {
    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:];
  }

LABEL_25:
  if (!a13 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:];
  }

  if (!a14 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:];
  }

  v70 = [(NTNewsTodayResultsExplicitAllocationAggregator *)self feedPersonalizer];
  v65 = [v26 incrementalSortTransformationWithFeedPersonalizer:?];
  v31 = [v65 transformFeedItems:v23];
  v32 = [v68 fc_setByTransformingWithBlock:&__block_literal_global_151];
  v33 = self;
  v34 = v31;
  v66 = v27;
  v67 = v24;
  v64 = v32;
  v35 = [NTNewsTodayResultsExplicitAllocationAggregator _sectionFilterTransformationWithDescriptor:v33 todayData:"_sectionFilterTransformationWithDescriptor:todayData:priorClusterIDsInOtherSections:priorClusterIDsInSection:otherArticleIDs:" priorClusterIDsInOtherSections:v26 priorClusterIDsInSection:v24 otherArticleIDs:v27];
  v73 = [v35 transformFeedItems:v31];
  v36 = NTSharedLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v75 = [v31 count];
    v76 = 2048;
    v77 = [v73 count];
    _os_log_impl(&dword_25BF21000, v36, OS_LOG_TYPE_DEFAULT, "Filtered feed items from %lu to %lu", buf, 0x16u);
  }

  if ([v68 count])
  {
    v37 = [v69 sectionSlotCostInfo];
    v38 = 0.0;
  }

  else
  {
    v39 = [v26 name];
    if (v39)
    {
      v40 = [v69 allowSectionTitles];
    }

    else
    {
      v40 = 0;
    }

    v41 = [v69 sectionSlotCostInfo];
    v37 = v41;
    v42 = 0.0;
    if (v40)
    {
      [v41 sectionTitleSlotCost];
      v42 = v43;
    }

    [v37 sectionFooterSlotCost];
    v38 = v42 + v44;
  }

  v45 = a11 - v38;
  [v37 headlineSlotCost];
  v47 = v45 / v46;
  if (v47 >= a9)
  {
    v47 = a9;
  }

  v48 = [v26 incrementalLimitTransformationWithFeedPersonalizer:v70 limit:v47 priorFeedItems:v68];
  v49 = [v48 transformFeedItems:v73];
  if ([v49 count])
  {
    v50 = [v49 count];
    [v37 headlineSlotCost];
    v52 = v38 + v50 * v51;
  }

  else
  {
    v52 = 0.0;
  }

  *a12 = v52;
  *a14 = v45 <= 0.0;
  *a13 = [v73 count] == 0;
  if (FCIsWidgetDebugInspectionEnabled())
  {
    [v49 fc_arrayByTransformingWithBlock:&__block_literal_global_155];
    v54 = v53 = v26;
    [v34 fc_arrayByTransformingWithBlock:&__block_literal_global_157];
    v71 = v35;
    v56 = v55 = v34;
    v57 = v28;
    v58 = [NTWidgetDebugInspectionSection alloc];
    v59 = [v53 name];
    v60 = v58;
    v28 = v57;
    v30 = v68;
    *v63 = [(NTWidgetDebugInspectionSection *)v60 initWithArticleIDs:v54 name:v59 sortedCandidates:v56];

    v34 = v55;
    v35 = v71;

    v26 = v53;
    v29 = v69;
  }

  v61 = *MEMORY[0x277D85DE8];

  return v49;
}

- (id)_sectionFilterTransformationWithDescriptor:(id)a3 todayData:(id)a4 priorClusterIDsInOtherSections:(id)a5 priorClusterIDsInSection:(id)a6 otherArticleIDs:(id)a7
{
  v49 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v38 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (!v12 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _sectionFilterTransformationWithDescriptor:todayData:priorClusterIDsInOtherSections:priorClusterIDsInSection:otherArticleIDs:];
    if (v13)
    {
      goto LABEL_6;
    }
  }

  else if (v13)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _sectionFilterTransformationWithDescriptor:todayData:priorClusterIDsInOtherSections:priorClusterIDsInSection:otherArticleIDs:];
  }

LABEL_6:
  if (!v15 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _sectionFilterTransformationWithDescriptor:todayData:priorClusterIDsInOtherSections:priorClusterIDsInSection:otherArticleIDs:];
    if (v14)
    {
      goto LABEL_11;
    }
  }

  else if (v14)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _sectionFilterTransformationWithDescriptor:todayData:priorClusterIDsInOtherSections:priorClusterIDsInSection:otherArticleIDs:];
  }

LABEL_11:
  v16 = [v12 supplementalInterSectionFilterOptions];
  v17 = [v12 supplementalIntraSectionFilterOptions];
  v18 = objc_opt_new();
  v19 = [v12 supplementalIntraSectionFilterOptions];
  if ((v16 & 4) != 0)
  {
    [v18 unionSet:v13];
  }

  if ((v17 & 4) != 0)
  {
    v20 = v19 | 4;
    [v18 unionSet:v14];
  }

  else
  {
    v20 = v19 | 0x84;
  }

  v36 = v14;
  v37 = v13;
  v21 = NTSharedLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v12 name];
    FCFeedFilterOptionsToNSString();
    v24 = v23 = self;
    v25 = NTTodaySectionReadArticlesFilterMethodToNSString([v12 readArticlesFilterMethod]);
    v26 = NTTodaySectionSeenArticlesFilterMethodToNSString([v12 seenArticlesFilterMethod]);
    *buf = 138544386;
    v40 = v22;
    v41 = 2114;
    v42 = v24;
    v43 = 2114;
    v44 = v25;
    v45 = 2114;
    v46 = v26;
    v47 = 2048;
    v48 = [v12 seenArticlesMinimumTimeSinceFirstSeenToFilter];
    _os_log_impl(&dword_25BF21000, v21, OS_LOG_TYPE_DEFAULT, "will apply filter transformation to section, name=%{public}@, supplementalOptions=%{public}@, readFilterMethod=%{public}@, seenFilterMethod=%{public}@, minimumTimeSinceFirstSeenToFilter=%lld", buf, 0x34u);

    self = v23;
  }

  v27 = [NTSectionFeedFilterTransformation alloc];
  v28 = [(NTNewsTodayResultsExplicitAllocationAggregator *)self configurationManager];
  v29 = [v12 readArticlesFilterMethod];
  v30 = [v12 seenArticlesFilterMethod];
  v31 = [v12 seenArticlesMinimumTimeSinceFirstSeenToFilter];
  v32 = [(NTNewsTodayResultsExplicitAllocationAggregator *)self filterDate];
  v33 = -[NTSectionFeedFilterTransformation initWithTodayData:configurationManager:readArticlesFilterMethod:seenArticlesFilterMethod:minimumTimeSinceFirstSeenToFilter:supplementalFeedFilterOptions:otherArticleIDs:otherClusterIDs:filterDate:paywalledArticlesMaxCount:](v27, "initWithTodayData:configurationManager:readArticlesFilterMethod:seenArticlesFilterMethod:minimumTimeSinceFirstSeenToFilter:supplementalFeedFilterOptions:otherArticleIDs:otherClusterIDs:filterDate:paywalledArticlesMaxCount:", v38, v28, v29, v30, v20, v15, v31, v18, v32, [v12 paywalledArticlesMaxCount]);

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

- (void)initWithConfigurationManager:feedPersonalizer:filterDate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "configurationManager", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfigurationManager:feedPersonalizer:filterDate:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "filterDate", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)aggregateSections:itemsBySectionDescriptor:budgetInfo:todayData:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sectionDescriptors", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)aggregateSections:itemsBySectionDescriptor:budgetInfo:todayData:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "itemsBySectionDescriptor", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sectionDescriptor", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "items", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "budgetInfo", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "previouslyChosenItems", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "otherArticleIDs", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "priorClusterIDsInOtherSections", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sectionItemsLimit > 0", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:.cold.8()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "remainingSlots >= 0", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:.cold.9()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "slotsUsedOut", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:.cold.10()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "noMoreItemsToGive", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:.cold.11()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "noRoomForMoreItemsOut", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sectionFilterTransformationWithDescriptor:todayData:priorClusterIDsInOtherSections:priorClusterIDsInSection:otherArticleIDs:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sectionDescriptor", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sectionFilterTransformationWithDescriptor:todayData:priorClusterIDsInOtherSections:priorClusterIDsInSection:otherArticleIDs:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "priorClusterIDsInOtherSections", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sectionFilterTransformationWithDescriptor:todayData:priorClusterIDsInOtherSections:priorClusterIDsInSection:otherArticleIDs:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "otherArticleIDs", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sectionFilterTransformationWithDescriptor:todayData:priorClusterIDsInOtherSections:priorClusterIDsInSection:otherArticleIDs:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "priorClusterIDsInSection", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end