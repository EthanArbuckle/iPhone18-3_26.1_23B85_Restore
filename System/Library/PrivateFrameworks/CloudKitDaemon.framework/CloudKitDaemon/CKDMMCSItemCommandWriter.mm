@interface CKDMMCSItemCommandWriter
- (BOOL)isContiguous;
- (BOOL)readBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesRead:(unint64_t *)read error:(id *)error;
- (BOOL)writeBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesWritten:(unint64_t *)written error:(id *)error;
- (CKDMMCSItemCommandWriter)initWithMMCSItem:(id)item MMCSRequest:(id)request;
- (id)getFileMetadataWithError:(id *)error;
- (void)dealloc;
@end

@implementation CKDMMCSItemCommandWriter

- (CKDMMCSItemCommandWriter)initWithMMCSItem:(id)item MMCSRequest:(id)request
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
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CKDMMCSItemCommandWriter.m", 27, @"Expected non-nil MMCS item");

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v24 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CKDMMCSItemCommandWriter.m", 28, @"Expected non-nil MMCS request for %@", itemCopy);

LABEL_3:
  v26.receiver = self;
  v26.super_class = CKDMMCSItemCommandWriter;
  v13 = [(CKDMMCSItemCommandWriter *)&v26 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_MMCSItem, item);
    objc_storeStrong(&v14->_MMCSRequest, request);
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
    selfCopy = self;
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "dealloc, reader:%p", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = CKDMMCSItemCommandWriter;
  [(CKDMMCSItemCommandWriter *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)getFileMetadataWithError:(id *)error
{
  if (error)
  {
    *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], 1, @"getFileMetadataWithError not implemented");
  }

  return 0;
}

- (BOOL)readBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesRead:(unint64_t *)read error:(id *)error
{
  if (error)
  {
    *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], 1, @"readBytesAtOffset not implemented", read);
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

- (BOOL)writeBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesWritten:(unint64_t *)written error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_containsIndexesInRange_(self->_byteRanges, a2, offset, length))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v30 = v14;
      v37.location = offset;
      v37.length = length;
      v31 = NSStringFromRange(v37);
      *buf = 138543362;
      v35 = v31;
      _os_log_error_impl(&dword_22506F000, v30, OS_LOG_TYPE_ERROR, "range %{public}@ overlaps with previous range", buf, 0xCu);
    }
  }

  objc_msgSend_addIndexesInRange_(self->_byteRanges, v13, offset, length);
  if (self->_maximumLength < length + offset)
  {
    self->_maximumLength = length + offset;
  }

  v16 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v15, bytes, length);
  v18 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v17, offset);
  v32[0] = @"Data";
  v32[1] = @"Offset";
  v33[0] = v16;
  v33[1] = v18;
  v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v33, v32, 2);
  v23 = objc_msgSend_MMCSRequest(self, v21, v22);
  v26 = objc_msgSend_MMCSItem(self, v24, v25);
  objc_msgSend_handleCommand_forItem_(v23, v27, v20, v26);

  if (written)
  {
    *written = length;
  }

  if (error)
  {
    *error = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return 1;
}

@end