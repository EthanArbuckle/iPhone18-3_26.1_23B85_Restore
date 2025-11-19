@interface CKDMMCSItemCommandWriter
- (BOOL)isContiguous;
- (BOOL)readBytesAtOffset:(unint64_t)a3 bytes:(char *)a4 length:(unint64_t)a5 bytesRead:(unint64_t *)a6 error:(id *)a7;
- (BOOL)writeBytesAtOffset:(unint64_t)a3 bytes:(char *)a4 length:(unint64_t)a5 bytesWritten:(unint64_t *)a6 error:(id *)a7;
- (CKDMMCSItemCommandWriter)initWithMMCSItem:(id)a3 MMCSRequest:(id)a4;
- (id)getFileMetadataWithError:(id *)a3;
- (void)dealloc;
@end

@implementation CKDMMCSItemCommandWriter

- (CKDMMCSItemCommandWriter)initWithMMCSItem:(id)a3 MMCSRequest:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
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
    v22 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CKDMMCSItemCommandWriter.m", 27, @"Expected non-nil MMCS item");

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v24 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CKDMMCSItemCommandWriter.m", 28, @"Expected non-nil MMCS request for %@", v8);

LABEL_3:
  v26.receiver = self;
  v26.super_class = CKDMMCSItemCommandWriter;
  v13 = [(CKDMMCSItemCommandWriter *)&v26 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_MMCSItem, a3);
    objc_storeStrong(&v14->_MMCSRequest, a4);
    v17 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v15, v16);
    byteRanges = v14->_byteRanges;
    v14->_byteRanges = v17;

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v28 = v14;
      _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "init, reader:%p", buf, 0xCu);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v14;
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
    v7 = self;
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "dealloc, reader:%p", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = CKDMMCSItemCommandWriter;
  [(CKDMMCSItemCommandWriter *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)getFileMetadataWithError:(id *)a3
{
  if (a3)
  {
    *a3 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], 1, @"getFileMetadataWithError not implemented");
  }

  return 0;
}

- (BOOL)readBytesAtOffset:(unint64_t)a3 bytes:(char *)a4 length:(unint64_t)a5 bytesRead:(unint64_t *)a6 error:(id *)a7
{
  if (a7)
  {
    *a7 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], 1, @"readBytesAtOffset not implemented", a6);
  }

  return 0;
}

- (BOOL)isContiguous
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  byteRanges = self->_byteRanges;
  maximumLength = self->_maximumLength;
  CKNSIndexSet_enumerateInverseRangesInRange_options_usingBlock();
  v4 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return (v4 & 1) == 0;
}

- (BOOL)writeBytesAtOffset:(unint64_t)a3 bytes:(char *)a4 length:(unint64_t)a5 bytesWritten:(unint64_t *)a6 error:(id *)a7
{
  v36 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_containsIndexesInRange_(self->_byteRanges, a2, a3, a5))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v30 = v14;
      v37.location = a3;
      v37.length = a5;
      v31 = NSStringFromRange(v37);
      *buf = 138543362;
      v35 = v31;
      _os_log_error_impl(&dword_22506F000, v30, OS_LOG_TYPE_ERROR, "range %{public}@ overlaps with previous range", buf, 0xCu);
    }
  }

  objc_msgSend_addIndexesInRange_(self->_byteRanges, v13, a3, a5);
  if (self->_maximumLength < a5 + a3)
  {
    self->_maximumLength = a5 + a3;
  }

  v16 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v15, a4, a5);
  v18 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v17, a3);
  v32[0] = @"Data";
  v32[1] = @"Offset";
  v33[0] = v16;
  v33[1] = v18;
  v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v33, v32, 2);
  v23 = objc_msgSend_MMCSRequest(self, v21, v22);
  v26 = objc_msgSend_MMCSItem(self, v24, v25);
  objc_msgSend_handleCommand_forItem_(v23, v27, v20, v26);

  if (a6)
  {
    *a6 = a5;
  }

  if (a7)
  {
    *a7 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return 1;
}

@end