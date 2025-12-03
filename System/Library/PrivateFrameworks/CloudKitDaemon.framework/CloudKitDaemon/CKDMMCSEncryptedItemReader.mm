@interface CKDMMCSEncryptedItemReader
- (BOOL)closeWithError:(id *)error;
- (BOOL)openWithError:(id *)error;
- (BOOL)readBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesRead:(unint64_t *)read error:(id *)error;
- (BOOL)writeBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesWritten:(unint64_t *)written error:(id *)error;
- (CKDMMCSEncryptedItemReader)initWithMMCSItem:(id)item MMCSRequest:(id)request;
- (id)getFileMetadataWithError:(id *)error;
- (void)dealloc;
@end

@implementation CKDMMCSEncryptedItemReader

- (CKDMMCSEncryptedItemReader)initWithMMCSItem:(id)item MMCSRequest:(id)request
{
  itemCopy = item;
  requestCopy = request;
  v12.receiver = self;
  v12.super_class = CKDMMCSEncryptedItemReader;
  v9 = [(CKDMMCSEncryptedItemReader *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_MMCSItem, item);
    objc_storeStrong(&v10->_MMCSRequest, request);
  }

  return v10;
}

- (void)dealloc
{
  objc_msgSend_closeWithError_(self, a2, 0);
  v3.receiver = self;
  v3.super_class = CKDMMCSEncryptedItemReader;
  [(CKDMMCSEncryptedItemReader *)&v3 dealloc];
}

- (BOOL)openWithError:(id *)error
{
  v134 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_MMCSRequest(self, a2, error);
  v11 = objc_msgSend_MMCSItem(self, v7, v8);
  if (!v11)
  {
    v110 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v110, v111, a2, self, @"CKDMMCSEncryptedItemReader.m", 52, @"Expected non-nil MMCS item for %@", self);
  }

  v14 = objc_msgSend_handle(self, v9, v10);
  v123 = v14;
  if (v14)
  {
    v112 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v112, v113, a2, self, @"CKDMMCSEncryptedItemReader.m", 54, @"Expected an invalid handle for %@", self);
  }

  v15 = objc_msgSend_fileURL(v11, v12, v13);
  v18 = objc_msgSend_path(v15, v16, v17);

  v21 = objc_msgSend_operation(v6, v19, v20);
  v122 = 0;
  v23 = objc_msgSend_openWithOperation_error_(v11, v22, v21, &v122);
  v24 = v122;
  v27 = v24;
  if (v23)
  {
    errorCopy = error;
    v28 = objc_msgSend_fileHandle(v23, v25, v26);
    v31 = objc_msgSend_encryptedFileHandle(v23, v29, v30);
    v34 = v31;
    v121 = v21;
    if (!v28 || !v31 || (objc_msgSend_fileDescriptor(v31, v32, v33) & 0x80000000) != 0)
    {
      *v117 = v6;
      v119 = v11;
      v38 = MEMORY[0x277CBC560];
      v39 = *MEMORY[0x277CBC120];
      v40 = objc_msgSend_fileHandle(v23, v32, v33);
      v115 = v23;
      v43 = objc_msgSend_encryptedFileHandle(v23, v41, v42);
      v44 = v39;
      v45 = v18;
      v47 = objc_msgSend_errorWithDomain_code_path_format_(v38, v46, v44, 3001, v18, @"Invalid file handles, fileHandle:%@, encryptedFileHandle:%@", v40, v43);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v48 = *MEMORY[0x277CBC830];
      v6 = *v117;
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v76 = v48;
        v79 = objc_msgSend_itemID(v119, v77, v78);
        v82 = objc_msgSend_operationID(v121, v80, v81);
        *buf = 134218754;
        v125 = v79;
        v18 = v45;
        v126 = 2048;
        v127 = v14;
        v128 = 2114;
        v129 = v82;
        v130 = 2112;
        *v131 = v47;
        _os_log_error_impl(&dword_22506F000, v76, OS_LOG_TYPE_ERROR, "Failed to open itemID:%llu, handle:%p, operationID:%{public}@: %@", buf, 0x2Au);

        v6 = *v117;
      }

      if (errorCopy)
      {
        v49 = v47;
        v50 = v47;
        v51 = 0;
        *errorCopy = v47;
        v11 = v119;
        v21 = v121;
      }

      else
      {
        v51 = 0;
        v11 = v119;
        v21 = v121;
        v49 = v47;
      }

      v23 = v115;
      goto LABEL_22;
    }

    v114 = v18;
    if ((objc_msgSend_fileDescriptor(v28, v32, v33) & 0x80000000) != 0)
    {
      v116 = -1;
    }

    else
    {
      v37 = objc_msgSend_fileDescriptor(v28, v35, v36);
      v116 = dup(v37);
      if (v116 < 0)
      {
        v118 = -1;
        goto LABEL_28;
      }
    }

    v55 = objc_msgSend_fileDescriptor(v34, v35, v36);
    v118 = dup(v55);
    if ((v118 & 0x80000000) == 0)
    {
      v58 = 0;
      v59 = 1;
      goto LABEL_29;
    }

LABEL_28:
    v59 = 0;
    v58 = *__error();
LABEL_29:
    if ((objc_msgSend_fileDescriptor(v28, v56, v57) & 0x80000000) == 0)
    {
      objc_msgSend_closeFile(v28, v60, v61);
    }

    if ((objc_msgSend_fileDescriptor(v34, v60, v61) & 0x80000000) == 0)
    {
      objc_msgSend_closeFile(v34, v62, v63);
    }

    if (v59)
    {
      v64 = v118;
      v65 = MKBBackupCreateFromFileDescriptors();
      if (v65)
      {
        v18 = v114;
        v49 = objc_msgSend_errorWithDomain_code_path_format_(MEMORY[0x277CBC560], v66, *MEMORY[0x277CBC120], 3001, v114, @"MKBBackupCreateFromFileDescriptors failed with rc:%d", v65);

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v67 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v90 = v67;
          v93 = objc_msgSend_itemID(v11, v91, v92);
          v94 = v11;
          v95 = v6;
          v96 = v123;
          v99 = objc_msgSend_operationID(v121, v97, v98);
          *buf = 134219266;
          v125 = v93;
          v126 = 2048;
          v127 = v96;
          v6 = v95;
          v11 = v94;
          v64 = v118;
          v128 = 2114;
          v129 = v99;
          v130 = 1024;
          *v131 = v116;
          *&v131[4] = 1024;
          *&v131[6] = v118;
          v132 = 2114;
          v133 = v49;
          _os_log_error_impl(&dword_22506F000, v90, OS_LOG_TYPE_ERROR, "MKBBackupCreateFromFileDescriptors failed for itemID:%llu, handle:%p, operationID:%{public}@, fd:%d, efd:%d: %{public}@", buf, 0x36u);

          v18 = v114;
        }

        close(v64);
        if ((v116 & 0x80000000) == 0)
        {
          close(v116);
        }

        v34 = 0;
        v28 = 0;
        v51 = 0;
      }

      else
      {
        objc_msgSend_setHandle_(self, v66, v123);
        v18 = v114;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v75 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v100 = v75;
          v103 = objc_msgSend_itemID(v11, v101, v102);
          v104 = v11;
          v105 = v6;
          v106 = v123;
          v21 = v121;
          v109 = objc_msgSend_operationID(v121, v107, v108);
          *buf = 134219010;
          v125 = v103;
          v126 = 2048;
          v127 = v106;
          v6 = v105;
          v11 = v104;
          v128 = 2114;
          v129 = v109;
          v130 = 1024;
          *v131 = v116;
          *&v131[4] = 1024;
          *&v131[6] = v118;
          _os_log_debug_impl(&dword_22506F000, v100, OS_LOG_TYPE_DEBUG, "open, itemID:%llu, handle:%p, operationID:%{public}@, fd:%d, efd:%d", buf, 0x2Cu);

          v18 = v114;
          v34 = 0;
          v28 = 0;
          v51 = 1;
          v49 = v27;
          goto LABEL_22;
        }

        v34 = 0;
        v28 = 0;
        v51 = 1;
        v49 = v27;
      }

      v21 = v121;
LABEL_22:

      v27 = v49;
      goto LABEL_23;
    }

    v68 = MEMORY[0x277CBC560];
    v69 = *MEMORY[0x277CBC120];
    v70 = strerror(v58);
    v71 = v69;
    v18 = v114;
    v49 = objc_msgSend_errorWithDomain_code_path_format_(v68, v72, v71, 3001, v114, @"dup failed, %d (%s)", v58, v70);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v73 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v83 = v73;
      v86 = objc_msgSend_itemID(v11, v84, v85);
      v89 = objc_msgSend_operationID(v121, v87, v88);
      *buf = 134218754;
      v125 = v86;
      v126 = 2048;
      v127 = v14;
      v128 = 2114;
      v129 = v89;
      v130 = 2112;
      *v131 = v49;
      _os_log_error_impl(&dword_22506F000, v83, OS_LOG_TYPE_ERROR, "Failed to dup file descriptors for itemID:%llu, handle:%p, operationID:%{public}@: %@", buf, 0x2Au);

      v18 = v114;
      if (!errorCopy)
      {
        goto LABEL_47;
      }
    }

    else if (!errorCopy)
    {
LABEL_47:
      v21 = v121;
      if ((v118 & 0x80000000) == 0)
      {
        close(v118);
      }

      if ((v116 & 0x80000000) == 0)
      {
        close(v116);
      }

      v34 = 0;
      v28 = 0;
      v51 = 0;
      goto LABEL_22;
    }

    v74 = v49;
    *errorCopy = v49;
    goto LABEL_47;
  }

  if (error)
  {
    v52 = v24;
    v51 = 0;
    *error = v27;
  }

  else
  {
    v51 = 0;
  }

LABEL_23:

  v53 = *MEMORY[0x277D85DE8];
  return v51;
}

- (BOOL)closeWithError:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_MMCSItem(self, a2, error);
  v7 = objc_msgSend_handle(self, v5, v6);
  if (v7)
  {
    v8 = v7;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v13 = v9;
      *buf = 134218240;
      v17 = objc_msgSend_itemID(v4, v14, v15);
      v18 = 2048;
      v19 = v8;
      _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "close, itemID:%llu, handle:%p", buf, 0x16u);
    }

    MKBBackupClose();
    objc_msgSend_setHandle_(self, v10, 0);
  }

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)getFileMetadataWithError:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_MMCSItem(self, a2, error);
  if (!v7)
  {
    v23 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v24, a2, self, @"CKDMMCSEncryptedItemReader.m", 135, @"Expected non-nil MMCS item for %@", self);
  }

  v10 = objc_msgSend_handle(self, v5, v6);
  if (!v10)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKDMMCSEncryptedItemReader.m", 137, @"Expected a valid handle for %@", self);
  }

  v11 = MKBBackupSize();
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v12 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v20 = v12;
    *buf = 134218496;
    v28 = objc_msgSend_itemID(v7, v21, v22);
    v29 = 2048;
    v30 = v10;
    v31 = 2048;
    v32 = v11;
    _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "stat, itemID:%llu, handle:%p, fileSize:%lld", buf, 0x20u);
  }

  v13 = objc_alloc(MEMORY[0x277CBC438]);
  v15 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v14, v11);
  v17 = objc_msgSend_initWithFileSize_(v13, v16, v15);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)readBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesRead:(unint64_t *)read error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  v13 = objc_msgSend_MMCSRequest(self, a2, offset);
  v18 = objc_msgSend_MMCSItem(self, v14, v15);
  if (!v18)
  {
    v38 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v17);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v38, v39, a2, self, @"CKDMMCSEncryptedItemReader.m", 149, @"Expected non-nil MMCS item for %@", self);
  }

  v21 = objc_msgSend_handle(self, v16, v17);
  if (!v21)
  {
    log = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v19, v20);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(log, v40, a2, self, @"CKDMMCSEncryptedItemReader.m", 151, @"Expected a valid handle for %@", self);
  }

  v22 = objc_msgSend_operation(v13, v19, v20);
  objc_msgSend_setIsReaderReadFrom_(v18, v23, 1);
  v24 = MKBBackupPread();
  v26 = v24;
  if ((v24 & 0x8000000000000000) != 0)
  {
    v27 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v25, *MEMORY[0x277CBC120], 1000, @"MKBBackupPread failed");
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v28 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      loga = v28;
      v34 = objc_msgSend_itemID(v18, v32, v33);
      objc_msgSend_operationID(v22, v35, v36);
      *buf = 134219266;
      v44 = v34;
      v45 = 2048;
      v46 = v21;
      v48 = v47 = 2114;
      v37 = v48;
      v49 = 2048;
      offsetCopy = offset;
      v51 = 2048;
      lengthCopy = length;
      v53 = 2114;
      v54 = v27;
      _os_log_error_impl(&dword_22506F000, loga, OS_LOG_TYPE_ERROR, "MKBBackupPread failed for itemID:%llu, handle:%p, operationID:%{public}@, offset:0x%llx, length:%llu: %{public}@", buf, 0x3Eu);

      if (!error)
      {
        goto LABEL_13;
      }
    }

    else if (!error)
    {
      goto LABEL_13;
    }

    v29 = v27;
    *error = v27;
    goto LABEL_13;
  }

  v27 = 0;
  if (read)
  {
    *read = v24;
  }

LABEL_13:

  v30 = *MEMORY[0x277D85DE8];
  return v26 >= 0;
}

- (BOOL)writeBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesWritten:(unint64_t *)written error:(id *)error
{
  v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, offset, bytes, length, written);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CKDMMCSEncryptedItemReader.m", 176, @"writing not supported");

  if (error)
  {
    *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBC120], 3001, @"write not supported");
  }

  return 0;
}

@end