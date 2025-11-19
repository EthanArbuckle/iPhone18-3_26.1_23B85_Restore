@interface FCTransformedStream
- (BOOL)isFinished;
- (FCTransformedStream)init;
- (FCTransformedStream)initWithStream:(id)a3 transformBlock:(id)a4;
- (id)fetchMoreResultsWithLimit:(unint64_t)a3 qualityOfService:(int64_t)a4 callbackQueue:(id)a5 completionHandler:(id)a6;
@end

@implementation FCTransformedStream

- (FCTransformedStream)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCTransformedStream init]";
    v10 = 2080;
    v11 = "FCTransformedStream.m";
    v12 = 1024;
    v13 = 23;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCTransformedStream init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCTransformedStream)initWithStream:(id)a3 transformBlock:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "stream != nil"];
    *buf = 136315906;
    v18 = "[FCTransformedStream initWithStream:transformBlock:]";
    v19 = 2080;
    v20 = "FCTransformedStream.m";
    v21 = 1024;
    v22 = 28;
    v23 = 2114;
    v24 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "transformBlock != nil"];
    *buf = 136315906;
    v18 = "[FCTransformedStream initWithStream:transformBlock:]";
    v19 = 2080;
    v20 = "FCTransformedStream.m";
    v21 = 1024;
    v22 = 29;
    v23 = 2114;
    v24 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v16.receiver = self;
  v16.super_class = FCTransformedStream;
  v9 = [(FCTransformedStream *)&v16 init];
  if (v9)
  {
    v10 = _Block_copy(v8);
    transformBlock = v9->_transformBlock;
    v9->_transformBlock = v10;

    objc_storeStrong(&v9->_stream, a3);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)fetchMoreResultsWithLimit:(unint64_t)a3 qualityOfService:(int64_t)a4 callbackQueue:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = [(FCTransformedStream *)self stream];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__FCTransformedStream_fetchMoreResultsWithLimit_qualityOfService_callbackQueue_completionHandler___block_invoke;
  v16[3] = &unk_1E7C40A70;
  v16[4] = self;
  v17 = v10;
  v13 = v10;
  v14 = [v12 fetchMoreResultsWithLimit:a3 qualityOfService:a4 callbackQueue:v11 completionHandler:v16];

  return v14;
}

void __98__FCTransformedStream_fetchMoreResultsWithLimit_qualityOfService_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 transformBlock];
  v8 = [v6 fc_arrayByTransformingWithBlock:v7];

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v8, v10);
  }
}

- (BOOL)isFinished
{
  v2 = [(FCTransformedStream *)self stream];
  v3 = [v2 isFinished];

  return v3;
}

@end