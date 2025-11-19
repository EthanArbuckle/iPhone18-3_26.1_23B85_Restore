@interface KVProfileBuilder
+ (void)initalize;
- (BOOL)_finishWithError:(id *)a3;
- (KVProfileBuilder)init;
- (id)_buildWithError:(id *)a3;
- (id)addDataset:(id)a3 error:(id *)a4;
- (id)buildWithError:(id *)a3;
- (id)finishWritingWithError:(id *)a3;
@end

@implementation KVProfileBuilder

- (id)buildWithError:(id *)a3
{
  v7 = objc_msgSend__buildWithError_(self, a2, a3, v3, v4, v5);
  if (v7)
  {
    v8 = [KVProfile alloc];
    v12 = objc_msgSend_initWithProfileData_error_(v8, v9, v7, a3, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_buildWithError:(id *)a3
{
  v36[2] = *MEMORY[0x277D85DE8];
  if (objc_msgSend__finishWithError_(self, a2, a3, v3, v4, v5))
  {
    fileURL = self->_fileURL;
    if (fileURL)
    {
      v34 = 0;
      v13 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x277CBEA90], v8, fileURL, 8, &v34, v11);
      v18 = v34;
      if (!v13)
      {
        v19 = MEMORY[0x277CCA9B8];
        v35[0] = *MEMORY[0x277CCA450];
        v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"Failed to load built profile from URL: %@", v15, v16, v17, self->_fileURL);
        v35[1] = *MEMORY[0x277CCA7E8];
        v36[0] = v20;
        v36[1] = v18;
        v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v36, v35, 2, v22);
        v26 = objc_msgSend_errorWithDomain_code_userInfo_(v19, v24, @"com.apple.koa.profile", 2, v23, v25);
        if (a3 && v26)
        {
          v26 = v26;
          *a3 = v26;
        }
      }
    }

    else
    {
      v13 = objc_msgSend_propertyForKey_(self->_stream, v8, *MEMORY[0x277CBE740], v9, v10, v11);
    }

    objc_msgSend_close(self->_stream, v27, v28, v29, v30, v31);
  }

  else
  {
    v13 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)_finishWithError:(id *)a3
{
  v34[1] = *MEMORY[0x277D85DE8];
  if (!self->_writer)
  {
LABEL_11:
    LOBYTE(v9) = 0;
    goto LABEL_12;
  }

  activeDataset = self->_activeDataset;
  if (activeDataset)
  {
    v9 = objc_msgSend__finishWithError_(activeDataset, a2, a3, v3, v4, v5);
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  datasetCount = self->_datasetCount;
  if (datasetCount != objc_msgSend_datasetCount(self->_profileInfo, a2, a3, v3, v4, v5))
  {
    v17 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v18 = MEMORY[0x277CCACA8];
    v19 = objc_msgSend_datasetCount(self->_profileInfo, v11, v12, v13, v14, v15);
    v24 = objc_msgSend_stringWithFormat_(v18, v20, @"Expected %u datasets but %u were added.", v21, v22, v23, v19, self->_datasetCount);
    v34[0] = v24;
    v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v34, &v33, 1, v26);
    v30 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v28, @"com.apple.koa.profile", 9, v27, v29);
    if (a3 && v30)
    {
      v30 = v30;
      *a3 = v30;
    }

    goto LABEL_11;
  }

  v9 = objc_msgSend_finishProfile_(self->_writer, v11, a3, v13, v14, v15);
  if (v9)
  {
    writer = self->_writer;
    self->_writer = 0;

    LOBYTE(v9) = 1;
  }

LABEL_12:
  v31 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)addDataset:(id)a3 error:(id *)a4
{
  v10 = a3;
  if (self->_writer && ((activeDataset = self->_activeDataset) == 0 || (objc_msgSend__finishWithError_(activeDataset, v6, a4, v7, v8, v9) & 1) != 0) && (v12 = [KVDatasetBuilder alloc], v15 = objc_msgSend_initWithDatasetInfo_writer_error_(v12, v13, v10, self->_writer, a4, v14), v16 = self->_activeDataset, self->_activeDataset = v15, v16, (v17 = self->_activeDataset) != 0))
  {
    ++self->_datasetCount;
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (KVProfileBuilder)init
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], a2, *MEMORY[0x277CBE658], @"init unsupported", MEMORY[0x277CBEC10], v2);
  objc_exception_throw(v3);
}

+ (void)initalize
{
  if (qword_28106B3B8 != -1)
  {
    dispatch_once(&qword_28106B3B8, &unk_2867B56F8);
  }
}

- (id)finishWritingWithError:(id *)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (self->_fileURL)
  {
    if (objc_msgSend__finishWithError_(self, a2, a3, v3, v4, v5))
    {
      v13 = objc_msgSend__fileURL(self, v8, v9, v10, v11, v12);
      goto LABEL_9;
    }
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"Cannot finish writing with in-memory profile builder. use FileWriter class category to initialize builder.";
    v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v22, &v21, 1, v5);
    v18 = objc_msgSend_errorWithDomain_code_userInfo_(v14, v16, @"com.apple.koa.profile", 2, v15, v17);
    if (a3 && v18)
    {
      v18 = v18;
      *a3 = v18;
    }
  }

  v13 = 0;
LABEL_9:
  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

@end