@interface NTNewsTodayResultsExplicitAllocationAggregator
- (NTNewsTodayResultsExplicitAllocationAggregator)init;
- (NTNewsTodayResultsExplicitAllocationAggregator)initWithConfigurationManager:(id)manager feedPersonalizer:(id)personalizer filterDate:(id)date;
- (id)_itemsForSection:(id)section items:(id)items todayData:(id)data budgetInfo:(id)info previouslyChosenItems:(id)chosenItems priorClusterIDsInOtherSections:(id)sections sectionItemsLimit:(unint64_t)limit otherArticleIDs:(id)self0 remainingSlots:(double)self1 slotsUsed:(double *)self2 noMoreItemsToGive:(BOOL *)self3 noRoomForMoreItems:(BOOL *)self4 debugInspection:(id *)self5;
- (id)_sectionFilterTransformationWithDescriptor:(id)descriptor todayData:(id)data priorClusterIDsInOtherSections:(id)sections priorClusterIDsInSection:(id)section otherArticleIDs:(id)ds;
- (id)aggregateSections:(id)sections itemsBySectionDescriptor:(id)descriptor budgetInfo:(id)info todayData:(id)data;
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

- (NTNewsTodayResultsExplicitAllocationAggregator)initWithConfigurationManager:(id)manager feedPersonalizer:(id)personalizer filterDate:(id)date
{
  managerCopy = manager;
  personalizerCopy = personalizer;
  dateCopy = date;
  if (!managerCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator initWithConfigurationManager:feedPersonalizer:filterDate:];
    if (dateCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dateCopy)
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
    objc_storeStrong(&v12->_configurationManager, manager);
    objc_storeStrong(&v13->_feedPersonalizer, personalizer);
    v14 = [dateCopy copy];
    filterDate = v13->_filterDate;
    v13->_filterDate = v14;
  }

  return v13;
}

- (id)aggregateSections:(id)sections itemsBySectionDescriptor:(id)descriptor budgetInfo:(id)info todayData:(id)data
{
  v51[2] = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  descriptorCopy = descriptor;
  infoCopy = info;
  dataCopy = data;
  if (!sectionsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator aggregateSections:itemsBySectionDescriptor:budgetInfo:todayData:];
  }

  if (!descriptorCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator aggregateSections:itemsBySectionDescriptor:budgetInfo:todayData:];
  }

  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  [infoCopy slotsLimit];
  v49[3] = v14;
  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v17 = objc_opt_new();
  v18 = objc_opt_new();
  v34 = objc_opt_new();
  if ([infoCopy respectMinMaxLimit])
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
  v22 = sectionsCopy;
  v37 = v22;
  v48 = v49;
  v23 = descriptorCopy;
  v38 = v23;
  v24 = v18;
  v39 = v24;
  v25 = v17;
  v40 = v25;
  v26 = v16;
  v41 = v26;
  selfCopy = self;
  v27 = dataCopy;
  v43 = v27;
  v28 = infoCopy;
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

- (id)_itemsForSection:(id)section items:(id)items todayData:(id)data budgetInfo:(id)info previouslyChosenItems:(id)chosenItems priorClusterIDsInOtherSections:(id)sections sectionItemsLimit:(unint64_t)limit otherArticleIDs:(id)self0 remainingSlots:(double)self1 slotsUsed:(double *)self2 noMoreItemsToGive:(BOOL *)self3 noRoomForMoreItems:(BOOL *)self4 debugInspection:(id *)self5
{
  v78 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  itemsCopy = items;
  dataCopy = data;
  infoCopy = info;
  chosenItemsCopy = chosenItems;
  sectionsCopy = sections;
  v26 = sectionCopy;
  v27 = sectionsCopy;
  dsCopy = ds;
  if (!sectionCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:];
  }

  v28 = itemsCopy;
  if (!itemsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:];
  }

  v30 = chosenItemsCopy;
  v29 = infoCopy;
  if (!infoCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:];
    if (chosenItemsCopy)
    {
      goto LABEL_12;
    }
  }

  else if (chosenItemsCopy)
  {
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:];
  }

LABEL_12:
  if (!dsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
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
  if (!limit && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:];
  }

  if (slots < 0.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:];
    if (used)
    {
      goto LABEL_25;
    }
  }

  else if (used)
  {
    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:];
  }

LABEL_25:
  if (!give && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:];
  }

  if (!moreItems && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _itemsForSection:items:todayData:budgetInfo:previouslyChosenItems:priorClusterIDsInOtherSections:sectionItemsLimit:otherArticleIDs:remainingSlots:slotsUsed:noMoreItemsToGive:noRoomForMoreItems:debugInspection:];
  }

  feedPersonalizer = [(NTNewsTodayResultsExplicitAllocationAggregator *)self feedPersonalizer];
  v65 = [v26 incrementalSortTransformationWithFeedPersonalizer:?];
  v31 = [v65 transformFeedItems:itemsCopy];
  v32 = [chosenItemsCopy fc_setByTransformingWithBlock:&__block_literal_global_151];
  selfCopy = self;
  v34 = v31;
  v66 = v27;
  v67 = dataCopy;
  v64 = v32;
  v35 = [NTNewsTodayResultsExplicitAllocationAggregator _sectionFilterTransformationWithDescriptor:selfCopy todayData:"_sectionFilterTransformationWithDescriptor:todayData:priorClusterIDsInOtherSections:priorClusterIDsInSection:otherArticleIDs:" priorClusterIDsInOtherSections:v26 priorClusterIDsInSection:dataCopy otherArticleIDs:v27];
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

  if ([chosenItemsCopy count])
  {
    sectionSlotCostInfo = [infoCopy sectionSlotCostInfo];
    v38 = 0.0;
  }

  else
  {
    name = [v26 name];
    if (name)
    {
      allowSectionTitles = [infoCopy allowSectionTitles];
    }

    else
    {
      allowSectionTitles = 0;
    }

    sectionSlotCostInfo2 = [infoCopy sectionSlotCostInfo];
    sectionSlotCostInfo = sectionSlotCostInfo2;
    v42 = 0.0;
    if (allowSectionTitles)
    {
      [sectionSlotCostInfo2 sectionTitleSlotCost];
      v42 = v43;
    }

    [sectionSlotCostInfo sectionFooterSlotCost];
    v38 = v42 + v44;
  }

  v45 = slots - v38;
  [sectionSlotCostInfo headlineSlotCost];
  limitCopy = v45 / v46;
  if (limitCopy >= limit)
  {
    limitCopy = limit;
  }

  v48 = [v26 incrementalLimitTransformationWithFeedPersonalizer:feedPersonalizer limit:limitCopy priorFeedItems:chosenItemsCopy];
  v49 = [v48 transformFeedItems:v73];
  if ([v49 count])
  {
    v50 = [v49 count];
    [sectionSlotCostInfo headlineSlotCost];
    v52 = v38 + v50 * v51;
  }

  else
  {
    v52 = 0.0;
  }

  *used = v52;
  *moreItems = v45 <= 0.0;
  *give = [v73 count] == 0;
  if (FCIsWidgetDebugInspectionEnabled())
  {
    [v49 fc_arrayByTransformingWithBlock:&__block_literal_global_155];
    v54 = v53 = v26;
    [v34 fc_arrayByTransformingWithBlock:&__block_literal_global_157];
    v71 = v35;
    v56 = v55 = v34;
    v57 = v28;
    v58 = [NTWidgetDebugInspectionSection alloc];
    name2 = [v53 name];
    v60 = v58;
    v28 = v57;
    v30 = chosenItemsCopy;
    *v63 = [(NTWidgetDebugInspectionSection *)v60 initWithArticleIDs:v54 name:name2 sortedCandidates:v56];

    v34 = v55;
    v35 = v71;

    v26 = v53;
    v29 = infoCopy;
  }

  v61 = *MEMORY[0x277D85DE8];

  return v49;
}

- (id)_sectionFilterTransformationWithDescriptor:(id)descriptor todayData:(id)data priorClusterIDsInOtherSections:(id)sections priorClusterIDsInSection:(id)section otherArticleIDs:(id)ds
{
  v49 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  dataCopy = data;
  sectionsCopy = sections;
  sectionCopy = section;
  dsCopy = ds;
  if (!descriptorCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _sectionFilterTransformationWithDescriptor:todayData:priorClusterIDsInOtherSections:priorClusterIDsInSection:otherArticleIDs:];
    if (sectionsCopy)
    {
      goto LABEL_6;
    }
  }

  else if (sectionsCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _sectionFilterTransformationWithDescriptor:todayData:priorClusterIDsInOtherSections:priorClusterIDsInSection:otherArticleIDs:];
  }

LABEL_6:
  if (!dsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _sectionFilterTransformationWithDescriptor:todayData:priorClusterIDsInOtherSections:priorClusterIDsInSection:otherArticleIDs:];
    if (sectionCopy)
    {
      goto LABEL_11;
    }
  }

  else if (sectionCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsExplicitAllocationAggregator _sectionFilterTransformationWithDescriptor:todayData:priorClusterIDsInOtherSections:priorClusterIDsInSection:otherArticleIDs:];
  }

LABEL_11:
  supplementalInterSectionFilterOptions = [descriptorCopy supplementalInterSectionFilterOptions];
  supplementalIntraSectionFilterOptions = [descriptorCopy supplementalIntraSectionFilterOptions];
  v18 = objc_opt_new();
  supplementalIntraSectionFilterOptions2 = [descriptorCopy supplementalIntraSectionFilterOptions];
  if ((supplementalInterSectionFilterOptions & 4) != 0)
  {
    [v18 unionSet:sectionsCopy];
  }

  if ((supplementalIntraSectionFilterOptions & 4) != 0)
  {
    v20 = supplementalIntraSectionFilterOptions2 | 4;
    [v18 unionSet:sectionCopy];
  }

  else
  {
    v20 = supplementalIntraSectionFilterOptions2 | 0x84;
  }

  v36 = sectionCopy;
  v37 = sectionsCopy;
  v21 = NTSharedLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    name = [descriptorCopy name];
    FCFeedFilterOptionsToNSString();
    v24 = v23 = self;
    v25 = NTTodaySectionReadArticlesFilterMethodToNSString([descriptorCopy readArticlesFilterMethod]);
    v26 = NTTodaySectionSeenArticlesFilterMethodToNSString([descriptorCopy seenArticlesFilterMethod]);
    *buf = 138544386;
    v40 = name;
    v41 = 2114;
    v42 = v24;
    v43 = 2114;
    v44 = v25;
    v45 = 2114;
    v46 = v26;
    v47 = 2048;
    seenArticlesMinimumTimeSinceFirstSeenToFilter = [descriptorCopy seenArticlesMinimumTimeSinceFirstSeenToFilter];
    _os_log_impl(&dword_25BF21000, v21, OS_LOG_TYPE_DEFAULT, "will apply filter transformation to section, name=%{public}@, supplementalOptions=%{public}@, readFilterMethod=%{public}@, seenFilterMethod=%{public}@, minimumTimeSinceFirstSeenToFilter=%lld", buf, 0x34u);

    self = v23;
  }

  v27 = [NTSectionFeedFilterTransformation alloc];
  configurationManager = [(NTNewsTodayResultsExplicitAllocationAggregator *)self configurationManager];
  readArticlesFilterMethod = [descriptorCopy readArticlesFilterMethod];
  seenArticlesFilterMethod = [descriptorCopy seenArticlesFilterMethod];
  seenArticlesMinimumTimeSinceFirstSeenToFilter2 = [descriptorCopy seenArticlesMinimumTimeSinceFirstSeenToFilter];
  filterDate = [(NTNewsTodayResultsExplicitAllocationAggregator *)self filterDate];
  v33 = -[NTSectionFeedFilterTransformation initWithTodayData:configurationManager:readArticlesFilterMethod:seenArticlesFilterMethod:minimumTimeSinceFirstSeenToFilter:supplementalFeedFilterOptions:otherArticleIDs:otherClusterIDs:filterDate:paywalledArticlesMaxCount:](v27, "initWithTodayData:configurationManager:readArticlesFilterMethod:seenArticlesFilterMethod:minimumTimeSinceFirstSeenToFilter:supplementalFeedFilterOptions:otherArticleIDs:otherClusterIDs:filterDate:paywalledArticlesMaxCount:", dataCopy, configurationManager, readArticlesFilterMethod, seenArticlesFilterMethod, v20, dsCopy, seenArticlesMinimumTimeSinceFirstSeenToFilter2, v18, filterDate, [descriptorCopy paywalledArticlesMaxCount]);

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