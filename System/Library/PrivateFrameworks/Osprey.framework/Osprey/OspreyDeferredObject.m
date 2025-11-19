@interface OspreyDeferredObject
- (OspreyDeferredObject)initWithFulfillmentQueue:(id)a3;
- (void)fulfill:(id)a3;
- (void)fulfilledWithCompletion:(id)a3;
@end

@implementation OspreyDeferredObject

- (OspreyDeferredObject)initWithFulfillmentQueue:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = OspreyDeferredObject;
  v6 = [(OspreyDeferredObject *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fulfillmentQueue, a3);
    v8 = dispatch_group_create();
    fulfillmentGroup = v7->_fulfillmentGroup;
    v7->_fulfillmentGroup = v8;

    v10 = dispatch_queue_create("OspreyDeferredObject.deferral", 0);
    deferralQueue = v7->_deferralQueue;
    v7->_deferralQueue = v10;

    dispatch_suspend(v7->_deferralQueue);
    dispatch_group_enter(v7->_fulfillmentGroup);
    fulfillmentQueue = v7->_fulfillmentQueue;
    v12 = v7->_fulfillmentGroup;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__OspreyDeferredObject_initWithFulfillmentQueue___block_invoke;
    block[3] = &unk_2799F1D30;
    v16 = v7;
    dispatch_group_notify(v12, fulfillmentQueue, block);
  }

  return v7;
}

- (void)fulfill:(id)a3
{
  v4 = a3;
  fulfillmentQueue = self->_fulfillmentQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__OspreyDeferredObject_fulfill___block_invoke;
  v7[3] = &unk_2799F1F20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(fulfillmentQueue, v7);
}

void __32__OspreyDeferredObject_fulfill___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  v2 = *(*(a1 + 32) + 32);

  dispatch_group_leave(v2);
}

- (void)fulfilledWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    deferralQueue = self->_deferralQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__OspreyDeferredObject_fulfilledWithCompletion___block_invoke;
    v7[3] = &unk_2799F1F48;
    v7[4] = self;
    v8 = v4;
    dispatch_async(deferralQueue, v7);
  }
}

@end