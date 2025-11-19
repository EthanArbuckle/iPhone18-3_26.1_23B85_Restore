@interface OspreyClientStreamContextPromise
- (OspreyClientStreamContextPromise)initWithFulfillmentQueue:(id)a3;
- (void)writeFrame:(id)a3;
- (void)writeFrame:(id)a3 compressed:(BOOL)a4;
@end

@implementation OspreyClientStreamContextPromise

- (OspreyClientStreamContextPromise)initWithFulfillmentQueue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = OspreyClientStreamContextPromise;
  v5 = [(OspreyClientStreamContextPromise *)&v9 init];
  if (v5)
  {
    v6 = [[OspreyDeferredObject alloc] initWithFulfillmentQueue:v4];
    deferredContext = v5->_deferredContext;
    v5->_deferredContext = v6;
  }

  return v5;
}

- (void)writeFrame:(id)a3
{
  v4 = a3;
  deferredContext = self->_deferredContext;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__OspreyClientStreamContextPromise_writeFrame___block_invoke;
  v7[3] = &unk_2799F22C0;
  v8 = v4;
  v6 = v4;
  [(OspreyDeferredObject *)deferredContext fulfilledWithCompletion:v7];
}

- (void)writeFrame:(id)a3 compressed:(BOOL)a4
{
  v6 = a3;
  deferredContext = self->_deferredContext;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__OspreyClientStreamContextPromise_writeFrame_compressed___block_invoke;
  v9[3] = &unk_2799F22E8;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [(OspreyDeferredObject *)deferredContext fulfilledWithCompletion:v9];
}

@end