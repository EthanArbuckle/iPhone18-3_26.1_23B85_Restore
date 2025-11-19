@interface MSPQuery
- (NSArray)contents;
- (_MSPQueryState)_lastState;
- (id)_initWithSource:(id)a3;
- (id)originalIdentifierForObject:(id)a3;
- (id)originalIdentifierForObjectAtIndex:(unint64_t)a3;
- (void)_didChangeSourceWithNewState:(id)a3 context:(id)a4 inContainer:(id)a5;
- (void)_setLastState:(id)a3;
- (void)setChangeHandler:(id)a3 queue:(id)a4;
@end

@implementation MSPQuery

- (id)_initWithSource:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = MSPQuery;
  v6 = [(MSPQuery *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_source, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.MSPQuery.SerialQueue", v8);
    changeHandlerQueue = v7->_changeHandlerQueue;
    v7->_changeHandlerQueue = v9;

    [(MSPQuerySource *)v7->_source _addObserver:v7];
  }

  return v7;
}

- (void)_didChangeSourceWithNewState:(id)a3 context:(id)a4 inContainer:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  objc_sync_enter(v9);
  v10 = v9->_changeHandlerQueue;
  v11 = MEMORY[0x259C7AD60](v9->_changeHandler);
  objc_sync_exit(v9);

  if (v11)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__MSPQuery__didChangeSourceWithNewState_context_inContainer___block_invoke;
    v12[3] = &unk_279867BA8;
    v12[4] = v9;
    v13 = v7;
    v15 = v11;
    v14 = v8;
    dispatch_async(v10, v12);
  }

  else
  {
    [(MSPQuery *)v9 _setLastState:v7];
  }
}

void __61__MSPQuery__didChangeSourceWithNewState_context_inContainer___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) _setLastState:*(a1 + 40)];
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 48));
  }

  objc_sync_exit(obj);
}

- (_MSPQueryState)_lastState
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_lastState;
  objc_sync_exit(v2);

  return v3;
}

- (void)_setLastState:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  lastState = obj->_lastState;
  obj->_lastState = v4;

  objc_sync_exit(obj);
}

- (NSArray)contents
{
  v2 = [(MSPQuery *)self _visibleState];
  v3 = [v2 contents];

  return v3;
}

- (id)originalIdentifierForObject:(id)a3
{
  v4 = a3;
  v5 = [(MSPQuery *)self _visibleState];
  v6 = v5;
  if (v5 && ([v5 contents], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "indexOfObject:", v4), v7, v8 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v10 = [v6 identifiers];
    v9 = [v10 objectAtIndexedSubscript:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)originalIdentifierForObjectAtIndex:(unint64_t)a3
{
  v4 = [(MSPQuery *)self _visibleState];
  v5 = [v4 identifiers];
  v6 = [v5 objectAtIndexedSubscript:a3];

  return v6;
}

- (void)setChangeHandler:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [v6 copy];
  changeHandler = v8->_changeHandler;
  v8->_changeHandler = v9;

  if (!v6)
  {
    changeHandlerQueue = v8->_changeHandlerQueue;
    v8->_changeHandlerQueue = 0;
    goto LABEL_7;
  }

  if (!v7)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.MSPQuery.SerialQueue", v11);
  }

  objc_storeStrong(&v8->_changeHandlerQueue, v7);
  if (v7)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __35__MSPQuery_setChangeHandler_queue___block_invoke;
    v13[3] = &unk_2798674D8;
    v13[4] = v8;
    v14 = v6;
    dispatch_async(v7, v13);
    changeHandlerQueue = v14;
LABEL_7:
  }

  objc_sync_exit(v8);
}

@end