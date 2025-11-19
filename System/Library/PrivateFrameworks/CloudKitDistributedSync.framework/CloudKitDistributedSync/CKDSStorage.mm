@interface CKDSStorage
- (BOOL)isEqual:(id)a3;
- (BOOL)size:(unint64_t *)a3 error:(id *)a4;
- (NSURL)fileURL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataWithError:(id *)a3;
- (id)description;
- (id)initForWriting:(BOOL)a3 withFile:(id)a4 orData:(id)a5;
@end

@implementation CKDSStorage

- (id)initForWriting:(BOOL)a3 withFile:(id)a4 orData:(id)a5
{
  v10 = a4;
  v17 = a5;
  if (!(v10 | v17))
  {
    v29 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12, v13, v14, v15, v16);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v29, v30, a2, self, @"CKDSUtils.m", 56, @"Unexpected arguments");
  }

  v31.receiver = self;
  v31.super_class = CKDSStorage;
  v18 = [(CKDSStorage *)&v31 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_file, a4);
    if (a3)
    {
      v26 = objc_msgSend_mutableCopy(v17, v20, v21, v22, v23, v24, v25);
    }

    else
    {
      v26 = objc_msgSend_copy(v17, v20, v21, v22, v23, v24, v25);
    }

    data = v19->_data;
    v19->_data = v26;

    v19->_writable = a3;
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v11 = objc_msgSend_writable(self, v5, v6, v7, v8, v9, v10);
  v18 = objc_msgSend_file(self, v12, v13, v14, v15, v16, v17);
  v25 = objc_msgSend_data(self, v19, v20, v21, v22, v23, v24);
  v29 = objc_msgSend_initForWriting_withFile_orData_(v4, v26, v11, v18, v25, v27, v28);

  return v29;
}

- (NSURL)fileURL
{
  v7 = objc_msgSend_file(self, a2, v2, v3, v4, v5, v6);
  v14 = objc_msgSend_URL(v7, v8, v9, v10, v11, v12, v13);

  return v14;
}

- (BOOL)size:(unint64_t *)a3 error:(id *)a4
{
  v69[2] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    goto LABEL_4;
  }

  v10 = objc_msgSend_data(self, a2, a3, a4, v4, v5, v6);

  if (v10)
  {
    v17 = objc_msgSend_data(self, v11, v12, v13, v14, v15, v16);
    *a3 = objc_msgSend_length(v17, v18, v19, v20, v21, v22, v23);

LABEL_4:
    ResourceValue_forKey_error = 1;
    goto LABEL_5;
  }

  v27 = objc_msgSend_fileURL(self, v11, v12, v13, v14, v15, v16);

  if (!v27)
  {
    *a3 = 0;
    goto LABEL_4;
  }

  v34 = objc_msgSend_fileURL(self, v28, v29, v30, v31, v32, v33);
  v67 = 0;
  v35 = *MEMORY[0x277CBE838];
  v66 = 0;
  ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v34, v36, &v67, v35, &v66, v37, v38);
  v39 = v67;
  v40 = v66;

  if (ResourceValue_forKey_error)
  {
    v47 = objc_msgSend_unsignedIntegerValue(v39, v41, v42, v43, v44, v45, v46);
  }

  else
  {
    if (a4)
    {
      v48 = MEMORY[0x277CCA9B8];
      v68[0] = *MEMORY[0x277CCA450];
      v49 = MEMORY[0x277CCACA8];
      v50 = objc_msgSend_fileURL(self, v41, v42, v43, v44, v45, v46);
      v56 = objc_msgSend_stringWithFormat_(v49, v51, @"Error reading file %@", v52, v53, v54, v55, v50);
      v68[1] = *MEMORY[0x277CCA7E8];
      v69[0] = v56;
      v69[1] = v40;
      v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v57, v69, v68, 2, v58, v59);
      v64 = objc_msgSend_errorWithDomain_code_userInfo_(v48, v61, @"CKDSErrorDomain", 5, v60, v62, v63);

      v65 = v64;
      *a4 = v64;
    }

    v47 = 0;
  }

  *a3 = v47;

LABEL_5:
  v25 = *MEMORY[0x277D85DE8];
  return ResourceValue_forKey_error;
}

- (id)dataWithError:(id *)a3
{
  v46[1] = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_data(self, a2, a3, v3, v4, v5, v6);

  if (v9)
  {
    v16 = objc_msgSend_data(self, v10, v11, v12, v13, v14, v15);
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      goto LABEL_10;
    }

LABEL_6:
    v24 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CCA450];
    v25 = MEMORY[0x277CCACA8];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v33 = objc_msgSend_stringWithFormat_(v25, v28, @"%@ was improperly initialized", v29, v30, v31, v32, v27);
    v46[0] = v33;
    v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v34, v46, &v45, 1, v35, v36);
    v18 = objc_msgSend_errorWithDomain_code_userInfo_(v24, v38, @"CKDSErrorDomain", 1, v37, v39, v40);

    goto LABEL_7;
  }

  v19 = MEMORY[0x277CBEA90];
  v20 = objc_msgSend_fileURL(self, v10, v11, v12, v13, v14, v15);
  v44 = 0;
  v17 = objc_msgSend_dataWithContentsOfURL_options_error_(v19, v21, v20, 0, &v44, v22, v23);
  v18 = v44;

  if (v17)
  {
    goto LABEL_10;
  }

  if (!v18)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (a3)
  {
    v41 = v18;
    v17 = 0;
    *a3 = v18;
  }

  else
  {
    v17 = 0;
  }

LABEL_10:

  v42 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    isEqual = 1;
  }

  else
  {
    v6 = objc_opt_class();
    if (objc_msgSend_isMemberOfClass_(v5, v7, v6, v8, v9, v10, v11))
    {
      v12 = v5;
      v19 = objc_msgSend_data(self, v13, v14, v15, v16, v17, v18);
      v32 = objc_msgSend_data(v12, v20, v21, v22, v23, v24, v25);
      if (v19 != v32)
      {
        v33 = objc_msgSend_data(self, v26, v27, v28, v29, v30, v31);
        v3 = objc_msgSend_data(v12, v34, v35, v36, v37, v38, v39);
        if (!objc_msgSend_isEqual_(v33, v40, v3, v41, v42, v43, v44))
        {
          isEqual = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v74 = v33;
      }

      v46 = objc_msgSend_fileURL(self, v26, v27, v28, v29, v30, v31);
      v59 = objc_msgSend_fileURL(v12, v47, v48, v49, v50, v51, v52);
      if (v46 == v59)
      {
        isEqual = 1;
      }

      else
      {
        v60 = objc_msgSend_fileURL(self, v53, v54, v55, v56, v57, v58);
        v67 = objc_msgSend_fileURL(v12, v61, v62, v63, v64, v65, v66);
        isEqual = objc_msgSend_isEqual_(v60, v68, v67, v69, v70, v71, v72);
      }

      v33 = v74;
      if (v19 == v32)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    isEqual = 0;
  }

LABEL_15:

  return isEqual;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend_appendFormat_(v3, v6, @"<%@: %p; ", v7, v8, v9, v10, v5, self);

  v17 = objc_msgSend_file(self, v11, v12, v13, v14, v15, v16);

  if (v17)
  {
    v24 = objc_msgSend_file(self, v18, v19, v20, v21, v22, v23);
    isOwned = objc_msgSend_isOwned(v24, v25, v26, v27, v28, v29, v30);

    if (isOwned)
    {
      objc_msgSend_appendFormat_(v3, v32, @"type=ownedFile, ", v33, v34, v35, v36);
    }

    else
    {
      objc_msgSend_appendFormat_(v3, v32, @"type=file, ", v33, v34, v35, v36);
    }

    v43 = objc_msgSend_file(self, v37, v38, v39, v40, v41, v42);
    v50 = objc_msgSend_URL(v43, v44, v45, v46, v47, v48, v49);
    objc_msgSend_appendFormat_(v3, v51, @"URL=%@", v52, v53, v54, v55, v50);
  }

  else
  {
    objc_msgSend_appendFormat_(v3, v18, @"type=data", v20, v21, v22, v23);
  }

  objc_msgSend_appendFormat_(v3, v56, @">", v57, v58, v59, v60);

  return v3;
}

@end