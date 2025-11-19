@interface _CNAmbObservable
- (_CNAmbObservable)initWithObservables:(id)a3;
- (id)subscribe:(id)a3;
- (void)cancelRemainingObservables;
- (void)observerWillRelayEvent:(id)a3;
@end

@implementation _CNAmbObservable

- (_CNAmbObservable)initWithObservables:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _CNAmbObservable;
  v5 = [(_CNAmbObservable *)&v12 init];
  if (v5)
  {
    v6 = [v4 copy];
    observables = v5->_observables;
    v5->_observables = v6;

    v8 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:{objc_msgSend(v4, "count")}];
    tokensByObserver = v5->_tokensByObserver;
    v5->_tokensByObserver = v8;

    v5->_winnerDeclared = 0;
    v10 = v5;
  }

  return v5;
}

- (id)subscribe:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(NSArray *)self->_observables count])
  {
    v5 = +[CNObservable emptyObservable];
    goto LABEL_5;
  }

  if ([(NSArray *)self->_observables count]== 1)
  {
    v5 = [(NSArray *)self->_observables firstObject];
LABEL_5:
    v6 = v5;
    v7 = [v5 subscribe:v4];

    goto LABEL_14;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_observables;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [[_CNAmbObserver alloc] initWithObserver:v4 delegate:self];
        v15 = [v13 subscribe:v14];
        [(NSMapTable *)self->_tokensByObserver setObject:v15 forKey:v14];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __30___CNAmbObservable_subscribe___block_invoke;
  v18[3] = &unk_1E6ED5830;
  v18[4] = self;
  v7 = [CNCancelationToken tokenWithCancelationBlock:v18];
LABEL_14:

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)observerWillRelayEvent:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_winnerDeclared)
  {
    objc_sync_exit(v4);
  }

  else
  {
    [v5 declareWinner];
    [(NSMapTable *)v4->_tokensByObserver removeObjectForKey:v5];
    v4->_winnerDeclared = 1;
    objc_sync_exit(v4);

    [(_CNAmbObservable *)v4 cancelRemainingObservables];
  }
}

- (void)cancelRemainingObservables
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(NSMapTable *)self->_tokensByObserver objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) cancel];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end