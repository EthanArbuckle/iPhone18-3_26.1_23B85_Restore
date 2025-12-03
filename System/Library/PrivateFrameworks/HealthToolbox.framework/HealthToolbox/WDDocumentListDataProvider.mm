@interface WDDocumentListDataProvider
- (double)customCellHeight;
- (id)createQueryForSampleType:(id)type predicate:(id)predicate limit:(int64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler;
- (id)customCellForObject:(id)object indexPath:(id)path tableView:(id)view;
- (id)sampleTypes;
- (id)titleForSection:(unint64_t)section;
- (void)refineSamplesWithCompletion:(id)completion;
@end

@implementation WDDocumentListDataProvider

- (id)sampleTypes
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCD720] documentTypeForIdentifier:*MEMORY[0x277CCBCB8]];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)titleForSection:(unint64_t)section
{
  samples = [(WDSampleListDataProvider *)self samples];
  if ([samples count] < 1)
  {
    v5 = &stru_28641D9B8;
  }

  else
  {
    v4 = WDBundle();
    v5 = [v4 localizedStringForKey:@"CCD_PROVIDER_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  }

  return v5;
}

- (double)customCellHeight
{
  v2 = *MEMORY[0x277D76838];
  IsLargerThanSizeCategory = HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory();
  result = *MEMORY[0x277D76F30];
  if (!IsLargerThanSizeCategory)
  {
    return 114.0;
  }

  return result;
}

- (id)customCellForObject:(id)object indexPath:(id)path tableView:(id)view
{
  objectCopy = object;
  v7 = [view dequeueReusableCellWithIdentifier:@"DocumentTableViewCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D127B8]) initWithStyle:0 reuseIdentifier:@"DocumentTableViewCell"];
  }

  [v7 setCellValuesForDocumentSample:objectCopy];

  return v7;
}

- (id)createQueryForSampleType:(id)type predicate:(id)predicate limit:(int64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler
{
  typeCopy = type;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  handlerCopy = handler;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__1;
  v27[4] = __Block_byref_object_dispose__1;
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __102__WDDocumentListDataProvider_createQueryForSampleType_predicate_limit_sortDescriptors_resultsHandler___block_invoke;
  v24 = &unk_2796E7A10;
  v26 = v27;
  v15 = handlerCopy;
  v25 = v15;
  v16 = MEMORY[0x253092270](&v21);
  v17 = objc_alloc(MEMORY[0x277CCD360]);
  v18 = [MEMORY[0x277CCD720] documentTypeForIdentifier:{*MEMORY[0x277CCBCB8], v21, v22, v23, v24}];
  v19 = [v17 initWithDocumentType:v18 predicate:predicateCopy limit:limit sortDescriptors:descriptorsCopy includeDocumentData:0 resultsHandler:v16];

  _Block_object_dispose(v27, 8);

  return v19;
}

void __102__WDDocumentListDataProvider_createQueryForSampleType_predicate_limit_sortDescriptors_resultsHandler___block_invoke(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v13 = a2;
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v12 = *(*(a1 + 32) + 16);
    goto LABEL_5;
  }

  if (a4)
  {
    v11 = *(*(*(a1 + 40) + 8) + 40);
    v12 = *(*(a1 + 32) + 16);
LABEL_5:
    v12();
    goto LABEL_7;
  }

  [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v9];
LABEL_7:
}

- (void)refineSamplesWithCompletion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  samples = [(WDSampleListDataProvider *)self samples];
  v7 = [samples countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(samples);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        document = [v11 document];

        if (!document)
        {
          uUID = [v11 UUID];
          [v5 addObject:uUID];
        }
      }

      v8 = [samples countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__WDDocumentListDataProvider_refineSamplesWithCompletion___block_invoke;
    v24[3] = &unk_2796E7A38;
    v25 = v14;
    v27 = completionCopy;
    v15 = v5;
    v26 = v15;
    v16 = v14;
    v17 = MEMORY[0x253092270](v24);
    v18 = [MEMORY[0x277CCD838] predicateForObjectsWithUUIDs:v15];
    v19 = [MEMORY[0x277CCD368] documentTypeForIdentifier:*MEMORY[0x277CCBCB8]];
    v20 = [objc_alloc(MEMORY[0x277CCD360]) initWithDocumentType:v19 predicate:v18 limit:0 sortDescriptors:0 includeDocumentData:0 resultsHandler:v17];
    profile = [(WDSampleListDataProvider *)self profile];
    healthStore = [profile healthStore];
    [healthStore executeQuery:v20];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __58__WDDocumentListDataProvider_refineSamplesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (v10)
  {
    if ((a4 & 1) == 0)
    {
      [*(a1 + 32) addObjectsFromArray:v10];
      goto LABEL_9;
    }

    v12 = *(a1 + 40);
    v13 = *(a1 + 32);
    v14 = *(*(a1 + 48) + 16);
  }

  else
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      __58__WDDocumentListDataProvider_refineSamplesWithCompletion___block_invoke_cold_1(v11, v15);
    }

    v14 = *(*(a1 + 48) + 16);
  }

  v14();
LABEL_9:
}

void __58__WDDocumentListDataProvider_refineSamplesWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_251E85000, a2, OS_LOG_TYPE_ERROR, "Unable to populate revised CDA document samples: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end