@interface IMDThreadSafeMessageDictionaryMapper
- (BOOL)_generateNextBatchOfIndexableDictionaries;
- (BOOL)processOnceWithBlock:(id)block;
- (IMDThreadSafeMessageDictionaryMapper)initWithBatchFetcher:(id)fetcher;
- (IMDThreadSafeMessageDictionaryMapper)initWithBatchFetcher:(id)fetcher timingCollection:(id)collection;
- (id)_loadChatDictionariesForMessagesWithGUIDs:(id)ds;
- (id)_loadChatsWithGUIDs:(id)ds;
- (id)_nextBatchOfMessageRecords;
- (id)initForFetchingMessageGUIDs:(id)ds timingCollection:(id)collection;
- (id)mapWithBlock:(id)block;
- (unint64_t)_messageRecordBatchSize;
- (void)_generateIndexableDictionariesForMessageRecords:(id)records;
- (void)processWithBlock:(id)block;
- (void)setLastIndexedRowID:(unint64_t)d;
- (void)setMaxMessagesToProcess:(unint64_t)process;
@end

@implementation IMDThreadSafeMessageDictionaryMapper

- (BOOL)_generateNextBatchOfIndexableDictionaries
{
  v4 = objc_msgSend_indexableDictionaries(self, a2, v2);
  objc_msgSend_removeAllObjects(v4, v5, v6);

  v9 = objc_msgSend_processedMessageCount(self, v7, v8);
  if (v9 >= objc_msgSend_maxMessagesToProcess(self, v10, v11))
  {
    return 0;
  }

  v14 = objc_msgSend__nextBatchOfMessageRecords(self, v12, v13);
  objc_msgSend__generateIndexableDictionariesForMessageRecords_(self, v15, v14);
  v18 = objc_msgSend_count(v14, v16, v17) != 0;

  return v18;
}

- (id)_nextBatchOfMessageRecords
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1B7AE1B10;
  v32 = sub_1B7AE2590;
  v33 = 0;
  v4 = objc_msgSend_timingCollection(self, a2, v2);
  objc_msgSend_startTimingForKey_(v4, v5, @"sqlQuery");

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1B7AF769C;
  v27[3] = &unk_1E7CBB6F0;
  v27[4] = self;
  v27[5] = &v28;
  IMDPersistencePerformBlock(v27, 1, v6);
  v9 = objc_msgSend_lastObject(v29[5], v7, v8);
  v12 = objc_msgSend_rowID(v9, v10, v11);
  objc_msgSend_setLastIndexedRowID_(self, v13, v12);

  v16 = objc_msgSend_count(v29[5], v14, v15);
  v19 = objc_msgSend_processedMessageCount(self, v17, v18);
  objc_msgSend_setProcessedMessageCount_(self, v20, v19 + v16);
  v23 = objc_msgSend_timingCollection(self, v21, v22);
  objc_msgSend_stopTimingForKey_(v23, v24, @"sqlQuery");

  v25 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v25;
}

- (unint64_t)_messageRecordBatchSize
{
  v4 = objc_msgSend_databaseBatchSize(self, a2, v2);
  v7 = objc_msgSend_maxMessagesToProcess(self, v5, v6);
  if (v4 >= v7 - objc_msgSend_processedMessageCount(self, v8, v9))
  {
    v13 = objc_msgSend_maxMessagesToProcess(self, v10, v11);
    return v13 - objc_msgSend_processedMessageCount(self, v14, v15);
  }

  else
  {

    return objc_msgSend_databaseBatchSize(self, v10, v11);
  }
}

- (IMDThreadSafeMessageDictionaryMapper)initWithBatchFetcher:(id)fetcher timingCollection:(id)collection
{
  fetcherCopy = fetcher;
  collectionCopy = collection;
  v24.receiver = self;
  v24.super_class = IMDThreadSafeMessageDictionaryMapper;
  v9 = [(IMDThreadSafeMessageDictionaryMapper *)&v24 init];
  v12 = v9;
  if (v9)
  {
    *(v9 + 2) = 0;
    *(v9 + 56) = xmmword_1B7D09CD0;
    *(v9 + 9) = objc_msgSend_messageRecordBatchSize(MEMORY[0x1E69A7FF8], v10, v11);
    objc_storeStrong(&v12->_batchFetcher, fetcher);
    objc_msgSend_setParentedOnly_(v12->_batchFetcher, v13, 1);
    objc_storeStrong(&v12->_timingCollection, collection);
    v14 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    chatDictionaries = v12->_chatDictionaries;
    v12->_chatDictionaries = v14;

    v16 = MEMORY[0x1E695DF70];
    v19 = objc_msgSend_databaseBatchSize(v12, v17, v18);
    v21 = objc_msgSend_arrayWithCapacity_(v16, v20, v19);
    indexableDictionaries = v12->_indexableDictionaries;
    v12->_indexableDictionaries = v21;
  }

  return v12;
}

- (IMDThreadSafeMessageDictionaryMapper)initWithBatchFetcher:(id)fetcher
{
  v4 = MEMORY[0x1E69A6170];
  fetcherCopy = fetcher;
  v6 = objc_alloc_init(v4);
  v8 = objc_msgSend_initWithBatchFetcher_timingCollection_(self, v7, fetcherCopy, v6);

  return v8;
}

- (id)initForFetchingMessageGUIDs:(id)ds timingCollection:(id)collection
{
  collectionCopy = collection;
  dsCopy = ds;
  v8 = objc_alloc_init(IMDMessageRecordBatchFetcher);
  v10 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v9, @"%K IN %@", *MEMORY[0x1E69A7168], dsCopy);

  objc_msgSend_setPredicate_(v8, v11, v10);
  v13 = objc_msgSend_initWithBatchFetcher_timingCollection_(self, v12, v8, collectionCopy);

  return v13;
}

- (void)setMaxMessagesToProcess:(unint64_t)process
{
  self->_maxMessagesToProcess = process;
  v4 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, process);
  objc_msgSend_addObjectsFromArray_(v4, v5, self->_indexableDictionaries);
  indexableDictionaries = self->_indexableDictionaries;
  self->_indexableDictionaries = v4;
}

- (void)setLastIndexedRowID:(unint64_t)d
{
  v5 = objc_msgSend_batchFetcher(self, a2, d);
  objc_msgSend_setLastRowID_(v5, v6, d);

  self->_lastIndexedRowID = d;
}

- (id)_loadChatsWithGUIDs:(id)ds
{
  v68 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFA8], v7, dsCopy);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v9 = dsCopy;
  v10 = v8;
  obj = v9;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v62, v67, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v63;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v63 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v62 + 1) + 8 * i);
        v19 = objc_msgSend_chatDictionaries(self, v13, v14);
        v21 = objc_msgSend_objectForKey_(v19, v20, v18);

        if (v21)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v6, v22, v21, v18);
          objc_msgSend_removeObject_(v10, v23, v18);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v62, v67, 16);
    }

    while (v15);
  }

  if (objc_msgSend_count(v10, v24, v25))
  {
    v56 = v5;
    v26 = objc_alloc_init(IMDChatRecordBatchFetcher);
    v27 = MEMORY[0x1E696AE18];
    v28 = *MEMORY[0x1E69A6B70];
    v55 = v10;
    v31 = objc_msgSend_allObjects(v10, v29, v30);
    v33 = objc_msgSend_predicateWithFormat_(v27, v32, @"%K IN %@", v28, v31);
    objc_msgSend_setPredicate_(v26, v34, v33);

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v35 = v26;
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v58, v66, 16);
    if (v37)
    {
      v38 = v37;
      v39 = *v59;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v59 != v39)
          {
            objc_enumerationMutation(v35);
          }

          v41 = IMCopyIndexableChatDictionaryForRecord(*(*(&v58 + 1) + 8 * j), 0);
          v43 = objc_msgSend_objectForKeyedSubscript_(v41, v42, @"guid");
          v46 = v43;
          if (v41 && objc_msgSend_length(v43, v44, v45))
          {
            objc_msgSend_setObject_forKeyedSubscript_(v6, v47, v41, v46);
            v50 = objc_msgSend_chatDictionaries(self, v48, v49);
            objc_msgSend_setObject_forKey_(v50, v51, v41, v46);
          }
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v52, &v58, v66, 16);
      }

      while (v38);
    }

    v10 = v55;
    v5 = v56;
  }

  objc_autoreleasePoolPop(v5);
  v53 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_loadChatDictionariesForMessagesWithGUIDs:(id)ds
{
  dsCopy = ds;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1B7AE1B10;
  v32 = sub_1B7AE2590;
  v33 = 0;
  v7 = objc_msgSend_synchronousDatabase(IMDDatabase, v5, v6);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1B7BCC254;
  v27[3] = &unk_1E7CBC3D8;
  v27[4] = &v28;
  objc_msgSend_fetchChatGUIDsForMessageGUIDs_completionHandler_(v7, v8, dsCopy, v27);

  v11 = objc_msgSend_allKeys(v29[5], v9, v10);
  if (objc_msgSend_count(v11, v12, v13))
  {
    v15 = objc_msgSend__loadChatsWithGUIDs_(self, v14, v11);
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = v29[5];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1B7BCC264;
    v24[3] = &unk_1E7CBC400;
    v18 = v15;
    v25 = v18;
    v19 = v16;
    v26 = v19;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v17, v20, v24);
    v21 = v26;
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  _Block_object_dispose(&v28, 8);

  return v22;
}

- (void)_generateIndexableDictionariesForMessageRecords:(id)records
{
  recordsCopy = records;
  v7 = objc_msgSend_timingCollection(self, v5, v6);
  objc_msgSend_startTimingForKey_(v7, v8, @"dictionaryConversion");

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_1B7AE1B10;
  v27[4] = sub_1B7AE2590;
  v28 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BCC544;
  block[3] = &unk_1E7CBC338;
  v26 = v27;
  block[4] = self;
  v9 = recordsCopy;
  v25 = v9;
  IMDPersistencePerformBlock(block, 1, v10);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = sub_1B7BCC5BC;
  v20 = &unk_1E7CBC428;
  v11 = v9;
  v21 = v11;
  selfCopy = self;
  v23 = v27;
  IMDPersistencePerformBlock(&v17, 1, v12);
  v15 = objc_msgSend_timingCollection(self, v13, v14, v17, v18, v19, v20);
  objc_msgSend_stopTimingForKey_(v15, v16, @"dictionaryConversion");

  _Block_object_dispose(v27, 8);
}

- (BOOL)processOnceWithBlock:(id)block
{
  v37 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = objc_autoreleasePoolPush();
  NextBatchOfIndexableDictionaries = objc_msgSend__generateNextBatchOfIndexableDictionaries(self, v6, v7);
  v10 = objc_msgSend_timingCollection(self, v8, v9);
  objc_msgSend_startTimingForKey_(v10, v11, @"indexCreation");

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = objc_msgSend_indexableDictionaries(self, v12, v13);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v32, v36, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v33;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v32 + 1) + 8 * i);
        v22 = objc_msgSend_objectAtIndexedSubscript_(v21, v17, 0);
        v24 = objc_msgSend_objectAtIndexedSubscript_(v21, v23, 1);
        blockCopy[2](blockCopy, v22, v24);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v32, v36, 16);
    }

    while (v18);
  }

  v27 = objc_msgSend_timingCollection(self, v25, v26);
  objc_msgSend_stopTimingForKey_(v27, v28, @"indexCreation");

  objc_autoreleasePoolPop(v5);
  v29 = *MEMORY[0x1E69E9840];
  return NextBatchOfIndexableDictionaries;
}

- (void)processWithBlock:(id)block
{
    ;
  }
}

- (id)mapWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = sub_1B7BCCA2C;
  v16 = &unk_1E7CBC450;
  v17 = v5;
  v18 = blockCopy;
  v6 = v5;
  v7 = blockCopy;
  objc_msgSend_processWithBlock_(self, v8, &v13);
  v11 = objc_msgSend_copy(v6, v9, v10, v13, v14, v15, v16);

  return v11;
}

@end