@interface KVJSONDatasetReader
- (BOOL)enumerateItemsWithError:(id *)a3 usingBlock:(id)a4;
- (KVJSONDatasetReader)initWithDictionary:(id)a3 error:(id *)a4;
- (NSString)description;
@end

@implementation KVJSONDatasetReader

- (NSString)description
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"dataset format: %@ info: %@", v2, v3, v4, @"JSON", self->_datasetInfo);

  return v5;
}

- (BOOL)enumerateItemsWithError:(id *)a3 usingBlock:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = self->_items;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v49, v57, 16, v8);
  if (!v9)
  {
    v30 = 1;
    goto LABEL_24;
  }

  v10 = *v50;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v50 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v49 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v31 = MEMORY[0x277CCA9B8];
        v55 = *MEMORY[0x277CCA450];
        v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"Unexpected item outer dictionary: %@", v14, v15, v16, v12);
        v56 = v17;
        v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v32, &v56, &v55, 1, v33);
        v37 = objc_msgSend_errorWithDomain_code_userInfo_(v31, v35, @"com.apple.koa.profile", 10, v34, v36);
        v38 = v37;
        if (a3 && v37)
        {
          v39 = v37;
          *a3 = v38;
        }

LABEL_21:

LABEL_22:
LABEL_23:
        v30 = 0;
        goto LABEL_24;
      }

      v17 = objc_msgSend_objectForKey_(v12, v13, @"item", v14, v15, v16);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v40 = MEMORY[0x277CCA9B8];
        v53 = *MEMORY[0x277CCA450];
        v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"Unexpected item inner dictionary: %@", v19, v20, v21, v17);
        v54 = v34;
        v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v41, &v54, &v53, 1, v42);
        v45 = objc_msgSend_errorWithDomain_code_userInfo_(v40, v43, @"com.apple.koa.profile", 10, v38, v44);
        if (a3 && v45)
        {
          v45 = v45;
          *a3 = v45;
        }

        goto LABEL_21;
      }

      v22 = [KVItem alloc];
      v26 = objc_msgSend_initFromDictionary_error_(v22, v23, v17, a3, v24, v25);
      if (!v26)
      {
        goto LABEL_22;
      }

      v27 = v6[2](v6, v26);

      if ((v27 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v49, v57, 16, v29);
    v30 = 1;
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_24:

  v46 = *MEMORY[0x277D85DE8];
  return v30;
}

- (KVJSONDatasetReader)initWithDictionary:(id)a3 error:(id *)a4
{
  v59[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v55.receiver = self;
  v55.super_class = KVJSONDatasetReader;
  v11 = [(KVJSONDatasetReader *)&v55 init];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = objc_msgSend_objectForKey_(v6, v7, @"datasetInfo", v8, v9, v10);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = MEMORY[0x277CCA9B8];
    v58 = *MEMORY[0x277CCA450];
    v27 = MEMORY[0x277CCACA8];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v34 = objc_msgSend_stringWithFormat_(v27, v30, @"Unexpected DatasetInfo dictionary class: %@", v31, v32, v33, v29);
    v59[0] = v34;
    v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, v59, &v58, 1, v36);
    v40 = objc_msgSend_errorWithDomain_code_userInfo_(v26, v38, @"com.apple.koa.profile", 10, v37, v39);
    goto LABEL_9;
  }

  v13 = [KVDatasetInfo alloc];
  v17 = objc_msgSend_initFromDictionary_error_(v13, v14, v12, a4, v15, v16);
  datasetInfo = v11->_datasetInfo;
  v11->_datasetInfo = v17;

  if (!v11->_datasetInfo)
  {
LABEL_13:

    v25 = 0;
    goto LABEL_14;
  }

  v23 = objc_msgSend_objectForKey_(v6, v19, @"items", v20, v21, v22);
  items = v11->_items;
  v11->_items = v23;

  if (v11->_items)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v43 = MEMORY[0x277CCA9B8];
      v56 = *MEMORY[0x277CCA450];
      v44 = MEMORY[0x277CCACA8];
      v45 = v11->_items;
      v46 = objc_opt_class();
      v29 = NSStringFromClass(v46);
      v34 = objc_msgSend_stringWithFormat_(v44, v47, @"Unexpected items array class: %@", v48, v49, v50, v29);
      v57 = v34;
      v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v51, &v57, &v56, 1, v52);
      v40 = objc_msgSend_errorWithDomain_code_userInfo_(v43, v53, @"com.apple.koa.profile", 10, v37, v54);
LABEL_9:
      if (a4 && v40)
      {
        v40 = v40;
        *a4 = v40;
      }

      goto LABEL_13;
    }
  }

LABEL_7:
  v25 = v11;
LABEL_14:

  v41 = *MEMORY[0x277D85DE8];
  return v25;
}

@end