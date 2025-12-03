@interface CATBlockCancellable
- (CATBlockCancellable)initWithCancellables:(id)cancellables;
- (CATBlockCancellable)initWithCancellationBlock:(id)block;
- (void)cancel;
@end

@implementation CATBlockCancellable

- (CATBlockCancellable)initWithCancellables:(id)cancellables
{
  v4 = [cancellables copy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__CATBlockCancellable_initWithCancellables___block_invoke;
  v8[3] = &unk_278DA72D0;
  v9 = v4;
  v5 = v4;
  v6 = [(CATBlockCancellable *)self initWithCancellationBlock:v8];

  return v6;
}

- (CATBlockCancellable)initWithCancellationBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = CATBlockCancellable;
  v5 = [(CATBlockCancellable *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x245D2F510](blockCopy);
    cancellationBlock = v5->_cancellationBlock;
    v5->_cancellationBlock = v6;
  }

  return v5;
}

- (void)cancel
{
  cancellationBlock = [(CATBlockCancellable *)self cancellationBlock];

  if (cancellationBlock)
  {
    cancellationBlock2 = [(CATBlockCancellable *)self cancellationBlock];
    [(CATBlockCancellable *)self setCancellationBlock:0];
    cancellationBlock2[2]();
  }
}

@end