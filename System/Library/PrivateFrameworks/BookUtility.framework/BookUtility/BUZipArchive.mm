@interface BUZipArchive
- (BOOL)extractToURL:(id)l error:(id *)error shouldExtractEntry:(id)entry didExtractEntry:(id)extractEntry;
- (BOOL)hasNonEmptyEntries;
- (BOOL)isValid;
- (BOOL)readCentralFileHeaderWithBuffer:(const void *)buffer dataSize:(unint64_t *)size error:(id *)error;
- (BOOL)readExtraFieldsFromBuffer:(const void *)buffer extraFieldsLength:(unsigned __int16)length entry:(id)entry dataSize:(unint64_t *)size error:(id *)error;
- (BOOL)readFileCommentFromBuffer:(const void *)buffer fileCommentLength:(unsigned __int16)length entry:(id)entry dataSize:(unint64_t *)size error:(id *)error;
- (BOOL)readFilenameFromBuffer:(const void *)buffer nameLength:(unsigned __int16)length entry:(id)entry dataSize:(unint64_t *)size error:(id *)error;
- (BOOL)readLocalFileHeaderFilenameAndExtraFieldsData:(id)data forEntry:(id)entry error:(id *)error;
- (BOOL)readZip64ExtraFieldFromBuffer:(const void *)buffer dataLength:(unsigned __int16)length entry:(id)entry error:(id *)error;
- (BUZipArchive)initWithOptions:(unint64_t)options;
- (id)debugDescription;
- (id)entryForName:(id)name;
- (id)newArchiveReadChannel;
- (id)normalizeEntryName:(id)name;
- (id)readChannelForEntry:(id)entry validateCRC:(BOOL)c;
- (id)streamReadChannelForEntry:(id)entry validateCRC:(BOOL)c;
- (unint64_t)archiveLength;
- (unint64_t)totalSize;
- (void)addEntry:(id)entry;
- (void)collapseCommonRootDirectory;
- (void)enumerateEntriesUsingBlock:(id)block;
- (void)readArchiveWithQueue:(id)queue completion:(id)completion;
- (void)readCentralDirectoryData:(id)data entryCount:(unint64_t)count completion:(id)completion;
- (void)readCentralDirectoryWithEntryCount:(unint64_t)count offset:(int64_t)offset size:(unint64_t)size channel:(id)channel completion:(id)completion;
- (void)readEndOfCentralDirectoryData:(id)data eocdOffset:(int64_t)offset channel:(id)channel completion:(id)completion;
- (void)readLocalFileHeaderData:(id)data atOffset:(int64_t)offset channel:(id)channel completion:(id)completion;
- (void)readLocalFileHeaderEntriesFromChannel:(id)channel offset:(int64_t)offset previousEntry:(id)entry seekAttempts:(unsigned int)attempts seekForward:(BOOL)forward completion:(id)completion;
- (void)readZip64EndOfCentralDirectoryData:(id)data channel:(id)channel completion:(id)completion;
- (void)readZip64EndOfCentralDirectoryLocatorData:(id)data channel:(id)channel completion:(id)completion;
- (void)readZip64EndOfCentralDirectoryLocatorWithChannel:(id)channel eocdOffset:(int64_t)offset completion:(id)completion;
- (void)readZip64EndOfCentralDirectoryWithChannel:(id)channel offset:(int64_t)offset completion:(id)completion;
@end

@implementation BUZipArchive

- (BUZipArchive)initWithOptions:(unint64_t)options
{
  v11.receiver = self;
  v11.super_class = BUZipArchive;
  v4 = [(BUZipArchive *)&v11 init];
  if (v4)
  {
    v5 = BUZipLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_241DD039C();
    }

    v4->_options = options;
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    entriesMap = v4->_entriesMap;
    v4->_entriesMap = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB40]);
    entries = v4->_entries;
    v4->_entries = v8;
  }

  return v4;
}

- (BOOL)hasNonEmptyEntries
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_241DBC5F8;
  v4[3] = &unk_278D1D6A0;
  v4[4] = &v5;
  objc_msgSend_enumerateEntriesUsingBlock_(self, a2, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)readArchiveWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v8 = BUZipLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_241DD0424();
  }

  v11 = objc_msgSend_archiveLength(self, v9, v10);
  Channel = objc_msgSend_newArchiveReadChannel(self, v12, v13);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_241DBC908;
  v33[3] = &unk_278D1D6C8;
  v15 = completionCopy;
  v34 = v15;
  v16 = MEMORY[0x245D00360](v33);
  v17 = v16;
  if (Channel)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_241DBC9E8;
    v29[3] = &unk_278D1D718;
    v18 = v30;
    v19 = Channel;
    v30[0] = v19;
    v30[1] = self;
    v31 = queueCopy;
    v32 = v17;
    v21 = MEMORY[0x245D00360](v29);
    if (byte_27EC72A18 == 1 && BUIsRunningTests() || (self->_options & 8) != 0)
    {
      objc_msgSend_readLocalFileHeaderEntriesFromChannel_offset_previousEntry_seekAttempts_seekForward_completion_(self, v20, v19, 0, 0, 0, 0, v21);
    }

    else
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = sub_241DBCAFC;
      v25[3] = &unk_278D1D768;
      v25[4] = self;
      v28 = v11 - 22;
      v26 = v19;
      v27 = v21;
      objc_msgSend_readAllFromChannel_offset_length_completion_(BUIOUtils, v22, v26, v11 - 22, 22, v25);
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_241DBCD3C;
    block[3] = &unk_278D1CEC8;
    v18 = &v24;
    v24 = v16;
    dispatch_async(queueCopy, block);
  }
}

- (void)readEndOfCentralDirectoryData:(id)data eocdOffset:(int64_t)offset channel:(id)channel completion:(id)completion
{
  v30[1] = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  completionCopy = completion;
  size_ptr = 0;
  buffer_ptr = 0;
  v13 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  if (size_ptr <= 0x15)
  {
    v14 = MEMORY[0x277CCA9B8];
    v29 = @"BUZipArchiveErrorDescription";
    v30[0] = @"Wrong data size for BUZipEndOfCentralDirectoryRecord";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v30, &v29, 1);
    goto LABEL_8;
  }

  if (*buffer_ptr != 101010256)
  {
    v14 = MEMORY[0x277CCA9B8];
    v27 = @"BUZipArchiveErrorDescription";
    v28 = @"Don't support end of central directory comments";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, &v28, &v27, 1);
    v15 = LABEL_8:;
    v17 = objc_msgSend_bu_fileReadCorruptedFileErrorWithUserInfo_(v14, v16, v15);

    if (v17)
    {
      completionCopy[2](completionCopy, v17);
    }

    else
    {
      v19 = objc_msgSend_bu_fileReadUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v18, 0);
      completionCopy[2](completionCopy, v19);
    }

    goto LABEL_11;
  }

  if (*(buffer_ptr + 2) || *(buffer_ptr + 3))
  {
    v14 = MEMORY[0x277CCA9B8];
    v25 = @"BUZipArchiveErrorDescription";
    v26 = @"Don't support multi-disk";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, &v26, &v25, 1);
    goto LABEL_8;
  }

  v20 = *(buffer_ptr + 5);
  if (v20 == 0xFFFF || *(buffer_ptr + 4) == -1 || *(buffer_ptr + 3) == -1)
  {
    objc_msgSend_readZip64EndOfCentralDirectoryLocatorWithChannel_eocdOffset_completion_(self, v12, channelCopy, offset, completionCopy);
  }

  else
  {
    objc_msgSend_readCentralDirectoryWithEntryCount_offset_size_channel_completion_(self, v12, v20);
  }

LABEL_11:
}

- (void)readZip64EndOfCentralDirectoryLocatorWithChannel:(id)channel eocdOffset:(int64_t)offset completion:(id)completion
{
  v20[1] = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  completionCopy = completion;
  if (offset > 0x13)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_241DBD154;
    v16[3] = &unk_278D1D790;
    v16[4] = self;
    v17 = channelCopy;
    v18 = completionCopy;
    objc_msgSend_readAllFromChannel_offset_length_completion_(BUIOUtils, v15, v17, offset - 20, 20, v16);
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v19 = @"BUZipArchiveErrorDescription";
    v20[0] = @"File isn't long enough for Zip64 locator";
    v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v20, &v19, 1);
    v14 = objc_msgSend_bu_fileReadCorruptedFileErrorWithUserInfo_(v11, v13, v12);
    (*(completionCopy + 2))(completionCopy, v14);
  }
}

- (void)readZip64EndOfCentralDirectoryLocatorData:(id)data channel:(id)channel completion:(id)completion
{
  v25[1] = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  completionCopy = completion;
  size_ptr = 0;
  buffer_ptr = 0;
  v11 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  if (size_ptr <= 0x13)
  {
    v12 = MEMORY[0x277CCA9B8];
    v24 = @"BUZipArchiveErrorDescription";
    v25[0] = @"Wrong data size for BUZip64EndOfCentralDirectoryLocatorRecord";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v25, &v24, 1);
  }

  else if (*buffer_ptr == 117853008)
  {
    if (!*(buffer_ptr + 1) && *(buffer_ptr + 4) == 1)
    {
      objc_msgSend_readZip64EndOfCentralDirectoryWithChannel_offset_completion_(self, v10, channelCopy, *(buffer_ptr + 1), completionCopy);
      goto LABEL_12;
    }

    v12 = MEMORY[0x277CCA9B8];
    v20 = @"BUZipArchiveErrorDescription";
    v21 = @"Multi-disk is not supported";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, &v21, &v20, 1);
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v22 = @"BUZipArchiveErrorDescription";
    v23 = @"Zip64 end of central directory locator record signature not found";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, &v23, &v22, 1);
  }
  v13 = ;
  v15 = objc_msgSend_bu_fileReadCorruptedFileErrorWithUserInfo_(v12, v14, v13);

  if (v15)
  {
    completionCopy[2](completionCopy, v15);
  }

  else
  {
    v17 = objc_msgSend_bu_fileReadUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v16, 0);
    completionCopy[2](completionCopy, v17);
  }

LABEL_12:
}

- (void)readZip64EndOfCentralDirectoryWithChannel:(id)channel offset:(int64_t)offset completion:(id)completion
{
  channelCopy = channel;
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_241DBD44C;
  v13[3] = &unk_278D1D790;
  v13[4] = self;
  v14 = channelCopy;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = channelCopy;
  objc_msgSend_readAllFromChannel_offset_length_completion_(BUIOUtils, v12, v11, offset, 56, v13);
}

- (void)readZip64EndOfCentralDirectoryData:(id)data channel:(id)channel completion:(id)completion
{
  v25[1] = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  completionCopy = completion;
  size_ptr = 0;
  buffer_ptr = 0;
  v11 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  if (size_ptr <= 0x37)
  {
    v12 = MEMORY[0x277CCA9B8];
    v24 = @"BUZipArchiveErrorDescription";
    v25[0] = @"Wrong data size for BUZip64EndOfCentralDirectoryRecord";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v25, &v24, 1);
  }

  else if (*buffer_ptr == 101075792)
  {
    if (!*(buffer_ptr + 4) && !*(buffer_ptr + 5))
    {
      objc_msgSend_readCentralDirectoryWithEntryCount_offset_size_channel_completion_(self, v10, *(buffer_ptr + 4), *(buffer_ptr + 6), *(buffer_ptr + 5), channelCopy, completionCopy);
      goto LABEL_11;
    }

    v12 = MEMORY[0x277CCA9B8];
    v20 = @"BUZipArchiveErrorDescription";
    v21 = @"Multi-disk is not supported";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, &v21, &v20, 1);
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v22 = @"BUZipArchiveErrorDescription";
    v23 = @"Zip64 end of central directory record signature not found";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, &v23, &v22, 1);
  }
  v13 = ;
  v15 = objc_msgSend_bu_fileReadCorruptedFileErrorWithUserInfo_(v12, v14, v13);

  if (v15)
  {
    completionCopy[2](completionCopy, v15);
  }

  else
  {
    v17 = objc_msgSend_bu_fileReadUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v16, 0);
    completionCopy[2](completionCopy, v17);
  }

LABEL_11:
}

- (void)readCentralDirectoryWithEntryCount:(unint64_t)count offset:(int64_t)offset size:(unint64_t)size channel:(id)channel completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  channelCopy = channel;
  v14 = BUZipLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    selfCopy = self;
    v22 = 2048;
    sizeCopy = size;
    v24 = 2048;
    countCopy = count;
    _os_log_debug_impl(&dword_241DA6000, v14, OS_LOG_TYPE_DEBUG, "%@: reading central directory of size %zu with %tu entries", buf, 0x20u);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_241DBD7E4;
  v17[3] = &unk_278D1D7B8;
  v18 = completionCopy;
  countCopy2 = count;
  v17[4] = self;
  v15 = completionCopy;
  objc_msgSend_readAllFromChannel_offset_length_completion_(BUIOUtils, v16, channelCopy, offset, size, v17);
}

- (void)readCentralDirectoryData:(id)data entryCount:(unint64_t)count completion:(id)completion
{
  completionCopy = completion;
  size_ptr = 0;
  buffer_ptr = 0;
  v10 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  v11 = 0;
  if (!count)
  {
    goto LABEL_7;
  }

  v12 = 1;
  do
  {
    v13 = v11;
    v16 = v11;
    v14 = objc_msgSend_readCentralFileHeaderWithBuffer_dataSize_error_(self, v9, &buffer_ptr, &size_ptr, &v16);
    v11 = v16;

    if (!v14)
    {
      break;
    }
  }

  while (v12++ < count);
  if ((v14 & 1) == 0)
  {
    if (!v11)
    {
      v11 = objc_msgSend_bu_fileReadUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v9, 0);
    }

    completionCopy[2](completionCopy, v11);
  }

  else
  {
LABEL_7:
    completionCopy[2](completionCopy, 0);
  }
}

- (BOOL)readCentralFileHeaderWithBuffer:(const void *)buffer dataSize:(unint64_t *)size error:(id *)error
{
  v54[1] = *MEMORY[0x277D85DE8];
  v9 = objc_alloc_init(BUZipEntry);
  v11 = v9;
  if (*size <= 0x2D)
  {
    v15 = MEMORY[0x277CCA9B8];
    v53 = @"BUZipArchiveErrorDescription";
    v54[0] = @"Central directory too short";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v54, &v53, 1);
    goto LABEL_9;
  }

  v12 = *buffer;
  v13 = *buffer + 46;
  v14 = **buffer;
  *size -= 46;
  *buffer = v13;
  if (v14 != 33639248)
  {
    v15 = MEMORY[0x277CCA9B8];
    v51 = @"BUZipArchiveErrorDescription";
    v52 = @"Central directory file header has bad signature";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, &v52, &v51, 1);
    goto LABEL_9;
  }

  if (v12[4])
  {
    v15 = MEMORY[0x277CCA9B8];
    v49 = @"BUZipArchiveErrorDescription";
    v50 = @"Encrypted files are not supported";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, &v50, &v49, 1);
    goto LABEL_9;
  }

  if (v12[17])
  {
    v15 = MEMORY[0x277CCA9B8];
    v47 = @"BUZipArchiveErrorDescription";
    v48 = @"No multi-disk support";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, &v48, &v47, 1);
    v16 = LABEL_9:;
    v18 = objc_msgSend_bu_fileReadCorruptedFileErrorWithUserInfo_(v15, v17, v16);

    goto LABEL_10;
  }

  v22 = v12[5];
  if (v12[5])
  {
    v23 = v22 == BUZipDeflateCompressionMethod;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v15 = MEMORY[0x277CCA9B8];
    v45 = @"BUZipArchiveErrorDescription";
    v46 = @"Unsupported compression method";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, &v46, &v45, 1);
    goto LABEL_9;
  }

  objc_msgSend_setCompressed_(v9, v10, v22 == BUZipDeflateCompressionMethod);
  v24 = objc_alloc(MEMORY[0x277CBEAA8]);
  v26 = objc_msgSend_bu_initWithDOSTime_(v24, v25, v12[7] | (v12[6] << 16));
  objc_msgSend_setLastModificationDate_(v11, v27, v26);

  objc_msgSend_setCRC_(v11, v28, *(v12 + 4));
  objc_msgSend_setCompressedSize_(v11, v29, *(v12 + 5));
  objc_msgSend_setSize_(v11, v30, *(v12 + 6));
  objc_msgSend_setOffset_(v11, v31, *(v12 + 21));
  objc_msgSend_setNameLength_(v11, v32, v12[14]);
  objc_msgSend_setExtraFieldsLength_(v11, v33, v12[15]);
  objc_msgSend_setExternalFileAttributes_(v11, v34, *(v12 + 19));
  v35 = v12[14];
  v44 = 0;
  LODWORD(v26) = objc_msgSend_readFilenameFromBuffer_nameLength_entry_dataSize_error_(self, v36, buffer, v35, v11, size, &v44);
  v37 = v44;
  v18 = v37;
  if (v26)
  {
    if (!v12[15] || (v43 = v37, ExtraFieldsFromBuffer_extraFieldsLength_entry_dataSize_error = objc_msgSend_readExtraFieldsFromBuffer_extraFieldsLength_entry_dataSize_error_(self, v38, buffer), v40 = v43, v18, v18 = v40, ExtraFieldsFromBuffer_extraFieldsLength_entry_dataSize_error))
    {
      if (!v12[16] || (FileCommentFromBuffer_fileCommentLength_entry_dataSize_error = objc_msgSend_readFileCommentFromBuffer_fileCommentLength_entry_dataSize_error_(self, v38, buffer), v42 = v18, v18, v18 = v42, FileCommentFromBuffer_fileCommentLength_entry_dataSize_error))
      {
        objc_msgSend_addEntry_(self, v38, v11);
        v20 = 1;
        goto LABEL_13;
      }
    }
  }

LABEL_10:
  if (error)
  {
    v19 = v18;
    v20 = 0;
    *error = v18;
  }

  else
  {
    v20 = 0;
  }

LABEL_13:

  return v20;
}

- (BOOL)readFilenameFromBuffer:(const void *)buffer nameLength:(unsigned __int16)length entry:(id)entry dataSize:(unint64_t *)size error:(id *)error
{
  lengthCopy = length;
  v31[1] = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  if (*size < lengthCopy)
  {
    v13 = MEMORY[0x277CCA9B8];
    v28 = @"BUZipArchiveErrorDescription";
    v29 = @"Central directory too short";
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, &v29, &v28, 1);
    v16 = objc_msgSend_bu_fileReadCorruptedFileErrorWithUserInfo_(v13, v15, v14);
LABEL_6:
    v22 = 0;
    goto LABEL_7;
  }

  v17 = lengthCopy;
  v18 = objc_alloc(MEMORY[0x277CCACA8]);
  v14 = objc_msgSend_initWithBytes_length_encoding_(v18, v19, *buffer, lengthCopy, 4);
  objc_msgSend_setName_(entryCopy, v20, v14);
  *size -= v17;
  *buffer = *buffer + v17;
  v22 = v14 != 0;
  if (!v14)
  {
    v23 = MEMORY[0x277CCA9B8];
    v30 = @"BUZipArchiveErrorDescription";
    v31[0] = @"Couldn't read name";
    v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v31, &v30, 1);
    v16 = objc_msgSend_bu_fileReadCorruptedFileErrorWithUserInfo_(v23, v25, v24);

    goto LABEL_6;
  }

  v16 = 0;
LABEL_7:

  if (error && !v22)
  {
    v26 = v16;
    *error = v16;
  }

  return v22;
}

- (BOOL)readExtraFieldsFromBuffer:(const void *)buffer extraFieldsLength:(unsigned __int16)length entry:(id)entry dataSize:(unint64_t *)size error:(id *)error
{
  lengthCopy = length;
  v39[1] = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  if (*size >= lengthCopy)
  {
    selfCopy = self;
    v18 = 0;
    v19 = *buffer + lengthCopy;
    while (2)
    {
      v20 = entryCopy;
      v21 = *buffer;
      v22 = *buffer + 4;
      if (v22 > v19)
      {
LABEL_18:
        v33 = 1;
        entryCopy = v20;
        goto LABEL_19;
      }

      v23 = *size;
      while (1)
      {
        v24 = v23 - 4;
        v25 = v21[1];
        v26 = &v22[v25];
        if (&v22[v25] > v19)
        {
          *size = v24;
          *buffer = v22;
          v30 = MEMORY[0x277CCA9B8];
          v38 = @"BUZipArchiveErrorDescription";
          v39[0] = @"Invalid Zip entry extra field length";
          v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v39, &v38, 1);
          v17 = objc_msgSend_bu_fileReadCorruptedFileErrorWithUserInfo_(v30, v31, v15);

          entryCopy = v20;
          goto LABEL_13;
        }

        if (*v21 == BUZip64ExtraFieldSignature)
        {
          break;
        }

        v23 = v24 - v25;
        v22 = v26 + 4;
        v21 = v26;
        if (v26 + 4 > v19)
        {
          *size = v23;
          *buffer = v26;
          goto LABEL_18;
        }
      }

      *size = v24;
      *buffer = v22;
      Zip64ExtraFieldFromBuffer_dataLength_entry_error = objc_msgSend_readZip64ExtraFieldFromBuffer_dataLength_entry_error_(selfCopy, v12, v22);
      v17 = v18;

      v28 = v21[1];
      entryCopy = v20;
      v29 = *buffer;
      *size -= v28;
      *buffer = &v29[v28];
      v18 = v17;
      if (Zip64ExtraFieldFromBuffer_dataLength_entry_error)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v36 = @"BUZipArchiveErrorDescription";
    v37 = @"Central directory too short";
    v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, &v37, &v36, 1);
    v17 = objc_msgSend_bu_fileReadCorruptedFileErrorWithUserInfo_(v14, v16, v15);
LABEL_13:
  }

  if (error)
  {
    v32 = v17;
    v33 = 0;
    *error = v17;
  }

  else
  {
    v33 = 0;
  }

  v18 = v17;
LABEL_19:

  return v33;
}

- (BOOL)readZip64ExtraFieldFromBuffer:(const void *)buffer dataLength:(unsigned __int16)length entry:(id)entry error:(id *)error
{
  lengthCopy = length;
  v32[1] = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  if (objc_msgSend_size(entryCopy, v10, v11) == 0xFFFFFFFFLL)
  {
    v14 = lengthCopy >= 8;
    LOWORD(lengthCopy) = lengthCopy - 8;
    if (!v14)
    {
      v22 = MEMORY[0x277CCA9B8];
      v31 = @"BUZipArchiveErrorDescription";
      v32[0] = @"Not enough room for Zip64 uncompressed size";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v32, &v31, 1);
      goto LABEL_14;
    }

    v15 = *buffer;
    buffer = buffer + 8;
    objc_msgSend_setSize_(entryCopy, v12, v15);
  }

  if (objc_msgSend_compressedSize(entryCopy, v12, v13) == 0xFFFFFFFFLL)
  {
    if (lengthCopy < 8u)
    {
      v22 = MEMORY[0x277CCA9B8];
      v29 = @"BUZipArchiveErrorDescription";
      v30 = @"Not enough room for Zip64 compressed size";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, &v30, &v29, 1);
      goto LABEL_14;
    }

    v18 = *buffer;
    buffer = buffer + 8;
    objc_msgSend_setCompressedSize_(entryCopy, v16, v18);
    LOWORD(lengthCopy) = lengthCopy - 8;
  }

  if (objc_msgSend_offset(entryCopy, v16, v17) != 0xFFFFFFFFLL)
  {
LABEL_11:
    v20 = 0;
    v21 = 1;
    goto LABEL_17;
  }

  if (lengthCopy >= 8u)
  {
    objc_msgSend_setOffset_(entryCopy, v19, *buffer);
    goto LABEL_11;
  }

  v22 = MEMORY[0x277CCA9B8];
  v27 = @"BUZipArchiveErrorDescription";
  v28 = @"Not enough room for Zip64 offset";
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, &v28, &v27, 1);
  v23 = LABEL_14:;
  v20 = objc_msgSend_bu_fileReadCorruptedFileErrorWithUserInfo_(v22, v24, v23);

  if (error)
  {
    v25 = v20;
    v21 = 0;
    *error = v20;
  }

  else
  {
    v21 = 0;
  }

LABEL_17:

  return v21;
}

- (BOOL)readFileCommentFromBuffer:(const void *)buffer fileCommentLength:(unsigned __int16)length entry:(id)entry dataSize:(unint64_t *)size error:(id *)error
{
  lengthCopy = length;
  v22[1] = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v13 = *size;
  v14 = lengthCopy;
  if (*size < lengthCopy)
  {
    v16 = MEMORY[0x277CCA9B8];
    v21 = @"BUZipArchiveErrorDescription";
    v22[0] = @"Central directory too short";
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v22, &v21, 1);
    v15 = objc_msgSend_bu_fileReadCorruptedFileErrorWithUserInfo_(v16, v18, v17);

    if (error)
    {
      v19 = v15;
      *error = v15;
    }
  }

  else
  {
    v15 = 0;
    *size = v13 - v14;
    *buffer = *buffer + v14;
  }

  return v13 >= v14;
}

- (void)readLocalFileHeaderEntriesFromChannel:(id)channel offset:(int64_t)offset previousEntry:(id)entry seekAttempts:(unsigned int)attempts seekForward:(BOOL)forward completion:(id)completion
{
  channelCopy = channel;
  entryCopy = entry;
  completionCopy = completion;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_241DBE4D8;
  v21[3] = &unk_278D1D808;
  v24 = completionCopy;
  offsetCopy = offset;
  v21[4] = self;
  v22 = channelCopy;
  forwardCopy = forward;
  attemptsCopy = attempts;
  v23 = entryCopy;
  v17 = completionCopy;
  v18 = entryCopy;
  v19 = channelCopy;
  objc_msgSend_readAllFromChannel_offset_length_completion_(BUIOUtils, v20, v19, offset, 30, v21);
}

- (void)readLocalFileHeaderData:(id)data atOffset:(int64_t)offset channel:(id)channel completion:(id)completion
{
  v57[1] = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  completionCopy = completion;
  size_ptr = 0;
  buffer_ptr = 0;
  v13 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  if (size_ptr <= 0x1D)
  {
    v33 = MEMORY[0x277CCA9B8];
    v56 = @"BUZipArchiveErrorDescription";
    v57[0] = @"Wrong data size for BUZipLocalFileHeaderRecord";
    v34 = 1;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v57, &v56, 1);
    goto LABEL_13;
  }

  v14 = buffer_ptr;
  if (*buffer_ptr != 67324752)
  {
    v34 = *buffer_ptr == 33639248;
    v33 = MEMORY[0x277CCA9B8];
    v54 = @"BUZipArchiveErrorDescription";
    v55 = @"Local file header has bad signature";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, &v55, &v54, 1);
    v35 = LABEL_13:;
    v31 = objc_msgSend_bu_fileReadCorruptedFileErrorWithUserInfo_(v33, v36, v35);

    if (objc_msgSend_count(self->_entries, v37, v38))
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, v34);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v15 = *(buffer_ptr + 3);
  if (v15)
  {
    v40 = MEMORY[0x277CCA9B8];
    v52 = @"BUZipArchiveErrorDescription";
    v53 = @"Encrypted files are not supported";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, &v53, &v52, 1);
  }

  else if ((v15 & 8) != 0)
  {
    v40 = MEMORY[0x277CCA9B8];
    v50 = @"BUZipArchiveErrorDescription";
    v51 = @"Local file header does not have the entry CRC and size";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, &v51, &v50, 1);
  }

  else
  {
    if (*(buffer_ptr + 4))
    {
      v16 = *(buffer_ptr + 4) == BUZipDeflateCompressionMethod;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      v17 = objc_alloc_init(BUZipEntry);
      objc_msgSend_setCompressed_(v17, v18, v14[4] == BUZipDeflateCompressionMethod);
      v19 = objc_alloc(MEMORY[0x277CBEAA8]);
      v21 = objc_msgSend_bu_initWithDOSTime_(v19, v20, v14[6] | (v14[5] << 16));
      objc_msgSend_setLastModificationDate_(v17, v22, v21);

      objc_msgSend_setCRC_(v17, v23, *(v14 + 7));
      objc_msgSend_setCompressedSize_(v17, v24, *(v14 + 9));
      objc_msgSend_setSize_(v17, v25, *(v14 + 11));
      objc_msgSend_setOffset_(v17, v26, offset);
      objc_msgSend_setNameLength_(v17, v27, v14[13]);
      objc_msgSend_setExtraFieldsLength_(v17, v28, v14[14]);
      v29 = v14[14] + v14[13];
      objc_msgSend_setFileHeaderLength_(v17, v30, v29 + 30);
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = sub_241DBEC8C;
      v43[3] = &unk_278D1D790;
      v43[4] = self;
      v44 = v17;
      v45 = completionCopy;
      v31 = v17;
      objc_msgSend_readAllFromChannel_offset_length_completion_(BUIOUtils, v32, channelCopy, offset + 30, v29, v43);

      goto LABEL_21;
    }

    v40 = MEMORY[0x277CCA9B8];
    v48 = @"BUZipArchiveErrorDescription";
    v49 = @"Unsupported compression method";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, &v49, &v48, 1);
  }
  v41 = ;
  v31 = objc_msgSend_bu_fileReadCorruptedFileErrorWithUserInfo_(v40, v42, v41);

LABEL_18:
  if (!v31)
  {
    v31 = objc_msgSend_bu_fileReadUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v39, 0);
  }

  (*(completionCopy + 2))(completionCopy, 0, v31, 0);
LABEL_21:
}

- (BOOL)readLocalFileHeaderFilenameAndExtraFieldsData:(id)data forEntry:(id)entry error:(id *)error
{
  v39[1] = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  size_ptr = 0;
  buffer_ptr = 0;
  v9 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  v10 = size_ptr;
  v13 = objc_msgSend_nameLength(entryCopy, v11, v12);
  if (v10 >= objc_msgSend_extraFieldsLength(entryCopy, v14, v15) + v13)
  {
    v23 = objc_msgSend_nameLength(entryCopy, v16, v17);
    v35 = 0;
    v25 = objc_msgSend_readFilenameFromBuffer_nameLength_entry_dataSize_error_(self, v24, &buffer_ptr, v23, entryCopy, &size_ptr, &v35);
    v19 = v35;
    if (!v25)
    {
      v22 = 0;
      if (!error)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    if (!objc_msgSend_extraFieldsLength(entryCopy, v26, v27))
    {
      v22 = 1;
      goto LABEL_11;
    }

    v30 = objc_msgSend_extraFieldsLength(entryCopy, v28, v29);
    v34 = v19;
    v22 = objc_msgSend_readExtraFieldsFromBuffer_extraFieldsLength_entry_dataSize_error_(self, v31, &buffer_ptr, v30, entryCopy, &size_ptr, &v34);
    v21 = v34;
  }

  else
  {
    v18 = MEMORY[0x277CCA9B8];
    v38 = @"BUZipArchiveErrorDescription";
    v39[0] = @"Wrong data size for BUZipLocalFileHeaderRecord filename and extra fields";
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v39, &v38, 1);
    v21 = objc_msgSend_bu_fileReadCorruptedFileErrorWithUserInfo_(v18, v20, v19);
    v22 = 0;
  }

  v19 = v21;
  if (!error)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((v22 & 1) == 0)
  {
    v32 = v19;
    v22 = 0;
    *error = v19;
  }

LABEL_11:

  return v22;
}

- (void)addEntry:(id)entry
{
  entryCopy = entry;
  v7 = entryCopy;
  if (entryCopy)
  {
    v8 = objc_msgSend_name(entryCopy, v5, v6);
    v10 = objc_msgSend_normalizeEntryName_(self, v9, v8);

    v12 = objc_msgSend_objectForKeyedSubscript_(self->_entriesMap, v11, v10);

    if (v12)
    {
      v14 = BUZipLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_241DD0728();
      }
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(self->_entriesMap, v13, v7, v10);
      objc_msgSend_addObject_(self->_entries, v15, v7);
    }
  }
}

- (id)readChannelForEntry:(id)entry validateCRC:(BOOL)c
{
  cCopy = c;
  entryCopy = entry;
  if (objc_msgSend_containsObject_(self->_entries, v7, entryCopy))
  {
    isCompressed = objc_msgSend_isCompressed(entryCopy, v8, v9);
    v11 = [BUZipReadChannel alloc];
    isCompressed ^= 1u;
    v13 = objc_msgSend_initWithEntry_archive_validateCRC_(v11, v12, entryCopy, self, cCopy & isCompressed);
    if ((isCompressed & 1) == 0)
    {
      v14 = [BUBufferedReadChannel alloc];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_241DBF140;
      v18[3] = &unk_278D1D830;
      v19 = entryCopy;
      v20 = cCopy;
      ChannelBlock = objc_msgSend_initWithReadChannel_blockInfos_streamReadChannelBlock_(v14, v15, v13, 0, v18);

      v13 = ChannelBlock;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)streamReadChannelForEntry:(id)entry validateCRC:(BOOL)c
{
  cCopy = c;
  entryCopy = entry;
  if (objc_msgSend_containsObject_(self->_entries, v7, entryCopy))
  {
    isCompressed = objc_msgSend_isCompressed(entryCopy, v8, v9);
    v11 = [BUZipReadChannel alloc];
    isCompressed ^= 1u;
    v13 = objc_msgSend_initWithEntry_archive_validateCRC_(v11, v12, entryCopy, self, cCopy & isCompressed);
    if ((isCompressed & 1) == 0)
    {
      v14 = [BUZipInflateReadChannel alloc];
      objc_msgSend_size(entryCopy, v15, v16);
      v19 = objc_msgSend_size(entryCopy, v17, v18);
      v22 = objc_msgSend_CRC(entryCopy, v20, v21);
      Channel_uncompressedSize_CRC_validateCRC = objc_msgSend_initWithReadChannel_uncompressedSize_CRC_validateCRC_(v14, v23, v13, v19, v22, cCopy);

      v13 = Channel_uncompressedSize_CRC_validateCRC;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)normalizeEntryName:(id)name
{
  nameCopy = name;
  v7 = nameCopy;
  if ((self->_options & 2) != 0)
  {
    v8 = objc_msgSend_lowercaseString(nameCopy, v5, v6);

    v7 = v8;
  }

  v9 = objc_msgSend_precomposedStringWithCanonicalMapping(v7, v5, v6);

  return v9;
}

- (id)entryForName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v6 = nameCopy;
    v7 = objc_msgSend_normalizeEntryName_(self, v5, nameCopy);

    v9 = objc_msgSend_objectForKeyedSubscript_(self->_entriesMap, v8, v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)enumerateEntriesUsingBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v19 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_entries;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v15, v20, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v16;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v5);
      }

      v13 = *(*(&v15 + 1) + 8 * v12);
      v14 = objc_msgSend_usableName(v13, v8, v9, v15);
      blockCopy[2](blockCopy, v14, v13, &v19);

      if (v19)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v15, v20, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)collapseCommonRootDirectory
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_241DBF72C;
  v36 = sub_241DBF73C;
  v37 = 0;
  v3 = objc_autoreleasePoolPush();
  entriesMap = self->_entriesMap;
  v5 = (self->_options >> 1) & 1 | 2;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_241DBF744;
  v31[3] = &unk_278D1D858;
  v31[4] = &v32;
  v31[5] = v5;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(entriesMap, v6, v31);
  objc_autoreleasePoolPop(v3);
  if (objc_msgSend_count(v33[5], v7, v8))
  {
    v11 = objc_msgSend_pathWithComponents_(MEMORY[0x277CCACA8], v9, v33[5]);
    v14 = objc_msgSend_length(v11, v12, v13);
  }

  else
  {
    v11 = 0;
    v14 = objc_msgSend_length(0, v9, v10);
  }

  v15 = v14;
  if (v14)
  {
    v16 = objc_alloc(MEMORY[0x277CBEB38]);
    v19 = objc_msgSend_count(self->_entriesMap, v17, v18);
    v21 = objc_msgSend_initWithCapacity_(v16, v20, v19);
    v22 = objc_autoreleasePoolPush();
    v23 = self->_entriesMap;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_241DBF920;
    v27[3] = &unk_278D1D880;
    v30 = v15;
    v24 = v21;
    v28 = v24;
    selfCopy = self;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v23, v25, v27);

    objc_autoreleasePoolPop(v22);
    v26 = self->_entriesMap;
    self->_entriesMap = v24;
  }

  _Block_object_dispose(&v32, 8);
}

- (unint64_t)archiveLength
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@: %s", @"Abstract method", "[BUZipArchive archiveLength]");
  v6 = objc_msgSend_exceptionWithName_reason_userInfo_(v2, v5, v3, v4, 0);
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)newArchiveReadChannel
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@: %s", @"Abstract method", "[BUZipArchive newArchiveReadChannel]");
  v6 = objc_msgSend_exceptionWithName_reason_userInfo_(v2, v5, v3, v4, 0);
  v7 = v6;

  objc_exception_throw(v6);
}

- (BOOL)isValid
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@: %s", @"Abstract method", "[BUZipArchive isValid]");
  v6 = objc_msgSend_exceptionWithName_reason_userInfo_(v2, v5, v3, v4, 0);
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v5 = objc_msgSend_descriptionWithObject_class_(BUDescription, v4, self, v3);
  v8 = objc_msgSend_array(self->_entries, v6, v7);
  v9 = BUArrayDescription(v8);
  objc_msgSend_addField_value_(v5, v10, @"entries", v9);

  v13 = objc_msgSend_descriptionString(v5, v11, v12);

  return v13;
}

- (unint64_t)totalSize
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_241DBFCFC;
  v4[3] = &unk_278D1D6A0;
  v4[4] = &v5;
  objc_msgSend_enumerateEntriesUsingBlock_(self, a2, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)extractToURL:(id)l error:(id *)error shouldExtractEntry:(id)entry didExtractEntry:(id)extractEntry
{
  v80 = *MEMORY[0x277D85DE8];
  lCopy = l;
  entryCopy = entry;
  extractEntryCopy = extractEntry;
  v62 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v8, v9);
  v64 = objc_msgSend_path(lCopy, v10, v11);
  v78 = 0;
  if (objc_msgSend_fileExistsAtPath_isDirectory_(v62, v12, v64, &v78))
  {
    v14 = 0;
    if (v78 != 1)
    {
      v15 = 0;
      v16 = 0;
      goto LABEL_36;
    }

LABEL_5:
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = sub_241DC0358;
    v75[3] = &unk_278D1D568;
    v19 = v18;
    v76 = v19;
    objc_msgSend_enumerateEntriesUsingBlock_(self, v20, v75);
    objc_msgSend_sortUsingSelector_(v19, v21, sel_compare_);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = v19;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v71, v79, 16);
    if (v24)
    {
      v63 = 0;
      v25 = *v72;
      v15 = 1;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v72 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v71 + 1) + 8 * i);
          v28 = objc_msgSend_entryForName_(self, v23, v27);
          v30 = objc_msgSend_stringByAppendingPathComponent_(v64, v29, v27);
          v31 = objc_alloc(MEMORY[0x277CBEBC0]);
          inited = objc_msgSend_initFileURLWithPath_(v31, v32, v30);
          if (!entryCopy || entryCopy[2](entryCopy, v28, inited))
          {
            v36 = objc_msgSend_length(v27, v33, v34);
            if (objc_msgSend_characterAtIndex_(v27, v37, v36 - 1) == 47)
            {
              v40 = objc_msgSend_path(inited, v38, v39);
              v70 = v14;
              v15 = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v62, v41, v40, 1, 0, &v70);
              v42 = v70;

              if (v42)
              {
                v43 = v42;
              }

              else
              {
                v43 = v63;
              }

              v44 = v43;

              v63 = v44;
              v14 = v42;
            }

            else
            {
              v45 = objc_msgSend_stringByDeletingLastPathComponent(v30, v38, v39);
              v69 = v14;
              v15 = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v62, v46, v45, 1, 0, &v69);
              v47 = v69;

              v68 = 0;
              v67 = v47;
              LODWORD(v45) = objc_msgSend_extractFromArchive_destinationURL_error_(v28, v48, self, lCopy, &v67);
              v14 = v67;

              if (v45)
              {
                v49 = MEMORY[0x245D00360](extractEntryCopy);
                v50 = v49;
                if (v49)
                {
                  (*(v49 + 16))(v49, v28, inited, &v68);
                }
              }

              else
              {
                v50 = v63;
                v63 = v14;
              }

              if (v68)
              {

                goto LABEL_31;
              }
            }
          }
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v71, v79, 16);
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v63 = 0;
      v15 = 1;
    }

LABEL_31:

    v52 = v63;
    if (v63)
    {
      goto LABEL_32;
    }

LABEL_35:
    v16 = 0;
    goto LABEL_36;
  }

  v77 = 0;
  v17 = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v62, v13, v64, 1, 0, &v77);
  v14 = v77;
  if (v17)
  {
    goto LABEL_5;
  }

  v51 = BUZipLog();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    sub_241DD0790(v51);
  }

  v52 = v14;
  v15 = 0;
  v14 = v52;
  if (!v52)
  {
    goto LABEL_35;
  }

LABEL_32:
  v53 = BUZipLog();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
  {
    sub_241DD084C();
  }

  v16 = v52;
LABEL_36:
  if (error)
  {
    v54 = v16;
    v55 = v16;
    v16 = v54;
    *error = v54;
  }

  v56 = v16;

  return v15 & 1;
}

@end