@interface CalCancellableSearch
- (CalCancellableSearch)initWithCancellationBlock:(id)block;
- (void)cancel;
@end

@implementation CalCancellableSearch

- (CalCancellableSearch)initWithCancellationBlock:(id)block
{
  blockCopy = block;
  v8.receiver = self;
  v8.super_class = CalCancellableSearch;
  v5 = [(CalCancellableSearch *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CalCancellableSearch *)v5 setCancellationBlock:blockCopy];
  }

  return v6;
}

- (void)cancel
{
  cancellationBlock = [(CalCancellableSearch *)self cancellationBlock];

  if (cancellationBlock)
  {
    cancellationBlock2 = [(CalCancellableSearch *)self cancellationBlock];
    cancellationBlock2[2]();
  }
}

@end