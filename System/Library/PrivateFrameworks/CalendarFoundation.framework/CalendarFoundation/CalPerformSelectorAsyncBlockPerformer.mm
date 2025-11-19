@interface CalPerformSelectorAsyncBlockPerformer
- (id)performAfterDelay:(double)a3 block:(id)a4;
@end

@implementation CalPerformSelectorAsyncBlockPerformer

- (id)performAfterDelay:(double)a3 block:(id)a4
{
  v5 = a4;
  v6 = [[CalCancelablePerformSelector alloc] initWithBlock:v5];

  [(CalCancelablePerformSelector *)v6 performAfterDelay:a3];

  return v6;
}

@end