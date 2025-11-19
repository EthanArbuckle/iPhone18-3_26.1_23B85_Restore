@interface CSUKnowledgeEntityStore
- (BOOL)commitWithError:(id *)a3;
- (BOOL)loadWithError:(id *)a3;
- (BOOL)purgeDatabaseWithVersion:(int)a3 error:(id *)a4;
- (CSUKnowledgeEntityStore)initWithDatabasePath:(id)a3 error:(id *)a4;
- (unsigned)storeEntity:(id)a3 error:(id *)a4;
- (void)enumerateIdentifiersUsingBlock:(id)a3;
@end

@implementation CSUKnowledgeEntityStore

- (CSUKnowledgeEntityStore)initWithDatabasePath:(id)a3 error:(id *)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = CSUKnowledgeEntityStore;
  v8 = [(CSUKnowledgeEntityStore *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_databasePath, a3);
    data = v9->_data;
    v9->_data = 0;

    if ((objc_msgSend_loadWithError_(v9, v11, a4, v12, v13) & 1) == 0)
    {

      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)commitWithError:(id *)a3
{
  v62 = a3;
  v75 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v9 = objc_msgSend_count(self->_data, v5, v6, v7, v8);
  v63 = objc_msgSend_initWithCapacity_(v4, v10, v9, v11, v12);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v13 = self->_data;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v64, v74, 16);
  if (v18)
  {
    v19 = *v65;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v65 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v64 + 1) + 8 * i);
        v72[0] = @"identifier";
        v72[1] = @"data";
        v73[0] = v21;
        v22 = objc_msgSend_objectForKeyedSubscript_(self->_data, v15, v21, v16, v17, v62);
        v27 = objc_msgSend_dictionary(v22, v23, v24, v25, v26);
        v73[1] = v27;
        v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v28, v73, v72, 2);
        objc_msgSend_addObject_(v63, v30, v29, v31, v32);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v64, v74, 16);
    }

    while (v18);
  }

  v33 = MEMORY[0x1E696ACB0];
  v70[0] = @"metadata";
  v68[0] = @"schemaVersion";
  v37 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v34, self->_schemaVersion, v35, v36);
  v69[0] = v37;
  v68[1] = @"size";
  v38 = MEMORY[0x1E696AD98];
  v43 = objc_msgSend_count(self->_data, v39, v40, v41, v42);
  v47 = objc_msgSend_numberWithUnsignedInteger_(v38, v44, v43, v45, v46);
  v69[1] = v47;
  v68[2] = @"version";
  v51 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v48, self->_version, v49, v50);
  v69[2] = v51;
  v53 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v52, v69, v68, 3);
  v70[1] = @"data";
  v71[0] = v53;
  v71[1] = v63;
  v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v54, v71, v70, 2);
  v57 = objc_msgSend_dataWithJSONObject_options_error_(v33, v56, v55, 0, v62);

  if (v57)
  {
    v59 = objc_msgSend_writeToFile_options_error_(v57, v58, self->_databasePath, 0, v62);
  }

  else
  {
    v59 = 0;
  }

  v60 = *MEMORY[0x1E69E9840];
  return v59;
}

- (BOOL)loadWithError:(id *)a3
{
  v91 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3, v3, v4);
  v10 = objc_msgSend_fileExistsAtPath_(v6, v7, self->_databasePath, v8, v9);

  if (v10)
  {
    v83 = objc_msgSend_dataWithContentsOfFile_options_error_(MEMORY[0x1E695DEF0], v11, self->_databasePath, 0, a3);
    if (v83)
    {
      v13 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v12, v83, 0, a3);
      v82 = v13 != 0;
      v17 = self;
      if (v13)
      {
        v81 = v13;
        v18 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"metadata", v15, v16);
        v79 = objc_msgSend_objectForKeyedSubscript_(v18, v19, @"version", v20, v21);

        v25 = objc_msgSend_objectForKeyedSubscript_(v81, v22, @"metadata", v23, v24);
        v80 = objc_msgSend_objectForKeyedSubscript_(v25, v26, @"schemaVersion", v27, v28);

        v33 = v79;
        if (v79)
        {
          v33 = objc_msgSend_integerValue(v79, v29, v30, v31, v32);
        }

        self->_version = v33;
        v34 = v80;
        if (v80)
        {
          v34 = objc_msgSend_integerValue(v80, v29, v30, v31, v32);
        }

        self->_schemaVersion = v34;
        v35 = objc_alloc(MEMORY[0x1E695DF90]);
        v40 = objc_msgSend_count(v81, v36, v37, v38, v39);
        v44 = objc_msgSend_initWithCapacity_(v35, v41, v40, v42, v43);
        data = self->_data;
        self->_data = v44;

        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        obj = objc_msgSend_objectForKeyedSubscript_(v81, v46, @"data", v47, v48);
        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v49, &v86, v90, 16);
        if (v50)
        {
          v51 = *v87;
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v87 != v51)
              {
                objc_enumerationMutation(obj);
              }

              v53 = *(*(&v86 + 1) + 8 * i);
              v54 = [CSUKnowledgeEntity alloc];
              v58 = objc_msgSend_objectForKeyedSubscript_(v53, v55, @"data", v56, v57);
              v62 = objc_msgSend_initWithDictionary_(v54, v59, v58, v60, v61);
              v63 = v17->_data;
              v67 = objc_msgSend_objectForKeyedSubscript_(v53, v64, @"identifier", v65, v66);
              objc_msgSend_setObject_forKeyedSubscript_(v63, v68, v62, v67, v69);

              v17 = self;
            }

            v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v70, &v86, v90, 16);
          }

          while (v50);
        }

        v13 = v81;
      }
    }

    else
    {
      v82 = 0;
    }

    v78 = *MEMORY[0x1E69E9840];
    return v82;
  }

  else
  {
    v71 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v72 = self->_data;
    self->_data = v71;

    self->_version = 0;
    self->_schemaVersion = 0;
    v76 = *MEMORY[0x1E69E9840];

    return objc_msgSend_commitWithError_(self, v73, a3, v74, v75);
  }
}

- (unsigned)storeEntity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11 = objc_msgSend_QID(v6, v7, v8, v9, v10);
  v15 = objc_msgSend_substringFromIndex_(v11, v12, 1, v13, v14);
  v20 = objc_msgSend_integerValue(v15, v16, v17, v18, v19);

  if (!v20)
  {
    if (!a4)
    {
LABEL_7:
      LODWORD(v20) = 0;
      goto LABEL_8;
    }

    v40 = MEMORY[0x1E696AEC0];
    v36 = objc_msgSend_QID(v6, v21, v22, v23, v24);
    v44 = objc_msgSend_stringWithFormat_(v40, v41, @"Invalid QID: %@", v42, v43, v36);
    *a4 = objc_msgSend_errorWithCode_message_(CSUError, v45, 8, v44, v46);

LABEL_6:
    goto LABEL_7;
  }

  data = self->_data;
  v26 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v21, v20, v23, v24);
  objc_msgSend_setObject_forKeyedSubscript_(data, v27, v6, v26, v28);

  if ((objc_msgSend_commitWithError_(self, v29, a4, v30, v31) & 1) == 0)
  {
    v35 = self->_data;
    v36 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v32, v20, v33, v34);
    objc_msgSend_removeObjectForKey_(v35, v37, v36, v38, v39);
    goto LABEL_6;
  }

LABEL_8:

  return v20;
}

- (BOOL)purgeDatabaseWithVersion:(int)a3 error:(id *)a4
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  data = self->_data;
  self->_data = v7;

  self->_version = a3;

  return objc_msgSend_commitWithError_(self, v9, a4, v10, v11);
}

- (void)enumerateIdentifiersUsingBlock:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_data;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v21, 16);
  if (v11)
  {
    v12 = *v17;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v17 != v12)
      {
        objc_enumerationMutation(v5);
      }

      v14 = objc_msgSend_integerValue(*(*(&v16 + 1) + 8 * v13), v7, v8, v9, v10, v16);
      v4[2](v4, v14, &v20);
      if (v20)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v16, v21, 16);
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end