@interface FCArrayStream
- (FCArrayStream)initWithArray:(id)array;
- (id)fetchMoreResultsWithLimit:(unint64_t)limit qualityOfService:(int64_t)service callbackQueue:(id)queue completionHandler:(id)handler;
@end

@implementation FCArrayStream

- (FCArrayStream)initWithArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = FCArrayStream;
  v5 = [(FCArrayStream *)&v9 init];
  if (v5)
  {
    if (arrayCopy)
    {
      array = [arrayCopy copy];
    }

    else
    {
      array = [MEMORY[0x1E695DEC8] array];
    }

    array = v5->_array;
    v5->_array = array;
  }

  return v5;
}

- (id)fetchMoreResultsWithLimit:(unint64_t)limit qualityOfService:(int64_t)service callbackQueue:(id)queue completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (queueCopy)
  {
    if (handlerCopy)
    {
      if (limit)
      {
        limitCopy = limit;
      }

      else
      {
        limitCopy = 0xFFFFFFFFLL;
      }

      index = self->_index;
      v14 = [(NSArray *)self->_array count];
      array = self->_array;
      if (limitCopy >= v14 - self->_index)
      {
        limitCopy = v14 - self->_index;
      }

      limitCopy = [(NSArray *)self->_array subarrayWithRange:index, limitCopy];
      self->_index = limitCopy + index;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __92__FCArrayStream_fetchMoreResultsWithLimit_qualityOfService_callbackQueue_completionHandler___block_invoke;
      block[3] = &unk_1E7C37778;
      v22 = limitCopy;
      v23 = v11;
      v17 = limitCopy;
      dispatch_async(queueCopy, block);

LABEL_9:
      goto LABEL_14;
    }

LABEL_13:
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completionHandler != nil"];
    *buf = 136315906;
    v25 = "[FCArrayStream fetchMoreResultsWithLimit:qualityOfService:callbackQueue:completionHandler:]";
    v26 = 2080;
    v27 = "FCArrayStream.m";
    v28 = 1024;
    v29 = 35;
    v30 = 2114;
    v31 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "callbackQueue != nil"];
    *buf = 136315906;
    v25 = "[FCArrayStream fetchMoreResultsWithLimit:qualityOfService:callbackQueue:completionHandler:]";
    v26 = 2080;
    v27 = "FCArrayStream.m";
    v28 = 1024;
    v29 = 34;
    v30 = 2114;
    v31 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_14:

  v18 = *MEMORY[0x1E69E9840];
  return 0;
}

@end