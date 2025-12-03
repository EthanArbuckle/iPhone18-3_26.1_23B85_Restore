@interface BUZipWriter
- (BOOL)isClosed;
- (BUZipWriter)initWithOptions:(unint64_t)options;
- (NSArray)sortedEntries;
- (id)entryWithName:(id)name;
- (id)localFileHeaderDataForEntry:(id)entry;
- (id)p_writeChannel;
- (id)prepareWriteChannelWithCloseCompletionHandler:(id)handler;
- (id)sortedEntriesImpl;
- (unint64_t)archiveLength;
- (unint64_t)entriesCount;
- (void)addBarrier:(id)barrier;
- (void)addData:(id)data queue:(id)queue completion:(id)completion;
- (void)addDataImpl:(id)impl queue:(id)queue completion:(id)completion;
- (void)addExistingEntry:(id)entry;
- (void)addExistingEntryImpl:(id)impl;
- (void)beginEntryWithName:(id)name force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)modificationDate;
- (void)beginEntryWithNameImpl:(id)impl force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)modificationDate;
- (void)closeWithQueue:(id)queue completion:(id)completion;
- (void)enumerateEntriesUsingBlock:(id)block;
- (void)finishEntry;
- (void)flushCurrentEntryWithQueue:(id)queue completion:(id)completion;
- (void)flushEntryData;
- (void)handleWriteError:(id)error;
- (void)p_writeData:(id)data offset:(int64_t)offset completion:(id)completion;
- (void)setEntryInsertionOffset:(int64_t)offset;
- (void)truncateToNumberOfEntries:(unint64_t)entries completion:(id)completion;
- (void)truncateToNumberOfEntriesImpl:(unint64_t)impl completion:(id)completion;
- (void)truncateToOffset:(int64_t)offset completion:(id)completion;
- (void)truncateToOffsetImpl:(int64_t)impl completion:(id)completion;
- (void)writeCentralDirectory;
- (void)writeCentralFileHeaderDataForEntry:(id)entry;
- (void)writeData:(id)data queue:(id)queue completion:(id)completion;
- (void)writeEndOfCentralDirectoryDataWithOffset:(int64_t)offset size:(int64_t)size entryCount:(unint64_t)count;
- (void)writeEntryWithName:(id)name force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c fromReadChannel:(id)channel completion:(id)completion;
- (void)writeEntryWithName:(id)name force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c fromReadChannel:(id)channel writeHandler:(id)handler;
- (void)writeZip64EndOfCentralDirectoryLocatorWithOffset:(int64_t)offset;
- (void)writeZip64EndOfCentralDirectoryWithOffset:(int64_t)offset size:(int64_t)size entryCount:(unint64_t)count;
@end

@implementation BUZipWriter

- (BUZipWriter)initWithOptions:(unint64_t)options
{
  v19.receiver = self;
  v19.super_class = BUZipWriter;
  v4 = [(BUZipWriter *)&v19 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = options;
    v6 = objc_opt_new();
    entries = v5->_entries;
    v5->_entries = v6;

    v8 = objc_opt_new();
    entriesMap = v5->_entriesMap;
    v5->_entriesMap = v8;

    v10 = dispatch_queue_create("BUZipWriter.Channel", 0);
    channelQueue = v5->_channelQueue;
    v5->_channelQueue = v10;

    v12 = dispatch_queue_create("BUZipWriter.Write", 0);
    writeQueue = v5->_writeQueue;
    v5->_writeQueue = v12;

    v16 = objc_msgSend_date(MEMORY[0x277CBEAA8], v14, v15);
    updatedEntryLastModificationDate = v5->_updatedEntryLastModificationDate;
    v5->_updatedEntryLastModificationDate = v16;
  }

  return v5;
}

- (unint64_t)entriesCount
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = objc_msgSend_writeQueue(self, a2, v2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_241DAD76C;
  v7[3] = &unk_278D1CE00;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)p_writeChannel
{
  v6 = objc_msgSend_channelQueue(self, a2, v2);
  if (v6 == MEMORY[0x277D85CD0])
  {
    objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v4, v5);
  }

  writeChannel = self->_writeChannel;
  if (!writeChannel)
  {
    if (self->_writeChannelCompletionGroup)
    {
      BUReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/AlderServices/frameworks/BookUtility/zip/BUZipWriter.m", 107, "[BUZipWriter p_writeChannel]", "_writeChannelCompletionGroup == nil", @"Write channel dispatch group should not be initialized.", v7, v8, v9, v23);
      BUCrashBreakpoint();
      result = BUIsRunningTests();
      if (result)
      {
        BUCrashFinalThrow(@"Write channel dispatch group should not be initialized.", v12, v13, v14, v15, v16, v17, v18, v24);
      }

      __break(1u);
      return result;
    }

    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_241DAD954;
    v30 = sub_241DAD964;
    v31 = dispatch_group_create();
    dispatch_group_enter(v27[5]);
    objc_msgSend_setWriteChannelCompletionGroup_(self, v19, v27[5]);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_241DAD96C;
    v25[3] = &unk_278D1CE28;
    v25[4] = &v26;
    v21 = objc_msgSend_prepareWriteChannelWithCloseCompletionHandler_(self, v20, v25);
    v22 = self->_writeChannel;
    self->_writeChannel = v21;

    _Block_object_dispose(&v26, 8);
    writeChannel = self->_writeChannel;
  }

  return writeChannel;
}

- (void)beginEntryWithName:(id)name force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)modificationDate
{
  nameCopy = name;
  dateCopy = date;
  v18 = objc_msgSend_writeQueue(self, v16, v17);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DADA80;
  block[3] = &unk_278D1CE50;
  block[4] = self;
  v22 = nameCopy;
  sizeCopy = size;
  v23 = dateCopy;
  v24 = a6;
  cCopy = c;
  modificationDateCopy = modificationDate;
  v19 = dateCopy;
  v20 = nameCopy;
  dispatch_async(v18, block);
}

- (void)beginEntryWithNameImpl:(id)impl force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)modificationDate
{
  modificationDateCopy = modificationDate;
  v9 = *&c;
  implCopy = impl;
  dateCopy = date;
  if (self->_closed)
  {
    BUReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/AlderServices/frameworks/BookUtility/zip/BUZipWriter.m", 133, "[BUZipWriter beginEntryWithNameImpl:force32BitSize:lastModificationDate:size:CRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:]", "!self->_closed", @"Already closed.", v16, v17, v18, v51);
    BUCrashBreakpoint();
    if (BUIsRunningTests())
    {
      BUCrashFinalThrow(@"Already closed.", v20, v21, v22, v23, v24, v25, v26, v52);
    }

    __break(1u);
  }

  else
  {
    v27 = objc_msgSend_error(self, v14, v15);

    if (!v27)
    {
      objc_msgSend_finishEntry(self, v28, v29);
      v31 = objc_msgSend_objectForKeyedSubscript_(self->_entriesMap, v30, implCopy);

      if (!v31)
      {
        v32 = objc_alloc_init(BUZipWriterEntry);
        currentEntry = self->_currentEntry;
        self->_currentEntry = v32;

        objc_msgSend_setName_(self->_currentEntry, v34, implCopy);
        objc_msgSend_setOffset_(self->_currentEntry, v35, self->_currentOffset);
        if (a6)
        {
          v37 = modificationDateCopy;
        }

        else
        {
          v37 = 1;
        }

        self->_calculateSize = v37;
        if (modificationDateCopy)
        {
          objc_msgSend_setSize_(self->_currentEntry, v36, 0);
        }

        else
        {
          objc_msgSend_setSize_(self->_currentEntry, v36, a6);
        }

        self->_force32BitSize = self->_calculateSize && size;
        if (v9)
        {
          v39 = modificationDateCopy;
        }

        else
        {
          v39 = 1;
        }

        self->_calculateCRC = v39;
        v40 = v9;
        if (v39)
        {
          v40 = crc32(0, 0, 0);
        }

        objc_msgSend_setCRC_(self->_currentEntry, v38, v40);
        if (modificationDateCopy)
        {
          objc_msgSend_setLastModificationDate_(self->_currentEntry, v41, self->_updatedEntryLastModificationDate);
          self->_sizeToMatch = a6;
          self->_CRCToMatch = v9;
          v42 = dateCopy;
          lastModificationDateIfSizeAndCRCMatches = self->_lastModificationDateIfSizeAndCRCMatches;
          self->_lastModificationDateIfSizeAndCRCMatches = v42;
        }

        else
        {
          updatedEntryLastModificationDate = dateCopy;
          if (!dateCopy)
          {
            updatedEntryLastModificationDate = self->_updatedEntryLastModificationDate;
          }

          objc_msgSend_setLastModificationDate_(self->_currentEntry, v41, updatedEntryLastModificationDate);
          lastModificationDateIfSizeAndCRCMatches = self->_lastModificationDateIfSizeAndCRCMatches;
          self->_sizeToMatch = 0;
          self->_lastModificationDateIfSizeAndCRCMatches = 0;
          self->_CRCToMatch = 0;
        }

        v47 = objc_msgSend_localFileHeaderDataForEntry_(self, v45, self->_currentEntry);
        if ((self->_calculateSize || self->_calculateCRC) && (self->_options & 8) == 0)
        {
          objc_storeStrong(&self->_localFileHeaderData, v47);
          v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        else
        {
          objc_msgSend_writeData_(self, v46, v47);
          localFileHeaderData = self->_localFileHeaderData;
          self->_localFileHeaderData = 0;

          v48 = 0;
        }

        entryDatas = self->_entryDatas;
        self->_entryDatas = v48;

        self->_entryDataSize = 0;
      }
    }
  }
}

- (void)addData:(id)data queue:(id)queue completion:(id)completion
{
  dataCopy = data;
  queueCopy = queue;
  completionCopy = completion;
  v13 = objc_msgSend_writeQueue(self, v11, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_241DADE00;
  v17[3] = &unk_278D1CE78;
  v17[4] = self;
  v18 = dataCopy;
  v19 = queueCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = queueCopy;
  v16 = dataCopy;
  dispatch_async(v13, v17);
}

- (void)addDataImpl:(id)impl queue:(id)queue completion:(id)completion
{
  implCopy = impl;
  queueCopy = queue;
  completionCopy = completion;
  if (!self->_closed)
  {
    v23 = objc_msgSend_error(self, v10, v11);
    if (v23)
    {
      v24 = MEMORY[0x245D00360](completionCopy);
      v25 = v24;
      if (v24)
      {
        if (queueCopy)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_241DAE120;
          block[3] = &unk_278D1CEA0;
          v46 = v24;
          v45 = v23;
          dispatch_async(queueCopy, block);
        }

        else
        {
          (v24)[2](v24, v23);
        }
      }

LABEL_23:
      return;
    }

    size = dispatch_data_get_size(implCopy);
    entryDatas = self->_entryDatas;
    if (entryDatas)
    {
      localFileHeaderData = self->_localFileHeaderData;
      if (dispatch_data_get_size(localFileHeaderData) + size + self->_entryDataSize < 0x40000)
      {
        objc_msgSend_addObject_(entryDatas, v30, implCopy);
        self->_entryDataSize += size;
        v36 = MEMORY[0x245D00360](completionCopy);
        v37 = v36;
        if (v36)
        {
          if (queueCopy)
          {
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = sub_241DAE134;
            v42[3] = &unk_278D1CEC8;
            v43 = v36;
            dispatch_async(queueCopy, v42);
          }

          else
          {
            v36[2](v36, 0);
          }
        }

        goto LABEL_19;
      }

      objc_msgSend_writeData_(self, v30, localFileHeaderData);
      v31 = self->_localFileHeaderData;
      self->_localFileHeaderData = 0;

      objc_msgSend_flushEntryData(self, v32, v33);
    }

    objc_msgSend_writeData_queue_completion_(self, v26, implCopy, queueCopy, completionCopy);
LABEL_19:
    if (self->_calculateSize)
    {
      currentEntry = self->_currentEntry;
      v39 = objc_msgSend_size(currentEntry, v34, v35);
      objc_msgSend_setSize_(currentEntry, v40, v39 + size);
    }

    if (self->_calculateCRC)
    {
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = sub_241DAE148;
      v41[3] = &unk_278D1CEF0;
      v41[4] = self;
      dispatch_data_apply(implCopy, v41);
    }

    goto LABEL_23;
  }

  BUReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/AlderServices/frameworks/BookUtility/zip/BUZipWriter.m", 202, "[BUZipWriter addDataImpl:queue:completion:]", "!self->_closed", @"Already closed.", v12, v13, v14, v41[0]);
  BUCrashBreakpoint();
  if (BUIsRunningTests())
  {
    BUCrashFinalThrow(@"Already closed.", v16, v17, v18, v19, v20, v21, v22, v41[0]);
  }

  __break(1u);
}

- (void)flushEntryData
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_entryDatas;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v11, v15, 16);
  if (v5)
  {
    v7 = v5;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_writeData_(self, v6, *(*(&v11 + 1) + 8 * v9++), v11);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v11, v15, 16);
    }

    while (v7);
  }

  entryDatas = self->_entryDatas;
  self->_entryDatas = 0;

  self->_entryDataSize = 0;
}

- (void)flushCurrentEntryWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10 = objc_msgSend_writeQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DAE3A8;
  block[3] = &unk_278D1CF68;
  block[4] = self;
  v14 = queueCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = queueCopy;
  dispatch_async(v10, block);
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
      if (objc_msgSend_size(self->_currentEntry, a2, currentEntry) >> 32)
      {
        v4 = BUZipLog();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_241DCF7FC(v4, v5, v6, v7, v8, v9, v10, v11);
        }

        v13 = objc_msgSend_bu_fileWriteUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v12, 0);
        objc_msgSend_handleWriteError_(self, v14, v13);

        return;
      }

      currentEntry = self->_currentEntry;
    }

    if (self->_lastModificationDateIfSizeAndCRCMatches)
    {
      v15 = objc_msgSend_size(currentEntry, a2, currentEntry);
      currentEntry = self->_currentEntry;
      if (v15 == self->_sizeToMatch)
      {
        v16 = objc_msgSend_CRC(self->_currentEntry, a2, currentEntry);
        currentEntry = self->_currentEntry;
        if (v16 == self->_CRCToMatch)
        {
          objc_msgSend_setLastModificationDate_(self->_currentEntry, a2, self->_lastModificationDateIfSizeAndCRCMatches);
          currentEntry = self->_currentEntry;
        }
      }
    }

    v19 = objc_msgSend_localFileHeaderDataForEntry_(self, a2, currentEntry);
    if (self->_entryDatas)
    {
      objc_msgSend_writeData_(self, v17, v19);
      localFileHeaderData = self->_localFileHeaderData;
      self->_localFileHeaderData = 0;

      objc_msgSend_flushEntryData(self, v21, v22);
    }

    else
    {
      v23 = objc_msgSend_offset(self->_currentEntry, v17, v18);
      objc_msgSend_writeData_offset_(self, v24, v19, v23);
    }

    currentEntry = self->_currentEntry;
  }

  objc_msgSend_addObject_(self->_entries, a2, currentEntry);
  entriesMap = self->_entriesMap;
  v25 = self->_currentEntry;
  v29 = objc_msgSend_name(v25, v27, v28);
  objc_msgSend_setObject_forKeyedSubscript_(entriesMap, v30, v25, v29);

  sortedEntries = self->_sortedEntries;
  self->_sortedEntries = 0;

  v32 = self->_currentEntry;
  self->_currentEntry = 0;
}

- (void)writeEntryWithName:(id)name force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c fromReadChannel:(id)channel completion:(id)completion
{
  v10 = *&c;
  sizeCopy = size;
  completionCopy = completion;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_241DAE9F4;
  v19[3] = &unk_278D1CF90;
  v20 = completionCopy;
  v17 = completionCopy;
  objc_msgSend_writeEntryWithName_force32BitSize_lastModificationDate_size_CRC_fromReadChannel_writeHandler_(self, v18, name, sizeCopy, date, a6, v10, channel, v19);
}

- (void)writeEntryWithName:(id)name force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c fromReadChannel:(id)channel writeHandler:(id)handler
{
  nameCopy = name;
  dateCopy = date;
  channelCopy = channel;
  handlerCopy = handler;
  v21 = objc_msgSend_writeQueue(self, v19, v20);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DAEBBC;
  block[3] = &unk_278D1CFE0;
  block[4] = self;
  v27 = nameCopy;
  sizeCopy = size;
  cCopy = c;
  v28 = dateCopy;
  v29 = channelCopy;
  v30 = handlerCopy;
  v31 = a6;
  v22 = handlerCopy;
  v23 = channelCopy;
  v24 = dateCopy;
  v25 = nameCopy;
  dispatch_async(v21, block);
}

- (void)addExistingEntry:(id)entry
{
  entryCopy = entry;
  v7 = objc_msgSend_writeQueue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_241DAEEEC;
  v9[3] = &unk_278D1D008;
  v9[4] = self;
  v10 = entryCopy;
  v8 = entryCopy;
  dispatch_sync(v7, v9);
}

- (void)addExistingEntryImpl:(id)impl
{
  implCopy = impl;
  v4 = objc_alloc_init(BUZipWriterEntry);
  v7 = objc_msgSend_name(implCopy, v5, v6);
  objc_msgSend_setName_(v4, v8, v7);

  v11 = objc_msgSend_lastModificationDate(implCopy, v9, v10);
  objc_msgSend_setLastModificationDate_(v4, v12, v11);

  if (objc_msgSend_isCompressed(implCopy, v13, v14))
  {
    v17 = objc_msgSend_compressedSize(implCopy, v15, v16);
  }

  else
  {
    v17 = objc_msgSend_size(implCopy, v15, v16);
  }

  objc_msgSend_setSize_(v4, v18, v17);
  v21 = objc_msgSend_offset(implCopy, v19, v20);
  objc_msgSend_setOffset_(v4, v22, v21);
  v25 = objc_msgSend_CRC(implCopy, v23, v24);
  objc_msgSend_setCRC_(v4, v26, v25);
  objc_msgSend_addObject_(self->_entries, v27, v4);
  entriesMap = self->_entriesMap;
  v31 = objc_msgSend_name(implCopy, v29, v30);
  objc_msgSend_setObject_forKeyedSubscript_(entriesMap, v32, v4, v31);

  sortedEntries = self->_sortedEntries;
  self->_sortedEntries = 0;
}

- (void)setEntryInsertionOffset:(int64_t)offset
{
  v5 = objc_msgSend_writeQueue(self, a2, offset);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241DAF0C0;
  v6[3] = &unk_278D1D030;
  v6[4] = self;
  v6[5] = offset;
  dispatch_sync(v5, v6);
}

- (void)addBarrier:(id)barrier
{
  barrierCopy = barrier;
  if (barrierCopy)
  {
    v7 = objc_msgSend_writeQueue(self, v4, v5);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_241DAF190;
    v8[3] = &unk_278D1D058;
    v8[4] = self;
    v9 = barrierCopy;
    dispatch_async(v7, v8);
  }
}

- (void)closeWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10 = objc_msgSend_writeQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DAF458;
  block[3] = &unk_278D1CF68;
  block[4] = self;
  v14 = queueCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = queueCopy;
  dispatch_async(v10, block);
}

- (void)writeCentralDirectory
{
  v21 = *MEMORY[0x277D85DE8];
  currentOffset = self->_currentOffset;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_entries;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_writeCentralFileHeaderDataForEntry_(self, v7, *(*(&v16 + 1) + 8 * v10++), v16);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v16, v20, 16);
    }

    while (v8);
  }

  v11 = self->_currentOffset - currentOffset;
  v14 = objc_msgSend_count(self->_entries, v12, v13);
  objc_msgSend_writeEndOfCentralDirectoryDataWithOffset_size_entryCount_(self, v15, currentOffset, v11, v14);
}

- (id)localFileHeaderDataForEntry:(id)entry
{
  entryCopy = entry;
  v7 = objc_msgSend_name(entryCopy, v5, v6);
  v8 = v7;
  v11 = objc_msgSend_UTF8String(v8, v9, v10);

  __src = v11;
  v14 = strlen(v11);
  if (v14 >= 0x10000)
  {
    v15 = BUZipLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_241DCF834(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    v14 = 0xFFFFLL;
  }

  v23 = self->_options & 1;
  v24 = v23 | (objc_msgSend_size(entryCopy, v12, v13) >> 32);
  v25 = v24 != 0;
  if (v24 || self->_calculateSize)
  {
    v53 = !self->_force32BitSize;
    if (self->_force32BitSize)
    {
      v26 = 0;
    }

    else
    {
      v26 = 20;
    }
  }

  else
  {
    v53 = 0;
    v26 = 0;
  }

  v27 = v14 + v26;
  v28 = malloc_type_malloc(v27 + 30, 0xC57CBB9CuLL);
  v29 = v28 + 30;
  *v28 = 67324752;
  v28[1] = 20;
  *(v28 + 4) = 0;
  v32 = objc_msgSend_lastModificationDate(entryCopy, v30, v31);
  v35 = objc_msgSend_bu_DOSTime(v32, v33, v34);

  HIDWORD(v36) = v35;
  LODWORD(v36) = v35;
  *(v28 + 10) = v36 >> 16;
  *(v28 + 14) = objc_msgSend_CRC(entryCopy, v37, v38);
  if (!v25)
  {
    *(v28 + 18) = objc_msgSend_size(entryCopy, v39, v40);
LABEL_16:
    v45 = objc_msgSend_size(entryCopy, v42, v43);
    goto LABEL_18;
  }

  if (self->_force32BitSize)
  {
    v41 = objc_msgSend_size(entryCopy, v39, v40);
    force32BitSize = self->_force32BitSize;
    *(v28 + 18) = v41;
    if (!force32BitSize)
    {
      v45 = -1;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v45 = -1;
  *(v28 + 18) = -1;
LABEL_18:
  *(v28 + 22) = v45;
  *(v28 + 13) = v14;
  *(v28 + 14) = v26;
  memcpy(v29, __src, v14);
  if (v53)
  {
    v48 = &v29[v14];
    *v48 = BUZip64ExtraFieldSignature;
    *(v48 + 1) = 16;
    *(v48 + 4) = objc_msgSend_size(entryCopy, v46, v47);
    *(v48 + 12) = objc_msgSend_size(entryCopy, v49, v50);
  }

  v51 = dispatch_data_create(v28, v27 + 30, 0, *MEMORY[0x277D85CB0]);

  return v51;
}

- (void)writeCentralFileHeaderDataForEntry:(id)entry
{
  entryCopy = entry;
  v7 = objc_msgSend_name(entryCopy, v5, v6);
  v8 = v7;
  v11 = objc_msgSend_UTF8String(v8, v9, v10);

  v14 = strlen(v11);
  if (v14 >= 0x10000)
  {
    v15 = BUZipLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_241DCF834(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    v14 = 0xFFFFLL;
  }

  selfCopy = self;
  v23 = self->_options & 2;
  v24 = v23 | (objc_msgSend_size(entryCopy, v12, v13) >> 32);
  v27 = v23 | (objc_msgSend_offset(entryCopy, v25, v26) >> 32);
  v28 = 4 * ((v24 | v27) != 0);
  if (v24)
  {
    v28 = 20;
  }

  v29 = v27 != 0;
  if (v27)
  {
    v30 = v28 | 8;
  }

  else
  {
    v30 = v28;
  }

  v56 = v14 + v30;
  v31 = malloc_type_malloc(v14 + v30 + 46, 0xDAC6F913uLL);
  v32 = v31 + 46;
  *v31 = 33639248;
  *(v31 + 4) = 1310782;
  v35 = objc_msgSend_lastModificationDate(entryCopy, v33, v34);
  v38 = objc_msgSend_bu_DOSTime(v35, v36, v37);

  HIDWORD(v39) = v38;
  LODWORD(v39) = v38;
  *(v31 + 3) = v39 >> 16;
  *(v31 + 4) = objc_msgSend_CRC(entryCopy, v40, v41);
  if (v24)
  {
    v44 = -1;
    *(v31 + 5) = -1;
  }

  else
  {
    *(v31 + 5) = objc_msgSend_size(entryCopy, v42, v43);
    v44 = objc_msgSend_size(entryCopy, v45, v46);
  }

  *(v31 + 6) = v44;
  *(v31 + 14) = v14;
  *(v31 + 15) = v30;
  *(v31 + 4) = 0;
  *(v31 + 20) = 0;
  if (v29)
  {
    *(v31 + 42) = -1;
    memcpy(v32, v11, v14);
    *&v32[v14] = BUZip64ExtraFieldSignature;
    v49 = &v32[v14 + 4];
    *&v32[v14 + 2] = 0;
    v50 = &v32[v14 + 2];
    if (!v24)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *(v31 + 42) = objc_msgSend_offset(entryCopy, v42, v43);
    memcpy(v32, v11, v14);
    if (!v24)
    {
      goto LABEL_21;
    }

    v49 = &v32[v14 + 4];
    *&v32[v14] = BUZip64ExtraFieldSignature;
    v50 = &v32[v14 + 2];
  }

  v51 = &v32[v14];
  *v50 = 16;
  *v49 = objc_msgSend_size(entryCopy, v47, v48);
  *(v51 + 12) = objc_msgSend_size(entryCopy, v52, v53);
  if (v29)
  {
    v49 = (v51 + 20);
LABEL_20:
    *v50 += 8;
    *v49 = objc_msgSend_offset(entryCopy, v47, v48);
  }

LABEL_21:
  v54 = dispatch_data_create(v31, v56 + 46, 0, *MEMORY[0x277D85CB0]);
  objc_msgSend_writeData_(selfCopy, v55, v54);
}

- (void)writeEndOfCentralDirectoryDataWithOffset:(int64_t)offset size:(int64_t)size entryCount:(unint64_t)count
{
  countCopy = count;
  sizeCopy = size;
  offsetCopy = offset;
  if (count > 0xFFFE)
  {
    v9 = 1;
  }

  else
  {
    v9 = (LOBYTE(self->_options) >> 2) & 1;
  }

  if (size > 4294967294)
  {
    v10 = 1;
  }

  else
  {
    v10 = (LOBYTE(self->_options) >> 2) & 1;
  }

  if (offset > 4294967294)
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
    objc_msgSend_writeZip64EndOfCentralDirectoryWithOffset_size_entryCount_(self, a2, offset, size, count);
    objc_msgSend_writeZip64EndOfCentralDirectoryLocatorWithOffset_(self, v13, currentOffset);
  }

  v14 = malloc_type_malloc(0x16uLL, 0xBF87FE33uLL);
  *v14 = 101010256;
  if (v9)
  {
    v15 = -1;
  }

  else
  {
    v15 = countCopy;
  }

  v14[4] = v15;
  v14[5] = v15;
  if (v10)
  {
    v16 = -1;
  }

  else
  {
    v16 = sizeCopy;
  }

  if (v11)
  {
    v17 = -1;
  }

  else
  {
    v17 = offsetCopy;
  }

  *(v14 + 3) = v16;
  *(v14 + 4) = v17;
  v14[10] = 0;
  v19 = dispatch_data_create(v14, 0x16uLL, 0, *MEMORY[0x277D85CB0]);
  objc_msgSend_writeData_(self, v18, v19);
}

- (void)writeZip64EndOfCentralDirectoryWithOffset:(int64_t)offset size:(int64_t)size entryCount:(unint64_t)count
{
  v9 = malloc_type_malloc(0x38uLL, 0xC337CB57uLL);
  *v9 = 101075792;
  *(v9 + 4) = 44;
  v9[2] = 0;
  v9[3] = count;
  *(v9 + 3) = 1310782;
  v9[4] = count;
  v9[5] = size;
  v9[6] = offset;
  v11 = dispatch_data_create(v9, 0x38uLL, 0, *MEMORY[0x277D85CB0]);
  objc_msgSend_writeData_(self, v10, v11);
}

- (void)writeZip64EndOfCentralDirectoryLocatorWithOffset:(int64_t)offset
{
  v5 = malloc_type_malloc(0x14uLL, 0x8C30F117uLL);
  *v5 = 117853008;
  v5[1] = 0;
  *(v5 + 1) = offset;
  v5[4] = 1;
  v7 = dispatch_data_create(v5, 0x14uLL, 0, *MEMORY[0x277D85CB0]);
  objc_msgSend_writeData_(self, v6, v7);
}

- (void)writeData:(id)data queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  size = dispatch_data_get_size(data);
  self->_currentOffset += size;
  writtenOffset = self->_writtenOffset;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_241DB02E4;
  v15[3] = &unk_278D1D0A8;
  v16 = queueCopy;
  v17 = completionCopy;
  v12 = queueCopy;
  v13 = completionCopy;
  objc_msgSend_p_writeData_offset_completion_(self, v14, data, writtenOffset, v15);
  self->_writtenOffset += size;
}

- (void)p_writeData:(id)data offset:(int64_t)offset completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v12 = objc_msgSend_channelQueue(self, v10, v11);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_241DB04D4;
  v15[3] = &unk_278D1D120;
  v15[4] = self;
  v16 = dataCopy;
  v17 = completionCopy;
  offsetCopy = offset;
  v13 = completionCopy;
  v14 = dataCopy;
  dispatch_async(v12, v15);
}

- (id)prepareWriteChannelWithCloseCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"%@: %s", @"Abstract method", "[BUZipWriter prepareWriteChannelWithCloseCompletionHandler:]");
  v9 = objc_msgSend_exceptionWithName_reason_userInfo_(v4, v8, v5, v7, 0);
  v10 = v9;

  objc_exception_throw(v9);
}

- (unint64_t)archiveLength
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = objc_msgSend_writeQueue(self, a2, v2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_241DB08D4;
  v7[3] = &unk_278D1CE00;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)handleWriteError:(id)error
{
  errorCopy = error;
  v7 = errorCopy;
  if (errorCopy)
  {
    if (objc_msgSend_code(errorCopy, v5, v6) != 3072 || (objc_msgSend_domain(v7, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v10, v11, *MEMORY[0x277CCA050]), v10, (isEqualToString & 1) == 0))
    {
      v15 = BUZipLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_241DCF86C(v7, v15, v16);
      }
    }

    v17 = objc_msgSend_error(self, v13, v14);

    if (!v17)
    {
      v20 = objc_msgSend_channelQueue(self, v18, v19);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_241DB0A38;
      block[3] = &unk_278D1D148;
      block[4] = self;
      dispatch_async(v20, block);

      objc_msgSend_setError_(self, v21, v7);
    }
  }
}

- (void)enumerateEntriesUsingBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend_writeQueue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_241DB0B30;
  v9[3] = &unk_278D1D058;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  dispatch_sync(v7, v9);
}

- (id)sortedEntriesImpl
{
  sortedEntries = self->_sortedEntries;
  if (!sortedEntries)
  {
    v4 = objc_msgSend_sortedArrayUsingComparator_(self->_entries, a2, &unk_2853F29E0);
    v5 = self->_sortedEntries;
    self->_sortedEntries = v4;

    sortedEntries = self->_sortedEntries;
  }

  return sortedEntries;
}

- (NSArray)sortedEntries
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_241DAD954;
  v12 = sub_241DAD964;
  v13 = 0;
  v4 = objc_msgSend_writeQueue(self, a2, v2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_241DB0EF4;
  v7[3] = &unk_278D1CE00;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)isClosed
{
  selfCopy = self;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = objc_msgSend_writeQueue(self, a2, v2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241DB1018;
  v6[3] = &unk_278D1CE00;
  v6[4] = selfCopy;
  v6[5] = &v7;
  dispatch_sync(v4, v6);

  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

- (id)entryWithName:(id)name
{
  nameCopy = name;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_241DAD954;
  v18 = sub_241DAD964;
  v19 = 0;
  v7 = objc_msgSend_writeQueue(self, v5, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DB1170;
  block[3] = &unk_278D1D190;
  v12 = nameCopy;
  v13 = &v14;
  block[4] = self;
  v8 = nameCopy;
  dispatch_sync(v7, block);

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

- (void)truncateToNumberOfEntries:(unint64_t)entries completion:(id)completion
{
  completionCopy = completion;
  v9 = objc_msgSend_writeQueue(self, v7, v8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DB1298;
  block[3] = &unk_278D1D1B8;
  v12 = completionCopy;
  entriesCopy = entries;
  block[4] = self;
  v10 = completionCopy;
  dispatch_async(v9, block);
}

- (void)truncateToNumberOfEntriesImpl:(unint64_t)impl completion:(id)completion
{
  completionCopy = completion;
  if (objc_msgSend_entriesCountImpl(self, v6, v7) <= impl)
  {
    v33 = MEMORY[0x245D00360](completionCopy);
    v10 = v33;
    if (v33)
    {
      (*(v33 + 16))(v33, 0);
    }
  }

  else
  {
    v10 = objc_msgSend_sortedEntriesImpl(self, v8, v9);
    if (objc_msgSend_count(v10, v11, v12) > impl)
    {
      implCopy = impl;
      do
      {
        v15 = objc_msgSend_objectAtIndexedSubscript_(v10, v13, implCopy);
        objc_msgSend_removeObject_(self->_entries, v16, v15);
        entriesMap = self->_entriesMap;
        v20 = objc_msgSend_name(v15, v18, v19);
        objc_msgSend_removeObjectForKey_(entriesMap, v21, v20);

        ++implCopy;
      }

      while (implCopy < objc_msgSend_count(v10, v22, v23));
    }

    v24 = objc_msgSend_objectAtIndexedSubscript_(v10, v13, impl);
    v27 = objc_msgSend_offset(v24, v25, v26);
    objc_msgSend_setEntryInsertionOffsetImpl_(self, v28, v27);
    v31 = objc_msgSend_offset(v24, v29, v30);
    objc_msgSend_truncateToOffsetImpl_completion_(self, v32, v31, completionCopy);
  }
}

- (void)truncateToOffset:(int64_t)offset completion:(id)completion
{
  completionCopy = completion;
  v9 = objc_msgSend_writeQueue(self, v7, v8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DB14BC;
  block[3] = &unk_278D1D1B8;
  v12 = completionCopy;
  offsetCopy = offset;
  block[4] = self;
  v10 = completionCopy;
  dispatch_async(v9, block);
}

- (void)truncateToOffsetImpl:(int64_t)impl completion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%@: %s", @"Abstract method", "[BUZipWriter truncateToOffsetImpl:completion:]");
  v10 = objc_msgSend_exceptionWithName_reason_userInfo_(v5, v9, v6, v8, 0);
  v11 = v10;

  objc_exception_throw(v10);
}

@end