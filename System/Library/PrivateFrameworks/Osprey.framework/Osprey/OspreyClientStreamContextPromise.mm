@interface OspreyClientStreamContextPromise
- (OspreyClientStreamContextPromise)initWithFulfillmentQueue:(id)queue;
- (void)writeFrame:(id)frame;
- (void)writeFrame:(id)frame compressed:(BOOL)compressed;
@end

@implementation OspreyClientStreamContextPromise

- (OspreyClientStreamContextPromise)initWithFulfillmentQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = OspreyClientStreamContextPromise;
  v5 = [(OspreyClientStreamContextPromise *)&v9 init];
  if (v5)
  {
    v6 = [[OspreyDeferredObject alloc] initWithFulfillmentQueue:queueCopy];
    deferredContext = v5->_deferredContext;
    v5->_deferredContext = v6;
  }

  return v5;
}

- (void)writeFrame:(id)frame
{
  frameCopy = frame;
  deferredContext = self->_deferredContext;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__OspreyClientStreamContextPromise_writeFrame___block_invoke;
  v7[3] = &unk_2799F22C0;
  v8 = frameCopy;
  v6 = frameCopy;
  [(OspreyDeferredObject *)deferredContext fulfilledWithCompletion:v7];
}

- (void)writeFrame:(id)frame compressed:(BOOL)compressed
{
  frameCopy = frame;
  deferredContext = self->_deferredContext;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__OspreyClientStreamContextPromise_writeFrame_compressed___block_invoke;
  v9[3] = &unk_2799F22E8;
  v10 = frameCopy;
  compressedCopy = compressed;
  v8 = frameCopy;
  [(OspreyDeferredObject *)deferredContext fulfilledWithCompletion:v9];
}

@end