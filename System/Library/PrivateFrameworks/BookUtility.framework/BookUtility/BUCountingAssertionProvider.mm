@interface BUCountingAssertionProvider
- (BOOL)_endAssertion;
- (BUCountingAssertionProvider)initWithDelegate:(id)delegate;
- (id)_newAssertion:(BOOL)assertion;
@end

@implementation BUCountingAssertionProvider

- (BUCountingAssertionProvider)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = BUCountingAssertionProvider;
  v5 = [(BUCountingAssertionProvider *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("BCCountingAssertionProvider.queue", v7);
    queue = v6->_queue;
    v6->_queue = v8;
  }

  return v6;
}

- (id)_newAssertion:(BOOL)assertion
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DC10F8;
  block[3] = &unk_278D1D8A8;
  assertionCopy = assertion;
  block[4] = self;
  block[5] = &v20;
  block[6] = &v16;
  dispatch_sync(queue, block);
  v5 = 0;
  if (*(v21 + 24) == 1)
  {
    v6 = [_BUCountingAssertion alloc];
    v7 = self->_queue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_241DC1194;
    v13[3] = &unk_278D1D148;
    v13[4] = self;
    v5 = objc_msgSend_initWithQueue_block_(v6, v8, v7, v13);
  }

  if (*(v17 + 24) == 1)
  {
    v9 = BUAssertionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_241DD08C4(v9);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    objc_msgSend_countingAssertProviderTransitionToNonZero_(WeakRetained, v11, self);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  return v5;
}

- (BOOL)_endAssertion
{
  dispatch_assert_queue_V2(self->_queue);
  count = self->_count;
  p_count = &self->_count;
  v4 = count;
  if (count)
  {
    *p_count = v4 - 1;
  }

  v6 = BUAssertionLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_241DD09CC(p_count, v4 == 1, v6);
  }

  return v4 == 1;
}

@end