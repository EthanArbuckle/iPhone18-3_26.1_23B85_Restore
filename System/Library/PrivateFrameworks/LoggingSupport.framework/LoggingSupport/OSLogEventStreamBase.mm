@interface OSLogEventStreamBase
- (OSLogEventStreamBase)init;
- (void)setEventHandler:(id)handler;
- (void)setFilterPredicate:(id)predicate;
- (void)setInvalidationHandler:(id)handler;
@end

@implementation OSLogEventStreamBase

- (OSLogEventStreamBase)init
{
  v8.receiver = self;
  v8.super_class = OSLogEventStreamBase;
  v2 = [(OSLogEventStreamBase *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.loggingsupport.stream", 0);
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    v5 = dispatch_get_global_queue(0, 0);
    v6 = *(v2 + 3);
    *(v2 + 3) = v5;

    dispatch_set_target_queue(*(v2 + 2), *(v2 + 3));
  }

  return v2;
}

- (void)setInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__OSLogEventStreamBase_setInvalidationHandler___block_invoke;
  v7[3] = &unk_2787AE370;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __47__OSLogEventStreamBase_setInvalidationHandler___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)setEventHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__OSLogEventStreamBase_setEventHandler___block_invoke;
  v7[3] = &unk_2787AE370;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)setFilterPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (predicateCopy)
  {
    v4 = [[_OSLogPredicateMapper alloc] initWithPredicate:predicateCopy];
    mappedPredicate = [(_OSLogPredicateMapper *)v4 mappedPredicate];

    if (!mappedPredicate)
    {
      v10 = MEMORY[0x277CBEAD8];
      validationErrors = [(_OSLogPredicateMapper *)v4 validationErrors];
      v12 = [validationErrors componentsJoinedByString:@"\n"];
      v13 = [v10 exceptionWithName:@"OSLogInvalidPredicateException" reason:v12 userInfo:0];

      objc_exception_throw(v13);
    }

    mappedPredicate2 = [(_OSLogPredicateMapper *)v4 mappedPredicate];
    filterPredicate = self->_filterPredicate;
    self->_filterPredicate = mappedPredicate2;

    compiledPredicate = [(_OSLogPredicateMapper *)v4 compiledPredicate];
    compiledPredicate = self->_compiledPredicate;
    self->_compiledPredicate = compiledPredicate;

    [(NSPredicate *)self->_filterPredicate allowEvaluation];
    [(NSPredicate *)self->_compiledPredicate allowEvaluation];
    if (([(_OSLogPredicateMapper *)v4 flags]& 2) != 0)
    {
      self->_flags |= 1uLL;
    }

    if (([(_OSLogPredicateMapper *)v4 flags]& 1) != 0)
    {
      self->_flags |= 2uLL;
    }
  }

  else
  {
    v4 = self->_filterPredicate;
    self->_filterPredicate = 0;
  }
}

@end