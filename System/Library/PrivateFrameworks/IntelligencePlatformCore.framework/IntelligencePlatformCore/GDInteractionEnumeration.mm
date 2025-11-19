@interface GDInteractionEnumeration
- (GDInteractionEnumeration)initWithStore:(id)a3 batchSize:(unint64_t)a4;
- (GDInteractionEnumeration)initWithStore:(id)a3 predicate:(id)a4 sortDescriptor:(id)a5 batchSize:(unint64_t)a6;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
@end

@implementation GDInteractionEnumeration

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v5 = a4;
  v51 = *MEMORY[0x1E69E9840];
  if (a3->var0)
  {
    v7 = a3->var3[0];
  }

  else
  {
    v7 = 0;
    a3->var2 = self;
    a3->var3[0] = 0;
    a3->var0 = 1;
  }

  a3->var1 = a4;
  predicate = self->_predicate;
  sortDescriptor = self->_sortDescriptor;
  batchSize = self->_batchSize;
  v11 = self->_store;
  v12 = predicate;
  v13 = sortDescriptor;
  objc_opt_self();
  v14 = objc_autoreleasePoolPush();
  *buf = v13;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v15, buf, 1);
  v48 = 0;
  v18 = objc_msgSend_queryInteractionsUsingPredicate_sortDescriptors_limit_offset_error_(v11, v17, v12, v16, batchSize, v7, &v48);
  v19 = v48;

  objc_autoreleasePoolPop(v14);
  v20 = 0;
  if (!v18)
  {
    v21 = v19;
    v20 = v19;
  }

  v22 = v20;
  v25 = objc_msgSend__pas_mappedArrayWithTransform_(v18, v23, &unk_1F4416038, v24);
  batch = self->_batch;
  self->_batch = v25;

  v27 = self->_batch;
  if (v27)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v28 = v27;
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v44, v49, 16);
    if (v30)
    {
      v32 = v30;
      v33 = 0;
      v34 = *v45;
      v35 = 0;
      while (2)
      {
        v36 = 0;
        if (a5 >= v33)
        {
          v37 = a5 - v33;
        }

        else
        {
          v37 = 0;
        }

        do
        {
          if (*v45 != v34)
          {
            objc_enumerationMutation(v28);
          }

          if (v37 == v36)
          {
            v38 = v32 - 1;
            if (v37 < v32 - 1)
            {
              v38 = v37;
            }

            v35 = v33 + v38;
            goto LABEL_25;
          }

          *v5++ = *(*(&v44 + 1) + 8 * v36);
          ++v35;
          ++v36;
        }

        while (v32 != v36);
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v44, v49, 16);
        v33 = v35;
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v35 = 0;
    }

LABEL_25:

    a3->var3[0] += v35;
  }

  else
  {
    v39 = GDDefaultLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v22;
      _os_log_error_impl(&dword_1C43F8000, v39, OS_LOG_TYPE_ERROR, "GDInteractionEnumeration: _cdInteractionFromStore error: %@", buf, 0xCu);
    }

    v35 = 0;
  }

  v40 = *MEMORY[0x1E69E9840];
  return v35;
}

- (GDInteractionEnumeration)initWithStore:(id)a3 predicate:(id)a4 sortDescriptor:(id)a5 batchSize:(unint64_t)a6
{
  v12 = a3;
  v13 = a4;
  v17 = a5;
  if (!a6)
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v14, v15, v16);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"GDInteractionStoreShim.m", 278, @"Invalid parameter not satisfying: %@", @"batchSize > 0");
  }

  v24.receiver = self;
  v24.super_class = GDInteractionEnumeration;
  v18 = [(GDInteractionEnumeration *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_store, a3);
    objc_storeStrong(&v19->_predicate, a4);
    objc_storeStrong(&v19->_sortDescriptor, a5);
    v20 = 10;
    if (a6 > 0xA)
    {
      v20 = a6;
    }

    v19->_batchSize = v20;
  }

  return v19;
}

- (GDInteractionEnumeration)initWithStore:(id)a3 batchSize:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v10 = objc_msgSend_predicateWithValue_(MEMORY[0x1E696AE18], v8, 1, v9);
  objc_autoreleasePoolPop(v7);
  v11 = objc_autoreleasePoolPush();
  v13 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x1E696AEB0], v12, @"startDate", 1);
  objc_autoreleasePoolPop(v11);
  v15 = objc_msgSend_initWithStore_predicate_sortDescriptor_batchSize_(self, v14, v6, v10, v13, a4);

  return v15;
}

@end