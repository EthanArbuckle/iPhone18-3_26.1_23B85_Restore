@interface KVProfile
+ (id)emptyProfile:(id *)a3;
+ (id)profileWithContentsOfURL:(id)a3 error:(id *)a4;
+ (void)initalize;
- (BOOL)_enumerateSerializedSetsWithError:(id *)a3 usingBlock:(id)a4;
- (BOOL)enumerateDatasetsWithError:(id *)a3 usingBlock:(id)a4;
- (KVProfile)initWithCoder:(id)a3;
- (KVProfile)initWithProfileData:(id)a3 error:(id *)a4;
- (KVProfile)initWithProfileData:(id)a3 provider:(id)a4 error:(id *)a5;
- (id)serializedSets:(id *)a3;
- (id)toSerializedSets:(id *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KVProfile

- (BOOL)_enumerateSerializedSetsWithError:(id *)a3 usingBlock:(id)a4
{
  v6 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_2559AB22C;
  v29 = sub_2559AB23C;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_2559AB22C;
  v23 = sub_2559AB23C;
  v24 = 0;
  v17 = &v25;
  obj = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2559AB244;
  v14[3] = &unk_279803960;
  v16 = &v19;
  v7 = v6;
  v15 = v7;
  v11 = objc_msgSend_enumerateDatasetsWithError_usingBlock_(self, v8, &obj, v14, v9, v10);
  objc_storeStrong(&v30, obj);
  if ((v11 & 1) == 0)
  {
    v12 = v20[5];
    if (!v12)
    {
      v12 = v26[5];
    }

    if (a3 && v12)
    {
      *a3 = v12;
    }
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v11;
}

- (id)toSerializedSets:(id *)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2559AB598;
  v12[3] = &unk_279803910;
  v6 = v5;
  v13 = v6;
  LODWORD(a3) = objc_msgSend__enumerateSerializedSetsWithError_usingBlock_(self, v7, a3, v12, v8, v9);

  if (a3)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)serializedSets:(id *)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2559AB694;
  v12[3] = &unk_279803910;
  v6 = v5;
  v13 = v6;
  LODWORD(a3) = objc_msgSend__enumerateSerializedSetsWithError_usingBlock_(self, v7, a3, v12, v8, v9);

  if (a3)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (KVProfile)initWithCoder:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v6, v5, @"d", v7, v8);

  v19 = 0;
  v13 = objc_msgSend_initWithProfileData_error_(self, v10, v9, &v19, v11, v12);
  v14 = v19;
  v15 = v13;
  if (!v15)
  {
    v16 = qword_28106B3C0;
    if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "[KVProfile initWithCoder:]";
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v14;
      _os_log_error_impl(&dword_2559A5000, v16, OS_LOG_TYPE_ERROR, "%s Failed to decode profile from data: %@ error: %@", buf, 0x20u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  profileReader = self->_profileReader;
  v4 = a3;
  v13 = objc_msgSend_data(profileReader, v5, v6, v7, v8, v9);
  objc_msgSend_encodeObject_forKey_(v4, v10, v13, @"d", v11, v12);
}

- (BOOL)enumerateDatasetsWithError:(id *)a3 usingBlock:(id)a4
{
  v6 = a4;
  profileReader = self->_profileReader;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2559B4280;
  v13[3] = &unk_279803CE0;
  v14 = v6;
  v8 = v6;
  LOBYTE(a3) = objc_msgSend_enumerateDatasetsWithError_usingBlock_(profileReader, v9, a3, v13, v10, v11);

  return a3;
}

- (KVProfile)initWithProfileData:(id)a3 provider:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = KVProfile;
  v13 = [(KVProfile *)&v18 init];
  if (v13 && (objc_msgSend_profileReaderForData_error_(v9, v10, v8, a5, v11, v12), v14 = objc_claimAutoreleasedReturnValue(), profileReader = v13->_profileReader, v13->_profileReader = v14, profileReader, !v13->_profileReader))
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  return v16;
}

- (KVProfile)initWithProfileData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(KVProfileReaderFactory);
  v10 = objc_msgSend_initWithProfileData_provider_error_(self, v8, v6, v7, a4, v9);

  return v10;
}

+ (id)emptyProfile:(id *)a3
{
  v8 = objc_msgSend_syntheticWithDatasetCount_error_(KVProfileInfo, a2, 0, a3, v3, v4);
  if (v8)
  {
    v9 = objc_msgSend_builderWithProfileInfo_format_error_(KVProfileBuilder, v6, v8, 1, a3, v7);
    v14 = v9;
    if (v9)
    {
      v15 = objc_msgSend_buildWithError_(v9, v10, a3, v11, v12, v13);
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

+ (id)profileWithContentsOfURL:(id)a3 error:(id *)a4
{
  v62[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v56 = 0;
  v11 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v6, v7, v8, v9, v10);
  v17 = objc_msgSend_path(v5, v12, v13, v14, v15, v16);
  isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v11, v18, v17, &v56, v19, v20);

  if ((isDirectory & 1) == 0)
  {
    v26 = MEMORY[0x277CCA9B8];
    v61 = *MEMORY[0x277CCA450];
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"No profile exists at URL: %@", v23, v24, v25, v5);
    v62[0] = v27;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, v62, &v61, 1, v31);
    goto LABEL_5;
  }

  if (v56 == 1)
  {
    v26 = MEMORY[0x277CCA9B8];
    v59 = *MEMORY[0x277CCA450];
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"Expected file but found directory at URL: %@", v23, v24, v25, v5);
    v60 = v27;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, &v60, &v59, 1, v29);
    v32 = LABEL_5:;
    v35 = objc_msgSend_errorWithDomain_code_userInfo_(v26, v33, @"com.apple.koa.profile", 2, v32, v34);
    v36 = v35;
    v37 = 0;
    if (a4 && v35)
    {
      v38 = v35;
      v37 = 0;
      *a4 = v36;
    }

    goto LABEL_14;
  }

  v55 = 0;
  v32 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x277CBEA90], v22, v5, 8, &v55, v25);
  v27 = v55;
  if (v32)
  {
    v43 = objc_alloc(objc_opt_class());
    v36 = objc_alloc_init(KVProfileReaderFactory);
    v37 = objc_msgSend_initWithProfileData_provider_error_(v43, v44, v32, v36, a4, v45);
  }

  else
  {
    v46 = MEMORY[0x277CCA9B8];
    v57[0] = *MEMORY[0x277CCA450];
    v36 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v39, @"Failed to read profile at URL: %@", v40, v41, v42, v5);
    v57[1] = *MEMORY[0x277CCA7E8];
    v58[0] = v36;
    v58[1] = v27;
    v49 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v47, v58, v57, 2, v48);
    v52 = objc_msgSend_errorWithDomain_code_userInfo_(v46, v50, @"com.apple.koa.profile", 2, v49, v51);
    if (a4 && v52)
    {
      v52 = v52;
      *a4 = v52;
    }

    v32 = 0;
    v37 = 0;
  }

LABEL_14:

  v53 = *MEMORY[0x277D85DE8];

  return v37;
}

+ (void)initalize
{
  if (qword_28106B3B8 != -1)
  {
    dispatch_once(&qword_28106B3B8, &unk_2867B56F8);
  }
}

@end