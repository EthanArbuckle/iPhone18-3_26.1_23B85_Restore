@interface CKDMMCSTestEncryptedItemReader
- (CKDMMCSTestEncryptedItemReader)initWithMMCSItem:(id)item MMCSRequest:(id)request;
- (id)getFileMetadataWithError:(id *)error;
@end

@implementation CKDMMCSTestEncryptedItemReader

- (CKDMMCSTestEncryptedItemReader)initWithMMCSItem:(id)item MMCSRequest:(id)request
{
  v29 = *MEMORY[0x277D85DE8];
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
    v22 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CKDMMCSTestEncryptedItemReader.m", 25, @"Expected non-nil MMCS item");

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v24 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CKDMMCSTestEncryptedItemReader.m", 26, @"Expected non-nil MMCS request for %@", itemCopy);

LABEL_3:
  v26.receiver = self;
  v26.super_class = CKDMMCSTestEncryptedItemReader;
  v13 = [(CKDMMCSTestEncryptedItemReader *)&v26 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_MMCSItem, item);
    objc_storeStrong(&v14->_MMCSRequest, request);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v28 = v14;
      _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "init, reader:%p", buf, 0xCu);
    }

    v16 = [CKDMMCSItemReaderWriter alloc];
    v18 = objc_msgSend_initWithMMCSItem_MMCSRequest_downloadChunkContext_(v16, v17, itemCopy, v12, 0);
    underlyingItemReader = v14->_underlyingItemReader;
    v14->_underlyingItemReader = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)getFileMetadataWithError:(id *)error
{
  v3 = objc_msgSend_getFileMetadataWithError_(self->_underlyingItemReader, a2, error);
  if (v3)
  {
    v4 = v3;
    v5 = objc_alloc(MEMORY[0x277CBC438]);
    v8 = objc_msgSend_fileSize(v4, v6, v7);
    v10 = objc_msgSend_initWithFileSize_(v5, v9, v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end