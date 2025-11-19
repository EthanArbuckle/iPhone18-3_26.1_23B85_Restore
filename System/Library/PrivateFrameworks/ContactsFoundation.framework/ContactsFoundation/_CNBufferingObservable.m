@interface _CNBufferingObservable
- (_CNBufferingObservable)initWithBufferingStrategy:(id)a3 observable:(id)a4;
- (_CNBufferingObservable)initWithLength:(unint64_t)a3 observable:(id)a4;
- (_CNBufferingObservable)initWithLength:(unint64_t)a3 timeInterval:(double)a4 scheduler:(id)a5 observable:(id)a6;
- (_CNBufferingObservable)initWithTimeInterval:(double)a3 scheduler:(id)a4 observable:(id)a5;
- (id)subscribe:(id)a3;
- (void)sendBufferedResultsToObserver:(id)a3;
@end

@implementation _CNBufferingObservable

- (_CNBufferingObservable)initWithLength:(unint64_t)a3 observable:(id)a4
{
  v6 = a4;
  v7 = [_CNBufferingStrategy strategyWithCapacity:a3];
  v8 = [(_CNBufferingObservable *)self initWithBufferingStrategy:v7 observable:v6];

  return v8;
}

- (_CNBufferingObservable)initWithTimeInterval:(double)a3 scheduler:(id)a4 observable:(id)a5
{
  v8 = a5;
  v9 = [_CNBufferingStrategy strategyWithTimeInterval:a4 scheduler:a3];
  v10 = [(_CNBufferingObservable *)self initWithBufferingStrategy:v9 observable:v8];

  return v10;
}

- (_CNBufferingObservable)initWithLength:(unint64_t)a3 timeInterval:(double)a4 scheduler:(id)a5 observable:(id)a6
{
  v19[2] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = a5;
  v12 = [_CNBufferingStrategy strategyWithCapacity:a3];
  v13 = [_CNBufferingStrategy strategyWithTimeInterval:v11 scheduler:a4];

  v19[0] = v12;
  v19[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v15 = [_CNBufferingStrategy combine:v14];

  v16 = [(_CNBufferingObservable *)self initWithBufferingStrategy:v15 observable:v10];
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (_CNBufferingObservable)initWithBufferingStrategy:(id)a3 observable:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = _CNBufferingObservable;
  v9 = [(_CNBufferingObservable *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_strategy, a3);
    objc_storeStrong(&v10->_observable, a4);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    results = v10->_results;
    v10->_results = v11;

    v13 = v10;
  }

  return v10;
}

- (id)subscribe:(id)a3
{
  v4 = a3;
  v5 = [(_CNBufferingObservable *)self observable];
  v6 = objc_opt_class();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __36___CNBufferingObservable_subscribe___block_invoke;
  v15[3] = &unk_1E6ED63C8;
  v15[4] = self;
  v16 = v4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __36___CNBufferingObservable_subscribe___block_invoke_2;
  v13[3] = &unk_1E6ED5168;
  v13[4] = self;
  v14 = v16;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36___CNBufferingObservable_subscribe___block_invoke_3;
  v11[3] = &unk_1E6ED5A30;
  v12 = v14;
  v7 = v14;
  v8 = [CNObserver blockObserverOfClass:v6 withResultBlock:v15 completionBlock:v13 failureBlock:v11];
  v9 = [v5 subscribe:v8];

  return v9;
}

- (void)sendBufferedResultsToObserver:(id)a3
{
  v4 = a3;
  v5 = [(_CNBufferingObservable *)self results];
  v6 = [v5 copy];
  [v4 observerDidReceiveResult:v6];

  v7 = [(_CNBufferingObservable *)self strategy];
  [v7 bufferDidSendResults:self];

  v8 = [(_CNBufferingObservable *)self results];
  [v8 removeAllObjects];
}

@end