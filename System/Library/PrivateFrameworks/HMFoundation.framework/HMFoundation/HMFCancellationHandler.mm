@interface HMFCancellationHandler
- (HMFCancellationHandler)initWithBlock:(id)a3;
- (void)cancel;
@end

@implementation HMFCancellationHandler

- (HMFCancellationHandler)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMFCancellationHandler;
  v5 = [(HMFCancellationHandler *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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