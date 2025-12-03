@interface CUTAsyncReducer
- (CUTAsyncReducer)initWithInput:(id)input initialValue:(id)value;
- (void)_completeWithResult:(id)result;
- (void)_reduceWithPending:(id)pending visited:(id)visited currentResult:(id)result completion:(id)completion;
- (void)reduceWithCompletion:(id)completion;
@end

@implementation CUTAsyncReducer

- (CUTAsyncReducer)initWithInput:(id)input initialValue:(id)value
{
  inputCopy = input;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = CUTAsyncReducer;
  v9 = [(CUTAsyncReducer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_input, input);
    v11 = [[CUTResult alloc] initWithSuccess:valueCopy];
    v12 = v10->_result;
    v10->_result = v11;
  }

  return v10;
}

- (void)reduceWithCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  [(CUTAsyncReducer *)self setCompletionBlock:completion];
  v4 = +[CUTLog utilities];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    input = [(CUTAsyncReducer *)self input];
    *buf = 134217984;
    v13 = [input count];
    _os_log_impl(&dword_1B2321000, v4, OS_LOG_TYPE_INFO, "Reduce {input: %ld}", buf, 0xCu);
  }

  reducerBlock = [(CUTAsyncReducer *)self reducerBlock];

  if (reducerBlock)
  {
    input2 = [(CUTAsyncReducer *)self input];
    result = [(CUTAsyncReducer *)self result];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1B2324114;
    v11[3] = &unk_1E7B20C58;
    v11[4] = self;
    [(CUTAsyncReducer *)self _reduceWithPending:input2 visited:MEMORY[0x1E695E0F0] currentResult:result completion:v11];
  }

  else
  {
    v9 = +[CUTLog utilities];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B2321000, v9, OS_LOG_TYPE_DEFAULT, "Missing reduce block -- Done", buf, 2u);
    }

    input2 = [(CUTAsyncReducer *)self result];
    [(CUTAsyncReducer *)self _completeWithResult:input2];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_completeWithResult:(id)result
{
  resultCopy = result;
  [(CUTAsyncReducer *)self setResult:resultCopy];
  completionBlock = [(CUTAsyncReducer *)self completionBlock];
  (completionBlock)[2](completionBlock, resultCopy);

  [(CUTAsyncReducer *)self setCompletionBlock:0];

  MEMORY[0x1EEE66B58](self, sel_setReducerBlock_);
}

- (void)_reduceWithPending:(id)pending visited:(id)visited currentResult:(id)result completion:(id)completion
{
  pendingCopy = pending;
  visitedCopy = visited;
  resultCopy = result;
  completionCopy = completion;
  if ([pendingCopy count])
  {
    firstObject = [pendingCopy firstObject];
    v15 = [pendingCopy subarrayWithRange:{1, objc_msgSend(pendingCopy, "count") - 1}];
    v16 = [visitedCopy arrayByAddingObject:firstObject];
    v17 = objc_alloc_init(CUTAsyncReducerState);
    [(CUTAsyncReducerState *)v17 setVisitedItems:visitedCopy];
    [(CUTAsyncReducerState *)v17 setPendingItems:v15];
    [(CUTAsyncReducerState *)v17 setCurrentItem:firstObject];
    state = [resultCopy state];
    if (state == 1)
    {
      [(CUTAsyncReducerState *)v17 setCurrentResult:0];
    }

    else if (!state)
    {
      value = [resultCopy value];
      [(CUTAsyncReducerState *)v17 setCurrentResult:value];
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_1B2324590;
    v33[3] = &unk_1E7B20C80;
    v21 = completionCopy;
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
    reducerBlock = [(CUTAsyncReducer *)self reducerBlock];
    (reducerBlock)[2](reducerBlock, v17);
  }

  else
  {
    v20 = +[CUTLog utilities];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v26 = 0;
      _os_log_impl(&dword_1B2321000, v20, OS_LOG_TYPE_INFO, "No more items -- Done", v26, 2u);
    }

    (*(completionCopy + 2))(completionCopy, resultCopy);
  }
}

@end