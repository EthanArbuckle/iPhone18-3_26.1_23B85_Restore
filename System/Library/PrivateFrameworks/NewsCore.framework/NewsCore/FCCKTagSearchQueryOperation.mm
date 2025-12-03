@interface FCCKTagSearchQueryOperation
- (BOOL)validateOperation;
- (id)_constructTagSearchQuery;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)prepareOperation;
- (void)resetForRetry;
- (void)setCursor:(uint64_t)cursor;
- (void)setDatabase:(uint64_t)database;
- (void)setResultCursor:(uint64_t)cursor;
- (void)setResultError:(uint64_t)error;
- (void)setResultRecords:(uint64_t)records;
@end

@implementation FCCKTagSearchQueryOperation

- (BOOL)validateOperation
{
  selfCopy = self;
  v18 = *MEMORY[0x1E69E9840];
  if (!self || !self->_database)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"tag search query must have a database"];
      v10 = 136315906;
      v11 = "[FCCKTagSearchQueryOperation validateOperation]";
      v12 = 2080;
      v13 = "FCCKTagSearchQueryOperation.m";
      v14 = 1024;
      v15 = 45;
      v16 = 2114;
      v17 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);

      if (!selfCopy)
      {
        goto LABEL_6;
      }
    }

    else if (!selfCopy)
    {
      goto LABEL_6;
    }
  }

  if (selfCopy->_searchString)
  {
    goto LABEL_8;
  }

LABEL_6:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"tag search query must have a non-nil search string"];
    v10 = 136315906;
    v11 = "[FCCKTagSearchQueryOperation validateOperation]";
    v12 = 2080;
    v13 = "FCCKTagSearchQueryOperation.m";
    v14 = 1024;
    v15 = 46;
    v16 = 2114;
    v17 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);

    if (selfCopy)
    {
LABEL_8:
      if (selfCopy->_tagType)
      {
        goto LABEL_11;
      }
    }
  }

  else if (selfCopy)
  {
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"tag search query must have a known tag type"];
    v10 = 136315906;
    v11 = "[FCCKTagSearchQueryOperation validateOperation]";
    v12 = 2080;
    v13 = "FCCKTagSearchQueryOperation.m";
    v14 = 1024;
    v15 = 47;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);

    if (!selfCopy)
    {
LABEL_12:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"tag search query must have a non-zero results limit"];
        v10 = 136315906;
        v11 = "[FCCKTagSearchQueryOperation validateOperation]";
        v12 = 2080;
        v13 = "FCCKTagSearchQueryOperation.m";
        v14 = 1024;
        v15 = 48;
        v16 = 2114;
        v17 = v9;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);

        if (selfCopy)
        {
          goto LABEL_14;
        }
      }

      else if (selfCopy)
      {
        goto LABEL_14;
      }

      v3 = 0;
      goto LABEL_18;
    }
  }

  else if (!selfCopy)
  {
    goto LABEL_12;
  }

LABEL_11:
  if (!selfCopy->_resultsLimit)
  {
    goto LABEL_12;
  }

LABEL_14:
  v3 = selfCopy->_database;
  LOBYTE(selfCopy) = v3 && selfCopy->_tagType && selfCopy->_resultsLimit != 0;
LABEL_18:

  v4 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)prepareOperation
{
  if (self)
  {
    tagType = self->_tagType;
    if (tagType == 1)
    {
      v3 = @"topics";
      goto LABEL_7;
    }

    if (tagType == 2)
    {
      v3 = @"channels";
LABEL_7:
      objc_storeStrong(&self->_tagTypeString, v3);
    }
  }
}

- (void)performOperation
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = FCOperationLog;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    shortOperationDescription = [(FCOperation *)self shortOperationDescription];
    v25 = shortOperationDescription;
    if (self)
    {
      searchString = self->_searchString;
    }

    else
    {
      searchString = 0;
    }

    *buf = 138543618;
    *&buf[4] = shortOperationDescription;
    *&buf[12] = 2112;
    *&buf[14] = searchString;
    _os_log_debug_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ started with search string: %@", buf, 0x16u);
  }

  v4 = objc_alloc_init(FCCKContentQueryOperation);
  v5 = v4;
  if (!self)
  {
    [(FCCKContentQueryOperation *)v4 setDatabase:?];
    [(FCCKContentQueryOperation *)v5 setQuery:?];
    [(FCCKContentQueryOperation *)v5 setCursor:?];
    if (v5)
    {
      desiredKeys = 0;
      *(v5 + 400) = 0;
      goto LABEL_5;
    }

LABEL_30:
    [(FCOperation *)self relativePriority];
    v12 = 0;
    v10 = 1;
    goto LABEL_10;
  }

  [(FCCKContentQueryOperation *)v4 setDatabase:?];
  _constructTagSearchQuery = [(FCCKTagSearchQueryOperation *)&self->super.super.super.isa _constructTagSearchQuery];
  [(FCCKContentQueryOperation *)v5 setQuery:_constructTagSearchQuery];

  [(FCCKContentQueryOperation *)v5 setCursor:?];
  if (!v5)
  {
    goto LABEL_30;
  }

  *(v5 + 400) = self->_resultsLimit;
  desiredKeys = self->_desiredKeys;
LABEL_5:
  objc_setProperty_nonatomic_copy(v5, v7, desiredKeys, 408);
  *(v5 + 372) = 13;
  relativePriority = [(FCOperation *)self relativePriority];
  v10 = 0;
  v11 = 300;
  if (!relativePriority)
  {
    v11 = 200;
  }

  if (relativePriority == -1)
  {
    v11 = 100;
  }

  *(v5 + 464) = v11;
  v12 = *(v5 + 384);
LABEL_10:
  v13 = v12;
  v14 = v13 == 0;

  v15 = FCOperationLog;
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if (!v14)
  {
    if (!v16)
    {
      goto LABEL_17;
    }

    shortOperationDescription2 = [(FCOperation *)self shortOperationDescription];
    if (self)
    {
      resultsLimit = self->_resultsLimit;
      if ((v10 & 1) == 0)
      {
LABEL_14:
        v19 = *(v5 + 384);
LABEL_15:
        v20 = v19;
        *buf = 138543874;
        *&buf[4] = shortOperationDescription2;
        *&buf[12] = 2048;
        *&buf[14] = resultsLimit;
        *&buf[22] = 2112;
        v35 = v20;
        _os_log_debug_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEBUG, "%{public}@ issuing query with results limit %lu: %@", buf, 0x20u);

        goto LABEL_17;
      }
    }

    else
    {
      resultsLimit = 0;
      if ((v10 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v19 = 0;
    goto LABEL_15;
  }

  if (v16)
  {
    shortOperationDescription3 = [(FCOperation *)self shortOperationDescription];
    v28 = shortOperationDescription3;
    if (self)
    {
      v29 = self->_resultsLimit;
    }

    else
    {
      v29 = 0;
    }

    *buf = 138543618;
    *&buf[4] = shortOperationDescription3;
    *&buf[12] = 2048;
    *&buf[14] = v29;
    _os_log_debug_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEBUG, "%{public}@ issuing query from cursor with results limit %lu", buf, 0x16u);
  }

LABEL_17:

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v35 = __Block_byref_object_copy__51;
  v36 = __Block_byref_object_dispose__51;
  array = [MEMORY[0x1E695DF70] array];
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __47__FCCKTagSearchQueryOperation_performOperation__block_invoke;
  newValue[3] = &unk_1E7C423D8;
  newValue[4] = buf;
  if ((v10 & 1) == 0)
  {
    objc_setProperty_nonatomic_copy(v5, v21, newValue, 416);
  }

  objc_initWeak(&location, v5);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __47__FCCKTagSearchQueryOperation_performOperation__block_invoke_2;
  v30[3] = &unk_1E7C42400;
  v30[4] = self;
  v30[5] = buf;
  objc_copyWeak(&v31, &location);
  if ((v10 & 1) == 0)
  {
    objc_setProperty_nonatomic_copy(v5, v22, v30, 424);
  }

  [(FCOperation *)self associateChildOperation:v5];
  [v5 start];
  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);

  v23 = *MEMORY[0x1E69E9840];
}

- (id)_constructTagSearchQuery
{
  selfCopy = self;
  v24[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    array = [MEMORY[0x1E695DF70] array];
    v3 = MEMORY[0x1E696AE18];
    v24[0] = selfCopy[48];
    v4 = MEMORY[0x1E695DEC8];
    v5 = v24[0];
    v6 = [v4 arrayWithObjects:v24 count:1];

    v7 = [v3 predicateWithFormat:@"%@ CONTAINS %K", v6, @"query"];

    [array addObject:v7];
    v8 = MEMORY[0x1E696AE18];
    v23 = selfCopy[54];
    v9 = MEMORY[0x1E695DEC8];
    v10 = v23;
    v11 = [v9 arrayWithObjects:&v23 count:1];

    v12 = [v8 predicateWithFormat:@"%@ CONTAINS %K", v11, @"queryNames"];

    [array addObject:v12];
    v13 = selfCopy[52];
    if (v13)
    {
      v14 = MEMORY[0x1E696AE18];
      v22 = v13;
      v15 = MEMORY[0x1E695DEC8];
      v16 = v13;
      v17 = [v15 arrayWithObjects:&v22 count:1];

      v18 = [v14 predicateWithFormat:@"%@ CONTAINS %K", v17, @"locale", v22];

      [array addObject:v18];
    }

    v19 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
    selfCopy = [objc_alloc(MEMORY[0x1E695BA30]) initWithRecordType:@"TagSearch" predicate:v19];
  }

  v20 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

void __47__FCCKTagSearchQueryOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 32);
    v19 = v7;
    v20 = [v18 shortOperationDescription];
    v21 = [*(*(*(a1 + 40) + 8) + 40) count];
    v22 = *(*(*(a1 + 40) + 8) + 40);
    v28 = 138543874;
    v29 = v20;
    v30 = 2048;
    v31 = v21;
    v32 = 2112;
    v33 = v22;
    _os_log_debug_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEBUG, "%{public}@ received response with %lu Tag records: %@", &v28, 0x20u);
  }

  v8 = FCErrorForCKError(v6);
  [(FCCKTagSearchQueryOperation *)*(a1 + 32) setResultError:v8];

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = FCOperationLog;
    if (v9[57])
    {
      if (!os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v11 = v10;
      v12 = [v9 shortOperationDescription];
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      v14 = WeakRetained;
      if (WeakRetained)
      {
        v15 = *(WeakRetained + 54);
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      v17 = [v16 firstObject];
      v28 = 138543874;
      v29 = v12;
      v30 = 2114;
      v31 = v6;
      v32 = 2114;
      v33 = v17;
      _os_log_error_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_ERROR, "%{public}@ query failed with error: %{public}@, request UUID: %{public}@", &v28, 0x20u);
      goto LABEL_14;
    }
  }

  else
  {
    v10 = FCOperationLog;
  }

  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_15;
  }

  v11 = v10;
  v12 = [v9 shortOperationDescription];
  v23 = objc_loadWeakRetained((a1 + 48));
  v14 = v23;
  if (v23)
  {
    v24 = *(v23 + 54);
  }

  else
  {
    v24 = 0;
  }

  v16 = v24;
  v17 = [v16 firstObject];
  v28 = 138543618;
  v29 = v12;
  v30 = 2112;
  v31 = v17;
  _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ query succeeded with request UUID: %@", &v28, 0x16u);
LABEL_14:

LABEL_15:
  [(FCCKTagSearchQueryOperation *)*(a1 + 32) setResultRecords:?];
  [(FCCKTagSearchQueryOperation *)*(a1 + 32) setResultCursor:v5];
  v25 = *(a1 + 32);
  if (v25)
  {
    v26 = v25[57];
  }

  else
  {
    v26 = 0;
  }

  [v25 finishedPerformingOperationWithError:v26];

  v27 = *MEMORY[0x1E69E9840];
}

- (void)setResultError:(uint64_t)error
{
  if (error)
  {
    objc_storeStrong((error + 456), a2);
  }
}

- (void)setResultRecords:(uint64_t)records
{
  if (records)
  {
    objc_storeStrong((records + 440), a2);
  }
}

- (void)setResultCursor:(uint64_t)cursor
{
  if (cursor)
  {
    objc_storeStrong((cursor + 448), a2);
  }
}

- (void)resetForRetry
{
  [(FCCKTagSearchQueryOperation *)self setResultRecords:?];
  [(FCCKTagSearchQueryOperation *)self setResultCursor:?];

  [(FCCKTagSearchQueryOperation *)self setResultError:?];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  if (self)
  {
    queryCompletionHandler = self->_queryCompletionHandler;
    if (queryCompletionHandler)
    {
      v10 = errorCopy;
      v6 = queryCompletionHandler;
      v7 = self->_resultRecords;
      v8 = self->_resultCursor;
      if (self->_resultError)
      {
        resultError = self->_resultError;
      }

      else
      {
        resultError = v10;
      }

      v6[2](v6, v7, v8, resultError);

      errorCopy = v10;
    }
  }
}

- (void)setDatabase:(uint64_t)database
{
  if (database)
  {
    objc_storeStrong((database + 368), a2);
  }
}

- (void)setCursor:(uint64_t)cursor
{
  if (cursor)
  {
    objc_storeStrong((cursor + 400), a2);
  }
}

@end