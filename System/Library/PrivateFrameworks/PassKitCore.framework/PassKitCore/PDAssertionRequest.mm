@interface PDAssertionRequest
- (PDAssertionRequest)initWithAssertion:(id)assertion delegate:(id)delegate resultHandler:(id)handler;
- (unint64_t)hash;
@end

@implementation PDAssertionRequest

- (PDAssertionRequest)initWithAssertion:(id)assertion delegate:(id)delegate resultHandler:(id)handler
{
  assertionCopy = assertion;
  delegateCopy = delegate;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = PDAssertionRequest;
  v12 = [(PDAssertionRequest *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assertion, assertion);
    v14 = _Block_copy(handlerCopy);
    resultHandler = v13->_resultHandler;
    v13->_resultHandler = v14;

    objc_initWeak(&location, v13);
    v16 = dispatch_get_global_queue(25, 0);
    v17 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v16);
    invalidationTimer = v13->_invalidationTimer;
    v13->_invalidationTimer = v17;

    v19 = v13->_invalidationTimer;
    v20 = dispatch_time(0, 100000000);
    dispatch_source_set_timer(v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    v21 = v13->_invalidationTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __63__PDAssertionRequest_initWithAssertion_delegate_resultHandler___block_invoke;
    handler[3] = &unk_1E79C54B8;
    objc_copyWeak(&v25, &location);
    v24 = delegateCopy;
    dispatch_source_set_event_handler(v21, handler);
    dispatch_resume(v13->_invalidationTimer);

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __63__PDAssertionRequest_initWithAssertion_delegate_resultHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) assertionRequestDidTimeout:WeakRetained];
    WeakRetained = v3;
  }
}

- (unint64_t)hash
{
  identifier = [(PDAssertion *)self->_assertion identifier];
  v3 = [identifier hash];

  return v3;
}

@end