@interface KVStreamDatasetReader
- (BOOL)enumerateItemsWithError:(id *)a3 usingBlock:(id)a4;
- (KVStreamDatasetReader)initWithData:(id)a3 error:(id *)a4;
- (NSString)description;
@end

@implementation KVStreamDatasetReader

- (NSString)description
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"dataset format: %@ info: %@", v2, v3, v4, @"Binary Stream", self->_datasetInfo);

  return v5;
}

- (BOOL)enumerateItemsWithError:(id *)a3 usingBlock:(id)a4
{
  v73[1] = *MEMORY[0x277D85DE8];
  v69 = a4;
  v10 = objc_msgSend_buffer(self->_datasetInfo, v5, v6, v7, v8, v9);
  self->_offset = objc_msgSend_length(v10, v11, v12, v13, v14, v15) + 4;

  v21 = objc_msgSend_itemCount(self->_datasetInfo, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_bytes(self->_data, v22, v23, v24, v25, v26);
  v33 = objc_msgSend_length(self->_data, v28, v29, v30, v31, v32);
  if (!v21)
  {
LABEL_11:
    v39 = 1;
    goto LABEL_23;
  }

  v38 = v33;
  v39 = 0;
  v40 = 1;
  v41 = v21;
  while (1)
  {
    offset = self->_offset;
    v43 = *(v27 + offset);
    if (v38 - offset < v43)
    {
      v50 = MEMORY[0x277CCA9B8];
      v72 = *MEMORY[0x277CCA450];
      v51 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v34, @"Size prefix indicates item length %u exceeding remaining profile buffer length %llu.", v35, v36, v37, v43, v38);
      v73[0] = v51;
      v54 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v52, v73, &v72, 1, v53);
      v57 = objc_msgSend_errorWithDomain_code_userInfo_(v50, v55, @"com.apple.koa.profile", 10, v54, v56);
      if (a3 && v57)
      {
        v57 = v57;
        *a3 = v57;
      }

      goto LABEL_20;
    }

    if (v43 >= 0xC801)
    {
      v58 = MEMORY[0x277CCA9B8];
      v70 = *MEMORY[0x277CCA450];
      v59 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v34, @"Size prefix indicates item length %u exceeding max item length %u.", v35, v36, v37, v43, 51200);
      v71 = v59;
      v62 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v60, &v71, &v70, 1, v61);
      v65 = objc_msgSend_errorWithDomain_code_userInfo_(v58, v63, @"com.apple.koa.profile", 7, v62, v64);
      if (a3 && v65)
      {
        v65 = v65;
        *a3 = v65;
      }

LABEL_20:
      self->_offset = 0;
      goto LABEL_23;
    }

    v44 = (offset + 4);
    self->_offset = v44;
    v45 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v34, v27 + v44, v43, 0, v37);
    self->_offset += v43;
    v46 = [KVItem alloc];
    v48 = objc_msgSend_initWithBuffer_verify_copy_error_(v46, v47, v45, 1, 1, a3);
    if (!v48)
    {
      goto LABEL_22;
    }

    if ((v69[2](v69, v48) & 1) == 0)
    {
      break;
    }

    v39 = v40++ >= v21;
    if (!--v41)
    {
      goto LABEL_11;
    }
  }

  self->_offset = 0;
LABEL_22:

LABEL_23:
  v66 = *MEMORY[0x277D85DE8];
  return v39;
}

- (KVStreamDatasetReader)initWithData:(id)a3 error:(id *)a4
{
  v7 = a3;
  v18.receiver = self;
  v18.super_class = KVStreamDatasetReader;
  v8 = [(KVStreamDatasetReader *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_data, a3);
    v10 = [KVDatasetInfo alloc];
    v14 = objc_msgSend_initWithSizePrefixedBuffer_error_(v10, v11, v7, a4, v12, v13);
    datasetInfo = v9->_datasetInfo;
    v9->_datasetInfo = v14;

    if (!v9->_datasetInfo)
    {
      v16 = 0;
      goto LABEL_6;
    }

    v9->_offset = 0;
  }

  v16 = v9;
LABEL_6:

  return v16;
}

@end