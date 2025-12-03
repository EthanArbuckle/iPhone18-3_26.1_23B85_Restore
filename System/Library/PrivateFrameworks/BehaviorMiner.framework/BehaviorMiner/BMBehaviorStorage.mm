@interface BMBehaviorStorage
- (BMBehaviorStorage)init;
- (id)description;
- (id)fetchRulesWithAbsoluteSupport:(unint64_t)support support:(double)a4 confidence:(double)confidence conviction:(double)conviction lift:(double)lift rulePowerFactor:(double)factor uniqueDaysLastWeek:(unint64_t)week uniqueDaysTotal:(unint64_t)self0 filters:(id)self1 limit:(unint64_t)self2 error:(id *)self3;
- (void)resetStorageWithMetadata:(id)metadata error:(id *)error;
- (void)saveRules:(id)rules error:(id *)error;
@end

@implementation BMBehaviorStorage

- (BMBehaviorStorage)init
{
  v3 = BMStorageURLForDomain(@"BehaviorMiner");
  v4 = [(BMBehaviorStorage *)self initWithURL:v3 readOnly:0];

  return v4;
}

- (id)fetchRulesWithAbsoluteSupport:(unint64_t)support support:(double)a4 confidence:(double)confidence conviction:(double)conviction lift:(double)lift rulePowerFactor:(double)factor uniqueDaysLastWeek:(unint64_t)week uniqueDaysTotal:(unint64_t)self0 filters:(id)self1 limit:(unint64_t)self2 error:(id *)self3
{
  filtersCopy = filters;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__2;
  v53 = __Block_byref_object_dispose__2;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__2;
  v47 = __Block_byref_object_dispose__2;
  v48 = 0;
  context = [(BMBehaviorStorage *)self context];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __157__BMBehaviorStorage_fetchRulesWithAbsoluteSupport_support_confidence_conviction_lift_rulePowerFactor_uniqueDaysLastWeek_uniqueDaysTotal_filters_limit_error___block_invoke;
  v29[3] = &unk_278D067C0;
  limitCopy = limit;
  v35 = a4;
  confidenceCopy = confidence;
  v26 = filtersCopy;
  v30 = v26;
  selfCopy = self;
  supportCopy = support;
  convictionCopy = conviction;
  liftCopy = lift;
  factorCopy = factor;
  weekCopy = week;
  totalCopy = total;
  v32 = &v49;
  v33 = &v43;
  [context performBlockAndWait:v29];

  if (error)
  {
    *error = v44[5];
  }

  v27 = v50[5];

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);

  return v27;
}

void __157__BMBehaviorStorage_fetchRulesWithAbsoluteSupport_support_confidence_conviction_lift_rulePowerFactor_uniqueDaysLastWeek_uniqueDaysTotal_filters_limit_error___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = +[BMRuleMO fetchRequest];
  [v2 setReturnsObjectsAsFaults:0];
  [v2 setRelationshipKeyPathsForPrefetching:&unk_2853B5AC8];
  if (*(a1 + 64))
  {
    [v2 setFetchLimit:?];
    v3 = MEMORY[0x277CBEA60];
    v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"confidence" ascending:0];
    v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"support" ascending:0];
    v6 = [v3 arrayWithObjects:{v4, v5, 0}];

    [v2 setSortDescriptors:v6];
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"support >= %f AND confidence >= %f", *(a1 + 72), *(a1 + 80)];
  [v7 addObject:v8];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = *(a1 + 32);
  v10 = [v9 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v43;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v42 + 1) + 8 * i);
        v15 = [v14 rulePredicate];

        if (v15)
        {
          v16 = [v14 rulePredicate];
          [v7 addObject:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v11);
  }

  v17 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v7];
  [v2 setPredicate:v17];

  v18 = [*(a1 + 40) context];
  v41 = 0;
  v19 = [v18 executeFetchRequest:v2 error:&v41];
  v20 = v41;

  if (v20)
  {
    goto LABEL_14;
  }

  v38 = MEMORY[0x277CCACA8];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 88)];
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 96)];
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 104)];
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 112)];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 120)];
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 128)];
  v39 = [v38 stringWithFormat:@"absoluteSupport >= %@ && conviction >= %@ && lift >= %@ && rulePowerFactor >= %@ && uniqueDaysLastWeek >= %@ && uniqueDaysTotal >= %@", v21, v22, v23, v24, v25, v26];

  v27 = [*(a1 + 40) converter];
  v28 = [*(a1 + 40) metadata];
  v40 = 0;
  v29 = [v27 convertRuleMOs:v19 basketCount:objc_msgSend(v28 error:{"numberOfBaskets"), &v40}];
  v20 = v40;
  v30 = [MEMORY[0x277CCAC30] predicateWithFormat:v39];
  v31 = [v29 filteredArrayUsingPredicate:v30];
  v32 = *(*(a1 + 48) + 8);
  v33 = *(v32 + 40);
  *(v32 + 40) = v31;

  if (v20)
  {
LABEL_14:
    v34 = *(*(a1 + 56) + 8);
    v35 = *(v34 + 40);
    *(v34 + 40) = v20;
    v36 = v20;
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)saveRules:(id)rules error:(id *)error
{
  rulesCopy = rules;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  context = [(BMBehaviorStorage *)self context];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__BMBehaviorStorage_saveRules_error___block_invoke;
  v9[3] = &unk_278D067E8;
  v9[4] = self;
  v8 = rulesCopy;
  v10 = v8;
  v11 = &v12;
  [context performBlockAndWait:v9];

  if (error)
  {
    *error = v13[5];
  }

  _Block_object_dispose(&v12, 8);
}

void __37__BMBehaviorStorage_saveRules_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) converter];
  v3 = [*(a1 + 40) allObjects];
  v4 = [*(a1 + 32) context];
  v5 = [v2 insertRules:v3 inManagedObjectContext:v4];

  v6 = [*(a1 + 32) context];
  LODWORD(v3) = [v6 hasChanges];

  if (v3)
  {
    v7 = [*(a1 + 32) context];
    v11 = 0;
    [v7 save:&v11];
    v8 = v11;

    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (void)resetStorageWithMetadata:(id)metadata error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v7 = BMLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = metadataCopy;
    _os_log_impl(&dword_241ACA000, v7, OS_LOG_TYPE_INFO, "Resetting behavior storage and applying new metadata %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  context = [(BMBehaviorStorage *)self context];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __52__BMBehaviorStorage_resetStorageWithMetadata_error___block_invoke;
  v17[3] = &unk_278D06810;
  v17[4] = self;
  v17[5] = &buf;
  [context performBlockAndWait:v17];

  context2 = [(BMBehaviorStorage *)self context];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__BMBehaviorStorage_resetStorageWithMetadata_error___block_invoke_2;
  v16[3] = &unk_278D06838;
  v16[4] = self;
  [context2 performBlockAndWait:v16];

  if (!*(*(&buf + 1) + 40))
  {
    container = [(BMBehaviorStorage *)self container];
    persistentStoreCoordinator = [container persistentStoreCoordinator];
    persistentStores = [persistentStoreCoordinator persistentStores];
    firstObject = [persistentStores firstObject];

    dictionaryRepresntation = [metadataCopy dictionaryRepresntation];
    [firstObject setMetadata:dictionaryRepresntation];
    [(BMBehaviorStorage *)self setMetadata:metadataCopy];
  }

  if (error)
  {
    *error = *(*(&buf + 1) + 40);
  }

  _Block_object_dispose(&buf, 8);

  v15 = *MEMORY[0x277D85DE8];
}

void __52__BMBehaviorStorage_resetStorageWithMetadata_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBE360]);
  v3 = +[BMRuleMO fetchRequest];
  v4 = [v2 initWithFetchRequest:v3];

  v5 = [*(a1 + 32) context];
  v17 = 0;
  v6 = [v5 executeRequest:v4 error:&v17];
  v7 = v17;

  if (v7)
  {
    v8 = *(*(a1 + 40) + 8);
    v9 = v7;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CBE360]);
    v12 = +[BMItemMO fetchRequest];
    v10 = [v11 initWithFetchRequest:v12];

    v13 = [*(a1 + 32) context];
    v16 = 0;
    v14 = [v13 executeRequest:v10 error:&v16];
    v15 = v16;
    v9 = v16;

    if (v9)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v15);
    }
  }
}

void __52__BMBehaviorStorage_resetStorageWithMetadata_error___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) context];
  [v1 reset];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  container = [(BMBehaviorStorage *)self container];
  v6 = [container debugDescription];
  v7 = [(BMBehaviorStorage *)self URL];
  metadata = [(BMBehaviorStorage *)self metadata];
  v9 = [v3 stringWithFormat:@"<%@ %p> container: %@, URL: %@, metadata: %@", v4, self, v6, v7, metadata];

  return v9;
}

- (void)initWithURL:readOnly:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithURL:readOnly:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_241ACA000, v0, OS_LOG_TYPE_FAULT, "Error initializing CoreBehavior storage: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithURL:readOnly:error:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithURL:readOnly:error:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_241ACA000, v1, OS_LOG_TYPE_ERROR, "Error creating directory at path %@, %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithURL:(uint64_t)a1 readOnly:(NSObject *)a2 error:.cold.8(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_241ACA000, a2, OS_LOG_TYPE_ERROR, "Error loading persistent store %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithURL:readOnly:error:.cold.9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end