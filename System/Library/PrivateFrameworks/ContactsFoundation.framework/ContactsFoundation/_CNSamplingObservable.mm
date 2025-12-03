@interface _CNSamplingObservable
- (_CNSamplingObservable)initWithObservable:(id)observable sampler:(id)sampler;
- (id)subscribe:(id)subscribe;
- (void)receiveResult:(id)result;
- (void)sendSampleToObserver:(id)observer;
@end

@implementation _CNSamplingObservable

- (_CNSamplingObservable)initWithObservable:(id)observable sampler:(id)sampler
{
  observableCopy = observable;
  samplerCopy = sampler;
  v13.receiver = self;
  v13.super_class = _CNSamplingObservable;
  v9 = [(_CNSamplingObservable *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_observable, observable);
    objc_storeStrong(&v10->_sampler, sampler);
    v11 = v10;
  }

  return v10;
}

- (id)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  sampler = [(_CNSamplingObservable *)self sampler];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __35___CNSamplingObservable_subscribe___block_invoke;
  v30[3] = &unk_1E6ED63C8;
  v30[4] = self;
  v6 = subscribeCopy;
  v31 = v6;
  v7 = [CNObserver observerWithResultBlock:v30];
  v8 = [sampler subscribe:v7];

  observable = self->_observable;
  v10 = objc_opt_class();
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __35___CNSamplingObservable_subscribe___block_invoke_2;
  v29[3] = &unk_1E6ED6988;
  v29[4] = self;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __35___CNSamplingObservable_subscribe___block_invoke_3;
  v25[3] = &unk_1E6ED57E0;
  v26 = v8;
  selfCopy = self;
  v28 = v6;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __35___CNSamplingObservable_subscribe___block_invoke_4;
  v22[3] = &unk_1E6ED59E0;
  v11 = v26;
  v23 = v11;
  v24 = v28;
  v12 = v28;
  v13 = [CNObserver blockObserverOfClass:v10 withResultBlock:v29 completionBlock:v25 failureBlock:v22];
  v14 = [(CNObservable *)observable subscribe:v13];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __35___CNSamplingObservable_subscribe___block_invoke_5;
  v19[3] = &unk_1E6ED5168;
  v20 = v11;
  v21 = v14;
  v15 = v14;
  v16 = v11;
  v17 = [CNCancelationToken tokenWithCancelationBlock:v19];

  return v17;
}

- (void)receiveResult:(id)result
{
  resultCopy = result;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(_CNSamplingObservable *)selfCopy setSample:resultCopy];
  objc_sync_exit(selfCopy);
}

- (void)sendSampleToObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sample = [(_CNSamplingObservable *)selfCopy sample];
  [(_CNSamplingObservable *)selfCopy setSample:0];
  objc_sync_exit(selfCopy);

  if (sample)
  {
    [observerCopy observerDidReceiveResult:sample];
  }
}

@end