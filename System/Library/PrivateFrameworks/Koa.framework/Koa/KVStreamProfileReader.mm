@interface KVStreamProfileReader
- (BOOL)enumerateDatasetsWithError:(id *)error usingBlock:(id)block;
- (KVStreamProfileReader)initWithData:(id)data profileInfo:(id)info offset:(unsigned int)offset;
- (NSString)description;
@end

@implementation KVStreamProfileReader

- (NSString)description
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"profile format: %@ info: %@", v2, v3, v4, @"Binary Stream", self->_profileInfo);

  return v5;
}

- (BOOL)enumerateDatasetsWithError:(id *)error usingBlock:(id)block
{
  v66 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v12 = objc_msgSend_bytes(self->_data, v7, v8, v9, v10, v11);
  offset = self->_offset;
  v19 = objc_msgSend_length(self->_data, v14, v15, v16, v17, v18);
  v20 = qword_28106B3C0;
  if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v63 = "[KVStreamProfileReader enumerateDatasetsWithError:usingBlock:]";
    v64 = 2048;
    v65 = v19;
    _os_log_impl(&dword_2559A5000, v20, OS_LOG_TYPE_INFO, "%s Linearly scanning profile data (length: %llu) for all datasets.", buf, 0x16u);
  }

  if (v19 <= offset)
  {
LABEL_14:
    v49 = 1;
  }

  else
  {
    while (1)
    {
      v23 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v21, v12 + offset, v19 - offset, 0, v22);
      v24 = [KVStreamDatasetReader alloc];
      v28 = objc_msgSend_initWithData_error_(v24, v25, v23, error, v26, v27);
      if (!v28)
      {
        break;
      }

      v29 = qword_28106B3C0;
      if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v63 = "[KVStreamProfileReader enumerateDatasetsWithError:usingBlock:]";
        v64 = 2112;
        v65 = v28;
        _os_log_impl(&dword_2559A5000, v29, OS_LOG_TYPE_INFO, "%s Reading dataset: %@", buf, 0x16u);
      }

      if ((blockCopy[2](blockCopy, v28) & 1) == 0)
      {
        break;
      }

      v35 = objc_msgSend_offset(v28, v30, v31, v32, v33, v34);
      if (!v35)
      {
        v36 = qword_28106B3C0;
        if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v63 = "[KVStreamProfileReader enumerateDatasetsWithError:usingBlock:]";
          _os_log_debug_impl(&dword_2559A5000, v36, OS_LOG_TYPE_DEBUG, "%s Dataset buffer offset not resolved, enumerating items to resolve offset.", buf, 0xCu);
        }

        if (!objc_msgSend_enumerateItemsWithError_usingBlock_(v28, v37, error, &unk_2867B5718, v38, v39))
        {
          break;
        }

        v35 = objc_msgSend_offset(v28, v40, v41, v42, v43, v44);
        if (!v35)
        {
          v50 = MEMORY[0x277CCA9B8];
          v60 = *MEMORY[0x277CCA450];
          v51 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v45, @"Cannot enumerate items in dataset: %@ aborting profile enumeration.", v46, v47, v48, v28);
          v61 = v51;
          v54 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v52, &v61, &v60, 1, v53);
          v57 = objc_msgSend_errorWithDomain_code_userInfo_(v50, v55, @"com.apple.koa.profile", 3, v54, v56);
          if (error && v57)
          {
            v57 = v57;
            *error = v57;
          }

          break;
        }
      }

      offset += v35;
      if (offset >= v19)
      {
        goto LABEL_14;
      }
    }

    v49 = 0;
  }

  v58 = *MEMORY[0x277D85DE8];
  return v49;
}

- (KVStreamProfileReader)initWithData:(id)data profileInfo:(id)info offset:(unsigned int)offset
{
  dataCopy = data;
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = KVStreamProfileReader;
  v11 = [(KVStreamProfileReader *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_data, data);
    objc_storeStrong(&v12->_profileInfo, info);
    v12->_offset = offset;
  }

  return v12;
}

@end