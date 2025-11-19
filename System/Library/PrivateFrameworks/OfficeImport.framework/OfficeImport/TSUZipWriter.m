@interface TSUZipWriter
- (BOOL)isClosed;
- (NSArray)sortedEntries;
- (TSUZipWriter)initWithOptions:(unint64_t)a3;
- (id)entryWithName:(id)a3;
- (id)localFileHeaderDataForEntry:(id)a3;
- (id)p_writeChannel;
- (id)prepareWriteChannelWithCloseCompletionHandler:(id)a3;
- (id)sortedEntriesImpl;
- (unint64_t)archiveLength;
- (unint64_t)entriesCount;
- (void)addBarrier:(id)a3;
- (void)addData:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)addDataImpl:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)addExistingEntry:(id)a3;
- (void)addExistingEntryImpl:(id)a3;
- (void)beginEntryWithName:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)a8;
- (void)beginEntryWithNameImpl:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)a8;
- (void)closeWithQueue:(id)a3 completion:(id)a4;
- (void)enumerateEntriesUsingBlock:(id)a3;
- (void)finishEntry;
- (void)flushCurrentEntryWithQueue:(id)a3 completion:(id)a4;
- (void)flushEntryData;
- (void)handleWriteError:(id)a3;
- (void)p_writeData:(id)a3 offset:(int64_t)a4 completion:(id)a5;
- (void)setEntryInsertionOffset:(int64_t)a3;
- (void)truncateToNumberOfEntries:(unint64_t)a3 completion:(id)a4;
- (void)truncateToNumberOfEntriesImpl:(unint64_t)a3 completion:(id)a4;
- (void)truncateToOffset:(int64_t)a3 completion:(id)a4;
- (void)truncateToOffsetImpl:(int64_t)a3 completion:(id)a4;
- (void)writeCentralDirectory;
- (void)writeCentralFileHeaderDataForEntry:(id)a3;
- (void)writeData:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)writeEndOfCentralDirectoryDataWithOffset:(int64_t)a3 size:(int64_t)a4 entryCount:(unint64_t)a5;
- (void)writeEntryWithName:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 fromReadChannel:(id)a8 completion:(id)a9;
- (void)writeEntryWithName:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 fromReadChannel:(id)a8 writeHandler:(id)a9;
- (void)writeZip64EndOfCentralDirectoryLocatorWithOffset:(int64_t)a3;
- (void)writeZip64EndOfCentralDirectoryWithOffset:(int64_t)a3 size:(int64_t)a4 entryCount:(unint64_t)a5;
@end

@implementation TSUZipWriter

- (TSUZipWriter)initWithOptions:(unint64_t)a3
{
  v17.receiver = self;
  v17.super_class = TSUZipWriter;
  v4 = [(TSUZipWriter *)&v17 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = a3;
    v6 = objc_opt_new();
    entries = v5->_entries;
    v5->_entries = v6;

    v8 = objc_opt_new();
    entriesMap = v5->_entriesMap;
    v5->_entriesMap = v8;

    v10 = dispatch_queue_create("TSUZipWriter.Channel", 0);
    channelQueue = v5->_channelQueue;
    v5->_channelQueue = v10;

    v12 = dispatch_queue_create("TSUZipWriter.Write", 0);
    writeQueue = v5->_writeQueue;
    v5->_writeQueue = v12;

    v14 = [MEMORY[0x277CBEAA8] date];
    newEntryLastModificationDate = v5->_newEntryLastModificationDate;
    v5->_newEntryLastModificationDate = v14;
  }

  return v5;
}

- (unint64_t)entriesCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  writeQueue = self->_writeQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__TSUZipWriter_entriesCount__block_invoke;
  v5[3] = &unk_2799C6880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(writeQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __28__TSUZipWriter_entriesCount__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) entriesCountImpl];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)p_writeChannel
{
  writeChannel = self->_writeChannel;
  if (!writeChannel)
  {
    if (self->_writeChannelCompletionSemaphore)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter p_writeChannel]"];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipWriter.m"];
      [OITSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:105 isFatal:1 description:"Write channel semaphore should not be initialized."];

      TSUCrash("Fatal Assertion failure: %{public}s %{public}s:%d Write channel semaphore should not be initialized.", v6, v7, v8, v9, v10, v11, v12, "[TSUZipWriter p_writeChannel]");
    }

    v13 = dispatch_semaphore_create(0);
    writeChannelCompletionSemaphore = self->_writeChannelCompletionSemaphore;
    self->_writeChannelCompletionSemaphore = v13;

    objc_initWeak(&location, self);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __30__TSUZipWriter_p_writeChannel__block_invoke;
    v18[3] = &unk_2799C7100;
    objc_copyWeak(&v19, &location);
    v15 = [(TSUZipWriter *)self prepareWriteChannelWithCloseCompletionHandler:v18];
    v16 = self->_writeChannel;
    self->_writeChannel = v15;

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    writeChannel = self->_writeChannel;
  }

  return writeChannel;
}

void __30__TSUZipWriter_p_writeChannel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    dispatch_semaphore_signal(WeakRetained[4]);
    WeakRetained = v2;
  }
}

- (void)beginEntryWithName:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)a8
{
  v14 = a3;
  v15 = a5;
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __140__TSUZipWriter_beginEntryWithName_force32BitSize_lastModificationDate_size_CRC_forceCalculatingSizeAndCRCForPreservingLastModificationDate___block_invoke;
  block[3] = &unk_2799C7128;
  block[4] = self;
  v20 = v14;
  v24 = a4;
  v21 = v15;
  v22 = a6;
  v23 = a7;
  v25 = a8;
  v17 = v15;
  v18 = v14;
  dispatch_async(writeQueue, block);
}

- (void)beginEntryWithNameImpl:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)a8
{
  v8 = a8;
  v9 = *&a7;
  v40 = a3;
  v14 = a5;
  if (self->_isClosed)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter beginEntryWithNameImpl:force32BitSize:lastModificationDate:size:CRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipWriter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:130 isFatal:1 description:"Already closed."];

    TSUCrash("Fatal Assertion failure: %{public}s %{public}s:%d Already closed.", v17, v18, v19, v20, v21, v22, v23, "[TSUZipWriter beginEntryWithNameImpl:force32BitSize:lastModificationDate:size:CRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:]");
  }

  if (!self->_error)
  {
    [(TSUZipWriter *)self finishEntry];
    v24 = [(NSMutableDictionary *)self->_entriesMap objectForKeyedSubscript:v40];

    if (v24)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter beginEntryWithNameImpl:force32BitSize:lastModificationDate:size:CRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:]"];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipWriter.m"];
      [OITSUAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:139 isFatal:0 description:"Already have an entry with name: %@", v40];

      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    else
    {
      v27 = objc_alloc_init(TSUZipWriterEntry);
      currentEntry = self->_currentEntry;
      self->_currentEntry = v27;

      [(TSUZipWriterEntry *)self->_currentEntry setName:v40];
      [(TSUZipWriterEntry *)self->_currentEntry setOffset:self->_currentOffset];
      if (a6)
      {
        v29 = v8;
      }

      else
      {
        v29 = 1;
      }

      self->_calculateSize = v29;
      if (v8)
      {
        v30 = 0;
      }

      else
      {
        v30 = a6;
      }

      [(TSUZipWriterEntry *)self->_currentEntry setSize:v30];
      self->_force32BitSize = self->_calculateSize && a4;
      if (v9)
      {
        v31 = v8;
      }

      else
      {
        v31 = 1;
      }

      self->_calculateCRC = v31;
      v32 = v9;
      if (v31)
      {
        v32 = crc32(0, 0, 0);
      }

      [(TSUZipWriterEntry *)self->_currentEntry setCRC:v32];
      if (v8)
      {
        [(TSUZipWriterEntry *)self->_currentEntry setLastModificationDate:self->_newEntryLastModificationDate];
        self->_sizeToMatch = a6;
        self->_CRCToMatch = v9;
        v33 = v14;
        lastModificationDateIfSizeAndCRCMatches = self->_lastModificationDateIfSizeAndCRCMatches;
        self->_lastModificationDateIfSizeAndCRCMatches = v33;
      }

      else
      {
        newEntryLastModificationDate = v14;
        if (!v14)
        {
          newEntryLastModificationDate = self->_newEntryLastModificationDate;
        }

        [(TSUZipWriterEntry *)self->_currentEntry setLastModificationDate:newEntryLastModificationDate];
        self->_sizeToMatch = 0;
        self->_CRCToMatch = 0;
        lastModificationDateIfSizeAndCRCMatches = self->_lastModificationDateIfSizeAndCRCMatches;
        self->_lastModificationDateIfSizeAndCRCMatches = 0;
      }

      v36 = [(TSUZipWriter *)self localFileHeaderDataForEntry:self->_currentEntry];
      if ((self->_calculateSize || self->_calculateCRC) && (self->_options & 8) == 0)
      {
        objc_storeStrong(&self->_localFileHeaderData, v36);
        v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      else
      {
        [(TSUZipWriter *)self writeData:v36];
        localFileHeaderData = self->_localFileHeaderData;
        self->_localFileHeaderData = 0;

        v37 = 0;
      }

      entryDatas = self->_entryDatas;
      self->_entryDatas = v37;

      self->_entryDataSize = 0;
    }
  }
}

- (void)addData:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  writeQueue = self->_writeQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __41__TSUZipWriter_addData_queue_completion___block_invoke;
  v15[3] = &unk_2799C7150;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(writeQueue, v15);
}

- (void)addDataImpl:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_isClosed)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter addDataImpl:queue:completion:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipWriter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:196 isFatal:1 description:"Already closed."];

    TSUCrash("Fatal Assertion failure: %{public}s %{public}s:%d Already closed.", v13, v14, v15, v16, v17, v18, v19, "[TSUZipWriter addDataImpl:queue:completion:]");
  }

  v20 = self->_error;
  if (v20)
  {
    if (v10)
    {
      if (v9)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __45__TSUZipWriter_addDataImpl_queue_completion___block_invoke;
        block[3] = &unk_2799C6CB8;
        v30 = v10;
        v29 = v20;
        dispatch_async(v9, block);
      }

      else
      {
        (*(v10 + 2))(v10, v20);
      }
    }

    goto LABEL_16;
  }

  size = dispatch_data_get_size(v8);
  entryDatas = self->_entryDatas;
  if (entryDatas)
  {
    localFileHeaderData = self->_localFileHeaderData;
    if (dispatch_data_get_size(localFileHeaderData) + size + self->_entryDataSize < 0x40000)
    {
      [(NSMutableArray *)entryDatas addObject:v8];
      self->_entryDataSize += size;
      if (v10)
      {
        if (v9)
        {
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __45__TSUZipWriter_addDataImpl_queue_completion___block_invoke_2;
          v26[3] = &unk_2799C69E8;
          v27 = v10;
          dispatch_async(v9, v26);
        }

        else
        {
          (*(v10 + 2))(v10, 0);
        }
      }

      goto LABEL_11;
    }

    [(TSUZipWriter *)self writeData:localFileHeaderData];
    v24 = self->_localFileHeaderData;
    self->_localFileHeaderData = 0;

    [(TSUZipWriter *)self flushEntryData];
  }

  [(TSUZipWriter *)self writeData:v8 queue:v9 completion:v10];
LABEL_11:
  if (self->_calculateSize)
  {
    [(TSUZipWriterEntry *)self->_currentEntry setSize:[(TSUZipWriterEntry *)self->_currentEntry size]+ size];
  }

  if (self->_calculateCRC)
  {
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __45__TSUZipWriter_addDataImpl_queue_completion___block_invoke_3;
    applier[3] = &unk_2799C7178;
    applier[4] = self;
    dispatch_data_apply(v8, applier);
  }

LABEL_16:
}

uint64_t __45__TSUZipWriter_addDataImpl_queue_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, const Bytef *a4, unint64_t a5)
{
  v8 = [*(*(a1 + 32) + 64) CRC];
  if (HIDWORD(a5))
  {
    __45__TSUZipWriter_addDataImpl_queue_completion___block_invoke_3_cold_1();
    LODWORD(a5) = -1;
  }

  [*(*(a1 + 32) + 64) setCRC:{crc32(v8, a4, a5)}];
  return 1;
}

- (void)flushEntryData
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_entryDatas;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(TSUZipWriter *)self writeData:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  entryDatas = self->_entryDatas;
  self->_entryDatas = 0;

  self->_entryDataSize = 0;
}

- (void)flushCurrentEntryWithQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__TSUZipWriter_flushCurrentEntryWithQueue_completion___block_invoke;
  block[3] = &unk_2799C71F0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(writeQueue, block);
}

void __54__TSUZipWriter_flushCurrentEntryWithQueue_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 72) == 1)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter flushCurrentEntryWithQueue:completion:]_block_invoke"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipWriter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:255 isFatal:1 description:"Trying to flush while closed."];

    TSUCrash("Fatal Assertion failure: %{public}s %{public}s:%d Trying to flush while closed.", v5, v6, v7, v8, v9, v10, v11, "[TSUZipWriter flushCurrentEntryWithQueue:completion:]_block_invoke");
  }

  v12 = *(v2 + 160);
  if (v12)
  {
    v13 = v12;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__TSUZipWriter_flushCurrentEntryWithQueue_completion___block_invoke_2;
    block[3] = &unk_2799C6CB8;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v23 = v13;
    v24 = v15;
    v16 = v13;
    dispatch_async(v14, block);
  }

  else
  {
    [v2 finishEntry];
    v17 = *(a1 + 32);
    v18 = *(v17 + 16);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __54__TSUZipWriter_flushCurrentEntryWithQueue_completion___block_invoke_3;
    v19[3] = &unk_2799C71C8;
    v19[4] = v17;
    v21 = *(a1 + 48);
    v20 = *(a1 + 40);
    dispatch_async(v18, v19);
  }
}

void __54__TSUZipWriter_flushCurrentEntryWithQueue_completion___block_invoke_3(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 16));
  v2 = [*(a1 + 32) p_writeChannel];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__TSUZipWriter_flushCurrentEntryWithQueue_completion___block_invoke_4;
  v6[3] = &unk_2799C71A0;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v6[4] = v4;
  v7 = v5;
  [v2 flushWithCompletion:v6];
}

void __54__TSUZipWriter_flushCurrentEntryWithQueue_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48))
  {
    v5 = v3;
    if (!v3)
    {
      v5 = *(*(a1 + 32) + 160);
    }

    v6 = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__TSUZipWriter_flushCurrentEntryWithQueue_completion___block_invoke_5;
    v10[3] = &unk_2799C6CB8;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v11 = v6;
    v12 = v8;
    v9 = v6;
    dispatch_async(v7, v10);
  }

  dispatch_resume(*(*(a1 + 32) + 16));
}

- (void)finishEntry
{
  currentEntry = self->_currentEntry;
  if (!currentEntry)
  {
    return;
  }

  if (self->_calculateSize || self->_calculateCRC)
  {
    if (self->_force32BitSize)
    {
      if ([(TSUZipWriterEntry *)self->_currentEntry size]>> 32)
      {
        if (TSUDefaultCat_init_token != -1)
        {
          [TSUZipWriter finishEntry];
        }

        v13 = [MEMORY[0x277CCA9B8] tsu_fileWriteUnknownErrorWithUserInfo:0];
        [(TSUZipWriter *)self handleWriteError:v13];
        v4 = v13;
        goto LABEL_20;
      }

      currentEntry = self->_currentEntry;
    }

    if (self->_lastModificationDateIfSizeAndCRCMatches)
    {
      v5 = [(TSUZipWriterEntry *)currentEntry size];
      currentEntry = self->_currentEntry;
      if (v5 == self->_sizeToMatch)
      {
        v6 = [(TSUZipWriterEntry *)self->_currentEntry CRC];
        currentEntry = self->_currentEntry;
        if (v6 == self->_CRCToMatch)
        {
          [(TSUZipWriterEntry *)self->_currentEntry setLastModificationDate:self->_lastModificationDateIfSizeAndCRCMatches];
          currentEntry = self->_currentEntry;
        }
      }
    }

    v7 = [(TSUZipWriter *)self localFileHeaderDataForEntry:currentEntry];
    if (self->_entryDatas)
    {
      [(TSUZipWriter *)self writeData:v7];
      localFileHeaderData = self->_localFileHeaderData;
      self->_localFileHeaderData = 0;

      [(TSUZipWriter *)self flushEntryData];
    }

    else
    {
      [(TSUZipWriter *)self writeData:v7 offset:[(TSUZipWriterEntry *)self->_currentEntry offset]];
    }

    currentEntry = self->_currentEntry;
  }

  [(NSMutableArray *)self->_entries addObject:currentEntry];
  entriesMap = self->_entriesMap;
  v9 = self->_currentEntry;
  v11 = [(TSUZipWriterEntry *)v9 name];
  [(NSMutableDictionary *)entriesMap setObject:v9 forKeyedSubscript:v11];

  sortedEntries = self->_sortedEntries;
  self->_sortedEntries = 0;

  v4 = self->_currentEntry;
  self->_currentEntry = 0;
LABEL_20:
}

void __27__TSUZipWriter_finishEntry__block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (void)writeEntryWithName:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 fromReadChannel:(id)a8 completion:(id)a9
{
  v10 = *&a7;
  v13 = a4;
  v16 = a9;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __107__TSUZipWriter_writeEntryWithName_force32BitSize_lastModificationDate_size_CRC_fromReadChannel_completion___block_invoke;
  v18[3] = &unk_2799C7218;
  v19 = v16;
  v17 = v16;
  [(TSUZipWriter *)self writeEntryWithName:a3 force32BitSize:v13 lastModificationDate:a5 size:a6 CRC:v10 fromReadChannel:a8 writeHandler:v18];
}

void __107__TSUZipWriter_writeEntryWithName_force32BitSize_lastModificationDate_size_CRC_fromReadChannel_completion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  if (a2)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, v7 == 0);
    }
  }
}

- (void)writeEntryWithName:(id)a3 force32BitSize:(BOOL)a4 lastModificationDate:(id)a5 size:(unint64_t)a6 CRC:(unsigned int)a7 fromReadChannel:(id)a8 writeHandler:(id)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a8;
  v18 = a9;
  if (!v17)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter writeEntryWithName:force32BitSize:lastModificationDate:size:CRC:fromReadChannel:writeHandler:]"];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipWriter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:330 isFatal:0 description:"invalid nil value for '%{public}s'", "readChannel"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__TSUZipWriter_writeEntryWithName_force32BitSize_lastModificationDate_size_CRC_fromReadChannel_writeHandler___block_invoke;
  block[3] = &unk_2799C7268;
  block[4] = self;
  v27 = v15;
  v33 = a4;
  v32 = a7;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = a6;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  dispatch_async(writeQueue, block);
}

void __109__TSUZipWriter_writeEntryWithName_force32BitSize_lastModificationDate_size_CRC_fromReadChannel_writeHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 72) == 1)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter writeEntryWithName:force32BitSize:lastModificationDate:size:CRC:fromReadChannel:writeHandler:]_block_invoke"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipWriter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:333 isFatal:1 description:"Already closed."];

    TSUCrash("Fatal Assertion failure: %{public}s %{public}s:%d Already closed.", v5, v6, v7, v8, v9, v10, v11, "[TSUZipWriter writeEntryWithName:force32BitSize:lastModificationDate:size:CRC:fromReadChannel:writeHandler:]_block_invoke");
  }

  dispatch_suspend(*(v2 + 144));
  [*(a1 + 32) beginEntryWithNameImpl:*(a1 + 40) force32BitSize:*(a1 + 84) lastModificationDate:*(a1 + 48) size:*(a1 + 72) CRC:*(a1 + 80) forceCalculatingSizeAndCRCForPreservingLastModificationDate:0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __109__TSUZipWriter_writeEntryWithName_force32BitSize_lastModificationDate_size_CRC_fromReadChannel_writeHandler___block_invoke_2;
  v13[3] = &unk_2799C7240;
  v13[4] = *(a1 + 32);
  v12 = *(a1 + 56);
  v14 = *(a1 + 64);
  [v12 readWithHandler:v13];
}

void __109__TSUZipWriter_writeEntryWithName_force32BitSize_lastModificationDate_size_CRC_fromReadChannel_writeHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  [*(a1 + 32) handleWriteError:a4];
  if (v7)
  {
    v8 = *(a1 + 32);
    if (!v8[20])
    {
      [v8 addDataImpl:v7 queue:0 completion:0];
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v12 = 0;
    (*(v9 + 16))(v9, a2, v7, *(*(a1 + 32) + 160), &v12);
    if (v12 == 1)
    {
      v10 = *(a1 + 32);
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
      [v10 handleWriteError:v11];
    }
  }

  if (a2)
  {
    dispatch_resume(*(*(a1 + 32) + 144));
  }
}

- (void)addExistingEntry:(id)a3
{
  v4 = a3;
  writeQueue = self->_writeQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__TSUZipWriter_addExistingEntry___block_invoke;
  v7[3] = &unk_2799C68A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(writeQueue, v7);
}

- (void)addExistingEntryImpl:(id)a3
{
  v11 = a3;
  v4 = objc_alloc_init(TSUZipWriterEntry);
  v5 = [v11 name];
  [(TSUZipWriterEntry *)v4 setName:v5];

  v6 = [v11 lastModificationDate];
  [(TSUZipWriterEntry *)v4 setLastModificationDate:v6];

  if ([v11 isCompressed])
  {
    v7 = [v11 compressedSize];
  }

  else
  {
    v7 = [v11 size];
  }

  [(TSUZipWriterEntry *)v4 setSize:v7];
  -[TSUZipWriterEntry setOffset:](v4, "setOffset:", [v11 offset]);
  -[TSUZipWriterEntry setCRC:](v4, "setCRC:", [v11 CRC]);
  [(NSMutableArray *)self->_entries addObject:v4];
  entriesMap = self->_entriesMap;
  v9 = [v11 name];
  [(NSMutableDictionary *)entriesMap setObject:v4 forKeyedSubscript:v9];

  sortedEntries = self->_sortedEntries;
  self->_sortedEntries = 0;
}

- (void)setEntryInsertionOffset:(int64_t)a3
{
  writeQueue = self->_writeQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__TSUZipWriter_setEntryInsertionOffset___block_invoke;
  v4[3] = &unk_2799C7290;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(writeQueue, v4);
}

- (void)addBarrier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    writeQueue = self->_writeQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __27__TSUZipWriter_addBarrier___block_invoke;
    v7[3] = &unk_2799C6EB8;
    v7[4] = self;
    v8 = v4;
    dispatch_async(writeQueue, v7);
  }
}

void __27__TSUZipWriter_addBarrier___block_invoke(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 144));
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__TSUZipWriter_addBarrier___block_invoke_2;
  v5[3] = &unk_2799C6EB8;
  v5[4] = v3;
  v6 = v2;
  dispatch_async(v4, v5);
}

void __27__TSUZipWriter_addBarrier___block_invoke_2(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 16));
  v2 = [*(a1 + 32) p_writeChannel];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__TSUZipWriter_addBarrier___block_invoke_3;
  v4[3] = &unk_2799C6CB8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 addBarrier:v4];
}

void __27__TSUZipWriter_addBarrier___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  dispatch_resume(*(*(a1 + 32) + 16));
  v2 = *(*(a1 + 32) + 144);

  dispatch_resume(v2);
}

- (void)closeWithQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__TSUZipWriter_closeWithQueue_completion___block_invoke;
  block[3] = &unk_2799C71F0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(writeQueue, block);
}

void __42__TSUZipWriter_closeWithQueue_completion___block_invoke(id *a1)
{
  v2 = a1[4];
  if (v2[72] == 1)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter closeWithQueue:completion:]_block_invoke"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipWriter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:426 isFatal:1 description:"Shouldn't have closed twice."];

    TSUCrash("Fatal Assertion failure: %{public}s %{public}s:%d Shouldn't have closed twice.", v5, v6, v7, v8, v9, v10, v11, "[TSUZipWriter closeWithQueue:completion:]_block_invoke");
  }

  if (*(v2 + 20))
  {
    v2[72] = 1;
    v12 = *(a1[4] + 20);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__TSUZipWriter_closeWithQueue_completion___block_invoke_2;
    block[3] = &unk_2799C6CB8;
    v13 = a1[5];
    v14 = a1[6];
    v22 = v12;
    v23 = v14;
    v15 = v12;
    dispatch_async(v13, block);
  }

  else
  {
    [v2 finishEntry];
    [a1[4] writeCentralDirectory];
    *(a1[4] + 72) = 1;
    v16 = a1[4];
    v17 = *(v16 + 2);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __42__TSUZipWriter_closeWithQueue_completion___block_invoke_3;
    v18[3] = &unk_2799C71C8;
    v18[4] = v16;
    v20 = a1[6];
    v19 = a1[5];
    dispatch_async(v17, v18);
  }
}

void __42__TSUZipWriter_closeWithQueue_completion___block_invoke_3(id *a1)
{
  dispatch_suspend(*(a1[4] + 2));
  v2 = [a1[4] p_writeChannel];
  objc_initWeak(&location, v2);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__TSUZipWriter_closeWithQueue_completion___block_invoke_4;
  v3[3] = &unk_2799C72B8;
  objc_copyWeak(&v6, &location);
  v3[4] = a1[4];
  v5 = a1[6];
  v4 = a1[5];
  [v2 addBarrier:v3];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __42__TSUZipWriter_closeWithQueue_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter closeWithQueue:completion:]_block_invoke_4"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipWriter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:456 isFatal:0 description:"invalid nil value for '%{public}s'", "strongWriteChannel"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  [WeakRetained close];
  v5 = *(a1 + 32);
  v6 = *(v5 + 144);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__TSUZipWriter_closeWithQueue_completion___block_invoke_5;
  block[3] = &unk_2799C71C8;
  block[4] = v5;
  v9 = *(a1 + 48);
  v8 = *(a1 + 40);
  dispatch_async(v6, block);
}

void __42__TSUZipWriter_closeWithQueue_completion___block_invoke_5(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 32), 0xFFFFFFFFFFFFFFFFLL);
  if (*(a1 + 48))
  {
    v2 = *(*(a1 + 32) + 160);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__TSUZipWriter_closeWithQueue_completion___block_invoke_6;
    v6[3] = &unk_2799C6CB8;
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v7 = v2;
    v8 = v4;
    v5 = v2;
    dispatch_async(v3, v6);
  }

  dispatch_resume(*(*(a1 + 32) + 16));
}

- (void)writeCentralDirectory
{
  v14 = *MEMORY[0x277D85DE8];
  currentOffset = self->_currentOffset;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_entries;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(TSUZipWriter *)self writeCentralFileHeaderDataForEntry:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(TSUZipWriter *)self writeEndOfCentralDirectoryDataWithOffset:currentOffset size:self->_currentOffset - currentOffset entryCount:[(NSMutableArray *)self->_entries count]];
}

- (id)localFileHeaderDataForEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 UTF8String];

  __src = v6;
  v7 = strlen(v6);
  if (v7 >= 0x10000)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      [TSUZipWriter localFileHeaderDataForEntry:];
    }

    v7 = 0xFFFFLL;
  }

  v8 = self->_options & 1;
  v9 = v8 | ([v4 size] >> 32);
  v10 = v9 != 0;
  if (v9 || self->_calculateSize)
  {
    v24 = !self->_force32BitSize;
    if (self->_force32BitSize)
    {
      v11 = 0;
    }

    else
    {
      v11 = 20;
    }
  }

  else
  {
    v24 = 0;
    v11 = 0;
  }

  v12 = v7 + v11;
  v13 = malloc_type_malloc(v12 + 30, 0x8FE540EEuLL);
  v14 = v13 + 30;
  *v13 = 67324752;
  v13[1] = 20;
  *(v13 + 4) = 0;
  v15 = [v4 lastModificationDate];
  v16 = [v15 tsu_DOSTime];

  HIDWORD(v17) = v16;
  LODWORD(v17) = v16;
  *(v13 + 10) = v17 >> 16;
  *(v13 + 14) = [v4 CRC];
  if (!v10)
  {
    *(v13 + 18) = [v4 size];
LABEL_16:
    v20 = [v4 size];
    goto LABEL_18;
  }

  if (self->_force32BitSize)
  {
    v18 = [v4 size];
    force32BitSize = self->_force32BitSize;
    *(v13 + 18) = v18;
    if (!force32BitSize)
    {
      v20 = -1;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v20 = -1;
  *(v13 + 18) = -1;
LABEL_18:
  *(v13 + 22) = v20;
  *(v13 + 13) = v7;
  *(v13 + 14) = v11;
  memcpy(v14, __src, v7);
  if (v24)
  {
    v21 = &v14[v7];
    *v21 = TSUZip64ExtraFieldSignature;
    *(v21 + 1) = 16;
    *(v21 + 4) = [v4 size];
    *(v21 + 12) = [v4 size];
  }

  v22 = dispatch_data_create(v13, v12 + 30, 0, *MEMORY[0x277D85CB0]);

  return v22;
}

void __44__TSUZipWriter_localFileHeaderDataForEntry___block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (void)writeCentralFileHeaderDataForEntry:(id)a3
{
  v25 = a3;
  v4 = [v25 name];
  v5 = [v4 UTF8String];

  v6 = strlen(v5);
  if (v6 >= 0x10000)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      [TSUZipWriter writeCentralFileHeaderDataForEntry:];
    }

    v6 = 0xFFFFLL;
  }

  v24 = self;
  v7 = self->_options & 2;
  v8 = v7 | ([v25 size] >> 32);
  v9 = v7 | ([v25 offset] >> 32);
  v10 = 4 * ((v8 | v9) != 0);
  if (v8)
  {
    v10 = 20;
  }

  v11 = v9 != 0;
  if (v9)
  {
    v12 = v10 | 8;
  }

  else
  {
    v12 = v10;
  }

  v13 = v6 + v12;
  v14 = malloc_type_malloc(v6 + v12 + 46, 0xBB64218AuLL);
  v15 = v14 + 46;
  *v14 = 33639248;
  *(v14 + 4) = 1310782;
  v16 = [v25 lastModificationDate];
  v17 = [v16 tsu_DOSTime];

  HIDWORD(v18) = v17;
  LODWORD(v18) = v17;
  *(v14 + 3) = v18 >> 16;
  *(v14 + 4) = [v25 CRC];
  if (v8)
  {
    v19 = -1;
    *(v14 + 5) = -1;
  }

  else
  {
    *(v14 + 5) = [v25 size];
    v19 = [v25 size];
  }

  *(v14 + 6) = v19;
  *(v14 + 14) = v6;
  *(v14 + 15) = v12;
  *(v14 + 4) = 0;
  *(v14 + 20) = 0;
  if (v11)
  {
    *(v14 + 42) = -1;
    memcpy(v15, v5, v6);
    *&v15[v6] = TSUZip64ExtraFieldSignature;
    v20 = &v15[v6 + 4];
    *&v15[v6 + 2] = 0;
    v21 = &v15[v6 + 2];
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *(v14 + 42) = [v25 offset];
    memcpy(v15, v5, v6);
    if (!v8)
    {
      goto LABEL_21;
    }

    v20 = &v15[v6 + 4];
    *&v15[v6] = TSUZip64ExtraFieldSignature;
    v21 = &v15[v6 + 2];
  }

  v22 = &v15[v6];
  *v21 = 16;
  *v20 = [v25 size];
  *(v22 + 12) = [v25 size];
  if (!v11)
  {
    goto LABEL_21;
  }

  v20 = v22 + 20;
LABEL_20:
  *v21 += 8;
  *v20 = [v25 offset];
LABEL_21:
  v23 = dispatch_data_create(v14, v13 + 46, 0, *MEMORY[0x277D85CB0]);
  [(TSUZipWriter *)v24 writeData:v23];
}

void __51__TSUZipWriter_writeCentralFileHeaderDataForEntry___block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (void)writeEndOfCentralDirectoryDataWithOffset:(int64_t)a3 size:(int64_t)a4 entryCount:(unint64_t)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if (a5 > 0xFFFE)
  {
    v9 = 1;
  }

  else
  {
    v9 = (LOBYTE(self->_options) >> 2) & 1;
  }

  if (a4 > 4294967294)
  {
    v10 = 1;
  }

  else
  {
    v10 = (LOBYTE(self->_options) >> 2) & 1;
  }

  if (a3 > 4294967294)
  {
    v11 = 1;
  }

  else
  {
    v11 = (LOBYTE(self->_options) >> 2) & 1;
  }

  if ((v9 & 1) != 0 || (v10 & 1) != 0 || v11)
  {
    currentOffset = self->_currentOffset;
    [(TSUZipWriter *)self writeZip64EndOfCentralDirectoryWithOffset:a3 size:a4 entryCount:a5];
    [(TSUZipWriter *)self writeZip64EndOfCentralDirectoryLocatorWithOffset:currentOffset];
  }

  v13 = malloc_type_malloc(0x16uLL, 0xFE14B8E5uLL);
  *v13 = 101010256;
  if (v9)
  {
    v14 = -1;
  }

  else
  {
    v14 = v5;
  }

  v13[4] = v14;
  v13[5] = v14;
  if (v10)
  {
    v15 = -1;
  }

  else
  {
    v15 = v6;
  }

  if (v11)
  {
    v16 = -1;
  }

  else
  {
    v16 = v7;
  }

  *(v13 + 3) = v15;
  *(v13 + 4) = v16;
  v13[10] = 0;
  v17 = dispatch_data_create(v13, 0x16uLL, 0, *MEMORY[0x277D85CB0]);
  [(TSUZipWriter *)self writeData:v17];
}

- (void)writeZip64EndOfCentralDirectoryWithOffset:(int64_t)a3 size:(int64_t)a4 entryCount:(unint64_t)a5
{
  v9 = malloc_type_malloc(0x38uLL, 0x315FB631uLL);
  *v9 = 101075792;
  *(v9 + 4) = 44;
  v9[2] = 0;
  v9[3] = a5;
  *(v9 + 3) = 1310782;
  v9[4] = a5;
  v9[5] = a4;
  v9[6] = a3;
  v10 = dispatch_data_create(v9, 0x38uLL, 0, *MEMORY[0x277D85CB0]);
  [(TSUZipWriter *)self writeData:v10];
}

- (void)writeZip64EndOfCentralDirectoryLocatorWithOffset:(int64_t)a3
{
  v5 = malloc_type_malloc(0x14uLL, 0x114004F2uLL);
  *v5 = 117853008;
  v5[1] = 0;
  *(v5 + 1) = a3;
  v5[4] = 1;
  v6 = dispatch_data_create(v5, 0x14uLL, 0, *MEMORY[0x277D85CB0]);
  [(TSUZipWriter *)self writeData:v6];
}

- (void)writeData:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  size = dispatch_data_get_size(a3);
  self->_currentOffset += size;
  writtenOffset = self->_writtenOffset;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__TSUZipWriter_writeData_queue_completion___block_invoke;
  v14[3] = &unk_2799C72E0;
  v15 = v8;
  v16 = v9;
  v12 = v8;
  v13 = v9;
  [(TSUZipWriter *)self p_writeData:a3 offset:writtenOffset completion:v14];
  self->_writtenOffset += size;
}

void __43__TSUZipWriter_writeData_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __43__TSUZipWriter_writeData_queue_completion___block_invoke_2;
      v6[3] = &unk_2799C6CB8;
      v8 = v4;
      v7 = v3;
      dispatch_async(v5, v6);
    }

    else
    {
      (v4)[2](v4, v3);
    }
  }
}

- (void)p_writeData:(id)a3 offset:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  channelQueue = self->_channelQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__TSUZipWriter_p_writeData_offset_completion___block_invoke;
  v13[3] = &unk_2799C7330;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(channelQueue, v13);
}

void __46__TSUZipWriter_p_writeData_offset_completion___block_invoke(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 16));
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__14;
  v9[4] = __Block_byref_object_dispose__14;
  v10 = 0;
  v2 = [*(a1 + 32) p_writeChannel];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__TSUZipWriter_p_writeData_offset_completion___block_invoke_33;
  v6[3] = &unk_2799C7308;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v9;
  v6[4] = v3;
  v5 = *(a1 + 56);
  v7 = *(a1 + 48);
  [v2 writeData:v4 offset:v5 handler:v6];

  _Block_object_dispose(v9, 8);
}

void __46__TSUZipWriter_p_writeData_offset_completion___block_invoke_33(void *a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v8 && (v9 = *(a1[6] + 8), v11 = *(v9 + 40), v10 = (v9 + 40), !v11))
  {
    objc_storeStrong(v10, a4);
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  v12 = a1[6];
  if (*(*(v12 + 8) + 40))
  {
    v13 = a1[4];
    v14 = *(v13 + 144);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __46__TSUZipWriter_p_writeData_offset_completion___block_invoke_2;
    v16[3] = &unk_2799C6BA0;
    v16[4] = v13;
    v16[5] = v12;
    dispatch_async(v14, v16);
  }

  v15 = a1[5];
  if (v15)
  {
    (*(v15 + 16))(v15, *(*(a1[6] + 8) + 40));
  }

  dispatch_resume(*(a1[4] + 16));
LABEL_9:
}

- (id)prepareWriteChannelWithCloseCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter prepareWriteChannelWithCloseCompletionHandler:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipWriter.m"];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [OITSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:748 isFatal:0 description:"Abstract method not overridden by %@", v7];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"Abstract method not overridden by %@: %s", v12, "-[TSUZipWriter prepareWriteChannelWithCloseCompletionHandler:]"];
  v14 = [v8 exceptionWithName:v9 reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (unint64_t)archiveLength
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  writeQueue = self->_writeQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__TSUZipWriter_archiveLength__block_invoke;
  v5[3] = &unk_2799C6880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(writeQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)handleWriteError:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if ([v5 code] != 3072 || (objc_msgSend(v6, "domain"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CCA050]), v7, (v8 & 1) == 0))
    {
      if (TSUDefaultCat_init_token != -1)
      {
        [TSUZipWriter handleWriteError:];
      }
    }

    if (!self->_error)
    {
      channelQueue = self->_channelQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __33__TSUZipWriter_handleWriteError___block_invoke_2;
      block[3] = &unk_2799C68D0;
      block[4] = self;
      dispatch_async(channelQueue, block);
      objc_storeStrong(&self->_error, a3);
    }
  }
}

void __33__TSUZipWriter_handleWriteError___block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __33__TSUZipWriter_handleWriteError___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) p_writeChannel];
  [v1 close];
}

- (void)enumerateEntriesUsingBlock:(id)a3
{
  v4 = a3;
  writeQueue = self->_writeQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__TSUZipWriter_enumerateEntriesUsingBlock___block_invoke;
  v7[3] = &unk_2799C6EB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(writeQueue, v7);
}

void __43__TSUZipWriter_enumerateEntriesUsingBlock___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 40);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v12 + 1) + 8 * v6);
      v8 = objc_alloc_init(TSUZipEntry);
      v9 = [v7 name];
      [(TSUZipEntry *)v8 setName:v9];

      v10 = [(TSUZipEntry *)v8 name];
      -[TSUZipEntry setNameLength:](v8, "setNameLength:", strlen([v10 UTF8String]));

      v11 = [v7 lastModificationDate];
      [(TSUZipEntry *)v8 setLastModificationDate:v11];

      -[TSUZipEntry setSize:](v8, "setSize:", [v7 size]);
      -[TSUZipEntry setCompressedSize:](v8, "setCompressedSize:", [v7 size]);
      -[TSUZipEntry setOffset:](v8, "setOffset:", [v7 offset]);
      -[TSUZipEntry setCRC:](v8, "setCRC:", [v7 CRC]);
      (*(*(a1 + 40) + 16))();
      LOBYTE(v7) = v16;

      if (v7)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)sortedEntriesImpl
{
  sortedEntries = self->_sortedEntries;
  if (!sortedEntries)
  {
    v4 = [(NSMutableArray *)self->_entries sortedArrayUsingComparator:&__block_literal_global_42];
    v5 = self->_sortedEntries;
    self->_sortedEntries = v4;

    sortedEntries = self->_sortedEntries;
  }

  return sortedEntries;
}

uint64_t __33__TSUZipWriter_sortedEntriesImpl__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 offset];
  v6 = [v4 offset];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (NSArray)sortedEntries
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__14;
  v10 = __Block_byref_object_dispose__14;
  v11 = 0;
  writeQueue = self->_writeQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__TSUZipWriter_sortedEntries__block_invoke;
  v5[3] = &unk_2799C6880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(writeQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __29__TSUZipWriter_sortedEntries__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sortedEntriesImpl];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)isClosed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  writeQueue = self->_writeQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __24__TSUZipWriter_isClosed__block_invoke;
  v5[3] = &unk_2799C6880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(writeQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)entryWithName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__14;
  v16 = __Block_byref_object_dispose__14;
  v17 = 0;
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__TSUZipWriter_entryWithName___block_invoke;
  block[3] = &unk_2799C6858;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(writeQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __30__TSUZipWriter_entryWithName___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 56) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)truncateToNumberOfEntries:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__TSUZipWriter_truncateToNumberOfEntries_completion___block_invoke;
  block[3] = &unk_2799C6EE0;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(writeQueue, block);
}

- (void)truncateToNumberOfEntriesImpl:(unint64_t)a3 completion:(id)a4
{
  v13 = a4;
  if ([(TSUZipWriter *)self entriesCountImpl]<= a3)
  {
    v12 = v13;
    if (!v13)
    {
      goto LABEL_9;
    }

    (*(v13 + 2))(v13, 0);
  }

  else
  {
    v6 = [(TSUZipWriter *)self sortedEntriesImpl];
    if ([v6 count] > a3)
    {
      v7 = a3;
      do
      {
        v8 = [v6 objectAtIndexedSubscript:v7];
        [(NSMutableArray *)self->_entries removeObject:v8];
        entriesMap = self->_entriesMap;
        v10 = [v8 name];
        [(NSMutableDictionary *)entriesMap removeObjectForKey:v10];

        ++v7;
      }

      while (v7 < [v6 count]);
    }

    v11 = [v6 objectAtIndexedSubscript:a3];
    -[TSUZipWriter setEntryInsertionOffsetImpl:](self, "setEntryInsertionOffsetImpl:", [v11 offset]);
    -[TSUZipWriter truncateToOffsetImpl:completion:](self, "truncateToOffsetImpl:completion:", [v11 offset], v13);
  }

  v12 = v13;
LABEL_9:
}

- (void)truncateToOffset:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__TSUZipWriter_truncateToOffset_completion___block_invoke;
  block[3] = &unk_2799C6EE0;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(writeQueue, block);
}

- (void)truncateToOffsetImpl:(int64_t)a3 completion:(id)a4
{
  v4 = a4;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter truncateToOffsetImpl:completion:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipWriter.m"];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:885 isFatal:0 description:"Abstract method not overridden by %@", v8];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 stringWithFormat:@"Abstract method not overridden by %@: %s", v13, "-[TSUZipWriter truncateToOffsetImpl:completion:]"];
  v15 = [v9 exceptionWithName:v10 reason:v14 userInfo:0];
  v16 = v15;

  objc_exception_throw(v15);
}

uint64_t __45__TSUZipWriter_addDataImpl_queue_completion___block_invoke_3_cold_1()
{
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter addDataImpl:queue:completion:]_block_invoke_3"];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipWriter.m"];
  [OITSUAssertionHandler handleFailureInFunction:v0 file:v1 lineNumber:237 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

  return +[OITSUAssertionHandler logBacktraceThrottled];
}

@end