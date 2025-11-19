@interface CKDSWritableStorage
- (CKDSWritableStorage)initWithFileURL:(id)a3;
- (CKDSWritableStorage)initWithTemporaryFile:(id *)a3;
- (id)initInMemory;
- (id)readableStorage;
@end

@implementation CKDSWritableStorage

- (CKDSWritableStorage)initWithFileURL:(id)a3
{
  v4 = a3;
  v5 = [CKDSStorageFile alloc];
  isOwned = objc_msgSend_initWithURL_isOwned_(v5, v6, v4, 0, v7, v8, v9);

  v14 = objc_msgSend_initForWriting_withFile_orData_(self, v11, 1, isOwned, 0, v12, v13);
  return v14;
}

- (id)initInMemory
{
  v7 = objc_msgSend_dataWithCapacity_(MEMORY[0x277CBEB28], a2, 2048, v2, v3, v4, v5);
  v11 = objc_msgSend_initForWriting_withFile_orData_(self, v8, 1, 0, v7, v9, v10);

  return v11;
}

- (CKDSWritableStorage)initWithTemporaryFile:(id *)a3
{
  v73[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEBC0];
  v6 = NSTemporaryDirectory();
  v73[0] = v6;
  v73[1] = @"CloudKitDistributedSync";
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v73, 2, v8, v9, v10);
  v17 = objc_msgSend_fileURLWithPathComponents_(v5, v12, v11, v13, v14, v15, v16);

  v24 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v18, v19, v20, v21, v22, v23);
  v70 = 0;
  DirectoryAtURL_withIntermediateDirectories_attributes_error = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v24, v25, v17, 1, 0, &v70, v26);
  v28 = v70;

  if (DirectoryAtURL_withIntermediateDirectories_attributes_error)
  {
    v35 = MEMORY[0x277CCACA8];
    v36 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v29, v30, v31, v32, v33, v34);
    v43 = objc_msgSend_UUIDString(v36, v37, v38, v39, v40, v41, v42);
    v49 = objc_msgSend_stringWithFormat_(v35, v44, @"%@.batch", v45, v46, v47, v48, v43);

    v55 = objc_msgSend_URLByAppendingPathComponent_(v17, v50, v49, v51, v52, v53, v54);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v56 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v72 = v55;
      _os_log_debug_impl(&dword_2438A8000, v56, OS_LOG_TYPE_DEBUG, "Using temporary file %@", buf, 0xCu);
    }

    v57 = [CKDSStorageFile alloc];
    isOwned = objc_msgSend_initWithURL_isOwned_(v57, v58, v55, 1, v59, v60, v61);
    self = objc_msgSend_initForWriting_withFile_orData_(self, v63, 1, isOwned, 0, v64, v65);

    v66 = self;
  }

  else if (a3)
  {
    v67 = v28;
    v66 = 0;
    *a3 = v28;
  }

  else
  {
    v66 = 0;
  }

  v68 = *MEMORY[0x277D85DE8];
  return v66;
}

- (id)readableStorage
{
  v3 = [CKDSReadableStorage alloc];
  v10 = objc_msgSend_file(self, v4, v5, v6, v7, v8, v9);
  v17 = objc_msgSend_data(self, v11, v12, v13, v14, v15, v16);
  v21 = objc_msgSend_initForWriting_withFile_orData_(v3, v18, 0, v10, v17, v19, v20);

  return v21;
}

@end