@interface CKDMMCSClientProxyItemReader
- (BOOL)readBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesRead:(unint64_t *)read error:(id *)error;
- (BOOL)writeBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesWritten:(unint64_t *)written error:(id *)error;
- (CKDMMCSClientProxyItemReader)initWithMMCSItem:(id)item MMCSRequest:(id)request;
- (id)getFileMetadataWithError:(id *)error;
@end

@implementation CKDMMCSClientProxyItemReader

- (CKDMMCSClientProxyItemReader)initWithMMCSItem:(id)item MMCSRequest:(id)request
{
  itemCopy = item;
  requestCopy = request;
  v12 = requestCopy;
  if (itemCopy)
  {
    if (requestCopy)
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
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, self, @"CKDMMCSClientProxyItemReader.m", 29, @"Expected non-nil MMCS request for %@", itemCopy);

LABEL_3:
  v20.receiver = self;
  v20.super_class = CKDMMCSClientProxyItemReader;
  v13 = [(CKDMMCSClientProxyItemReader *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_MMCSItem, item);
    objc_storeStrong(&v14->_MMCSRequest, request);
  }

  return v14;
}

- (id)getFileMetadataWithError:(id *)error
{
  v7 = objc_msgSend_MMCSItem(self, a2, error);
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

- (BOOL)readBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesRead:(unint64_t *)read error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  v14 = objc_msgSend_MMCSRequest(self, a2, offset);
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
  v27 = objc_msgSend_readBytesOfInMemoryAssetContentWithContainer_offset_length_error_(v22, v26, v25, offset, length, &v47);
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

      if (!error)
      {
        goto LABEL_14;
      }
    }

    else if (!error)
    {
      goto LABEL_14;
    }

    v35 = v28;
    *error = v28;
    goto LABEL_14;
  }

  v31 = objc_msgSend_length(v27, v29, v30);
  if (v31 >= length)
  {
    lengthCopy = length;
    objc_msgSend_getBytes_length_(v27, v32, bytes, length);
  }

  else
  {
    lengthCopy = v31;
    objc_msgSend_getBytes_length_(v27, v32, bytes, v31);
  }

  if (read)
  {
    *read = lengthCopy;
  }

LABEL_14:

  v36 = *MEMORY[0x277D85DE8];
  return v27 != 0;
}

- (BOOL)writeBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesWritten:(unint64_t *)written error:(id *)error
{
  v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, offset, bytes, length, written);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CKDMMCSClientProxyItemReader.m", 80, @"Writing not supported");

  if (error)
  {
    *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBC120], 3001, @"Writing not supported");
  }

  return 0;
}

@end