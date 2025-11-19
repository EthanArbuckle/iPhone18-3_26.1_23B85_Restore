@interface GKOperationQueue
- (void)_gkAddOperationWithDelay:(double)a3 operation:(id)a4;
@end

@implementation GKOperationQueue

- (void)_gkAddOperationWithDelay:(double)a3 operation:(id)a4
{
  v6 = a4;
  v7 = [[GKDelayOperation alloc] initWithDelay:v6 andOperation:a3];

  [(GKOperationQueue *)self addOperation:v7];
}

@end