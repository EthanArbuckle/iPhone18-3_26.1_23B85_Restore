@interface CSUSearchableKnowledgeObjectStore
- (BOOL)countEntries:(unint64_t *)entries error:(id *)error;
- (BOOL)deleteAllEntities:(id *)entities;
- (BOOL)fetchMetadataToMemory:(id *)memory;
- (BOOL)initDB:(id)b atURL:(id)l error:(id *)error;
- (BOOL)saveDatabase:(id)database error:(id *)error;
- (BOOL)saveMetadataToStore:(id *)store;
- (BOOL)storeEntity:(id)entity uniqueIdWriteback:(unint64_t *)writeback error:(id *)error;
- (id)fetchEntitiesWithPredicate:(id)predicate error:(id *)error;
- (id)getStore:(id *)store;
- (id)initDB:(id)b atPath:(id)path error:(id *)error;
- (id)initDB:(id)b error:(id *)error;
- (id)initExistingDB:(id)b atPath:(id)path error:(id *)error;
- (id)initExistingDB:(id)b error:(id *)error;
- (int)getTaxonomyVersion:(id *)version;
@end

@implementation CSUSearchableKnowledgeObjectStore

- (id)initDB:(id)b atPath:(id)path error:(id *)error
{
  bCopy = b;
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = CSUSearchableKnowledgeObjectStore;
  v12 = [(CSUSearchableKnowledgeObjectStore *)&v17 init];
  if (v12)
  {
    v13 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v10, pathCopy, 1, v11);
    if (objc_msgSend_initDB_atURL_error_(v12, v14, bCopy, v13, error))
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)initExistingDB:(id)b atPath:(id)path error:(id *)error
{
  v41[1] = *MEMORY[0x1E69E9840];
  bCopy = b;
  pathCopy = path;
  if (pathCopy)
  {
    v35.receiver = self;
    v35.super_class = CSUSearchableKnowledgeObjectStore;
    v15 = [(CSUSearchableKnowledgeObjectStore *)&v35 init];
    if (v15)
    {
      v16 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v11, v12, v13, v14);
      if (objc_msgSend_fileExistsAtPath_(v16, v17, pathCopy, v18, v19))
      {
        v24 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v20, pathCopy, v21, v22);
        if (v24)
        {
          if (objc_msgSend_initDB_atURL_error_(v15, v23, bCopy, v24, error))
          {
            v25 = v15;
            goto LABEL_17;
          }
        }

        else if (error)
        {
          v30 = MEMORY[0x1E696ABC0];
          v36 = *MEMORY[0x1E696A578];
          v37 = @"Invalid path. Failed to create fileUrl from path.";
          v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v23, &v37, &v36, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v30, v32, @"com.apple.coresceneunderstanding", 15, v31);
        }

        v25 = 0;
        goto LABEL_17;
      }

      if (!error)
      {
        v25 = 0;
LABEL_18:
        self = v15;
        goto LABEL_19;
      }

      v28 = MEMORY[0x1E696ABC0];
      v38 = *MEMORY[0x1E696A578];
      v39 = @"File does not exist.";
      v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v20, &v39, &v38, 1);
      objc_msgSend_errorWithDomain_code_userInfo_(v28, v29, @"com.apple.coresceneunderstanding", 15, v24);
      *error = v25 = 0;
LABEL_17:

      goto LABEL_18;
    }

    self = 0;
  }

  else if (error)
  {
    v26 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A578];
    v41[0] = @"File path is empty.";
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v41, &v40, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v26, v27, @"com.apple.coresceneunderstanding", 15, v16);
    *error = v25 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v25 = 0;
LABEL_20:

  v33 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)initExistingDB:(id)b error:(id *)error
{
  v7 = objc_msgSend_stringByAppendingPathComponent_(b, a2, @"CSUTaxonomy.sqlite", error, v4);
  inited = objc_msgSend_initExistingDB_atPath_error_(self, v8, @"CSUTaxonomy", v7, error);

  return inited;
}

- (id)initDB:(id)b error:(id *)error
{
  v7 = objc_msgSend_stringByAppendingPathComponent_(b, a2, @"CSUTaxonomy.sqlite", error, v4);
  inited = objc_msgSend_initDB_atPath_error_(self, v8, @"CSUTaxonomy", v7, error);

  return inited;
}

- (id)getStore:(id *)store
{
  v6 = objc_msgSend_persistentContainer(self, a2, store, v3, v4);
  v11 = objc_msgSend_persistentStoreCoordinator(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_persistentStores(v11, v12, v13, v14, v15);
  v21 = objc_msgSend_firstObject(v16, v17, v18, v19, v20);

  if (v21)
  {
    v25 = v21;
  }

  else if (store)
  {
    *store = objc_msgSend_errorForDatabase_(CSUError, v22, @"Failed to load persistent store", v23, v24);
  }

  return v21;
}

- (BOOL)fetchMetadataToMemory:(id *)memory
{
  v5 = objc_msgSend_getStore_(self, a2, memory, v3, v4);
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_metadata(v5, v6, v7, v8, v9);
    v16 = objc_msgSend_mutableCopy(v11, v12, v13, v14, v15);
    v17 = qword_1ED44E2F8;
    qword_1ED44E2F8 = v16;

    if (!qword_1ED44E2F8)
    {
      v22 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v18, v19, v20, v21);
      v23 = qword_1ED44E2F8;
      qword_1ED44E2F8 = v22;
    }
  }

  return v10 != 0;
}

- (BOOL)saveMetadataToStore:(id *)store
{
  v5 = objc_msgSend_getStore_(self, a2, store, v3, v4);
  v9 = v5;
  if (v5)
  {
    objc_msgSend_setMetadata_(v5, v6, qword_1ED44E2F8, v7, v8);
  }

  return v9 != 0;
}

- (BOOL)initDB:(id)b atURL:(id)l error:(id *)error
{
  v73[1] = *MEMORY[0x1E69E9840];
  bCopy = b;
  lCopy = l;
  v10 = MEMORY[0x1E696AAE8];
  v11 = objc_opt_class();
  v15 = objc_msgSend_bundleForClass_(v10, v12, v11, v13, v14);
  v21 = objc_msgSend_URLForResource_withExtension_(v15, v16, @"CSUSearchableObjectKnowledgeStorage", @"momd", v17);
  if (v21)
  {
    v22 = objc_alloc(MEMORY[0x1E695D638]);
    v29 = objc_msgSend_initWithContentsOfURL_(v22, v23, v21, v24, v25);
    if (v29)
    {
      v30 = objc_msgSend_persistentContainerWithName_managedObjectModel_(MEMORY[0x1E695D688], v26, bCopy, v29, v28);
      objc_msgSend_setPersistentContainer_(self, v31, v30, v32, v33);

      v34 = objc_alloc(MEMORY[0x1E695D6C8]);
      v38 = objc_msgSend_initWithURL_(v34, v35, lCopy, v36, v37);
      v73[0] = v38;
      v41 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v39, v73, 1, v40);
      v46 = objc_msgSend_persistentContainer(self, v42, v43, v44, v45);
      objc_msgSend_setPersistentStoreDescriptions_(v46, v47, v41, v48, v49);

      v67 = 0;
      v68 = &v67;
      v69 = 0x3032000000;
      v70 = sub_1AC08514C;
      v71 = sub_1AC08515C;
      v72 = 0;
      v50 = dispatch_semaphore_create(0);
      v55 = objc_msgSend_persistentContainer(self, v51, v52, v53, v54);
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = sub_1AC085164;
      v64[3] = &unk_1E7967EF0;
      v66 = &v67;
      v56 = v50;
      v65 = v56;
      objc_msgSend_loadPersistentStoresWithCompletionHandler_(v55, v57, v64, v58, v59);

      dispatch_semaphore_wait(v56, 0xFFFFFFFFFFFFFFFFLL);
      v60 = v68[5];
      v61 = v60 == 0;
      if (error && v60)
      {
        *error = v60;
      }

      _Block_object_dispose(&v67, 8);
    }

    else if (error)
    {
      objc_msgSend_errorForDatabase_(CSUError, v26, @"Failed to load model from url", v27, v28);
      *error = v61 = 0;
    }

    else
    {
      v61 = 0;
    }
  }

  else if (error)
  {
    objc_msgSend_errorForDatabase_(CSUError, v18, @"Error getting modelURL", v19, v20);
    *error = v61 = 0;
  }

  else
  {
    v61 = 0;
  }

  v62 = *MEMORY[0x1E69E9840];
  return v61;
}

- (BOOL)saveDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1AC08514C;
  v28 = sub_1AC08515C;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (byte_1EB54A598 == 1)
  {
    objc_msgSend_saveMetadataToStore_(self, v6, error, v7, v8);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1AC0856C4;
  v16[3] = &unk_1E7967F40;
  v10 = databaseCopy;
  v17 = v10;
  v18 = &v20;
  v19 = &v24;
  objc_msgSend_performBlockAndWait_(v10, v11, v16, v12, v13);
  v14 = *(v21 + 24);
  if (v14)
  {
    byte_1EB54A598 = 0;
  }

  else if (error)
  {
    *error = v25[5];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v14;
}

- (id)fetchEntitiesWithPredicate:(id)predicate error:(id *)error
{
  v90 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v50 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x1E695D5E0], v5, @"CSUSearchableKnowledgeDBObject", v6, v7);
  objc_msgSend_setPredicate_(v50, v8, predicateCopy, v9, v10);
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = sub_1AC08514C;
  v87 = sub_1AC08515C;
  v88 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = sub_1AC08514C;
  v81 = sub_1AC08515C;
  v82 = 0;
  v15 = objc_msgSend_persistentContainer(self, v11, v12, v13, v14);
  v20 = objc_msgSend_newBackgroundContext(v15, v16, v17, v18, v19);

  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = sub_1AC085C90;
  v72[3] = &unk_1E7967F18;
  v75 = &v77;
  v73 = v20;
  v21 = v50;
  v74 = v21;
  v76 = &v83;
  v53 = v73;
  objc_msgSend_performBlockAndWait_(v73, v22, v72, v23, v24);
  v48 = v21;
  if (v78[5])
  {
    v29 = objc_msgSend_array(MEMORY[0x1E695DF70], v25, v26, v27, v28);
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v78[5];
    v54 = v29;
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v68, v89, 16);
    if (v34)
    {
      v35 = *v69;
LABEL_4:
      v36 = 0;
      while (1)
      {
        if (*v69 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v68 + 1) + 8 * v36);
        v62 = 0;
        v63 = &v62;
        v64 = 0x3032000000;
        v65 = sub_1AC08514C;
        v66 = sub_1AC08515C;
        v67 = 0;
        v56 = 0;
        v57 = &v56;
        v58 = 0x3032000000;
        v59 = sub_1AC08514C;
        v60 = sub_1AC08515C;
        v61 = 0;
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = sub_1AC085D08;
        v55[3] = &unk_1E7967F40;
        v55[4] = v37;
        v55[5] = &v62;
        v55[6] = &v56;
        objc_msgSend_performBlockAndWait_(v53, v31, v55, v32, v33);
        v41 = v63[5];
        if (v41)
        {
          objc_msgSend_addObject_(v54, v38, v63[5], v39, v40);
        }

        else
        {
          if (error)
          {
            *error = v57[5];
          }

          v54 = 0;
        }

        _Block_object_dispose(&v56, 8);

        _Block_object_dispose(&v62, 8);
        if (!v41)
        {
          break;
        }

        if (v34 == ++v36)
        {
          v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v68, v89, 16);
          if (v34)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v45 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DEC8], v42, v54, v43, v44);
  }

  else
  {
    v45 = 0;
    if (error)
    {
      *error = v84[5];
    }
  }

  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v83, 8);

  v46 = *MEMORY[0x1E69E9840];

  return v45;
}

- (BOOL)storeEntity:(id)entity uniqueIdWriteback:(unint64_t *)writeback error:(id *)error
{
  entityCopy = entity;
  v13 = objc_msgSend_persistentContainer(self, v9, v10, v11, v12);
  v18 = objc_msgSend_newBackgroundContext(v13, v14, v15, v16, v17);

  v23 = objc_msgSend_qid(entityCopy, v19, v20, v21, v22);
  v28 = objc_msgSend_idType(entityCopy, v24, v25, v26, v27);
  v30 = objc_msgSend_getDbObjectByIdentifier_idType_context_error_(self, v29, v23, v28, v18, error);
  v34 = v30;
  if (v30)
  {
    objc_msgSend_copyFromEntity_(v30, v31, entityCopy, v32, v33);
  }

  else
  {
    v37 = objc_msgSend_insertNewObjectForEntityForName_inManagedObjectContext_(MEMORY[0x1E695D5B8], v31, @"CSUSearchableKnowledgeDBObject", v18, v33);
    objc_msgSend_copyFromEntity_(v37, v38, entityCopy, v39, v40);
  }

  v45 = objc_msgSend_saveDatabase_error_(self, v35, v18, error, v36);
  v46 = v45 ^ 1;
  if (!writeback)
  {
    v46 = 1;
  }

  if ((v46 & 1) == 0)
  {
    v47 = objc_msgSend_qid(entityCopy, v41, v42, v43, v44);
    v52 = objc_msgSend_idType(entityCopy, v48, v49, v50, v51);
    *writeback = objc_msgSend_getUniqueDbId_idType_(CSUSearchableKnowledgeDBObject, v53, v47, v52, v54);
  }

  return v45;
}

- (BOOL)deleteAllEntities:(id *)entities
{
  v7 = objc_msgSend_fetchRequest(CSUSearchableKnowledgeDBObject, a2, entities, v3, v4);
  v8 = objc_alloc(MEMORY[0x1E695D538]);
  Request = objc_msgSend_initWithFetchRequest_(v8, v9, v7, v10, v11);
  v17 = objc_msgSend_persistentContainer(self, v13, v14, v15, v16);
  v22 = objc_msgSend_newBackgroundContext(v17, v18, v19, v20, v21);

  v33 = 0;
  v25 = objc_msgSend_executeRequest_error_(v22, v23, Request, &v33, v24);
  v26 = v33;
  v29 = v26;
  if (v26)
  {
    if (entities)
    {
      v30 = v26;
      v31 = 0;
      *entities = v29;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = objc_msgSend_saveDatabase_error_(self, v27, v22, entities, v28);
  }

  return v31;
}

- (BOOL)countEntries:(unint64_t *)entries error:(id *)error
{
  v8 = objc_msgSend_fetchRequest(CSUSearchableKnowledgeDBObject, a2, entries, error, v4);
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1AC08514C;
  v40 = sub_1AC08515C;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v13 = objc_msgSend_persistentContainer(self, v9, v10, v11, v12);
  v18 = objc_msgSend_newBackgroundContext(v13, v14, v15, v16, v17);

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1AC0866A4;
  v27[3] = &unk_1E7967F18;
  v30 = &v32;
  v19 = v18;
  v28 = v19;
  v20 = v8;
  v29 = v20;
  v31 = &v36;
  objc_msgSend_performBlockAndWait_(v19, v21, v27, v22, v23);
  *entries = v33[3];
  v24 = v37[5];
  if (error && v24)
  {
    v24 = v24;
    *error = v24;
  }

  v25 = v24 == 0;

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v25;
}

- (int)getTaxonomyVersion:(id *)version
{
  v6 = qword_1ED44E2F8;
  if (!qword_1ED44E2F8)
  {
    if (!objc_msgSend_fetchMetadataToMemory_(self, a2, version, v3, v4))
    {
      return 0;
    }

    v6 = qword_1ED44E2F8;
  }

  v7 = objc_msgSend_objectForKeyedSubscript_(v6, a2, @"TaxonomyVersion", v3, v4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = objc_msgSend_integerValue(v7, v8, v9, v10, v11);

    return v12;
  }

  else
  {

    return 0;
  }
}

@end