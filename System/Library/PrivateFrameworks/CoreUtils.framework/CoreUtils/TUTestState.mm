@interface TUTestState
- (id)objectForKeyedSubscript:(id)subscript;
- (int)waitWithTimeout:(double)timeout;
- (void)incrementIntegerForKey:(id)key;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
- (void)signal;
@end

@implementation TUTestState

- (int)waitWithTimeout:(double)timeout
{
  signalCount = self->_signalCount;
  if (signalCount > 0)
  {
    goto LABEL_4;
  }

  if (CFRunLoopRunEx(timeout) == 2)
  {
    signalCount = self->_signalCount;
LABEL_4:
    result = 0;
    self->_signalCount = signalCount - 1;
    return result;
  }

  return -6722;
}

- (void)signal
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__TUTestState_signal__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __21__TUTestState_signal__block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 16);
  Main = CFRunLoopGetMain();

  CFRunLoopStop(Main);
}

- (void)incrementIntegerForKey:(id)key
{
  v4 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v7 = [(TUTestState *)self objectForKeyedSubscript:keyCopy];
  v6 = [v4 numberWithInteger:{objc_msgSend(v7, "integerValue") + 1}];
  [(TUTestState *)self setObject:v6 forKeyedSubscript:keyCopy];
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objects = selfCopy->_objects;
  if (objectCopy)
  {
    if (!objects)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = selfCopy->_objects;
      selfCopy->_objects = v9;

      objects = selfCopy->_objects;
    }

    [(NSMutableDictionary *)objects setObject:objectCopy forKeyedSubscript:subscriptCopy];
  }

  else
  {
    [(NSMutableDictionary *)objects removeObjectForKey:subscriptCopy];
  }

  objc_sync_exit(selfCopy);
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_objects objectForKeyedSubscript:subscriptCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

@end