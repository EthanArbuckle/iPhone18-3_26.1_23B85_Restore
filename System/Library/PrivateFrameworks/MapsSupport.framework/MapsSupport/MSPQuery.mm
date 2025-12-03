@interface MSPQuery
- (NSArray)contents;
- (_MSPQueryState)_lastState;
- (id)_initWithSource:(id)source;
- (id)originalIdentifierForObject:(id)object;
- (id)originalIdentifierForObjectAtIndex:(unint64_t)index;
- (void)_didChangeSourceWithNewState:(id)state context:(id)context inContainer:(id)container;
- (void)_setLastState:(id)state;
- (void)setChangeHandler:(id)handler queue:(id)queue;
@end

@implementation MSPQuery

- (id)_initWithSource:(id)source
{
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = MSPQuery;
  v6 = [(MSPQuery *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_source, source);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.MSPQuery.SerialQueue", v8);
    changeHandlerQueue = v7->_changeHandlerQueue;
    v7->_changeHandlerQueue = v9;

    [(MSPQuerySource *)v7->_source _addObserver:v7];
  }

  return v7;
}

- (void)_didChangeSourceWithNewState:(id)state context:(id)context inContainer:(id)container
{
  stateCopy = state;
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = selfCopy->_changeHandlerQueue;
  v11 = MEMORY[0x259C7AD60](selfCopy->_changeHandler);
  objc_sync_exit(selfCopy);

  if (v11)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__MSPQuery__didChangeSourceWithNewState_context_inContainer___block_invoke;
    v12[3] = &unk_279867BA8;
    v12[4] = selfCopy;
    v13 = stateCopy;
    v15 = v11;
    v14 = contextCopy;
    dispatch_async(v10, v12);
  }

  else
  {
    [(MSPQuery *)selfCopy _setLastState:stateCopy];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_lastState;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setLastState:(id)state
{
  stateCopy = state;
  obj = self;
  objc_sync_enter(obj);
  lastState = obj->_lastState;
  obj->_lastState = stateCopy;

  objc_sync_exit(obj);
}

- (NSArray)contents
{
  _visibleState = [(MSPQuery *)self _visibleState];
  contents = [_visibleState contents];

  return contents;
}

- (id)originalIdentifierForObject:(id)object
{
  objectCopy = object;
  _visibleState = [(MSPQuery *)self _visibleState];
  v6 = _visibleState;
  if (_visibleState && ([_visibleState contents], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "indexOfObject:", objectCopy), v7, v8 != 0x7FFFFFFFFFFFFFFFLL))
  {
    identifiers = [v6 identifiers];
    v9 = [identifiers objectAtIndexedSubscript:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)originalIdentifierForObjectAtIndex:(unint64_t)index
{
  _visibleState = [(MSPQuery *)self _visibleState];
  identifiers = [_visibleState identifiers];
  v6 = [identifiers objectAtIndexedSubscript:index];

  return v6;
}

- (void)setChangeHandler:(id)handler queue:(id)queue
{
  handlerCopy = handler;
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [handlerCopy copy];
  changeHandler = selfCopy->_changeHandler;
  selfCopy->_changeHandler = v9;

  if (!handlerCopy)
  {
    changeHandlerQueue = selfCopy->_changeHandlerQueue;
    selfCopy->_changeHandlerQueue = 0;
    goto LABEL_7;
  }

  if (!queueCopy)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    queueCopy = dispatch_queue_create("com.apple.MSPQuery.SerialQueue", v11);
  }

  objc_storeStrong(&selfCopy->_changeHandlerQueue, queueCopy);
  if (queueCopy)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __35__MSPQuery_setChangeHandler_queue___block_invoke;
    v13[3] = &unk_2798674D8;
    v13[4] = selfCopy;
    v14 = handlerCopy;
    dispatch_async(queueCopy, v13);
    changeHandlerQueue = v14;
LABEL_7:
  }

  objc_sync_exit(selfCopy);
}

@end