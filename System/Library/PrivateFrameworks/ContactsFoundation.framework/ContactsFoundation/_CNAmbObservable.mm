@interface _CNAmbObservable
- (_CNAmbObservable)initWithObservables:(id)observables;
- (id)subscribe:(id)subscribe;
- (void)cancelRemainingObservables;
- (void)observerWillRelayEvent:(id)event;
@end

@implementation _CNAmbObservable

- (_CNAmbObservable)initWithObservables:(id)observables
{
  observablesCopy = observables;
  v12.receiver = self;
  v12.super_class = _CNAmbObservable;
  v5 = [(_CNAmbObservable *)&v12 init];
  if (v5)
  {
    v6 = [observablesCopy copy];
    observables = v5->_observables;
    v5->_observables = v6;

    v8 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:{objc_msgSend(observablesCopy, "count")}];
    tokensByObserver = v5->_tokensByObserver;
    v5->_tokensByObserver = v8;

    v5->_winnerDeclared = 0;
    v10 = v5;
  }

  return v5;
}

- (id)subscribe:(id)subscribe
{
  v24 = *MEMORY[0x1E69E9840];
  subscribeCopy = subscribe;
  if (![(NSArray *)self->_observables count])
  {
    firstObject = +[CNObservable emptyObservable];
    goto LABEL_5;
  }

  if ([(NSArray *)self->_observables count]== 1)
  {
    firstObject = [(NSArray *)self->_observables firstObject];
LABEL_5:
    v6 = firstObject;
    v7 = [firstObject subscribe:subscribeCopy];

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
        v14 = [[_CNAmbObserver alloc] initWithObserver:subscribeCopy delegate:self];
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

- (void)observerWillRelayEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_winnerDeclared)
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    [eventCopy declareWinner];
    [(NSMapTable *)selfCopy->_tokensByObserver removeObjectForKey:eventCopy];
    selfCopy->_winnerDeclared = 1;
    objc_sync_exit(selfCopy);

    [(_CNAmbObservable *)selfCopy cancelRemainingObservables];
  }
}

- (void)cancelRemainingObservables
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  objectEnumerator = [(NSMapTable *)self->_tokensByObserver objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v8 + 1) + 8 * v6++) cancel];
      }

      while (v4 != v6);
      v4 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end