@interface _BUCountingAssertion
- (_BUCountingAssertion)initWithQueue:(id)a3 block:(id)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _BUCountingAssertion

- (_BUCountingAssertion)initWithQueue:(id)a3 block:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _BUCountingAssertion;
  v9 = [(_BUCountingAssertion *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    v13 = objc_msgSend_copy(v8, v11, v12);
    block = v10->_block;
    v10->_block = v13;
  }

  return v10;
}

- (void)dealloc
{
  objc_msgSend_invalidate(self, a2, v2);
  v4.receiver = self;
  v4.super_class = _BUCountingAssertion;
  [(_BUCountingAssertion *)&v4 dealloc];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DC0DD8;
  block[3] = &unk_278D1D148;
  block[4] = self;
  dispatch_sync(queue, block);
}

@end