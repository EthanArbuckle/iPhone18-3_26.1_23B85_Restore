@interface _CNScheduledObservable
- (_CNScheduledObservable)initWithObservable:(id)observable scheduler:(id)scheduler;
- (id)subscribe:(id)subscribe;
@end

@implementation _CNScheduledObservable

- (_CNScheduledObservable)initWithObservable:(id)observable scheduler:(id)scheduler
{
  observableCopy = observable;
  schedulerCopy = scheduler;
  v13.receiver = self;
  v13.super_class = _CNScheduledObservable;
  v9 = [(_CNScheduledObservable *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_observable, observable);
    objc_storeStrong(&v10->_scheduler, scheduler);
    v11 = v10;
  }

  return v10;
}

- (id)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  observable = [(_CNScheduledObservable *)self observable];
  scheduler = [(_CNScheduledObservable *)self scheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36___CNScheduledObservable_subscribe___block_invoke;
  v11[3] = &unk_1E6ED5EB0;
  v12 = observable;
  v13 = subscribeCopy;
  v7 = subscribeCopy;
  v8 = observable;
  v9 = [scheduler performCancelableBlock:v11];

  return v9;
}

@end