@interface ULMapLabelStore
+ (unsigned)maxEntriesInTable;
- (BOOL)deleteOrphanRecords;
- (BOOL)insertDataObjects:(const void *)a3 forLabelObjectID:(id)a4 andModelUUID:(const uuid *)a5;
- (BOOL)insertLabelDOAndMapLabelDO:(const void *)a3 forScanningEventUUID:(const uuid *)a4;
- (BOOL)insertMapLabelsWithRelatedLabelsObjectIDs:(const void *)a3;
- (__n128)insertDataObjects:forLabelObjectID:andModelUUID:;
- (id)_createLabelMOFromDO:(const void *)a3 forScanningEventUUID:(const uuid *)a4 andServiceUUID:(const uuid *)a5;
- (id)_createMapLabelMOFromDO:(const void *)a3 withLabelMO:(id)a4 modelMO:(id)a5;
- (id)_fetchLabelMOWithObjectID:(id)a3 withManagedObjectContext:(id)a4;
- (id)_fetchRelatedModelMOWithUUID:(const uuid *)a3;
- (id)insertDataObjects:forLabelObjectID:andModelUUID:;
- (uint64_t)insertDataObjects:forLabelObjectID:andModelUUID:;
@end

@implementation ULMapLabelStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMapLabelTableMaxRows"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedIntValue];
  }

  else
  {
    v6 = [&unk_286A71A48 unsignedIntValue];
  }

  v7 = v6;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)a3 forLabelObjectID:(id)a4 andModelUUID:(const uuid *)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (*a3 == *(a3 + 1))
  {
    v10 = 1;
  }

  else
  {
    v9 = [(ULStore *)self managedObjectContext];
    v13 = [(ULMapLabelStore *)self _fetchLabelMOWithObjectID:v8 withManagedObjectContext:v9];

    if (v13)
    {
      [(ULMapLabelStore *)self _fetchRelatedModelMOWithUUID:a5];
      if (objc_claimAutoreleasedReturnValue())
      {
        operator new();
      }

      v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)insertMapLabelsWithRelatedLabelsObjectIDs:(const void *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = *(a3 + 1);
  if (*a3 == v4)
  {
    v16 = 1;
  }

  else
  {
    v26 = *(v3 + 216);
    do
    {
      if (*(v3 + 216) != v26 || *(v3 + 224) != *(&v26 + 1))
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          [ULMapLabelStore insertMapLabelsWithRelatedLabelsObjectIDs:];
        }

        v17 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_ERROR, "Map labels provided for insert expected to include same model UUID", buf, 2u);
        }

        v16 = 0;
        goto LABEL_24;
      }

      v3 += 240;
    }

    while (v3 != v4);
    *buf = 0;
    v23 = buf;
    v24 = 0x2020000000;
    v25 = 0;
    v8 = [(ULMapLabelStore *)self _fetchRelatedModelMOWithUUID:&v26];
    if (v8)
    {
      v9 = *a3;
      v10 = *(a3 + 1);
      while (v9 != v10)
      {
        v11 = *(v9 + 232);
        v12 = [(ULStore *)self managedObjectContext];
        v13 = [(ULMapLabelStore *)self _fetchLabelMOWithObjectID:v11 withManagedObjectContext:v12];

        if (!v13)
        {
          goto LABEL_21;
        }

        v14 = [(ULMapLabelStore *)self _createMapLabelMOFromDO:v9 withLabelMO:v13 modelMO:v8];
        v15 = v14 == 0;

        if (v15)
        {
          goto LABEL_21;
        }

        v9 += 240;
      }

      v18 = [(ULStore *)self managedObjectContext];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __61__ULMapLabelStore_insertMapLabelsWithRelatedLabelsObjectIDs___block_invoke;
      v21[3] = &unk_2798D44D8;
      v21[4] = self;
      v21[5] = buf;
      [v18 performBlockAndWait:v21];

      v16 = v23[24];
    }

    else
    {
LABEL_21:
      v16 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

LABEL_24:
  v19 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

uint64_t __61__ULMapLabelStore_insertMapLabelsWithRelatedLabelsObjectIDs___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v2 = *(a1 + 32);

  return [v2 deleteOldestRecordsIfFull];
}

- (BOOL)insertLabelDOAndMapLabelDO:(const void *)a3 forScanningEventUUID:(const uuid *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if ((*(a3 + 152) & 1) == 0)
  {
    [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v6 = [(ULMapLabelStore *)self _createLabelMOFromDO:a3 + 88 forScanningEventUUID:a4 andServiceUUID:a3 + 136];
  if (v6)
  {
    v7 = [(ULMapLabelStore *)self _fetchRelatedModelMOWithUUID:a3 + 216];
    if (v7)
    {
      v8 = [(ULMapLabelStore *)self _createMapLabelMOFromDO:a3 withLabelMO:v6 modelMO:v7];
      if (v8)
      {
        v9 = [(ULStore *)self managedObjectContext];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __67__ULMapLabelStore_insertLabelDOAndMapLabelDO_forScanningEventUUID___block_invoke;
        v14[3] = &unk_2798D44D8;
        v14[4] = self;
        v14[5] = &v15;
        [v9 performBlockAndWait:v14];

        v10 = *(v16 + 24);
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
      }

      v11 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        operator new();
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
      }

      v8 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v8))
      {
        operator new();
      }
    }

    v10 = 0;
    goto LABEL_16;
  }

  v10 = 0;
LABEL_17:

  _Block_object_dispose(&v15, 8);
  v12 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t __67__ULMapLabelStore_insertLabelDOAndMapLabelDO_forScanningEventUUID___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v2 = [*(a1 + 32) dbStore];
  v3 = (*(*v2 + 48))(v2);
  [v3 deleteOldestRecordsIfFull];

  v4 = *(a1 + 32);

  return [v4 deleteOldestRecordsIfFull];
}

- (BOOL)deleteOrphanRecords
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = NIL || %K = NIL", @"label", @"model"];
  [v3 addObject:v4];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  LOBYTE(self) = [(ULStore *)self batchDeleteObjectsWithEntityName:v6 byAndPredicates:v3 sortDescriptors:0 andLimit:0];

  return self;
}

- (id)_createLabelMOFromDO:(const void *)a3 forScanningEventUUID:(const uuid *)a4 andServiceUUID:(const uuid *)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v9 = [(ULStore *)self dbStore];
  v10 = (*(v9->var0 + 18))(v9);
  v11 = [(ULStore *)self managedObjectContext];
  v12 = [v10 fetchScanningEventManagedObjectWithUUID:a4 withManagedObjectContext:v11];

  if (v12)
  {
    v13 = [(ULStore *)self dbStore];
    v14 = (*(v13->var0 + 13))(v13);
    v15 = [(ULStore *)self managedObjectContext];
    v16 = [v14 fetchServiceManagedObjectWithUUID:a5 withManagedObjectContext:v15];

    if (v16)
    {
      *buf = 0;
      v45 = buf;
      v46 = 0x3032000000;
      v47 = __Block_byref_object_copy__15;
      v48 = __Block_byref_object_dispose__15;
      v49 = 0;
      v17 = [(ULStore *)self managedObjectContext];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __76__ULMapLabelStore__createLabelMOFromDO_forScanningEventUUID_andServiceUUID___block_invoke;
      v32[3] = &unk_2798D4868;
      v36 = buf;
      v37 = a3;
      v33 = v12;
      v34 = v16;
      v35 = self;
      [v17 performBlockAndWait:v32];

      v18 = *(v45 + 5);
      if (v18)
      {
        v19 = v18;
      }

      else
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
        }

        v24 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          *v38 = 68289283;
          v39 = 0;
          v40 = 2082;
          v41 = "";
          v42 = 2113;
          v43 = v26;
          _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create label MO from DO, MO:%{private, location:escape_only}@}", v38, 0x1Cu);
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
        }

        v27 = logObject_MicroLocation_Default;
        if (os_signpost_enabled(v27))
        {
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          *v38 = 68289283;
          v39 = 0;
          v40 = 2082;
          v41 = "";
          v42 = 2113;
          v43 = v29;
          _os_signpost_emit_with_name_impl(&dword_258FE9000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create label MO from DO", "{msg%{public}.0s:Failed to create label MO from DO, MO:%{private, location:escape_only}@}", v38, 0x1Cu);
        }

        [(ULStore *)self resetMOC];
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULMapLabelStore insertMapLabelsWithRelatedLabelsObjectIDs:];
      }

      v22 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        operator new();
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
      }

      v23 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v23))
      {
        operator new();
      }

      [(ULStore *)self resetMOC];
      v18 = 0;
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMapLabelStore insertMapLabelsWithRelatedLabelsObjectIDs:];
    }

    v20 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      operator new();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
    }

    v21 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v21))
    {
      operator new();
    }

    [(ULStore *)self resetMOC];
    v18 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v18;
}

void __76__ULMapLabelStore__createLabelMOFromDO_forScanningEventUUID_andServiceUUID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = [*(a1 + 48) managedObjectContext];
  v5 = [ULLabelMO createFromDO:v2 withScanningEventMO:v3 serviceMO:v4 inManagedObjectContext:?];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_fetchRelatedModelMOWithUUID:(const uuid *)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [(ULStore *)self dbStore];
  v6 = (*(v5->var0 + 10))(v5);
  v7 = [(ULStore *)self managedObjectContext];
  v8 = [v6 fetchModelManagedObjectWithUUID:a3 withManagedObjectContext:v7];

  if (!v8)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMapLabelStore insertMapLabelsWithRelatedLabelsObjectIDs:];
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      operator new();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
    }

    v10 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v10))
    {
      operator new();
    }

    [(ULStore *)self resetMOC];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_fetchLabelMOWithObjectID:(id)a3 withManagedObjectContext:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__15;
  v28 = __Block_byref_object_dispose__15;
  v29 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __70__ULMapLabelStore__fetchLabelMOWithObjectID_withManagedObjectContext___block_invoke;
  v20[3] = &unk_2798D4890;
  v23 = &v24;
  v8 = v7;
  v21 = v8;
  v9 = v6;
  v22 = v9;
  [v8 performBlockAndWait:v20];
  v10 = v25[5];
  if (!v10)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 68289283;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2113;
      v35 = v13;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Did not find related label for labelObjectID, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
    }

    v14 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v14))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 68289283;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2113;
      v35 = v16;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Did not find related label for labelObjectID", "{msg%{public}.0s:Did not find related label for labelObjectID, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    [(ULStore *)self resetMOC];
    v10 = v25[5];
  }

  v17 = v10;

  _Block_object_dispose(&v24, 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __70__ULMapLabelStore__fetchLabelMOWithObjectID_withManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectWithID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_createMapLabelMOFromDO:(const void *)a3 withLabelMO:(id)a4 modelMO:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__15;
  v33 = __Block_byref_object_dispose__15;
  v34 = 0;
  v10 = [(ULStore *)self managedObjectContext];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __63__ULMapLabelStore__createMapLabelMOFromDO_withLabelMO_modelMO___block_invoke;
  v23[3] = &unk_2798D4868;
  v27 = &v29;
  v28 = a3;
  v11 = v8;
  v24 = v11;
  v12 = v9;
  v25 = v12;
  v26 = self;
  [v10 performBlockAndWait:v23];

  v13 = v30[5];
  if (!v13)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
    }

    v14 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 68289283;
      v36 = 0;
      v37 = 2082;
      v38 = "";
      v39 = 2113;
      v40 = v16;
      _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create mapLabel MO from DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
    }

    v17 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v17))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 68289283;
      v36 = 0;
      v37 = 2082;
      v38 = "";
      v39 = 2113;
      v40 = v19;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create mapLabel MO from DO", "{msg%{public}.0s:Failed to create mapLabel MO from DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    [(ULStore *)self resetMOC];
    v13 = v30[5];
  }

  v20 = v13;

  _Block_object_dispose(&v29, 8);
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __63__ULMapLabelStore__createMapLabelMOFromDO_withLabelMO_modelMO___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = [*(a1 + 48) managedObjectContext];
  v5 = [ULMapLabelMO createFromDO:v2 withLabelMO:v3 modelMO:v4 inManagedObjectContext:?];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (__n128)insertDataObjects:forLabelObjectID:andModelUUID:
{
  *a2 = &unk_286A56630;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

- (id)insertDataObjects:forLabelObjectID:andModelUUID:
{
  v3 = **(a1 + 8);
  v4 = **(a1 + 16);
  v5 = [**(a1 + 24) managedObjectContext];
  v6 = [ULMapLabelMO createFromDO:a2 withLabelMO:v3 modelMO:v4 inManagedObjectContext:v5];

  return v6;
}

- (uint64_t)insertDataObjects:forLabelObjectID:andModelUUID:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)insertLabelDOAndMapLabelDO:forScanningEventUUID:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:insertLabelDOAndMapLabelDO:forScanningEventUUID is only valid for labels with fServiceUUID, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "insertLabelDOAndMapLabelDO:forScanningEventUUID is only valid for labels with fServiceUUID", "{msg%{public}.0s:insertLabelDOAndMapLabelDO:forScanningEventUUID is only valid for labels with fServiceUUID, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:insertLabelDOAndMapLabelDO:forScanningEventUUID is only valid for labels with fServiceUUID, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np();
  __break(1u);
}

@end