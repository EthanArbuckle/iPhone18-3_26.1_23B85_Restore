@interface IADefaultsDataStore
- (BOOL)_createErrorWithDescription:(id)a3 code:(int64_t)a4 error:(id *)a5;
- (BOOL)deleteDataStoreObject:(id)a3 withError:(id *)a4;
- (BOOL)objectExistsWithName:(id)a3 andType:(id)a4 withError:(id *)a5;
- (IADefaultsDataStore)initWithName:(id)a3;
- (id)createDataStoreObjectWithName:(id)a3 withType:(id)a4 withError:(id *)a5;
- (id)getObjectWithName:(id)a3 withType:(id)a4 withError:(id *)a5;
@end

@implementation IADefaultsDataStore

- (IADefaultsDataStore)initWithName:(id)a3
{
  v5 = a3;
  if (objc_msgSend_hasPrefix_(v5, v6, @"com.apple."))
  {
    v16.receiver = self;
    v16.super_class = IADefaultsDataStore;
    v7 = [(IADefaultsDataStore *)&v16 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_datastoreName, a3);
      v9 = objc_alloc(MEMORY[0x1E695E000]);
      v11 = objc_msgSend_initWithSuiteName_(v9, v10, v5);
      defaultsHandle = v8->_defaultsHandle;
      v8->_defaultsHandle = v11;
    }

    self = v8;
    v13 = self;
  }

  else
  {
    v14 = sub_1D4621008();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E3EC(v5, v14);
    }

    v13 = 0;
  }

  return v13;
}

- (BOOL)_createErrorWithDescription:(id)a3 code:(int64_t)a4 error:(id *)a5
{
  v7 = MEMORY[0x1E695DF90];
  v8 = a3;
  v11 = objc_msgSend_dictionary(v7, v9, v10);
  objc_msgSend_setValue_forKey_(v11, v12, v8, *MEMORY[0x1E696A578]);

  if (a5)
  {
    *a5 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v13, @"IADefaultsDataStoreErrorDomain", a4, v11);
  }

  return a5 != 0;
}

- (BOOL)objectExistsWithName:(id)a3 andType:(id)a4 withError:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v11 = objc_msgSend_defaultsHandle(self, v9, v10);
  v13 = objc_msgSend_stringForKey_(v11, v12, v8);

  if (!v13)
  {
    goto LABEL_6;
  }

  if (qword_1EC7D6678 != -1)
  {
    sub_1D462E478();
  }

  if (objc_msgSend_containsObject_(qword_1EC7D6670, v14, v13))
  {
    isEqualToString = objc_msgSend_isEqualToString_(v13, v15, v7);
  }

  else
  {
LABEL_6:
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (id)createDataStoreObjectWithName:(id)a3 withType:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ((objc_msgSend__validName_(self, v10, v8) & 1) == 0)
  {
    v14 = sub_1D4621008();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E48C();
    }

    objc_msgSend__createErrorWithDescription_code_error_(self, v15, @"Object name not allowed", 105, a5);
    goto LABEL_9;
  }

  if (objc_msgSend_objectExistsWithName_andType_withError_(self, v11, v8, v9, a5))
  {
    v12 = sub_1D4621008();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E5C4();
    }

    objc_msgSend__createErrorWithDescription_code_error_(self, v13, @"Object already exists", 102, a5);
LABEL_9:
    v16 = 0;
    goto LABEL_25;
  }

  objc_initWeak(&location, self);
  v19 = objc_msgSend_type(IADataStoreCounter, v17, v18);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v20, v19);

  if (isEqualToString)
  {
    v24 = [IADataStoreCounter alloc];
    v25 = objc_loadWeakRetained(&location);
    shouldBeCreated = objc_msgSend_initWithDatastoreHandle_andName_shouldBeCreated_(v24, v26, v25, v8, 1);
  }

  else
  {
    v28 = objc_msgSend_type(IADataStoreBoolean, v22, v23);
    v30 = objc_msgSend_isEqualToString_(v9, v29, v28);

    if (v30)
    {
      v33 = [IADataStoreBoolean alloc];
      v25 = objc_loadWeakRetained(&location);
      shouldBeCreated = objc_msgSend_initWithDatastoreHandle_andName_shouldBeCreated_(v33, v34, v25, v8, 1);
    }

    else
    {
      v35 = objc_msgSend_type(IADataStoreDaterange, v31, v32);
      v37 = objc_msgSend_isEqualToString_(v9, v36, v35);

      if (!v37)
      {
        v40 = sub_1D4621008();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          sub_1D462E4F4();
        }

        v41 = @"Unrecognized type";
        v42 = 100;
        goto LABEL_23;
      }

      v38 = [IADataStoreDaterange alloc];
      v25 = objc_loadWeakRetained(&location);
      shouldBeCreated = objc_msgSend_initWithDatastoreHandle_andName_shouldBeCreated_(v38, v39, v25, v8, 1);
    }
  }

  v16 = shouldBeCreated;

  if (!v16)
  {
    v40 = sub_1D4621008();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E55C();
    }

    v41 = @"Initialization error";
    v42 = 101;
LABEL_23:

    objc_msgSend__createErrorWithDescription_code_error_(self, v43, v41, v42, a5);
    v16 = 0;
  }

  objc_destroyWeak(&location);
LABEL_25:

  return v16;
}

- (BOOL)deleteDataStoreObject:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v9 = objc_msgSend_name(v6, v7, v8);
  v10 = objc_opt_class();
  v13 = objc_msgSend_type(v10, v11, v12);
  v15 = objc_msgSend_objectExistsWithName_andType_withError_(self, v14, v9, v13, a4);

  if ((v15 & 1) == 0)
  {
    v19 = sub_1D4621008();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E62C(v6, v19, v20);
    }

    v21 = 103;
    goto LABEL_10;
  }

  if ((objc_msgSend_destroy(v6, v16, v17) & 1) == 0)
  {
    v19 = sub_1D4621008();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E6B0(v6, v19, v22);
    }

    v21 = 104;
LABEL_10:

    objc_msgSend__createErrorWithDescription_code_error_(self, v23, @"Object could not be deleted", v21, a4);
    v18 = 0;
    goto LABEL_11;
  }

  v18 = 1;
LABEL_11:

  return v18;
}

- (id)getObjectWithName:(id)a3 withType:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (objc_msgSend_objectExistsWithName_andType_withError_(self, v10, v8, v9, a5))
  {
    objc_initWeak(&location, self);
    v13 = objc_msgSend_type(IADataStoreCounter, v11, v12);
    isEqualToString = objc_msgSend_isEqualToString_(v9, v14, v13);

    if (isEqualToString)
    {
      v18 = [IADataStoreCounter alloc];
      v19 = objc_loadWeakRetained(&location);
      shouldBeCreated = objc_msgSend_initWithDatastoreHandle_andName_shouldBeCreated_(v18, v20, v19, v8, 0);
    }

    else
    {
      v25 = objc_msgSend_type(IADataStoreBoolean, v16, v17);
      v27 = objc_msgSend_isEqualToString_(v9, v26, v25);

      if (v27)
      {
        v30 = [IADataStoreBoolean alloc];
        v19 = objc_loadWeakRetained(&location);
        shouldBeCreated = objc_msgSend_initWithDatastoreHandle_andName_shouldBeCreated_(v30, v31, v19, v8, 0);
      }

      else
      {
        v32 = objc_msgSend_type(IADataStoreDaterange, v28, v29);
        v34 = objc_msgSend_isEqualToString_(v9, v33, v32);

        if (!v34)
        {
          v37 = sub_1D4621008();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
          {
            sub_1D462E4F4();
          }

          v38 = @"Unrecognized type";
          v39 = 100;
          goto LABEL_18;
        }

        v35 = [IADataStoreDaterange alloc];
        v19 = objc_loadWeakRetained(&location);
        shouldBeCreated = objc_msgSend_initWithDatastoreHandle_andName_shouldBeCreated_(v35, v36, v19, v8, 0);
      }
    }

    v24 = shouldBeCreated;

    if (v24)
    {
LABEL_19:
      objc_destroyWeak(&location);
      goto LABEL_20;
    }

    v37 = sub_1D4621008();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E55C();
    }

    v38 = @"Initialization error";
    v39 = 101;
LABEL_18:

    objc_msgSend__createErrorWithDescription_code_error_(self, v40, v38, v39, a5);
    v24 = 0;
    goto LABEL_19;
  }

  v22 = sub_1D4621008();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462E734();
  }

  v24 = objc_msgSend_createDataStoreObjectWithName_withType_withError_(self, v23, v8, v9, a5);
LABEL_20:

  return v24;
}

@end