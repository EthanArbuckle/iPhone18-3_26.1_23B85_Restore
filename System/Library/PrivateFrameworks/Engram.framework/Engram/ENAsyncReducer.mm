@interface ENAsyncReducer
- (ENAsyncReducer)initWithInput:(id)input initialValue:(id)value;
- (void)_completeWithResult:(id)result;
- (void)_reduceWithPending:(id)pending visited:(id)visited currentResult:(id)result completion:(id)completion;
- (void)reduceWithCompletion:(id)completion;
@end

@implementation ENAsyncReducer

- (ENAsyncReducer)initWithInput:(id)input initialValue:(id)value
{
  inputCopy = input;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = ENAsyncReducer;
  v9 = [(ENAsyncReducer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_input, input);
    v11 = [objc_alloc(MEMORY[0x277CFB988]) initWithSuccess:valueCopy];
    v12 = v10->_result;
    v10->_result = v11;
  }

  return v10;
}

- (void)reduceWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  [(ENAsyncReducer *)self setCompletionBlock:completion];
  v4 = +[ENLog utilities];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    input = [(ENAsyncReducer *)self input];
    *buf = 134217984;
    v13 = [input count];
    _os_log_impl(&dword_24A04B000, v4, OS_LOG_TYPE_INFO, "Reduce {input: %ld}", buf, 0xCu);
  }

  reducerBlock = [(ENAsyncReducer *)self reducerBlock];

  if (reducerBlock)
  {
    input2 = [(ENAsyncReducer *)self input];
    result = [(ENAsyncReducer *)self result];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_24A05749C;
    v11[3] = &unk_278FC3820;
    v11[4] = self;
    [(ENAsyncReducer *)self _reduceWithPending:input2 visited:MEMORY[0x277CBEBF8] currentResult:result completion:v11];
  }

  else
  {
    v9 = +[ENLog utilities];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24A04B000, v9, OS_LOG_TYPE_DEFAULT, "Missing reduce block -- Done", buf, 2u);
    }

    input2 = [(ENAsyncReducer *)self result];
    [(ENAsyncReducer *)self _completeWithResult:input2];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_completeWithResult:(id)result
{
  resultCopy = result;
  [(ENAsyncReducer *)self setResult:resultCopy];
  completionBlock = [(ENAsyncReducer *)self completionBlock];
  (completionBlock)[2](completionBlock, resultCopy);

  [(ENAsyncReducer *)self setCompletionBlock:0];

  [(ENAsyncReducer *)self setReducerBlock:0];
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
    v17 = objc_alloc_init(ENAsyncReducerState);
    [(ENAsyncReducerState *)v17 setVisitedItems:visitedCopy];
    [(ENAsyncReducerState *)v17 setPendingItems:v15];
    [(ENAsyncReducerState *)v17 setCurrentItem:firstObject];
    state = [resultCopy state];
    if (state == 1)
    {
      [(ENAsyncReducerState *)v17 setCurrentResult:0];
    }

    else if (!state)
    {
      value = [resultCopy value];
      [(ENAsyncReducerState *)v17 setCurrentResult:value];
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_24A057918;
    v33[3] = &unk_278FC3848;
    v21 = completionCopy;
    v34 = v21;
    [(ENAsyncReducerState *)v17 setCancelBlock:v33];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_24A057998;
    v31[3] = &unk_278FC3870;
    v22 = v21;
    v32 = v22;
    [(ENAsyncReducerState *)v17 setStopBlock:v31];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_24A057A18;
    v27[3] = &unk_278FC3898;
    v27[4] = self;
    v28 = v15;
    v29 = v16;
    v30 = v22;
    v23 = v16;
    v24 = v15;
    [(ENAsyncReducerState *)v17 setContinueBlock:v27];
    reducerBlock = [(ENAsyncReducer *)self reducerBlock];
    (reducerBlock)[2](reducerBlock, v17);
  }

  else
  {
    v20 = +[ENLog utilities];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v26 = 0;
      _os_log_impl(&dword_24A04B000, v20, OS_LOG_TYPE_INFO, "No more items -- Done", v26, 2u);
    }

    (*(completionCopy + 2))(completionCopy, resultCopy);
  }
}

@end