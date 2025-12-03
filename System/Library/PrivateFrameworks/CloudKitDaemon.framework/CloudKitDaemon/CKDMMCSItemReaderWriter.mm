@interface CKDMMCSItemReaderWriter
- (BOOL)closeWithError:(id *)error;
- (BOOL)openWithError:(id *)error;
- (BOOL)readBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesRead:(unint64_t *)read error:(id *)error;
- (BOOL)writeBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesWritten:(unint64_t *)written error:(id *)error;
- (CKDMMCSItemReaderWriter)initWithMMCSItem:(id)item MMCSRequest:(id)request downloadChunkContext:(id)context;
- (id)getFileMetadataWithError:(id *)error;
- (void)dealloc;
@end

@implementation CKDMMCSItemReaderWriter

- (CKDMMCSItemReaderWriter)initWithMMCSItem:(id)item MMCSRequest:(id)request downloadChunkContext:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  requestCopy = request;
  contextCopy = context;
  if (!itemCopy)
  {
    v20 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, a2, self, @"CKDMMCSItemReaderWriter.m", 32, @"Expected non-nil MMCS item");
  }

  v22.receiver = self;
  v22.super_class = CKDMMCSItemReaderWriter;
  v15 = [(CKDMMCSItemReaderWriter *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_MMCSItem, item);
    objc_storeStrong(&v16->_MMCSRequest, request);
    objc_storeStrong(&v16->_downloadChunkContext, context);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v24 = v16;
      _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "init, reader:%p", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "dealloc, reader:%p", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = CKDMMCSItemReaderWriter;
  [(CKDMMCSItemReaderWriter *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)openWithError:(id *)error
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_MMCSRequest(self, a2, error);
  v11 = objc_msgSend_MMCSItem(self, v7, v8);
  if (!v11)
  {
    v45 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v45, v46, a2, self, @"CKDMMCSItemReaderWriter.m", 51, @"Expected non-nil MMCS item for %@", self);
  }

  v14 = objc_msgSend_fileHandle(self, v9, v10);
  if (v14)
  {
    v47 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v47, v48, a2, self, @"CKDMMCSItemReaderWriter.m", 53, @"Expected an invalid file handle for %@", self);
  }

  v16 = objc_msgSend_operation(v6, v12, v13);
  if (v6)
  {
    v52 = 0;
    v17 = objc_msgSend_willOpenItemReaderWriter_error_(v6, v15, self, &v52);
    v18 = v52;
    v19 = v18;
    if ((v17 & 1) == 0)
    {
      if (error)
      {
        v20 = v18;
        v21 = 0;
        *error = v19;
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v19 = 0;
  }

  v22 = v19;
  v51 = v19;
  v23 = objc_msgSend_openWithOperation_error_(v11, v15, v16, &v51);
  v19 = v51;

  v21 = v23 != 0;
  if (v23)
  {
    v26 = objc_msgSend_fileHandle(v23, v24, v25);

    objc_msgSend_setFileHandle_(self, v27, v26);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v28 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v36 = v28;
      v49 = objc_msgSend_MMCSItem(self, v37, v38);
      v41 = objc_msgSend_trackingUUID(v49, v39, v40);
      v44 = objc_msgSend_itemID(v11, v42, v43);
      *buf = 138412802;
      v54 = v41;
      v55 = 2048;
      v56 = v44;
      v57 = 2048;
      v58 = v26;
      _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "open, trackingUUID:%@ itemID:%llu, handle:%p", buf, 0x20u);
    }

    v50 = 0;
    v30 = objc_msgSend_getFileMetadataWithError_(self, v29, &v50);
    v31 = v50;
    if (error)
    {
      v32 = *error;
    }

    else
    {
      v32 = 0;
    }

    v14 = v26;
    v21 = 1;
  }

  else if (error)
  {
    v33 = v19;
    v31 = 0;
    *error = v19;
    v32 = v19;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  objc_msgSend_didOpenItemReaderWriter_result_error_(v6, v24, self, v23 != 0, v32);

LABEL_22:
  v34 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)closeWithError:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_MMCSItem(self, a2, error);
  v7 = objc_msgSend_fileHandle(self, v5, v6);
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v12 = v8;
      v15 = 134218240;
      v16 = objc_msgSend_itemID(v4, v13, v14);
      v17 = 2048;
      v18 = v7;
      _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "close, itemID:%llu, handle:%p", &v15, 0x16u);
    }

    objc_msgSend_setFileHandle_(self, v9, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)getFileMetadataWithError:(id *)error
{
  v89 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_MMCSRequest(self, a2, error);
  v9 = objc_msgSend_operation(v6, v7, v8);
  v14 = objc_msgSend_MMCSItem(self, v10, v11);
  if (!v14)
  {
    v69 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v69, v70, a2, self, @"CKDMMCSItemReaderWriter.m", 101, @"Expected non-nil MMCS item for %@", self);
  }

  v17 = objc_msgSend_fileHandle(self, v12, v13);
  if (v17)
  {
    v18 = objc_msgSend_container(v9, v15, v16);
    v76 = 0;
    v20 = objc_msgSend_getFileMetadataWithContainer_fileHandle_error_(v14, v19, v18, v17, &v76);
    v21 = v76;

    v22 = *MEMORY[0x277CBC878];
    v23 = *MEMORY[0x277CBC880];
    if (v20)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v22);
      }

      v24 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        log = v24;
        v72 = objc_msgSend_itemID(v14, v39, v40);
        v75 = objc_msgSend_fileSize(v20, v41, v42);
        v71 = objc_msgSend_unsignedLongLongValue(v75, v43, v44);
        v73 = objc_msgSend_fileID(v20, v45, v46);
        v49 = objc_msgSend_unsignedLongLongValue(v73, v47, v48);
        v52 = objc_msgSend_generationID(v20, v50, v51);
        v55 = objc_msgSend_unsignedLongValue(v52, v53, v54);
        v58 = objc_msgSend_modTimeInSeconds(v20, v56, v57);
        v61 = objc_msgSend_unsignedLongLongValue(v58, v59, v60);
        *buf = 134219264;
        v78 = v72;
        v79 = 2048;
        v80 = v17;
        v81 = 2048;
        v82 = v71;
        v83 = 2048;
        v84 = v49;
        v85 = 2048;
        v86 = v55;
        v87 = 2048;
        v88 = v61;
        _os_log_debug_impl(&dword_22506F000, log, OS_LOG_TYPE_DEBUG, "stat, itemID:%llu, handle:%p, fileSize:%llu, fileID:%llu, generationID:%lu, modTime:%llu", buf, 0x3Eu);
      }

      v25 = v20;
      goto LABEL_20;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v22);
    }

    v35 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v62 = v35;
      v65 = objc_msgSend_itemID(v14, v63, v64);
      v68 = objc_msgSend_operationID(v9, v66, v67);
      *buf = 134218754;
      v78 = v65;
      v79 = 2048;
      v80 = v17;
      v81 = 2114;
      v82 = v68;
      v83 = 2112;
      v84 = v21;
      _os_log_error_impl(&dword_22506F000, v62, OS_LOG_TYPE_ERROR, "Failed to stat itemID:%llu, handle:%p, operationID:%{public}@: %@", buf, 0x2Au);

      if (!error)
      {
        goto LABEL_20;
      }
    }

    else if (!error)
    {
LABEL_20:

      goto LABEL_21;
    }

    v36 = v21;
    *error = v21;
    goto LABEL_20;
  }

  v26 = MEMORY[0x277CBC560];
  v27 = *MEMORY[0x277CBBF50];
  v28 = objc_msgSend_itemID(v14, v15, v16);
  v31 = objc_msgSend_operationID(v9, v29, v30);
  v21 = objc_msgSend_errorWithDomain_code_format_(v26, v32, v27, 1000, @"No file handle for itemID:%llu, operationID:%@", v28, v31);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v33 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v78 = v21;
    _os_log_error_impl(&dword_22506F000, v33, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    if (error)
    {
      goto LABEL_14;
    }
  }

  else if (error)
  {
LABEL_14:
    v34 = v21;
    v20 = 0;
    *error = v21;
    goto LABEL_21;
  }

  v20 = 0;
LABEL_21:

  v37 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)readBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesRead:(unint64_t *)read error:(id *)error
{
  v65 = *MEMORY[0x277D85DE8];
  v13 = objc_msgSend_MMCSRequest(self, a2, offset);
  v16 = objc_msgSend_MMCSItem(self, v14, v15);
  v21 = objc_msgSend_operation(v13, v17, v18);
  if (!v16)
  {
    v47 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v19, v20);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v47, v48, a2, self, @"CKDMMCSItemReaderWriter.m", 133, @"Expected non-nil MMCS item for %@", self);
  }

  v24 = objc_msgSend_fileHandle(self, v19, v20);
  if (!v24)
  {
    log = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v22, v23);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(log, v49, a2, self, @"CKDMMCSItemReaderWriter.m", 135, @"Expected a valid file handle for %@", self);
  }

  objc_msgSend_setIsReaderReadFrom_(v16, v22, 1);
  v27 = objc_msgSend_fileDescriptor(v24, v25, v26);
  v28 = pread(v27, bytes, length, offset);
  v29 = v28;
  if (v28 < 0)
  {
    v30 = __error();
    v31 = *v30;
    v32 = MEMORY[0x277CBC560];
    v33 = *MEMORY[0x277CBC120];
    v34 = strerror(*v30);
    v36 = objc_msgSend_errorWithDomain_code_format_(v32, v35, v33, 1000, @"pread error: %d (%s)", v31, v34);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v37 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      loga = v37;
      v43 = objc_msgSend_itemID(v16, v41, v42);
      v46 = objc_msgSend_operationID(v21, v44, v45);
      *buf = 134219266;
      v54 = v43;
      v55 = 2048;
      v56 = v24;
      v57 = 2114;
      v58 = v46;
      v59 = 2048;
      offsetCopy = offset;
      v61 = 2048;
      lengthCopy = length;
      v63 = 2112;
      v64 = v36;
      _os_log_error_impl(&dword_22506F000, loga, OS_LOG_TYPE_ERROR, "Failed to pread for itemID:%llu, handle:%p, operationID:%{public}@, offset:0x%llx, length:%llu: %@", buf, 0x3Eu);
    }

    if (error)
    {
      v38 = v36;
      *error = v36;
    }
  }

  else if (read)
  {
    *read = v28;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v29 >= 0;
}

- (BOOL)writeBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesWritten:(unint64_t *)written error:(id *)error
{
  v65 = *MEMORY[0x277D85DE8];
  v14 = objc_msgSend_MMCSRequest(self, a2, offset);
  v19 = objc_msgSend_MMCSItem(self, v15, v16);
  if (!v19)
  {
    v47 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v47, v48, a2, self, @"CKDMMCSItemReaderWriter.m", 161, @"Expected non-nil MMCS item for %@", self);
  }

  v22 = objc_msgSend_fileHandle(self, v17, v18);
  if (!v22)
  {
    v52 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v20, v21);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v52, v49, a2, self, @"CKDMMCSItemReaderWriter.m", 163, @"Expected a valid file handle for %@", self);
  }

  v23 = objc_msgSend_operation(v14, v20, v21);
  v26 = objc_msgSend_fileDescriptor(v22, v24, v25);
  v27 = pwrite(v26, bytes, length, offset);
  v28 = v27;
  if (v27 < 0)
  {
    errorCopy = error;
    v29 = __error();
    v30 = *v29;
    v31 = MEMORY[0x277CBC560];
    v32 = *MEMORY[0x277CBC120];
    v33 = strerror(*v29);
    v35 = objc_msgSend_errorWithDomain_code_format_(v31, v34, v32, 1000, @"pwrite error: %d (%s)", v30, v33);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v36 = errorCopy;
    v37 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      log = v37;
      v43 = objc_msgSend_itemID(v19, v41, v42);
      v46 = objc_msgSend_operationID(v23, v44, v45);
      *buf = 134219266;
      v54 = v43;
      v55 = 2048;
      v56 = v22;
      v57 = 2114;
      v58 = v46;
      v59 = 2048;
      offsetCopy = offset;
      v61 = 2048;
      lengthCopy = length;
      v63 = 2112;
      v64 = v35;
      _os_log_error_impl(&dword_22506F000, log, OS_LOG_TYPE_ERROR, "Failed to pwrite for itemID:%llu, handle:%p, operationID:%{public}@, offset:0x%llx, length:%llu: %@", buf, 0x3Eu);

      v36 = errorCopy;
      if (!errorCopy)
      {
        goto LABEL_13;
      }
    }

    else if (!errorCopy)
    {
LABEL_13:

      goto LABEL_14;
    }

    v38 = v35;
    *v36 = v35;
    goto LABEL_13;
  }

  if (written)
  {
    *written = v27;
  }

LABEL_14:

  v39 = *MEMORY[0x277D85DE8];
  return v28 >= 0;
}

@end