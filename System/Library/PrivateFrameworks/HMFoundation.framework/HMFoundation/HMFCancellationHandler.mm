@interface HMFCancellationHandler
- (HMFCancellationHandler)initWithBlock:(id)block;
- (void)cancel;
@end

@implementation HMFCancellationHandler

- (HMFCancellationHandler)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = HMFCancellationHandler;
  v5 = [(HMFCancellationHandler *)&v9 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (void)cancel
{
  v3 = _Block_copy(self->_block);
  if (v3)
  {
    v5 = v3;
    v3[2]();
    block = self->_block;
    self->_block = 0;

    v3 = v5;
  }
}

@end