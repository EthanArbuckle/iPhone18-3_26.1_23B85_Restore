@interface KVDatasetBuilder
- (BOOL)_finishWithError:(id *)a3;
- (KVDatasetBuilder)init;
- (KVDatasetBuilder)initWithDatasetInfo:(id)a3 writer:(id)a4 error:(id *)a5;
- (id)addItem:(id)a3 error:(id *)a4;
@end

@implementation KVDatasetBuilder

- (BOOL)_finishWithError:(id *)a3
{
  v34[1] = *MEMORY[0x277D85DE8];
  itemCount = self->_itemCount;
  if (itemCount == objc_msgSend_itemCount(self->_datasetInfo, a2, a3, v3, v4, v5))
  {
    v14 = objc_msgSend_finishDataset_(self->_writer, v9, a3, v11, v12, v13);
    writer = self->_writer;
    self->_writer = 0;

    v16 = *MEMORY[0x277D85DE8];
    return v14;
  }

  else
  {
    v18 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v19 = MEMORY[0x277CCACA8];
    v20 = objc_msgSend_itemCount(self->_datasetInfo, v9, v10, v11, v12, v13);
    v25 = objc_msgSend_stringWithFormat_(v19, v21, @"Expected %u dataset items but %u were added.", v22, v23, v24, v20, self->_itemCount);
    v34[0] = v25;
    v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v34, &v33, 1, v27);
    v31 = objc_msgSend_errorWithDomain_code_userInfo_(v18, v29, @"com.apple.koa.profile", 8, v28, v30);
    if (a3)
    {
      if (v31)
      {
        v31 = v31;
        *a3 = v31;
      }
    }

    v32 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

- (id)addItem:(id)a3 error:(id *)a4
{
  v74[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = objc_msgSend_itemType(v6, v7, v8, v9, v10, v11);
    if (v12 == objc_msgSend_itemType(self->_datasetInfo, v13, v14, v15, v16, v17))
    {
      if (objc_msgSend_addItem_error_(self->_writer, v18, v6, a4, v21, v22))
      {
        ++self->_itemCount;
        v23 = self;
        goto LABEL_11;
      }
    }

    else
    {
      v41 = MEMORY[0x277CCA9B8];
      v71 = *MEMORY[0x277CCA450];
      v42 = MEMORY[0x277CCACA8];
      v43 = objc_msgSend_itemType(v6, v18, v19, v20, v21, v22);
      if (v43 - 1 >= 0x1A)
      {
        v47 = 0;
      }

      else
      {
        v47 = v43;
      }

      v48 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v44, off_279803A58[v47], 4, v45, v46);
      v54 = objc_msgSend_itemType(self->_datasetInfo, v49, v50, v51, v52, v53);
      if (v54 - 1 >= 0x1A)
      {
        v58 = 0;
      }

      else
      {
        v58 = v54;
      }

      v59 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v55, off_279803A58[v58], 4, v56, v57);
      v64 = objc_msgSend_stringWithFormat_(v42, v60, @"Item has type %@ inconsistent with dataset itemType %@", v61, v62, v63, v48, v59);
      v72 = v64;
      v67 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v65, &v72, &v71, 1, v66);
      v70 = objc_msgSend_errorWithDomain_code_userInfo_(v41, v68, @"com.apple.koa.profile", 7, v67, v69);
      if (a4 && v70)
      {
        v70 = v70;
        *a4 = v70;
      }
    }
  }

  else
  {
    v24 = MEMORY[0x277CCA9B8];
    v73 = *MEMORY[0x277CCA450];
    v25 = MEMORY[0x277CCACA8];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v32 = objc_msgSend_stringWithFormat_(v25, v28, @"Invalid item: %@ expected %@", v29, v30, v31, v6, v27);
    v74[0] = v32;
    v35 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, v74, &v73, 1, v34);
    v38 = objc_msgSend_errorWithDomain_code_userInfo_(v24, v36, @"com.apple.koa.profile", 7, v35, v37);
    if (a4 && v38)
    {
      v38 = v38;
      *a4 = v38;
    }
  }

  v23 = 0;
LABEL_11:

  v39 = *MEMORY[0x277D85DE8];

  return v23;
}

- (KVDatasetBuilder)initWithDatasetInfo:(id)a3 writer:(id)a4 error:(id *)a5
{
  v44[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v42.receiver = self;
  v42.super_class = KVDatasetBuilder;
  v11 = [(KVDatasetBuilder *)&v42 init];
  v12 = v11;
  v13 = v11;
  if (!v11)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v11->_datasetInfo, a3);
  if (!v12->_datasetInfo)
  {
    datasetInfo = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  datasetInfo = v12->_datasetInfo;
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_10;
  }

  v21 = objc_msgSend_buffer(datasetInfo, v14, v18, v15, v16, v17);
  v27 = objc_msgSend_length(v21, v22, v23, v24, v25, v26) == 0;

  if (v27)
  {
    datasetInfo = v12->_datasetInfo;
LABEL_10:
    v32 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277CCA450];
    v33 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"Invalid DatasetInfo: %@", v15, v16, v17, datasetInfo);
    v44[0] = v33;
    v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v34, v44, &v43, 1, v35);
    v39 = objc_msgSend_errorWithDomain_code_userInfo_(v32, v37, @"com.apple.koa.profile", 6, v36, v38);
    if (a5 && v39)
    {
      v39 = v39;
      *a5 = v39;
    }

    goto LABEL_14;
  }

  objc_storeStrong(&v12->_writer, a4);
  if (!objc_msgSend_startDataset_error_(v12->_writer, v28, v9, a5, v29, v30))
  {
LABEL_14:
    v31 = 0;
    goto LABEL_15;
  }

  v13->_itemCount = 0;
LABEL_7:
  v31 = v13;
LABEL_15:

  v40 = *MEMORY[0x277D85DE8];
  return v31;
}

- (KVDatasetBuilder)init
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], a2, *MEMORY[0x277CBE658], @"init unsupported", MEMORY[0x277CBEC10], v2);
  objc_exception_throw(v3);
}

@end