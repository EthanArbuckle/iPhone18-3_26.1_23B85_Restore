@interface KVJSONProfileReader
- (BOOL)enumerateDatasetsWithError:(id *)a3 usingBlock:(id)a4;
- (KVJSONProfileReader)initWithData:(id)a3 error:(id *)a4;
- (NSString)description;
@end

@implementation KVJSONProfileReader

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = objc_msgSend_bytes(self->_data, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_length(self->_data, v10, v11, v12, v13, v14);
  v17 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v3, v16, v9, v15, 4, 0);

  return v17;
}

- (BOOL)enumerateDatasetsWithError:(id *)a3 usingBlock:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = self->_datasets;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v35, v41, 16, v9);
  if (v10)
  {
    v11 = *v36;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v26 = MEMORY[0x277CCA9B8];
          v39 = *MEMORY[0x277CCA450];
          v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"Unexpected dataset dictionary: %@", v15, v16, v17, v13);
          v40 = v22;
          v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, &v40, &v39, 1, v28);
          v32 = objc_msgSend_errorWithDomain_code_userInfo_(v26, v30, @"com.apple.koa.profile", 10, v29, v31);
          if (a3 && v32)
          {
            v32 = v32;
            *a3 = v32;
          }

LABEL_17:
          v25 = 0;
          goto LABEL_18;
        }

        v18 = [KVJSONDatasetReader alloc];
        v22 = objc_msgSend_initWithDictionary_error_(v18, v19, v13, a3, v20, v21);
        if (!v22 || (v6[2](v6, v22) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v23, &v35, v41, 16, v24);
      v25 = 1;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v25 = 1;
  }

LABEL_18:

  v33 = *MEMORY[0x277D85DE8];
  return v25;
}

- (KVJSONProfileReader)initWithData:(id)a3 error:(id *)a4
{
  v68[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v64.receiver = self;
  v64.super_class = KVJSONProfileReader;
  v8 = [(KVJSONProfileReader *)&v64 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_8;
  }

  objc_storeStrong(&v8->_data, a3);
  data = v9->_data;
  v63 = 0;
  v13 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x277CCAAA0], v11, data, 0, &v63, v12);
  v14 = v63;
  profile = v9->_profile;
  v9->_profile = v13;

  if (!v9->_profile || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v38 = MEMORY[0x277CCA9B8];
    v67 = *MEMORY[0x277CCA450];
    v39 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"Attempt to parse profile from data: %@ as JSON failed with error: %@", v17, v18, v19, v9->_data, v14);
    v68[0] = v39;
    v42 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, v68, &v67, 1, v41);
    v45 = objc_msgSend_errorWithDomain_code_userInfo_(v38, v43, @"com.apple.koa.profile", 10, v42, v44);
    v46 = v45;
    if (a4 && v45)
    {
      v47 = v45;
      *a4 = v46;
    }

    goto LABEL_12;
  }

  v20 = [KVProfileInfo alloc];
  v25 = objc_msgSend_objectForKey_(v9->_profile, v21, @"profileInfo", v22, v23, v24);
  v29 = objc_msgSend_initFromDictionary_error_(v20, v26, v25, a4, v27, v28);
  profileInfo = v9->_profileInfo;
  v9->_profileInfo = v29;

  if (!v9->_profileInfo)
  {
LABEL_13:

    v37 = 0;
    goto LABEL_14;
  }

  v35 = objc_msgSend_objectForKey_(v9->_profile, v31, @"datasets", v32, v33, v34);
  datasets = v9->_datasets;
  v9->_datasets = v35;

  if (v9->_datasets)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v50 = MEMORY[0x277CCA9B8];
      v65 = *MEMORY[0x277CCA450];
      v51 = MEMORY[0x277CCACA8];
      v52 = v9->_datasets;
      v53 = objc_opt_class();
      v39 = NSStringFromClass(v53);
      v42 = objc_msgSend_stringWithFormat_(v51, v54, @"Unexpected datasets array class: %@", v55, v56, v57, v39);
      v66 = v42;
      v46 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v58, &v66, &v65, 1, v59);
      v62 = objc_msgSend_errorWithDomain_code_userInfo_(v50, v60, @"com.apple.koa.profile", 10, v46, v61);
      if (a4 && v62)
      {
        v62 = v62;
        *a4 = v62;
      }

LABEL_12:
      goto LABEL_13;
    }
  }

LABEL_8:
  v37 = v9;
LABEL_14:

  v48 = *MEMORY[0x277D85DE8];
  return v37;
}

@end