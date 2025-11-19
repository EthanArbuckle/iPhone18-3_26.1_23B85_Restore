@interface IRStore
- (BOOL)batchDeleteObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6;
- (BOOL)batchUpdateObjectsWithEntityName:(id)a3 predicate:(id)a4 propertiesToUpdate:(id)a5;
- (BOOL)commitChangesToStore;
- (IRStore)initWithPersistenceManager:(id)a3;
- (id)countManagedObjectWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6;
- (id)fetchManagedObjectWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6;
- (id)fetchManagedObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6;
- (id)fetchObjectWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6;
- (id)fetchObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6;
- (void)commitChangesToStore;
@end

@implementation IRStore

uint64_t __31__IRStore_commitChangesToStore__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) hasChanges])
  {
    v2 = *(*(a1 + 32) + 8);
    v3 = *(*(a1 + 40) + 8);
    obj = *(v3 + 40);
    [v2 save:&obj];
    objc_storeStrong((v3 + 40), obj);
  }

  return [*(*(a1 + 32) + 8) reset];
}

- (BOOL)commitChangesToStore
{
  v6 = 0;
  v7[0] = &v6;
  v7[1] = 0x3032000000;
  v7[2] = __Block_byref_object_copy__4;
  v7[3] = __Block_byref_object_dispose__4;
  v8 = 0;
  managedObjectContext = self->_managedObjectContext;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__IRStore_commitChangesToStore__block_invoke;
  v5[3] = &unk_2797E14E8;
  v5[4] = self;
  v5[5] = &v6;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v5];
  if (*(v7[0] + 40))
  {
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [(IRStore *)v7 commitChangesToStore];
    }

    v3 = *(v7[0] + 40) == 0;
  }

  else
  {
    v3 = 1;
  }

  _Block_object_dispose(&v6, 8);

  return v3;
}

- (IRStore)initWithPersistenceManager:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = IRStore;
  v6 = [(IRStore *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistenceManager, a3);
    v8 = [(IRPersistenceManager *)v7->_persistenceManager createManagedObjectContext];
    managedObjectContext = v7->_managedObjectContext;
    v7->_managedObjectContext = v8;
  }

  return v7;
}

- (id)fetchObjectWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6
{
  v6 = [(IRStore *)self fetchObjectsWithEntityName:a3 byAndPredicates:a4 sortDescriptors:a5 andLimit:a6];
  if ([v6 count] == 1)
  {
    v7 = [v6 firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)fetchObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(IRStore *)self fetchManagedObjectsWithEntityName:v10 byAndPredicates:v11 sortDescriptors:v12 andLimit:a6];
  if (v13)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__4;
    v29 = __Block_byref_object_dispose__4;
    v30 = [MEMORY[0x277CBEB18] array];
    managedObjectContext = self->_managedObjectContext;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __79__IRStore_fetchObjectsWithEntityName_byAndPredicates_sortDescriptors_andLimit___block_invoke;
    v20 = &unk_2797E1600;
    v21 = v13;
    v23 = self;
    v24 = &v25;
    v22 = v10;
    [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:&v17];
    v15 = [v26[5] copy];

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __79__IRStore_fetchObjectsWithEntityName_byAndPredicates_sortDescriptors_andLimit___block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __79__IRStore_fetchObjectsWithEntityName_byAndPredicates_sortDescriptors_andLimit___block_invoke_2;
  v8 = &unk_2797E16C0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v9 = v3;
  v10 = v4;
  [v2 enumerateObjectsUsingBlock:&v5];
  [*(*(a1 + 48) + 8) reset];
}

void __79__IRStore_fetchObjectsWithEntityName_byAndPredicates_sortDescriptors_andLimit___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [v3 stringWithFormat:@"managedObject of class %@ must respond to convert selector", NSClassFromString(v4)];
  v6 = [v5 performSelector:sel_convert];

  if (v6)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  }
}

- (id)fetchManagedObjectWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6
{
  v6 = [(IRStore *)self fetchManagedObjectsWithEntityName:a3 byAndPredicates:a4 sortDescriptors:a5 andLimit:a6];
  if ([v6 count] == 1)
  {
    v7 = [v6 firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)fetchManagedObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v33 = 0;
  v34[0] = &v33;
  v34[1] = 0x3032000000;
  v34[2] = __Block_byref_object_copy__4;
  v34[3] = __Block_byref_object_dispose__4;
  v35 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__4;
  v31 = __Block_byref_object_dispose__4;
  v32 = 0;
  managedObjectContext = self->_managedObjectContext;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __86__IRStore_fetchManagedObjectsWithEntityName_byAndPredicates_sortDescriptors_andLimit___block_invoke;
  v19[3] = &unk_2797E16E8;
  v14 = v10;
  v20 = v14;
  v15 = v11;
  v21 = v15;
  v16 = v12;
  v25 = &v33;
  v26 = a6;
  v22 = v16;
  v23 = self;
  v24 = &v27;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v19];
  if (*(v34[0] + 40) && os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
  {
    [IRStore fetchManagedObjectsWithEntityName:v34 byAndPredicates:? sortDescriptors:? andLimit:?];
  }

  v17 = v28[5];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v17;
}

void __86__IRStore_fetchManagedObjectsWithEntityName_byAndPredicates_sortDescriptors_andLimit___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:a1[4]];
  v3 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:a1[5]];
  [v2 setPredicate:v3];

  [v2 setSortDescriptors:a1[6]];
  [v2 setFetchLimit:a1[10]];
  v4 = *(a1[7] + 8);
  v5 = *(a1[9] + 8);
  obj = *(v5 + 40);
  v6 = [v4 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[8] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)countManagedObjectWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v31 = 0;
  v32[0] = &v31;
  v32[1] = 0x3032000000;
  v32[2] = __Block_byref_object_copy__4;
  v32[3] = __Block_byref_object_dispose__4;
  v33 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  managedObjectContext = self->_managedObjectContext;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__IRStore_countManagedObjectWithEntityName_byAndPredicates_sortDescriptors_andLimit___block_invoke;
  v19[3] = &unk_2797E16E8;
  v14 = v10;
  v20 = v14;
  v15 = v11;
  v21 = v15;
  v16 = v12;
  v25 = &v31;
  v26 = a6;
  v22 = v16;
  v23 = self;
  v24 = &v27;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v19];
  if (*(v32[0] + 40) && os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
  {
    [IRStore countManagedObjectWithEntityName:v32 byAndPredicates:? sortDescriptors:? andLimit:?];
  }

  if (v28[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0;
  }

  else
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v17;
}

void __85__IRStore_countManagedObjectWithEntityName_byAndPredicates_sortDescriptors_andLimit___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:a1[4]];
  v3 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:a1[5]];
  [v2 setPredicate:v3];

  [v2 setSortDescriptors:a1[6]];
  [v2 setFetchLimit:a1[10]];
  v4 = *(a1[7] + 8);
  v5 = *(a1[9] + 8);
  obj = *(v5 + 40);
  v6 = [v4 countForFetchRequest:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[8] + 8) + 24) = v6;
  [*(a1[7] + 8) reset];
}

- (BOOL)batchDeleteObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v26 = 0;
  v27[0] = &v26;
  v27[1] = 0x3032000000;
  v27[2] = __Block_byref_object_copy__4;
  v27[3] = __Block_byref_object_dispose__4;
  v28 = 0;
  managedObjectContext = self->_managedObjectContext;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__IRStore_batchDeleteObjectsWithEntityName_byAndPredicates_sortDescriptors_andLimit___block_invoke;
  v19[3] = &unk_2797E1710;
  v14 = v10;
  v20 = v14;
  v15 = v11;
  v21 = v15;
  v16 = v12;
  v22 = v16;
  v23 = self;
  v24 = &v26;
  v25 = a6;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v19];
  if (*(v27[0] + 40))
  {
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [IRStore batchDeleteObjectsWithEntityName:v27 byAndPredicates:? sortDescriptors:? andLimit:?];
    }

    v17 = *(v27[0] + 40) == 0;
  }

  else
  {
    v17 = 1;
  }

  _Block_object_dispose(&v26, 8);
  return v17;
}

void __85__IRStore_batchDeleteObjectsWithEntityName_byAndPredicates_sortDescriptors_andLimit___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:a1[4]];
  v3 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:a1[5]];
  [v2 setPredicate:v3];

  [v2 setSortDescriptors:a1[6]];
  [v2 setFetchLimit:a1[9]];
  v4 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v2];
  v5 = *(a1[7] + 8);
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v5 executeRequest:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  [*(a1[7] + 8) reset];
}

- (BOOL)batchUpdateObjectsWithEntityName:(id)a3 predicate:(id)a4 propertiesToUpdate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = 0;
  v24[0] = &v23;
  v24[1] = 0x3032000000;
  v24[2] = __Block_byref_object_copy__4;
  v24[3] = __Block_byref_object_dispose__4;
  v25 = 0;
  managedObjectContext = self->_managedObjectContext;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__IRStore_batchUpdateObjectsWithEntityName_predicate_propertiesToUpdate___block_invoke;
  v17[3] = &unk_2797E1738;
  v12 = v8;
  v18 = v12;
  v13 = v9;
  v19 = v13;
  v14 = v10;
  v20 = v14;
  v21 = self;
  v22 = &v23;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v17];
  v15 = *(v24[0] + 40);
  if (v15 && os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
  {
    [IRStore batchUpdateObjectsWithEntityName:v24 predicate:? propertiesToUpdate:?];
  }

  _Block_object_dispose(&v23, 8);
  return v15 == 0;
}

void __73__IRStore_batchUpdateObjectsWithEntityName_predicate_propertiesToUpdate___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CBE380] batchUpdateRequestWithEntityName:a1[4]];
  [v2 setPredicate:a1[5]];
  [v2 setPropertiesToUpdate:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(a1[8] + 8);
  obj = *(v4 + 40);
  v5 = [v3 executeRequest:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  [*(a1[7] + 8) reset];
}

- (void)commitChangesToStore
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_3(&dword_25543D000, v1, v2, "#store, [ErrorId - Commit changes error] Could not save changes to store with error = %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchManagedObjectsWithEntityName:(uint64_t)a1 byAndPredicates:sortDescriptors:andLimit:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_3(&dword_25543D000, v1, v2, "#store, [ErrorId - Fetch MOs error] Could not perform fetch request to store with error = %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)countManagedObjectWithEntityName:(uint64_t)a1 byAndPredicates:sortDescriptors:andLimit:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_3(&dword_25543D000, v1, v2, "#store, [ErrorId - Count MOs error] Could not perform fetch request to store with error = %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)batchDeleteObjectsWithEntityName:(uint64_t)a1 byAndPredicates:sortDescriptors:andLimit:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_3(&dword_25543D000, v1, v2, "#store, [ErrorId - Batch delete MOs error] Could not perform batch delete request to store with error = %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)batchUpdateObjectsWithEntityName:(uint64_t)a1 predicate:propertiesToUpdate:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_3(&dword_25543D000, v1, v2, "#store, [ErrorId - Batch update MOs error] Could not perform batch update request to store with error = %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end