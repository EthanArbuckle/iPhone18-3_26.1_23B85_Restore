@interface BUZipReadChannel
- (BOOL)processData:(id)a3 CRC:(unsigned int *)a4 isDone:(BOOL)a5 handler:(id)a6;
- (BOOL)readFileHeaderFromData:(id)a3 headerLength:(unint64_t *)a4;
- (BUZipReadChannel)initWithEntry:(id)a3 archive:(id)a4 validateCRC:(BOOL)a5;
- (void)close;
- (void)dealloc;
- (void)handleFailureWithHandler:(id)a3 error:(id)a4;
- (void)readFromOffset:(int64_t)a3 length:(unint64_t)a4 handler:(id)a5;
- (void)readWithFileHeaderLength:(unint64_t)a3 handler:(id)a4;
- (void)readWithHandler:(id)a3;
@end

@implementation BUZipReadChannel

- (BUZipReadChannel)initWithEntry:(id)a3 archive:(id)a4 validateCRC:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = BUZipReadChannel;
  v11 = [(BUZipReadChannel *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entry, a3);
    objc_storeStrong(&v12->_archive, a4);
    v12->_validateCRC = a5;
    Channel = objc_msgSend_newArchiveReadChannel(v10, v13, v14);
    archiveReadChannel = v12->_archiveReadChannel;
    v12->_archiveReadChannel = Channel;

    if (!v12->_archiveReadChannel)
    {

      v12 = 0;
    }
  }

  return v12;
}

- (void)dealloc
{
  objc_msgSend_close(self, a2, v2);
  v4.receiver = self;
  v4.super_class = BUZipReadChannel;
  [(BUZipReadChannel *)&v4 dealloc];
}

- (void)readWithHandler:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_compressedSize(self->_entry, v5, v6);
  v10 = objc_msgSend_fileHeaderLength(self->_entry, v8, v9);
  if (v10)
  {
    objc_msgSend_readWithFileHeaderLength_handler_(self, v11, v10, v4);
  }

  else
  {
    v13 = objc_msgSend_nameLength(self->_entry, v11, v12);
    v16 = objc_msgSend_extraFieldsLength(self->_entry, v14, v15);
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x3032000000;
    v37[3] = sub_241DC3128;
    v37[4] = sub_241DC3138;
    v17 = MEMORY[0x277D85CC8];
    v18 = MEMORY[0x277D85CC8];
    v38 = v17;
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2020000000;
    v36 = 0;
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v34 = 1;
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    v32 = crc32(0, 0, 0);
    archiveReadChannel = self->_archiveReadChannel;
    v22 = objc_msgSend_offset(self->_entry, v20, v21);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_241DC3140;
    v24[3] = &unk_278D1D998;
    v26 = v33;
    v24[4] = self;
    v25 = v4;
    v27 = v37;
    v28 = v35;
    v29 = v31;
    v30 = v13 + v16 + 30;
    objc_msgSend_readFromOffset_length_handler_(archiveReadChannel, v23, v22, v30 + v7, v24);

    _Block_object_dispose(v31, 8);
    _Block_object_dispose(v33, 8);
    _Block_object_dispose(v35, 8);
    _Block_object_dispose(v37, 8);
  }
}

- (void)readFromOffset:(int64_t)a3 length:(unint64_t)a4 handler:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v11 = objc_msgSend_compressedSize(self->_entry, v9, v10);
  v14 = v11;
  if (a3 < 0 || v11 < a3)
  {
    v15 = BUZipLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_msgSend_name(self->_entry, v16, v17);
      *buf = 138412802;
      v34 = v28;
      v35 = 2048;
      v36 = v14;
      v37 = 2048;
      v38 = a3;
      _os_log_error_impl(&dword_241DA6000, v15, OS_LOG_TYPE_ERROR, "Requested range is not within the entry: %@. Size: %llu. Requested offset: %llu", buf, 0x20u);
    }

    (*(v8 + 2))(v8, 1, MEMORY[0x277D85CC8], 0);
  }

  else
  {
    if (v11 - a3 < a4)
    {
      a4 = v11 - a3;
    }

    if (a3 || a4 != v11)
    {
      v18 = objc_msgSend_fileHeaderLength(self->_entry, v12, v13);
      if (v18)
      {
        v21 = v18;
        archiveReadChannel = self->_archiveReadChannel;
        v23 = objc_msgSend_offset(self->_entry, v19, v20);
        objc_msgSend_readFromOffset_length_handler_(archiveReadChannel, v24, v21 + a3 + v23, a4, v8);
      }

      else
      {
        v25 = self->_archiveReadChannel;
        v26 = objc_msgSend_offset(self->_entry, v19, v20);
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = sub_241DC35C4;
        v29[3] = &unk_278D1D9C0;
        v29[4] = self;
        v31 = a3;
        v32 = a4;
        v30 = v8;
        objc_msgSend_readAllFromChannel_offset_length_completion_(BUIOUtils, v27, v25, v26, 30, v29);
      }
    }

    else
    {
      objc_msgSend_readWithHandler_(self, v12, v8);
    }
  }
}

- (BOOL)readFileHeaderFromData:(id)a3 headerLength:(unint64_t *)a4
{
  v6 = a3;
  size = dispatch_data_get_size(v6);
  if (size == 30)
  {
    subrange = v6;
    goto LABEL_5;
  }

  if (size >= 0x1F)
  {
    subrange = dispatch_data_create_subrange(v6, 0, 0x1EuLL);
LABEL_5:
    v9 = subrange;
    v24 = 0;
    buffer_ptr = 0;
    v12 = dispatch_data_create_map(subrange, &buffer_ptr, &v24);
    v13 = buffer_ptr;
    if (*buffer_ptr == 67324752)
    {
      v14 = *(buffer_ptr + 4);
      if (*(buffer_ptr + 4))
      {
        v15 = v14 == BUZipDeflateCompressionMethod;
      }

      else
      {
        v15 = 1;
      }

      if (v15 && (((v14 != BUZipDeflateCompressionMethod) ^ objc_msgSend_isCompressed(self->_entry, v10, v11)) & 1) != 0)
      {
        v17 = v13[13] + v13[14] + 30;
        *a4 = v17;
        objc_msgSend_setFileHeaderLength_(self->_entry, v16, v17);
        v18 = 1;
LABEL_18:

        goto LABEL_22;
      }

      v19 = BUZipLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_241DD0CE0(self, v19, v21);
      }
    }

    else
    {
      v19 = BUZipLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_241DD0C58(self, v19, v20);
      }
    }

    v18 = 0;
    goto LABEL_18;
  }

  v9 = BUZipLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_241DD0BD0(self, v9, v22);
  }

  v18 = 0;
LABEL_22:

  return v18;
}

- (void)readWithFileHeaderLength:(unint64_t)a3 handler:(id)a4
{
  v6 = a4;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 1;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = crc32(0, 0, 0);
  archiveReadChannel = self->_archiveReadChannel;
  v10 = objc_msgSend_offset(self->_entry, v8, v9);
  v13 = objc_msgSend_compressedSize(self->_entry, v11, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_241DC398C;
  v16[3] = &unk_278D1D9E8;
  v18 = v22;
  v16[4] = self;
  v14 = v6;
  v17 = v14;
  v19 = v20;
  objc_msgSend_readFromOffset_length_handler_(archiveReadChannel, v15, v10 + a3, v13, v16);

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
}

- (BOOL)processData:(id)a3 CRC:(unsigned int *)a4 isDone:(BOOL)a5 handler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  if (a4 && self->_validateCRC && (applier[0] = MEMORY[0x277D85DD0], applier[1] = 3221225472, applier[2] = sub_241DC3B90, applier[3] = &unk_278D1DA08, applier[4] = a4, dispatch_data_apply(v10, applier), v7) && objc_msgSend_CRC(self->_entry, v12, v13) != *a4)
  {
    v16 = BUZipLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_241DD0D68(&self->_entry, v16, v17);
    }

    objc_msgSend_handleFailureWithHandler_error_(self, v18, v11, 0);
    v14 = 0;
  }

  else
  {
    v11[2](v11, v7, v10, 0);
    v14 = 1;
  }

  return v14;
}

- (void)handleFailureWithHandler:(id)a3 error:(id)a4
{
  if (a4)
  {
    v5 = *(a3 + 2);
    v9 = a3;
    v5();
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = a3;
    v9 = objc_msgSend_bu_fileReadCorruptedFileErrorWithUserInfo_(v6, v8, 0);
    (*(a3 + 2))(v7, 1, 0);
  }
}

- (void)close
{
  objc_msgSend_close(self->_archiveReadChannel, a2, v2);
  archiveReadChannel = self->_archiveReadChannel;
  self->_archiveReadChannel = 0;

  entry = self->_entry;
  self->_entry = 0;

  archive = self->_archive;
  self->_archive = 0;
}

@end