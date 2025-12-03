@interface CalPerformSelectorAsyncBlockPerformer
- (id)performAfterDelay:(double)delay block:(id)block;
@end

@implementation CalPerformSelectorAsyncBlockPerformer

- (id)performAfterDelay:(double)delay block:(id)block
{
  blockCopy = block;
  v6 = [[CalCancelablePerformSelector alloc] initWithBlock:blockCopy];

  [(CalCancelablePerformSelector *)v6 performAfterDelay:delay];

  return v6;
}

@end