@interface IADataStoreObject
+ (id)type;
- (BOOL)destroy;
- (BOOL)persist;
- (IADataStoreObject)initWithDatastoreHandle:(id)handle andName:(id)name shouldBeCreated:(BOOL)created;
- (IADefaultsDataStore)datastoreHandle;
@end

@implementation IADataStoreObject

- (IADataStoreObject)initWithDatastoreHandle:(id)handle andName:(id)name shouldBeCreated:(BOOL)created
{
  createdCopy = created;
  v62 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, handle);
  nameCopy = name;
  v54.receiver = self;
  v54.super_class = IADataStoreObject;
  v9 = [(IADataStoreObject *)&v54 init];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = objc_loadWeakRetained(&location);
  objc_storeWeak(&v9->_datastoreHandle, v10);

  objc_storeStrong(&v9->_name, name);
  v9->_destroyed = 0;
  if (!createdCopy)
  {
    v13 = objc_msgSend_datastoreHandle(v9, v11, v12);
    v16 = v13;
    if (v13)
    {
      v17 = objc_msgSend_defaultsHandle(v13, v14, v15);
      v20 = objc_msgSend_name(v9, v18, v19);
      v22 = objc_msgSend_stringByAppendingString_(v20, v21, @"_version");
      v9->_version = objc_msgSend_integerForKey_(v17, v23, v22);

      if (objc_msgSend_version(v9, v24, v25) == 1)
      {
        v28 = objc_msgSend_defaultsHandle(v16, v26, v27);
        v31 = objc_msgSend_name(v9, v29, v30);
        v33 = objc_msgSend_stringByAppendingString_(v31, v32, @"_lastModified");
        v35 = objc_msgSend_objectForKey_(v28, v34, v33);
        lastModified = v9->_lastModified;
        v9->_lastModified = v35;

        goto LABEL_7;
      }

      v38 = sub_1D4621008();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        v45 = MEMORY[0x1E696AD98];
        v46 = objc_msgSend_version(v9, v41, v42);
        v48 = objc_msgSend_numberWithInt_(v45, v47, v46);
        v51 = objc_msgSend_name(v9, v49, v50);
        v53 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v52, 1);
        *buf = 138412802;
        v57 = v48;
        v58 = 2112;
        v59 = v51;
        v60 = 2112;
        v61 = v53;
        _os_log_fault_impl(&dword_1D460F000, v38, OS_LOG_TYPE_FAULT, "Invalid version %@ object with name %@ (expected %@)", buf, 0x20u);
      }
    }

    else
    {
      v38 = sub_1D4621008();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        objc_msgSend_name(v9, v39, v40);
        objc_claimAutoreleasedReturnValue();
        sub_1D462DE10();
      }
    }

    v37 = 0;
    goto LABEL_13;
  }

  v9->_version = 1;
  objc_msgSend_persist(v9, v11, v12);
LABEL_7:
  v37 = v9;
LABEL_13:

  objc_destroyWeak(&location);
  v43 = *MEMORY[0x1E69E9840];
  return v37;
}

- (BOOL)persist
{
  if (objc_msgSend_destroyed(self, a2, v2))
  {
    v6 = sub_1D4621008();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DEDC(self, v6, v7);
    }

LABEL_9:
    v48 = 0;
    goto LABEL_10;
  }

  v8 = objc_msgSend_datastoreHandle(self, v4, v5);
  v6 = v8;
  if (!v8)
  {
    v49 = sub_1D4621008();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DE58(self, v49, v50);
    }

    goto LABEL_9;
  }

  v11 = objc_msgSend_defaultsHandle(v8, v9, v10);
  v12 = objc_opt_class();
  v15 = objc_msgSend_type(v12, v13, v14);
  v18 = objc_msgSend_name(self, v16, v17);
  objc_msgSend_setObject_forKey_(v11, v19, v15, v18);

  v22 = objc_msgSend_defaultsHandle(v6, v20, v21);
  v25 = objc_msgSend_version(self, v23, v24);
  v28 = objc_msgSend_name(self, v26, v27);
  v30 = objc_msgSend_stringByAppendingString_(v28, v29, @"_version");
  objc_msgSend_setInteger_forKey_(v22, v31, v25, v30);

  v34 = objc_msgSend_now(MEMORY[0x1E695DF00], v32, v33);
  lastModified = self->_lastModified;
  self->_lastModified = v34;

  v38 = objc_msgSend_defaultsHandle(v6, v36, v37);
  v41 = objc_msgSend_lastModified(self, v39, v40);
  v44 = objc_msgSend_name(self, v42, v43);
  v46 = objc_msgSend_stringByAppendingString_(v44, v45, @"_lastModified");
  objc_msgSend_setObject_forKey_(v38, v47, v41, v46);

  v48 = 1;
LABEL_10:

  return v48;
}

- (BOOL)destroy
{
  if (objc_msgSend_destroyed(self, a2, v2))
  {
    v6 = sub_1D4621008();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DEDC(self, v6, v7);
    }

LABEL_9:
    v34 = 0;
    goto LABEL_10;
  }

  v8 = objc_msgSend_datastoreHandle(self, v4, v5);
  v6 = v8;
  if (!v8)
  {
    v35 = sub_1D4621008();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DE58(self, v35, v36);
    }

    goto LABEL_9;
  }

  v11 = objc_msgSend_defaultsHandle(v8, v9, v10);
  v14 = objc_msgSend_name(self, v12, v13);
  objc_msgSend_removeObjectForKey_(v11, v15, v14);

  v18 = objc_msgSend_defaultsHandle(v6, v16, v17);
  v21 = objc_msgSend_name(self, v19, v20);
  v23 = objc_msgSend_stringByAppendingString_(v21, v22, @"_version");
  objc_msgSend_removeObjectForKey_(v18, v24, v23);

  v27 = objc_msgSend_defaultsHandle(v6, v25, v26);
  v30 = objc_msgSend_name(self, v28, v29);
  v32 = objc_msgSend_stringByAppendingString_(v30, v31, @"_lastModified");
  objc_msgSend_removeObjectForKey_(v27, v33, v32);

  v34 = 1;
  self->_destroyed = 1;
LABEL_10:

  return v34;
}

+ (id)type
{
  v4 = sub_1D4621008();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1D462DF60(v4);
  }

  v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"IADataStoreObject.m", 118, @"type not implemented");

  return 0;
}

- (IADefaultsDataStore)datastoreHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_datastoreHandle);

  return WeakRetained;
}

@end