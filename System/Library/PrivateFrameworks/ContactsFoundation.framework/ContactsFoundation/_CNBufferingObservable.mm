@interface _CNBufferingObservable
- (_CNBufferingObservable)initWithBufferingStrategy:(id)strategy observable:(id)observable;
- (_CNBufferingObservable)initWithLength:(unint64_t)length observable:(id)observable;
- (_CNBufferingObservable)initWithLength:(unint64_t)length timeInterval:(double)interval scheduler:(id)scheduler observable:(id)observable;
- (_CNBufferingObservable)initWithTimeInterval:(double)interval scheduler:(id)scheduler observable:(id)observable;
- (id)subscribe:(id)subscribe;
- (void)sendBufferedResultsToObserver:(id)observer;
@end

@implementation _CNBufferingObservable

- (_CNBufferingObservable)initWithLength:(unint64_t)length observable:(id)observable
{
  observableCopy = observable;
  v7 = [_CNBufferingStrategy strategyWithCapacity:length];
  v8 = [(_CNBufferingObservable *)self initWithBufferingStrategy:v7 observable:observableCopy];

  return v8;
}

- (_CNBufferingObservable)initWithTimeInterval:(double)interval scheduler:(id)scheduler observable:(id)observable
{
  observableCopy = observable;
  v9 = [_CNBufferingStrategy strategyWithTimeInterval:scheduler scheduler:interval];
  v10 = [(_CNBufferingObservable *)self initWithBufferingStrategy:v9 observable:observableCopy];

  return v10;
}

- (_CNBufferingObservable)initWithLength:(unint64_t)length timeInterval:(double)interval scheduler:(id)scheduler observable:(id)observable
{
  v19[2] = *MEMORY[0x1E69E9840];
  observableCopy = observable;
  schedulerCopy = scheduler;
  v12 = [_CNBufferingStrategy strategyWithCapacity:length];
  v13 = [_CNBufferingStrategy strategyWithTimeInterval:schedulerCopy scheduler:interval];

  v19[0] = v12;
  v19[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v15 = [_CNBufferingStrategy combine:v14];

  v16 = [(_CNBufferingObservable *)self initWithBufferingStrategy:v15 observable:observableCopy];
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (_CNBufferingObservable)initWithBufferingStrategy:(id)strategy observable:(id)observable
{
  strategyCopy = strategy;
  observableCopy = observable;
  v15.receiver = self;
  v15.super_class = _CNBufferingObservable;
  v9 = [(_CNBufferingObservable *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_strategy, strategy);
    objc_storeStrong(&v10->_observable, observable);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    results = v10->_results;
    v10->_results = v11;

    v13 = v10;
  }

  return v10;
}

- (id)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  observable = [(_CNBufferingObservable *)self observable];
  v6 = objc_opt_class();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __36___CNBufferingObservable_subscribe___block_invoke;
  v15[3] = &unk_1E6ED63C8;
  v15[4] = self;
  v16 = subscribeCopy;
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
  v9 = [observable subscribe:v8];

  return v9;
}

- (void)sendBufferedResultsToObserver:(id)observer
{
  observerCopy = observer;
  results = [(_CNBufferingObservable *)self results];
  v6 = [results copy];
  [observerCopy observerDidReceiveResult:v6];

  strategy = [(_CNBufferingObservable *)self strategy];
  [strategy bufferDidSendResults:self];

  results2 = [(_CNBufferingObservable *)self results];
  [results2 removeAllObjects];
}

@end