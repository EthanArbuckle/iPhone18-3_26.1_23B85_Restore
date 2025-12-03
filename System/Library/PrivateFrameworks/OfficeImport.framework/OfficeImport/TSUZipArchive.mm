@interface TSUZipArchive
- (BOOL)hasNonEmptyEntries;
- (BOOL)isValid;
- (BOOL)readCentralFileHeaderWithBuffer:(const void *)buffer dataSize:(unint64_t *)size error:(id *)error;
- (BOOL)readExtraFieldsFromBuffer:(const void *)buffer extraFieldsLength:(unsigned __int16)length entry:(id)entry dataSize:(unint64_t *)size error:(id *)error;
- (BOOL)readFileCommentFromBuffer:(const void *)buffer fileCommentLength:(unsigned __int16)length entry:(id)entry dataSize:(unint64_t *)size error:(id *)error;
- (BOOL)readFilenameFromBuffer:(const void *)buffer nameLength:(unsigned __int16)length entry:(id)entry dataSize:(unint64_t *)size error:(id *)error;
- (BOOL)readLocalFileHeaderFilenameAndExtraFieldsData:(id)data forEntry:(id)entry error:(id *)error;
- (BOOL)readZip64ExtraFieldFromBuffer:(const void *)buffer dataLength:(unsigned __int16)length entry:(id)entry error:(id *)error;
- (TSUZipArchive)initWithOptions:(unint64_t)options;
- (id)debugDescription;
- (id)entryForName:(id)name;
- (id)newArchiveReadChannel;
- (id)normalizeEntryName:(id)name;
- (id)readChannelForEntry:(id)entry validateCRC:(BOOL)c;
- (id)streamReadChannelForEntry:(id)entry validateCRC:(BOOL)c;
- (unint64_t)archiveLength;
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

@implementation TSUZipArchive

- (TSUZipArchive)initWithOptions:(unint64_t)options
{
  v11.receiver = self;
  v11.super_class = TSUZipArchive;
  v4 = [(TSUZipArchive *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = options;
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    entriesMap = v5->_entriesMap;
    v5->_entriesMap = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB40]);
    entries = v5->_entries;
    v5->_entries = v8;
  }

  return v5;
}

- (BOOL)hasNonEmptyEntries
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__TSUZipArchive_hasNonEmptyEntries__block_invoke;
  v4[3] = &unk_2799C6920;
  v4[4] = &v5;
  [(TSUZipArchive *)self enumerateEntriesUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __35__TSUZipArchive_hasNonEmptyEntries__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 size];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)readArchiveWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  archiveLength = [(TSUZipArchive *)self archiveLength];
  newArchiveReadChannel = [(TSUZipArchive *)self newArchiveReadChannel];
  v10 = newArchiveReadChannel;
  if (newArchiveReadChannel)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__TSUZipArchive_readArchiveWithQueue_completion___block_invoke;
    aBlock[3] = &unk_2799C6970;
    v11 = v21;
    v12 = newArchiveReadChannel;
    v21[0] = v12;
    v21[1] = self;
    v22 = queueCopy;
    v23 = completionCopy;
    v13 = _Block_copy(aBlock);
    if ((self->_options & 8) != 0)
    {
      [(TSUZipArchive *)self readLocalFileHeaderEntriesFromChannel:v12 offset:0 previousEntry:0 seekAttempts:0 seekForward:0 completion:v13];
    }

    else
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __49__TSUZipArchive_readArchiveWithQueue_completion___block_invoke_3;
      v16[3] = &unk_2799C69C0;
      v16[4] = self;
      v19 = archiveLength - 22;
      v17 = v12;
      v18 = v13;
      [TSUIOUtils readAllFromChannel:v17 offset:archiveLength - 22 length:22 completion:v16];
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__TSUZipArchive_readArchiveWithQueue_completion___block_invoke_6;
    block[3] = &unk_2799C69E8;
    v11 = &v15;
    v15 = completionCopy;
    dispatch_async(queueCopy, block);
  }
}

void __49__TSUZipArchive_readArchiveWithQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) close];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5[8])
    {
      [v5 collapseCommonRootDirectory];
      v5 = *(a1 + 40);
    }

    v4 = v5;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__TSUZipArchive_readArchiveWithQueue_completion___block_invoke_2;
  block[3] = &unk_2799C6948;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v12 = v3;
  v13 = v7;
  v11 = v4;
  v8 = v3;
  v9 = v4;
  dispatch_async(v6, block);
}

void __49__TSUZipArchive_readArchiveWithQueue_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v6 = *(a1 + 56);
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__TSUZipArchive_readArchiveWithQueue_completion___block_invoke_4;
    v11[3] = &unk_2799C6998;
    v11[4] = v8;
    v12 = v7;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v13 = v9;
    v14 = v10;
    [v8 readEndOfCentralDirectoryData:a2 eocdOffset:v6 channel:v12 completion:v11];
  }
}

void __49__TSUZipArchive_readArchiveWithQueue_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v10 = v3;
  if ((*(*(a1 + 32) + 8) & 4) != 0 && (v5 = [v3 code], v4 = v10, v5 == 259) && (objc_msgSend(v10, "domain"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277CCA050]), v6, v4 = v10, v7))
  {
    v8 = [v10 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"TSUZipArchiveErrorDescription"];

    if (v9)
    {
      if (TSUDefaultCat_init_token != -1)
      {
        __49__TSUZipArchive_readArchiveWithQueue_completion___block_invoke_4_cold_1();
      }

      [*(a1 + 32) readLocalFileHeaderEntriesFromChannel:*(a1 + 40) offset:0 previousEntry:0 seekAttempts:0 seekForward:0 completion:*(a1 + 48)];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    if (!v4)
    {
      *(*(a1 + 32) + 32) = *(a1 + 56);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __49__TSUZipArchive_readArchiveWithQueue_completion___block_invoke_5()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __49__TSUZipArchive_readArchiveWithQueue_completion___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)readEndOfCentralDirectoryData:(id)data eocdOffset:(int64_t)offset channel:(id)channel completion:(id)completion
{
  v29[1] = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  completionCopy = completion;
  size_ptr = 0;
  buffer_ptr = 0;
  v12 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  if (size_ptr <= 0x15)
  {
    v13 = MEMORY[0x277CCA9B8];
    v28 = @"TSUZipArchiveErrorDescription";
    v29[0] = @"Wrong data size for TSUZipEndOfCentralDirectoryRecord";
    v14 = MEMORY[0x277CBEAC0];
    v15 = v29;
    v16 = &v28;
    goto LABEL_8;
  }

  if (*buffer_ptr != 101010256)
  {
    v13 = MEMORY[0x277CCA9B8];
    v26 = @"TSUZipArchiveErrorDescription";
    v27 = @"Don't support end of central directory comments";
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v27;
    v16 = &v26;
LABEL_8:
    v17 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
    v18 = [v13 tsu_fileReadCorruptedFileErrorWithUserInfo:v17];

    if (v18)
    {
      completionCopy[2](completionCopy, v18);
    }

    else
    {
      v19 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
      completionCopy[2](completionCopy, v19);
    }

    goto LABEL_11;
  }

  if (*(buffer_ptr + 2) || *(buffer_ptr + 3))
  {
    v13 = MEMORY[0x277CCA9B8];
    v24 = @"TSUZipArchiveErrorDescription";
    v25 = @"Don't support multi-disk";
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v25;
    v16 = &v24;
    goto LABEL_8;
  }

  if (*(buffer_ptr + 5) == 0xFFFFLL || *(buffer_ptr + 4) == -1 || *(buffer_ptr + 3) == -1)
  {
    [(TSUZipArchive *)self readZip64EndOfCentralDirectoryLocatorWithChannel:channelCopy eocdOffset:offset completion:completionCopy];
  }

  else
  {
    [TSUZipArchive readCentralDirectoryWithEntryCount:"readCentralDirectoryWithEntryCount:offset:size:channel:completion:" offset:? size:? channel:? completion:?];
  }

LABEL_11:
}

- (void)readZip64EndOfCentralDirectoryLocatorWithChannel:(id)channel eocdOffset:(int64_t)offset completion:(id)completion
{
  v17[1] = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  completionCopy = completion;
  if (offset > 0x13)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __88__TSUZipArchive_readZip64EndOfCentralDirectoryLocatorWithChannel_eocdOffset_completion___block_invoke;
    v13[3] = &unk_2799C6A10;
    v13[4] = self;
    v14 = channelCopy;
    v15 = completionCopy;
    [TSUIOUtils readAllFromChannel:v14 offset:offset - 20 length:20 completion:v13];
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v16 = @"TSUZipArchiveErrorDescription";
    v17[0] = @"File isn't long enough for Zip64 locator";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v12 = [v10 tsu_fileReadCorruptedFileErrorWithUserInfo:v11];
    (*(completionCopy + 2))(completionCopy, v12);
  }
}

uint64_t __88__TSUZipArchive_readZip64EndOfCentralDirectoryLocatorWithChannel_eocdOffset_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) readZip64EndOfCentralDirectoryLocatorData:a2 channel:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)readZip64EndOfCentralDirectoryLocatorData:(id)data channel:(id)channel completion:(id)completion
{
  v25[1] = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  completionCopy = completion;
  size_ptr = 0;
  buffer_ptr = 0;
  v10 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  if (size_ptr <= 0x13)
  {
    v11 = MEMORY[0x277CCA9B8];
    v24 = @"TSUZipArchiveErrorDescription";
    v25[0] = @"Wrong data size for TSUZip64EndOfCentralDirectoryLocatorRecord";
    v12 = MEMORY[0x277CBEAC0];
    v13 = v25;
    v14 = &v24;
  }

  else if (*buffer_ptr == 117853008)
  {
    if (!*(buffer_ptr + 1) && *(buffer_ptr + 4) == 1)
    {
      [(TSUZipArchive *)self readZip64EndOfCentralDirectoryWithChannel:channelCopy offset:*(buffer_ptr + 1) completion:completionCopy];
      goto LABEL_12;
    }

    v11 = MEMORY[0x277CCA9B8];
    v20 = @"TSUZipArchiveErrorDescription";
    v21 = @"Multi-disk is not supported";
    v12 = MEMORY[0x277CBEAC0];
    v13 = &v21;
    v14 = &v20;
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v22 = @"TSUZipArchiveErrorDescription";
    v23 = @"Zip64 end of central directory locator record signature not found";
    v12 = MEMORY[0x277CBEAC0];
    v13 = &v23;
    v14 = &v22;
  }

  v15 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:1];
  v16 = [v11 tsu_fileReadCorruptedFileErrorWithUserInfo:v15];

  if (v16)
  {
    completionCopy[2](completionCopy, v16);
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
    completionCopy[2](completionCopy, v17);
  }

LABEL_12:
}

- (void)readZip64EndOfCentralDirectoryWithChannel:(id)channel offset:(int64_t)offset completion:(id)completion
{
  channelCopy = channel;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__TSUZipArchive_readZip64EndOfCentralDirectoryWithChannel_offset_completion___block_invoke;
  v12[3] = &unk_2799C6A10;
  v12[4] = self;
  v13 = channelCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = channelCopy;
  [TSUIOUtils readAllFromChannel:v11 offset:offset length:56 completion:v12];
}

uint64_t __77__TSUZipArchive_readZip64EndOfCentralDirectoryWithChannel_offset_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) readZip64EndOfCentralDirectoryData:a2 channel:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)readZip64EndOfCentralDirectoryData:(id)data channel:(id)channel completion:(id)completion
{
  v25[1] = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  completionCopy = completion;
  size_ptr = 0;
  buffer_ptr = 0;
  v10 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  if (size_ptr <= 0x37)
  {
    v11 = MEMORY[0x277CCA9B8];
    v24 = @"TSUZipArchiveErrorDescription";
    v25[0] = @"Wrong data size for TSUZip64EndOfCentralDirectoryRecord";
    v12 = MEMORY[0x277CBEAC0];
    v13 = v25;
    v14 = &v24;
  }

  else if (*buffer_ptr == 101075792)
  {
    if (!*(buffer_ptr + 4) && !*(buffer_ptr + 5))
    {
      [(TSUZipArchive *)self readCentralDirectoryWithEntryCount:*(buffer_ptr + 4) offset:*(buffer_ptr + 6) size:*(buffer_ptr + 5) channel:channelCopy completion:completionCopy];
      goto LABEL_11;
    }

    v11 = MEMORY[0x277CCA9B8];
    v20 = @"TSUZipArchiveErrorDescription";
    v21 = @"Multi-disk is not supported";
    v12 = MEMORY[0x277CBEAC0];
    v13 = &v21;
    v14 = &v20;
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v22 = @"TSUZipArchiveErrorDescription";
    v23 = @"Zip64 end of central directory record signature not found";
    v12 = MEMORY[0x277CBEAC0];
    v13 = &v23;
    v14 = &v22;
  }

  v15 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:1];
  v16 = [v11 tsu_fileReadCorruptedFileErrorWithUserInfo:v15];

  if (v16)
  {
    completionCopy[2](completionCopy, v16);
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
    completionCopy[2](completionCopy, v17);
  }

LABEL_11:
}

- (void)readCentralDirectoryWithEntryCount:(unint64_t)count offset:(int64_t)offset size:(unint64_t)size channel:(id)channel completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__TSUZipArchive_readCentralDirectoryWithEntryCount_offset_size_channel_completion___block_invoke;
  v14[3] = &unk_2799C6A38;
  v15 = completionCopy;
  countCopy = count;
  v14[4] = self;
  v13 = completionCopy;
  [TSUIOUtils readAllFromChannel:channel offset:offset length:size completion:v14];
}

uint64_t __83__TSUZipArchive_readCentralDirectoryWithEntryCount_offset_size_channel_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [*(a1 + 32) readCentralDirectoryData:a2 entryCount:*(a1 + 48) completion:*(a1 + 40)];
  }
}

- (void)readCentralDirectoryData:(id)data entryCount:(unint64_t)count completion:(id)completion
{
  completionCopy = completion;
  size_ptr = 0;
  buffer_ptr = 0;
  v9 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  v10 = 0;
  if (!count)
  {
    goto LABEL_7;
  }

  v11 = 1;
  do
  {
    v12 = v10;
    v15 = v10;
    v13 = [(TSUZipArchive *)self readCentralFileHeaderWithBuffer:&buffer_ptr dataSize:&size_ptr error:&v15];
    v10 = v15;

    if (!v13)
    {
      break;
    }
  }

  while (v11++ < count);
  if (!v13)
  {
    if (!v10)
    {
      v10 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
    }

    completionCopy[2](completionCopy, v10);
  }

  else
  {
LABEL_7:
    completionCopy[2](completionCopy, 0);
  }
}

- (BOOL)readCentralFileHeaderWithBuffer:(const void *)buffer dataSize:(unint64_t *)size error:(id *)error
{
  v44[1] = *MEMORY[0x277D85DE8];
  v9 = objc_alloc_init(TSUZipEntry);
  v10 = v9;
  if (*size <= 0x2D)
  {
    v14 = MEMORY[0x277CCA9B8];
    v43 = @"TSUZipArchiveErrorDescription";
    v44[0] = @"Central directory too short";
    v15 = MEMORY[0x277CBEAC0];
    v16 = v44;
    v17 = &v43;
    goto LABEL_9;
  }

  v11 = *buffer;
  v12 = *buffer + 46;
  v13 = **buffer;
  *size -= 46;
  *buffer = v12;
  if (v13 != 33639248)
  {
    v14 = MEMORY[0x277CCA9B8];
    v41 = @"TSUZipArchiveErrorDescription";
    v42 = @"Central directory file header has bad signature";
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v42;
    v17 = &v41;
    goto LABEL_9;
  }

  if (v11[4])
  {
    v14 = MEMORY[0x277CCA9B8];
    v39 = @"TSUZipArchiveErrorDescription";
    v40 = @"Encrypted files are not supported";
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v40;
    v17 = &v39;
    goto LABEL_9;
  }

  if (v11[17])
  {
    v14 = MEMORY[0x277CCA9B8];
    v37 = @"TSUZipArchiveErrorDescription";
    v38 = @"No multi-disk support";
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v38;
    v17 = &v37;
LABEL_9:
    v18 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
    v19 = [v14 tsu_fileReadCorruptedFileErrorWithUserInfo:v18];

    goto LABEL_10;
  }

  v23 = v11[5];
  if (v11[5])
  {
    v24 = v23 == TSUZipDeflateCompressionMethod;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    v14 = MEMORY[0x277CCA9B8];
    v35 = @"TSUZipArchiveErrorDescription";
    v36 = @"Unsupported compression method";
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v36;
    v17 = &v35;
    goto LABEL_9;
  }

  [(TSUZipEntry *)v9 setCompressed:v23 == TSUZipDeflateCompressionMethod];
  v25 = [objc_alloc(MEMORY[0x277CBEAA8]) tsu_initWithDOSTime:v11[7] | (v11[6] << 16)];
  [(TSUZipEntry *)v10 setLastModificationDate:v25];

  [(TSUZipEntry *)v10 setCRC:*(v11 + 4)];
  [(TSUZipEntry *)v10 setCompressedSize:*(v11 + 5)];
  [(TSUZipEntry *)v10 setSize:*(v11 + 6)];
  [(TSUZipEntry *)v10 setOffset:*(v11 + 21)];
  [(TSUZipEntry *)v10 setNameLength:v11[14]];
  [(TSUZipEntry *)v10 setExtraFieldsLength:v11[15]];
  v26 = v11[14];
  v34 = 0;
  v27 = [(TSUZipArchive *)self readFilenameFromBuffer:buffer nameLength:v26 entry:v10 dataSize:size error:&v34];
  v28 = v34;
  v19 = v28;
  if (v27)
  {
    if (!v11[15] || (v33 = v28, v29 = [TSUZipArchive readExtraFieldsFromBuffer:"readExtraFieldsFromBuffer:extraFieldsLength:entry:dataSize:error:" extraFieldsLength:buffer entry:? dataSize:? error:?], v30 = v33, v19, v19 = v30, v29))
    {
      if (!v11[16] || (v31 = [TSUZipArchive readFileCommentFromBuffer:"readFileCommentFromBuffer:fileCommentLength:entry:dataSize:error:" fileCommentLength:buffer entry:? dataSize:? error:?], v32 = v19, v19, v19 = v32, v31))
      {
        [(TSUZipArchive *)self addEntry:v10];
        v21 = 1;
        goto LABEL_13;
      }
    }
  }

LABEL_10:
  if (error)
  {
    v20 = v19;
    v21 = 0;
    *error = v19;
  }

  else
  {
    v21 = 0;
  }

LABEL_13:

  return v21;
}

- (BOOL)readFilenameFromBuffer:(const void *)buffer nameLength:(unsigned __int16)length entry:(id)entry dataSize:(unint64_t *)size error:(id *)error
{
  lengthCopy = length;
  v24[1] = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  if (*size < lengthCopy)
  {
    v12 = MEMORY[0x277CCA9B8];
    v21 = @"TSUZipArchiveErrorDescription";
    v22 = @"Central directory too short";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v14 = [v12 tsu_fileReadCorruptedFileErrorWithUserInfo:v13];
LABEL_6:
    v16 = 0;
    goto LABEL_7;
  }

  v15 = lengthCopy;
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*buffer length:lengthCopy encoding:4];
  [entryCopy setName:v13];
  *size -= v15;
  *buffer = *buffer + v15;
  v16 = v13 != 0;
  if (!v13)
  {
    v17 = MEMORY[0x277CCA9B8];
    v23 = @"TSUZipArchiveErrorDescription";
    v24[0] = @"Couldn't read name";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v14 = [v17 tsu_fileReadCorruptedFileErrorWithUserInfo:v18];

    goto LABEL_6;
  }

  v14 = 0;
LABEL_7:

  if (error && !v16)
  {
    v19 = v14;
    *error = v14;
  }

  return v16;
}

- (BOOL)readExtraFieldsFromBuffer:(const void *)buffer extraFieldsLength:(unsigned __int16)length entry:(id)entry dataSize:(unint64_t *)size error:(id *)error
{
  lengthCopy = length;
  v40[1] = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v13 = entryCopy;
  if (*size < lengthCopy)
  {
    v14 = MEMORY[0x277CCA9B8];
    v37 = @"TSUZipArchiveErrorDescription";
    v38 = @"Central directory too short";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v16 = [v14 tsu_fileReadCorruptedFileErrorWithUserInfo:v15];

    v17 = 0;
    if (!error)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  errorCopy = error;
  v36 = entryCopy;
  v16 = 0;
  v18 = *buffer + lengthCopy;
  while (2)
  {
    v19 = *buffer;
    v20 = *buffer + 4;
    v17 = v20 > v18;
    if (v20 > v18)
    {
      v24 = *buffer;
    }

    else
    {
      v21 = *size;
      while (1)
      {
        v22 = v21 - 4;
        v23 = v19[1];
        v24 = &v20[v23];
        if (&v20[v23] > v18)
        {
          *size = v22;
          *buffer = v20;
          v29 = MEMORY[0x277CCA9B8];
          v39 = @"TSUZipArchiveErrorDescription";
          v40[0] = @"Invalid Zip entry extra field length";
          v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
          v26 = [v29 tsu_fileReadCorruptedFileErrorWithUserInfo:v30];

          goto LABEL_14;
        }

        if (*v19 == TSUZip64ExtraFieldSignature)
        {
          break;
        }

        v21 = v22 - v23;
        v20 = v24 + 4;
        v19 = v24;
        v17 = v24 + 4 > v18;
        if (v24 + 4 > v18)
        {
          *size = v21;
          *buffer = v24;
          goto LABEL_15;
        }
      }

      *size = v22;
      *buffer = v20;
      v25 = [TSUZipArchive readZip64ExtraFieldFromBuffer:"readZip64ExtraFieldFromBuffer:dataLength:entry:error:" dataLength:? entry:? error:?];
      v26 = v16;

      v27 = v19[1];
      v28 = *buffer;
      *size -= v27;
      *buffer = &v28[v27];
      v16 = v26;
      if (v25)
      {
        continue;
      }

LABEL_14:
      v24 = *buffer;
      v16 = v26;
    }

    break;
  }

LABEL_15:
  error = errorCopy;
  if (v24 != v18)
  {
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipArchive readExtraFieldsFromBuffer:extraFieldsLength:entry:dataSize:error:]"];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipArchive.m"];
    [OITSUAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:453 isFatal:0 description:"Unexpected buffer position while reading extra fields."];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v13 = v36;
  if (errorCopy)
  {
LABEL_18:
    if (!v17)
    {
      v33 = v16;
      *error = v16;
    }
  }

LABEL_20:

  return v17;
}

- (BOOL)readZip64ExtraFieldFromBuffer:(const void *)buffer dataLength:(unsigned __int16)length entry:(id)entry error:(id *)error
{
  lengthCopy = length;
  v27[1] = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  if ([entryCopy size] == 0xFFFFFFFFLL)
  {
    v10 = lengthCopy >= 8;
    LOWORD(lengthCopy) = lengthCopy - 8;
    if (!v10)
    {
      v15 = MEMORY[0x277CCA9B8];
      v26 = @"TSUZipArchiveErrorDescription";
      v27[0] = @"Not enough room for Zip64 uncompressed size";
      v16 = MEMORY[0x277CBEAC0];
      v17 = v27;
      v18 = &v26;
      goto LABEL_14;
    }

    v11 = *buffer;
    buffer = buffer + 8;
    [entryCopy setSize:v11];
  }

  if ([entryCopy compressedSize] == 0xFFFFFFFFLL)
  {
    if (lengthCopy < 8u)
    {
      v15 = MEMORY[0x277CCA9B8];
      v24 = @"TSUZipArchiveErrorDescription";
      v25 = @"Not enough room for Zip64 compressed size";
      v16 = MEMORY[0x277CBEAC0];
      v17 = &v25;
      v18 = &v24;
      goto LABEL_14;
    }

    v12 = *buffer;
    buffer = buffer + 8;
    [entryCopy setCompressedSize:v12];
    LOWORD(lengthCopy) = lengthCopy - 8;
  }

  if ([entryCopy offset] != 0xFFFFFFFFLL)
  {
LABEL_11:
    v13 = 0;
    v14 = 1;
    goto LABEL_17;
  }

  if (lengthCopy >= 8u)
  {
    [entryCopy setOffset:*buffer];
    goto LABEL_11;
  }

  v15 = MEMORY[0x277CCA9B8];
  v22 = @"TSUZipArchiveErrorDescription";
  v23 = @"Not enough room for Zip64 offset";
  v16 = MEMORY[0x277CBEAC0];
  v17 = &v23;
  v18 = &v22;
LABEL_14:
  v19 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
  v13 = [v15 tsu_fileReadCorruptedFileErrorWithUserInfo:v19];

  if (error)
  {
    v20 = v13;
    v14 = 0;
    *error = v13;
  }

  else
  {
    v14 = 0;
  }

LABEL_17:

  return v14;
}

- (BOOL)readFileCommentFromBuffer:(const void *)buffer fileCommentLength:(unsigned __int16)length entry:(id)entry dataSize:(unint64_t *)size error:(id *)error
{
  lengthCopy = length;
  v20[1] = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v12 = *size;
  v13 = lengthCopy;
  if (*size < lengthCopy)
  {
    v15 = MEMORY[0x277CCA9B8];
    v19 = @"TSUZipArchiveErrorDescription";
    v20[0] = @"Central directory too short";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v14 = [v15 tsu_fileReadCorruptedFileErrorWithUserInfo:v16];

    if (error)
    {
      v17 = v14;
      *error = v14;
    }
  }

  else
  {
    v14 = 0;
    *size = v12 - v13;
    *buffer = *buffer + v13;
  }

  return v12 >= v13;
}

- (void)readLocalFileHeaderEntriesFromChannel:(id)channel offset:(int64_t)offset previousEntry:(id)entry seekAttempts:(unsigned int)attempts seekForward:(BOOL)forward completion:(id)completion
{
  channelCopy = channel;
  entryCopy = entry;
  completionCopy = completion;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __112__TSUZipArchive_readLocalFileHeaderEntriesFromChannel_offset_previousEntry_seekAttempts_seekForward_completion___block_invoke;
  v20[3] = &unk_2799C6A88;
  v23 = completionCopy;
  offsetCopy = offset;
  v20[4] = self;
  v21 = channelCopy;
  forwardCopy = forward;
  attemptsCopy = attempts;
  v22 = entryCopy;
  v17 = completionCopy;
  v18 = entryCopy;
  v19 = channelCopy;
  [TSUIOUtils readAllFromChannel:v19 offset:offset length:30 completion:v20];
}

void __112__TSUZipArchive_readLocalFileHeaderEntriesFromChannel_offset_previousEntry_seekAttempts_seekForward_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    v6 = *(a1 + 64);
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __112__TSUZipArchive_readLocalFileHeaderEntriesFromChannel_offset_previousEntry_seekAttempts_seekForward_completion___block_invoke_2;
    v14[3] = &unk_2799C6A60;
    v9 = *(a1 + 48);
    v18 = *(a1 + 76);
    v17 = *(a1 + 72);
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    *&v13 = v8;
    *(&v13 + 1) = v9;
    v15 = v13;
    v16 = v12;
    [v8 readLocalFileHeaderData:a2 atOffset:v6 channel:v7 completion:v14];
  }
}

void __112__TSUZipArchive_readLocalFileHeaderEntriesFromChannel_offset_previousEntry_seekAttempts_seekForward_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, char a4)
{
  v32 = a2;
  v7 = a3;
  v8 = v32;
  if (v7)
  {
    v9 = *(*(a1 + 56) + 16);
LABEL_3:
    v9();
    goto LABEL_11;
  }

  if (v32)
  {
    [*(a1 + 32) addEntry:v32];
    v10 = *(a1 + 40);
    if (v10 && (*(a1 + 68) & 1) == 0 && *(a1 + 64))
    {
      [v10 setCompressedSize:{objc_msgSend(*(a1 + 40), "compressedSize") - *(a1 + 64)}];
    }

    v11 = [v32 offset];
    v12 = [v32 fileHeaderLength] + v11;
    v13 = [v32 compressedSize];
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = v12 + v13;
    v17 = *(a1 + 32);
    v18 = v32;
    v19 = 0;
    v20 = 0;
    goto LABEL_10;
  }

  if (a4)
  {
LABEL_39:
    v9 = *(*(a1 + 56) + 16);
    goto LABEL_3;
  }

  v21 = *(a1 + 64);
  if (*(a1 + 68))
  {
    if (v21)
    {
LABEL_25:
      v24 = 1;
      v23 = 100;
      goto LABEL_26;
    }

LABEL_22:
    if (TSUDefaultCat_init_token != -1)
    {
      __112__TSUZipArchive_readLocalFileHeaderEntriesFromChannel_offset_previousEntry_seekAttempts_seekForward_completion___block_invoke_2_cold_2();
    }

    LODWORD(v21) = 0;
    goto LABEL_25;
  }

  v22 = [*(a1 + 40) compressedSize];
  if (v22 >= 0x64)
  {
    v23 = 100;
  }

  else
  {
    v23 = v22;
  }

  if (v23 == v21)
  {
    goto LABEL_22;
  }

  if (!v21)
  {
    v28 = v22;
    if (TSUDefaultCat_init_token == -1)
    {
      if (v22)
      {
LABEL_33:
        v25 = 1;
        goto LABEL_34;
      }
    }

    else
    {
      __112__TSUZipArchive_readLocalFileHeaderEntriesFromChannel_offset_previousEntry_seekAttempts_seekForward_completion___block_invoke_2_cold_1();
      if (v28)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (TSUDefaultCat_init_token != -1)
    {
      __112__TSUZipArchive_readLocalFileHeaderEntriesFromChannel_offset_previousEntry_seekAttempts_seekForward_completion___block_invoke_2_cold_3();
    }

    goto LABEL_39;
  }

  v24 = 0;
LABEL_26:
  if (v23 <= v21)
  {
    goto LABEL_37;
  }

  v25 = (v21 + 1);
  if (!v24)
  {
LABEL_34:
    v29 = [*(a1 + 40) offset];
    v30 = [*(a1 + 40) fileHeaderLength];
    v31 = [*(a1 + 40) compressedSize];
    v20 = 0;
    v16 = v29 - v25 + v30 + v31;
    goto LABEL_35;
  }

  v26 = [*(a1 + 40) offset];
  v27 = [*(a1 + 40) fileHeaderLength];
  v16 = v26 + v25 + v27 + [*(a1 + 40) compressedSize];
  v20 = 1;
LABEL_35:
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v19 = v25;
LABEL_10:
  [v17 readLocalFileHeaderEntriesFromChannel:v14 offset:v16 previousEntry:v18 seekAttempts:v19 seekForward:v20 completion:v15];
LABEL_11:
}

void __112__TSUZipArchive_readLocalFileHeaderEntriesFromChannel_offset_previousEntry_seekAttempts_seekForward_completion___block_invoke_3()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __112__TSUZipArchive_readLocalFileHeaderEntriesFromChannel_offset_previousEntry_seekAttempts_seekForward_completion___block_invoke_4()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __112__TSUZipArchive_readLocalFileHeaderEntriesFromChannel_offset_previousEntry_seekAttempts_seekForward_completion___block_invoke_5()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (void)readLocalFileHeaderData:(id)data atOffset:(int64_t)offset channel:(id)channel completion:(id)completion
{
  v45[1] = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  completionCopy = completion;
  size_ptr = 0;
  buffer_ptr = 0;
  v12 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  if (size_ptr <= 0x1D)
  {
    v20 = MEMORY[0x277CCA9B8];
    v44 = @"TSUZipArchiveErrorDescription";
    v45[0] = @"Wrong data size for TSUZipLocalFileHeaderRecord";
    v21 = MEMORY[0x277CBEAC0];
    v22 = 1;
    v23 = v45;
    v24 = &v44;
    goto LABEL_13;
  }

  v13 = buffer_ptr;
  if (*buffer_ptr != 67324752)
  {
    v22 = *buffer_ptr == 33639248;
    v20 = MEMORY[0x277CCA9B8];
    v42 = @"TSUZipArchiveErrorDescription";
    v43 = @"Local file header has bad signature";
    v21 = MEMORY[0x277CBEAC0];
    v23 = &v43;
    v24 = &v42;
LABEL_13:
    v25 = [v21 dictionaryWithObjects:v23 forKeys:v24 count:1];
    v19 = [v20 tsu_fileReadCorruptedFileErrorWithUserInfo:v25];

    if ([(NSMutableOrderedSet *)self->_entries count])
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, v22);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v14 = *(buffer_ptr + 3);
  if (v14)
  {
    v26 = MEMORY[0x277CCA9B8];
    v40 = @"TSUZipArchiveErrorDescription";
    v41 = @"Encrypted files are not supported";
    v27 = MEMORY[0x277CBEAC0];
    v28 = &v41;
    v29 = &v40;
  }

  else if ((v14 & 8) != 0)
  {
    v26 = MEMORY[0x277CCA9B8];
    v38 = @"TSUZipArchiveErrorDescription";
    v39 = @"Local file header does not have the entry CRC and size";
    v27 = MEMORY[0x277CBEAC0];
    v28 = &v39;
    v29 = &v38;
  }

  else
  {
    if (*(buffer_ptr + 4))
    {
      v15 = *(buffer_ptr + 4) == TSUZipDeflateCompressionMethod;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v16 = objc_alloc_init(TSUZipEntry);
      [(TSUZipEntry *)v16 setCompressed:v13[4] == TSUZipDeflateCompressionMethod];
      v17 = [objc_alloc(MEMORY[0x277CBEAA8]) tsu_initWithDOSTime:v13[6] | (v13[5] << 16)];
      [(TSUZipEntry *)v16 setLastModificationDate:v17];

      [(TSUZipEntry *)v16 setCRC:*(v13 + 7)];
      [(TSUZipEntry *)v16 setCompressedSize:*(v13 + 9)];
      [(TSUZipEntry *)v16 setSize:*(v13 + 11)];
      [(TSUZipEntry *)v16 setOffset:offset];
      [(TSUZipEntry *)v16 setNameLength:v13[13]];
      [(TSUZipEntry *)v16 setExtraFieldsLength:v13[14]];
      v18 = v13[14] + v13[13];
      [(TSUZipEntry *)v16 setFileHeaderLength:v18 + 30];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __69__TSUZipArchive_readLocalFileHeaderData_atOffset_channel_completion___block_invoke;
      v31[3] = &unk_2799C6A10;
      v31[4] = self;
      v32 = v16;
      v33 = completionCopy;
      v19 = v16;
      [TSUIOUtils readAllFromChannel:channelCopy offset:offset + 30 length:v18 completion:v31];

      goto LABEL_21;
    }

    v26 = MEMORY[0x277CCA9B8];
    v36 = @"TSUZipArchiveErrorDescription";
    v37 = @"Unsupported compression method";
    v27 = MEMORY[0x277CBEAC0];
    v28 = &v37;
    v29 = &v36;
  }

  v30 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:1];
  v19 = [v26 tsu_fileReadCorruptedFileErrorWithUserInfo:v30];

LABEL_18:
  if (!v19)
  {
    v19 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
  }

  (*(completionCopy + 2))(completionCopy, 0, v19, 0);
LABEL_21:
}

void __69__TSUZipArchive_readLocalFileHeaderData_atOffset_channel_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || (v7 = *(a1 + 32), v8 = *(a1 + 40), v15 = 0, v9 = [v7 readLocalFileHeaderFilenameAndExtraFieldsData:v5 forEntry:v8 error:&v15], v6 = v15, !v9))
  {
    v14 = *(*(a1 + 48) + 16);
  }

  else
  {
    v10 = [*(a1 + 40) offset];
    v11 = [*(a1 + 40) fileHeaderLength] + v10;
    v12 = [*(a1 + 40) compressedSize];
    v13 = *(a1 + 32);
    if (v11 + v12 > *(v13 + 32))
    {
      *(v13 + 32) = v11 + v12;
    }

    v14 = *(*(a1 + 48) + 16);
  }

  v14();
}

- (BOOL)readLocalFileHeaderFilenameAndExtraFieldsData:(id)data forEntry:(id)entry error:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  size_ptr = 0;
  buffer_ptr = 0;
  v9 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  v10 = size_ptr;
  nameLength = [entryCopy nameLength];
  if (v10 >= [entryCopy extraFieldsLength] + nameLength)
  {
    v20 = 0;
    v16 = -[TSUZipArchive readFilenameFromBuffer:nameLength:entry:dataSize:error:](self, "readFilenameFromBuffer:nameLength:entry:dataSize:error:", &buffer_ptr, [entryCopy nameLength], entryCopy, &size_ptr, &v20);
    v13 = v20;
    if (!v16)
    {
      v15 = 0;
      if (!error)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    if (![entryCopy extraFieldsLength])
    {
      v15 = 1;
      goto LABEL_11;
    }

    v19 = v13;
    v15 = -[TSUZipArchive readExtraFieldsFromBuffer:extraFieldsLength:entry:dataSize:error:](self, "readExtraFieldsFromBuffer:extraFieldsLength:entry:dataSize:error:", &buffer_ptr, [entryCopy extraFieldsLength], entryCopy, &size_ptr, &v19);
    v14 = v19;
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v23 = @"TSUZipArchiveErrorDescription";
    v24[0] = @"Wrong data size for TSUZipLocalFileHeaderRecord filename and extra fields";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v14 = [v12 tsu_fileReadCorruptedFileErrorWithUserInfo:v13];
    v15 = 0;
  }

  v13 = v14;
  if (!error)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (!v15)
  {
    v17 = v13;
    v15 = 0;
    *error = v13;
  }

LABEL_11:

  return v15;
}

- (void)addEntry:(id)entry
{
  entryCopy = entry;
  if (entryCopy)
  {
    v8 = entryCopy;
    name = [entryCopy name];
    v6 = [(TSUZipArchive *)self normalizeEntryName:name];

    v7 = [(NSMutableDictionary *)self->_entriesMap objectForKeyedSubscript:v6];

    if (v7)
    {
      if (TSUDefaultCat_init_token != -1)
      {
        [TSUZipArchive addEntry:];
      }
    }

    else
    {
      [(NSMutableDictionary *)self->_entriesMap setObject:v8 forKeyedSubscript:v6];
      [(NSMutableOrderedSet *)self->_entries addObject:v8];
    }

    entryCopy = v8;
  }
}

void __26__TSUZipArchive_addEntry___block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (id)readChannelForEntry:(id)entry validateCRC:(BOOL)c
{
  cCopy = c;
  entryCopy = entry;
  if ([(NSMutableOrderedSet *)self->_entries containsObject:entryCopy])
  {
    v7 = [entryCopy isCompressed] ^ 1;
    v8 = [[TSUZipReadChannel alloc] initWithEntry:entryCopy archive:self validateCRC:cCopy & v7];
    if ((v7 & 1) == 0)
    {
      v9 = [TSUBufferedReadChannel alloc];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __49__TSUZipArchive_readChannelForEntry_validateCRC___block_invoke;
      v14[3] = &unk_2799C6AB0;
      v15 = entryCopy;
      v16 = cCopy;
      v10 = [(TSUBufferedReadChannel *)v9 initWithReadChannel:v8 blockInfos:0 streamReadChannelBlock:v14];

      v8 = v10;
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipArchive readChannelForEntry:validateCRC:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipArchive.m"];
    [OITSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:741 isFatal:0 description:"Entry isn't part of this archive"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v8 = 0;
  }

  return v8;
}

OITSUZipInflateReadChannel *__49__TSUZipArchive_readChannelForEntry_validateCRC___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OITSUZipInflateReadChannel alloc];
  [*(a1 + 32) size];
  v5 = -[OITSUZipInflateReadChannel initWithReadChannel:uncompressedSize:CRC:validateCRC:](v4, "initWithReadChannel:uncompressedSize:CRC:validateCRC:", v3, [*(a1 + 32) size], objc_msgSend(*(a1 + 32), "CRC"), *(a1 + 40));

  return v5;
}

- (id)streamReadChannelForEntry:(id)entry validateCRC:(BOOL)c
{
  cCopy = c;
  entryCopy = entry;
  if ([(NSMutableOrderedSet *)self->_entries containsObject:entryCopy])
  {
    v7 = [entryCopy isCompressed] ^ 1;
    v8 = [[TSUZipReadChannel alloc] initWithEntry:entryCopy archive:self validateCRC:cCopy & v7];
    if ((v7 & 1) == 0)
    {
      v9 = [OITSUZipInflateReadChannel alloc];
      [entryCopy size];
      v10 = -[OITSUZipInflateReadChannel initWithReadChannel:uncompressedSize:CRC:validateCRC:](v9, "initWithReadChannel:uncompressedSize:CRC:validateCRC:", v8, [entryCopy size], objc_msgSend(entryCopy, "CRC"), cCopy);

      v8 = v10;
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipArchive streamReadChannelForEntry:validateCRC:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipArchive.m"];
    [OITSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:764 isFatal:0 description:"Entry isn't part of this archive"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v8 = 0;
  }

  return v8;
}

- (id)normalizeEntryName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if ((self->_options & 2) != 0)
  {
    lowercaseString = [nameCopy lowercaseString];

    v5 = lowercaseString;
  }

  precomposedStringWithCanonicalMapping = [v5 precomposedStringWithCanonicalMapping];

  return precomposedStringWithCanonicalMapping;
}

- (id)entryForName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v5 = nameCopy;
    v6 = [(TSUZipArchive *)self normalizeEntryName:nameCopy];

    v7 = [(NSMutableDictionary *)self->_entriesMap objectForKeyedSubscript:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)enumerateEntriesUsingBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_entries;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      collapsedName = [v10 collapsedName];
      if (collapsedName)
      {
        blockCopy[2](blockCopy, collapsedName, v10, &v17);
      }

      else
      {
        name = [v10 name];
        blockCopy[2](blockCopy, name, v10, &v17);
      }

      if (v17)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v7)
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
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  v23 = 0;
  v3 = objc_autoreleasePoolPush();
  entriesMap = self->_entriesMap;
  v5 = (self->_options >> 1) & 1 | 2;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__TSUZipArchive_collapseCommonRootDirectory__block_invoke;
  v17[3] = &unk_2799C6AD8;
  v17[4] = &v18;
  v17[5] = v5;
  [(NSMutableDictionary *)entriesMap enumerateKeysAndObjectsUsingBlock:v17];
  objc_autoreleasePoolPop(v3);
  if ([v19[5] count])
  {
    v6 = [MEMORY[0x277CCACA8] pathWithComponents:v19[5]];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 length];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSMutableDictionary count](self->_entriesMap, "count")}];
    v9 = objc_autoreleasePoolPush();
    v10 = self->_entriesMap;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __44__TSUZipArchive_collapseCommonRootDirectory__block_invoke_2;
    v13[3] = &unk_2799C6B00;
    v16 = v7;
    v11 = v8;
    v14 = v11;
    selfCopy = self;
    [(NSMutableDictionary *)v10 enumerateKeysAndObjectsUsingBlock:v13];

    objc_autoreleasePoolPop(v9);
    v12 = self->_entriesMap;
    self->_entriesMap = v11;
  }

  _Block_object_dispose(&v18, 8);
}

void __44__TSUZipArchive_collapseCommonRootDirectory__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v21 = [a2 pathComponents];
  if ([v21 count] < 2 || (objc_msgSend(v21, "objectAtIndexedSubscript:", 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"__MACOSX"), v6, v8 = v21, (v7 & 1) == 0))
  {
    v9 = *(*(*(a1 + 32) + 8) + 40);
    if (v9)
    {
      v10 = 0;
      if (![v9 count])
      {
        goto LABEL_10;
      }

      do
      {
        if (v10 >= [v21 count])
        {
          break;
        }

        v11 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndexedSubscript:v10];
        v12 = [v21 objectAtIndexedSubscript:v10];
        v13 = [v11 compare:v12 options:*(a1 + 40)];

        if (v13)
        {
          break;
        }

        ++v10;
      }

      while (v10 < [*(*(*(a1 + 32) + 8) + 40) count]);
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = *(*(a1 + 32) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = 0;

        *a4 = 1;
      }

      else
      {
LABEL_10:
        v16 = v10 >= [*(*(*(a1 + 32) + 8) + 40) count];
        v8 = v21;
        if (v16)
        {
          goto LABEL_14;
        }

        v17 = *(*(*(a1 + 32) + 8) + 40);
        [v17 removeObjectsInRange:{v10, objc_msgSend(v17, "count") - v10}];
      }
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v21];
      v19 = *(*(a1 + 32) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      [*(*(*(a1 + 32) + 8) + 40) removeLastObject];
    }

    v8 = v21;
  }

LABEL_14:
}

void __44__TSUZipArchive_collapseCommonRootDirectory__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 length] <= (*(a1 + 48) + 1))
  {
    [*(*(a1 + 40) + 24) removeObject:v5];
  }

  else if (([v7 hasPrefix:@"__MACOSX"] & 1) == 0)
  {
    v6 = [v7 substringFromIndex:*(a1 + 48) + 1];
    [v5 setCollapsedName:v6];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

- (unint64_t)archiveLength
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipArchive archiveLength]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipArchive.m"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:877 isFatal:0 description:"Abstract method not overridden by %@", v5];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"Abstract method not overridden by %@: %s", v10, "-[TSUZipArchive archiveLength]"];
  v12 = [v6 exceptionWithName:v7 reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

- (id)newArchiveReadChannel
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipArchive newArchiveReadChannel]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipArchive.m"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:881 isFatal:0 description:"Abstract method not overridden by %@", v5];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"Abstract method not overridden by %@: %s", v10, "-[TSUZipArchive newArchiveReadChannel]"];
  v12 = [v6 exceptionWithName:v7 reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

- (BOOL)isValid
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipArchive isValid]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipArchive.m"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:885 isFatal:0 description:"Abstract method not overridden by %@", v5];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"Abstract method not overridden by %@: %s", v10, "-[TSUZipArchive isValid]"];
  v12 = [v6 exceptionWithName:v7 reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

- (id)debugDescription
{
  v3 = [OITSUDescription descriptionWithObject:self class:objc_opt_class()];
  array = [(NSMutableOrderedSet *)self->_entries array];
  v5 = TSUCFArrayDescription(array);
  [v3 addField:@"entries" value:v5];

  descriptionString = [v3 descriptionString];

  return descriptionString;
}

@end