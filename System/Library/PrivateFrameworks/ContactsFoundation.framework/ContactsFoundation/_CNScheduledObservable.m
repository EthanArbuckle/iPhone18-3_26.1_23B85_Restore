@interface _CNScheduledObservable
- (_CNScheduledObservable)initWithObservable:(id)a3 scheduler:(id)a4;
- (id)subscribe:(id)a3;
@end

@implementation _CNScheduledObservable

- (_CNScheduledObservable)initWithObservable:(id)a3 scheduler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _CNScheduledObservable;
  v9 = [(_CNScheduledObservable *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_observable, a3);
    objc_storeStrong(&v10->_scheduler, a4);
    v11 = v10;
  }

  return v10;
}

- (id)subscribe:(id)a3
{
  v4 = a3;
  v5 = [(_CNScheduledObservable *)self observable];
  v6 = [(_CNScheduledObservable *)self scheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36___CNScheduledObservable_subscribe___block_invoke;
  v11[3] = &unk_1E6ED5EB0;
  v12 = v5;
  v13 = v4;
  v7 = v4;
  v8 = v5;
  v9 = [v6 performCancelableBlock:v11];

  return v9;
}

@end