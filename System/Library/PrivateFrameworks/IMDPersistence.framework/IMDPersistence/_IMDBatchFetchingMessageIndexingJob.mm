@interface _IMDBatchFetchingMessageIndexingJob
- (BOOL)runWithCompletion:(id)a3;
- (_IMDBatchFetchingMessageIndexingJob)initWithAggregateIndexingJob:(id)a3 batchFetcher:(id)a4;
@end

@implementation _IMDBatchFetchingMessageIndexingJob

- (_IMDBatchFetchingMessageIndexingJob)initWithAggregateIndexingJob:(id)a3 batchFetcher:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = _IMDBatchFetchingMessageIndexingJob;
  v9 = [(_IMDBatchFetchingMessageIndexingJob *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_job, a3);
    v11 = [IMDThreadSafeMessageDictionaryMapper alloc];
    v14 = objc_msgSend_timing(v10->_job, v12, v13);
    v16 = objc_msgSend_initWithBatchFetcher_timingCollection_(v11, v15, v8, v14);
    mapper = v10->_mapper;
    v10->_mapper = v16;
  }

  return v10;
}

- (BOOL)runWithCompletion:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_job(self, v5, v6);
  v10 = objc_msgSend_timing(v7, v8, v9);
  objc_msgSend_startTimingForKey_(v10, v11, @"total time for indexing messages");

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B7BC8A94;
  aBlock[3] = &unk_1E7CBB8A8;
  aBlock[4] = self;
  v12 = _Block_copy(aBlock);
  v15 = objc_msgSend_runsOneBatch(self, v13, v14);
  v18 = objc_msgSend_mapper(self, v16, v17);
  v20 = v18;
  if (v15)
  {
    objc_msgSend_processOnceWithBlock_(v18, v19, v12);
  }

  else
  {
    objc_msgSend_processWithBlock_(v18, v19, v12);
  }

  v25 = objc_msgSend_processedAnything(self, v21, v22);
  if (v25)
  {
    v26 = objc_msgSend_job(self, v23, v24);
    objc_msgSend_finishWithCompletion_(v26, v27, v4);
  }

  return v25;
}

@end