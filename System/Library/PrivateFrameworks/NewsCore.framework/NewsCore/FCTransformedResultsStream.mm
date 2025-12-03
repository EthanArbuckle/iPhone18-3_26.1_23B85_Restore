@interface FCTransformedResultsStream
- (BOOL)isFinished;
- (FCTransformedResultsStream)initWithStream:(id)stream asyncTransformBlock:(id)block;
- (id)fetchMoreResultsWithLimit:(unint64_t)limit qualityOfService:(int64_t)service callbackQueue:(id)queue completionHandler:(id)handler;
@end

@implementation FCTransformedResultsStream

- (FCTransformedResultsStream)initWithStream:(id)stream asyncTransformBlock:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  blockCopy = block;
  if (!streamCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "stream != nil"];
    *buf = 136315906;
    v19 = "[FCTransformedResultsStream initWithStream:asyncTransformBlock:]";
    v20 = 2080;
    v21 = "FCTransformedResultsStream.m";
    v22 = 1024;
    v23 = 23;
    v24 = 2114;
    v25 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (blockCopy)
    {
      goto LABEL_6;
    }
  }

  else if (blockCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "asyncTransformBlock != nil"];
    *buf = 136315906;
    v19 = "[FCTransformedResultsStream initWithStream:asyncTransformBlock:]";
    v20 = 2080;
    v21 = "FCTransformedResultsStream.m";
    v22 = 1024;
    v23 = 24;
    v24 = 2114;
    v25 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v17.receiver = self;
  v17.super_class = FCTransformedResultsStream;
  v9 = [(FCTransformedResultsStream *)&v17 init];
  v10 = v9;
  if (v9)
  {
    if (streamCopy && blockCopy)
    {
      objc_storeStrong(&v9->_stream, stream);
      v11 = [blockCopy copy];
      asyncTransformBlock = v10->_asyncTransformBlock;
      v10->_asyncTransformBlock = v11;
    }

    else
    {
      asyncTransformBlock = v9;
      v10 = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)fetchMoreResultsWithLimit:(unint64_t)limit qualityOfService:(int64_t)service callbackQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  stream = [(FCTransformedResultsStream *)self stream];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __105__FCTransformedResultsStream_fetchMoreResultsWithLimit_qualityOfService_callbackQueue_completionHandler___block_invoke;
  v17[3] = &unk_1E7C3F278;
  v17[4] = self;
  v18 = queueCopy;
  v19 = handlerCopy;
  serviceCopy = service;
  v13 = handlerCopy;
  v14 = queueCopy;
  v15 = [stream fetchMoreResultsWithLimit:limit qualityOfService:service callbackQueue:v14 completionHandler:v17];

  return v15;
}

void __105__FCTransformedResultsStream_fetchMoreResultsWithLimit_qualityOfService_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 asyncTransformBlock];
  v9 = *(a1 + 56);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __105__FCTransformedResultsStream_fetchMoreResultsWithLimit_qualityOfService_callbackQueue_completionHandler___block_invoke_2;
  v13[3] = &unk_1E7C3F250;
  v14 = *(a1 + 40);
  v10 = *(a1 + 48);
  v15 = v5;
  v16 = v10;
  v11 = v8[2];
  v12 = v5;
  v11(v8, v7, v9, v13);
}

void __105__FCTransformedResultsStream_fetchMoreResultsWithLimit_qualityOfService_callbackQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __105__FCTransformedResultsStream_fetchMoreResultsWithLimit_qualityOfService_callbackQueue_completionHandler___block_invoke_3;
      block[3] = &unk_1E7C3A060;
      v9 = v5;
      v7 = v3;
      v8 = *(a1 + 40);
      dispatch_async(v4, block);
    }
  }
}

- (BOOL)isFinished
{
  stream = [(FCTransformedResultsStream *)self stream];
  isFinished = [stream isFinished];

  return isFinished;
}

@end