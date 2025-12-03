@interface CKDSStorageFile
- (CKDSStorageFile)initWithURL:(id)l isOwned:(BOOL)owned;
- (void)dealloc;
@end

@implementation CKDSStorageFile

- (CKDSStorageFile)initWithURL:(id)l isOwned:(BOOL)owned
{
  lCopy = l;
  if (!lCopy)
  {
    v18 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9, v10, v11, v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, self, @"CKDSUtils.m", 25, @"Unexpected arguments");
  }

  v20.receiver = self;
  v20.super_class = CKDSStorageFile;
  v15 = [(CKDSStorageFile *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_URL, l);
    v16->_isOwned = owned;
  }

  return v16;
}

- (void)dealloc
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_URL(self, a2, v2, v3, v4, v5, v6);
  if (v8)
  {
    v15 = v8;
    isOwned = objc_msgSend_isOwned(self, v9, v10, v11, v12, v13, v14);

    if (isOwned)
    {
      v23 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v17, v18, v19, v20, v21, v22);
      v30 = objc_msgSend_URL(self, v24, v25, v26, v27, v28, v29);
      v48 = 0;
      v35 = objc_msgSend_removeItemAtURL_error_(v23, v31, v30, &v48, v32, v33, v34);
      v36 = v48;

      if ((v35 & 1) == 0)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v37 = *MEMORY[0x277CBC840];
        if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
        {
          v39 = v37;
          v46 = objc_msgSend_URL(self, v40, v41, v42, v43, v44, v45);
          *buf = 138412546;
          v50 = v46;
          v51 = 2112;
          v52 = v36;
          _os_log_error_impl(&dword_2438A8000, v39, OS_LOG_TYPE_ERROR, "Could not delete temporary file %@: %@", buf, 0x16u);
        }
      }
    }
  }

  v47.receiver = self;
  v47.super_class = CKDSStorageFile;
  [(CKDSStorageFile *)&v47 dealloc];
  v38 = *MEMORY[0x277D85DE8];
}

@end