@interface CATBlockCancellable
- (CATBlockCancellable)initWithCancellables:(id)a3;
- (CATBlockCancellable)initWithCancellationBlock:(id)a3;
- (void)cancel;
@end

@implementation CATBlockCancellable

- (CATBlockCancellable)initWithCancellables:(id)a3
{
  v4 = [a3 copy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__CATBlockCancellable_initWithCancellables___block_invoke;
  v8[3] = &unk_278DA72D0;
  v9 = v4;
  v5 = v4;
  v6 = [(CATBlockCancellable *)self initWithCancellationBlock:v8];

  return v6;
}

- (CATBlockCancellable)initWithCancellationBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CATBlockCancellable;
  v5 = [(CATBlockCancellable *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x245D2F510](v4);
    cancellationBlock = v5->_cancellationBlock;
    v5->_cancellationBlock = v6;
  }

  return v5;
}

- (void)cancel
{
  v3 = [(CATBlockCancellable *)self cancellationBlock];

  if (v3)
  {
    v4 = [(CATBlockCancellable *)self cancellationBlock];
    [(CATBlockCancellable *)self setCancellationBlock:0];
    v4[2]();
  }
}

@end