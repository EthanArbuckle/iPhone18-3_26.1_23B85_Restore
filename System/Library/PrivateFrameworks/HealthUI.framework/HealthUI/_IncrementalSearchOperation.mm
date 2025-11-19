@interface _IncrementalSearchOperation
- (_IncrementalSearchOperation)initWithSearchString:(id)a3 searchBody:(id)a4 resultsBlock:(id)a5 finishedBlock:(id)a6;
- (void)main;
@end

@implementation _IncrementalSearchOperation

- (_IncrementalSearchOperation)initWithSearchString:(id)a3 searchBody:(id)a4 resultsBlock:(id)a5 finishedBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = _IncrementalSearchOperation;
  v14 = [(_IncrementalSearchOperation *)&v26 init];
  if (v14)
  {
    v25 = 0;
    v15 = [HKIncrementalSearchBar regularExpressionFromString:v10 quoteForJavascript:0 caseless:&v25];
    v24 = 0;
    v16 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:v15 options:v25 error:&v24];
    v17 = v24;
    regularExpression = v14->_regularExpression;
    v14->_regularExpression = v16;

    objc_storeStrong(&v14->_searchBody, a4);
    v19 = _Block_copy(v12);
    searchResultsBlock = v14->_searchResultsBlock;
    v14->_searchResultsBlock = v19;

    v21 = _Block_copy(v13);
    searchFinishedBlock = v14->_searchFinishedBlock;
    v14->_searchFinishedBlock = v21;
  }

  return v14;
}

- (void)main
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x42810000000;
  v19 = &unk_1C3DAF4DA;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  if (([(_IncrementalSearchOperation *)self isCancelled]& 1) == 0)
  {
    v17[4] = 0;
    objc_initWeak(&location, self);
    regularExpression = self->_regularExpression;
    searchBody = self->_searchBody;
    v5 = [(NSString *)searchBody length];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __35___IncrementalSearchOperation_main__block_invoke;
    v12[3] = &unk_1E81BAD90;
    v12[4] = self;
    v12[5] = &v16;
    objc_copyWeak(&v13, &location);
    v12[6] = v15;
    [(NSRegularExpression *)regularExpression enumerateMatchesInString:searchBody options:0 range:0 usingBlock:v5, v12];
    if (([(_IncrementalSearchOperation *)self isCancelled]& 1) == 0)
    {
      if (v17[4])
      {
        searchResultsBlock = self->_searchResultsBlock;
        v7 = objc_loadWeakRetained(&location);
        v8 = searchResultsBlock[2];
        memcpy(__dst, v17 + 4, sizeof(__dst));
        v8(searchResultsBlock, v7, __dst);
      }

      searchFinishedBlock = self->_searchFinishedBlock;
      v10 = objc_loadWeakRetained(&location);
      searchFinishedBlock[2](searchFinishedBlock, v10);
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v16, 8);
}

@end