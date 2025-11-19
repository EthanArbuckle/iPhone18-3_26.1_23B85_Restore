@interface CUTAsyncReducer
- (CUTAsyncReducer)initWithInput:(id)a3 initialValue:(id)a4;
- (void)_completeWithResult:(id)a3;
- (void)_reduceWithPending:(id)a3 visited:(id)a4 currentResult:(id)a5 completion:(id)a6;
- (void)reduceWithCompletion:(id)a3;
@end

@implementation CUTAsyncReducer

- (CUTAsyncReducer)initWithInput:(id)a3 initialValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CUTAsyncReducer;
  v9 = [(CUTAsyncReducer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_input, a3);
    v11 = [[CUTResult alloc] initWithSuccess:v8];
    v12 = v10->_result;
    v10->_result = v11;
  }

  return v10;
}

- (void)reduceWithCompletion:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  [(CUTAsyncReducer *)self setCompletionBlock:a3];
  v4 = +[CUTLog utilities];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(CUTAsyncReducer *)self input];
    *buf = 134217984;
    v13 = [v5 count];
    _os_log_impl(&dword_1B2321000, v4, OS_LOG_TYPE_INFO, "Reduce {input: %ld}", buf, 0xCu);
  }

  v6 = [(CUTAsyncReducer *)self reducerBlock];

  if (v6)
  {
    v7 = [(CUTAsyncReducer *)self input];
    v8 = [(CUTAsyncReducer *)self result];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1B2324114;
    v11[3] = &unk_1E7B20C58;
    v11[4] = self;
    [(CUTAsyncReducer *)self _reduceWithPending:v7 visited:MEMORY[0x1E695E0F0] currentResult:v8 completion:v11];
  }

  else
  {
    v9 = +[CUTLog utilities];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B2321000, v9, OS_LOG_TYPE_DEFAULT, "Missing reduce block -- Done", buf, 2u);
    }

    v7 = [(CUTAsyncReducer *)self result];
    [(CUTAsyncReducer *)self _completeWithResult:v7];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_completeWithResult:(id)a3
{
  v4 = a3;
  [(CUTAsyncReducer *)self setResult:v4];
  v5 = [(CUTAsyncReducer *)self completionBlock];
  (v5)[2](v5, v4);

  [(CUTAsyncReducer *)self setCompletionBlock:0];

  MEMORY[0x1EEE66B58](self, sel_setReducerBlock_);
}

- (void)_reduceWithPending:(id)a3 visited:(id)a4 currentResult:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 count])
  {
    v14 = [v10 firstObject];
    v15 = [v10 subarrayWithRange:{1, objc_msgSend(v10, "count") - 1}];
    v16 = [v11 arrayByAddingObject:v14];
    v17 = objc_alloc_init(CUTAsyncReducerState);
    [(CUTAsyncReducerState *)v17 setVisitedItems:v11];
    [(CUTAsyncReducerState *)v17 setPendingItems:v15];
    [(CUTAsyncReducerState *)v17 setCurrentItem:v14];
    v18 = [v12 state];
    if (v18 == 1)
    {
      [(CUTAsyncReducerState *)v17 setCurrentResult:0];
    }

    else if (!v18)
    {
      v19 = [v12 value];
      [(CUTAsyncReducerState *)v17 setCurrentResult:v19];
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_1B2324590;
    v33[3] = &unk_1E7B20C80;
    v21 = v13;
    v34 = v21;
    [(CUTAsyncReducerState *)v17 setCancelBlock:v33];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_1B2324610;
    v31[3] = &unk_1E7B20CA8;
    v22 = v21;
    v32 = v22;
    [(CUTAsyncReducerState *)v17 setStopBlock:v31];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1B2324690;
    v27[3] = &unk_1E7B20CD0;
    v27[4] = self;
    v28 = v15;
    v29 = v16;
    v30 = v22;
    v23 = v16;
    v24 = v15;
    [(CUTAsyncReducerState *)v17 setContinueBlock:v27];
    v25 = [(CUTAsyncReducer *)self reducerBlock];
    (v25)[2](v25, v17);
  }

  else
  {
    v20 = +[CUTLog utilities];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v26 = 0;
      _os_log_impl(&dword_1B2321000, v20, OS_LOG_TYPE_INFO, "No more items -- Done", v26, 2u);
    }

    (*(v13 + 2))(v13, v12);
  }
}

@end