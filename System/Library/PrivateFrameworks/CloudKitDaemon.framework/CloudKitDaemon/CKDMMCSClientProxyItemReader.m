@interface CKDMMCSClientProxyItemReader
- (BOOL)readBytesAtOffset:(unint64_t)a3 bytes:(char *)a4 length:(unint64_t)a5 bytesRead:(unint64_t *)a6 error:(id *)a7;
- (BOOL)writeBytesAtOffset:(unint64_t)a3 bytes:(char *)a4 length:(unint64_t)a5 bytesWritten:(unint64_t *)a6 error:(id *)a7;
- (CKDMMCSClientProxyItemReader)initWithMMCSItem:(id)a3 MMCSRequest:(id)a4;
- (id)getFileMetadataWithError:(id *)a3;
@end

@implementation CKDMMCSClientProxyItemReader

- (CKDMMCSClientProxyItemReader)initWithMMCSItem:(id)a3 MMCSRequest:(id)a4
{
  v8 = a3;
  v9 = a4;
  v12 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CKDMMCSClientProxyItemReader.m", 28, @"Expected non-nil MMCS item");

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v18 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, self, @"CKDMMCSClientProxyItemReader.m", 29, @"Expected non-nil MMCS request for %@", v8);

LABEL_3:
  v20.receiver = self;
  v20.super_class = CKDMMCSClientProxyItemReader;
  v13 = [(CKDMMCSClientProxyItemReader *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_MMCSItem, a3);
    objc_storeStrong(&v14->_MMCSRequest, a4);
  }

  return v14;
}

- (id)getFileMetadataWithError:(id *)a3
{
  v7 = objc_msgSend_MMCSItem(self, a2, a3);
  if (!v7)
  {
    v21 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v22, a2, self, @"CKDMMCSClientProxyItemReader.m", 47, @"Expected non-nil MMCS item for %@", self);
  }

  v8 = objc_alloc(MEMORY[0x277CBC438]);
  v9 = MEMORY[0x277CCABB0];
  v12 = objc_msgSend_asset(v7, v10, v11);
  v15 = objc_msgSend_size(v12, v13, v14);
  v17 = objc_msgSend_numberWithUnsignedLongLong_(v9, v16, v15);
  v19 = objc_msgSend_initWithFileSize_(v8, v18, v17);

  return v19;
}

- (BOOL)readBytesAtOffset:(unint64_t)a3 bytes:(char *)a4 length:(unint64_t)a5 bytesRead:(unint64_t *)a6 error:(id *)a7
{
  v54 = *MEMORY[0x277D85DE8];
  v14 = objc_msgSend_MMCSRequest(self, a2, a3);
  v17 = objc_msgSend_operation(v14, v15, v16);
  v22 = objc_msgSend_MMCSItem(self, v18, v19);
  if (!v22)
  {
    v46 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v20, v21);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v46, v45, a2, self, @"CKDMMCSClientProxyItemReader.m", 58, @"Expected non-nil MMCS item for %@", self);
  }

  objc_msgSend_setIsReaderReadFrom_(v22, v20, 1);
  v25 = objc_msgSend_container(v17, v23, v24);
  v47 = 0;
  v27 = objc_msgSend_readBytesOfInMemoryAssetContentWithContainer_offset_length_error_(v22, v26, v25, a3, a5, &v47);
  v28 = v47;

  if (!v27)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v34 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v38 = v34;
      v41 = objc_msgSend_itemID(v22, v39, v40);
      v44 = objc_msgSend_operationID(v17, v42, v43);
      *buf = 134218498;
      v49 = v41;
      v50 = 2114;
      v51 = v44;
      v52 = 2112;
      v53 = v28;
      _os_log_error_impl(&dword_22506F000, v38, OS_LOG_TYPE_ERROR, "Failed to read bytes itemID:%llu, operationID:%{public}@: %@", buf, 0x20u);

      if (!a7)
      {
        goto LABEL_14;
      }
    }

    else if (!a7)
    {
      goto LABEL_14;
    }

    v35 = v28;
    *a7 = v28;
    goto LABEL_14;
  }

  v31 = objc_msgSend_length(v27, v29, v30);
  if (v31 >= a5)
  {
    v33 = a5;
    objc_msgSend_getBytes_length_(v27, v32, a4, a5);
  }

  else
  {
    v33 = v31;
    objc_msgSend_getBytes_length_(v27, v32, a4, v31);
  }

  if (a6)
  {
    *a6 = v33;
  }

LABEL_14:

  v36 = *MEMORY[0x277D85DE8];
  return v27 != 0;
}

- (BOOL)writeBytesAtOffset:(unint64_t)a3 bytes:(char *)a4 length:(unint64_t)a5 bytesWritten:(unint64_t *)a6 error:(id *)a7
{
  v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5, a6);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CKDMMCSClientProxyItemReader.m", 80, @"Writing not supported");

  if (a7)
  {
    *a7 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBC120], 3001, @"Writing not supported");
  }

  return 0;
}

@end