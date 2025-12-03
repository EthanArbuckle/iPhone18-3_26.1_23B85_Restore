@interface GKOperationQueue
- (void)_gkAddOperationWithDelay:(double)delay operation:(id)operation;
@end

@implementation GKOperationQueue

- (void)_gkAddOperationWithDelay:(double)delay operation:(id)operation
{
  operationCopy = operation;
  v7 = [[GKDelayOperation alloc] initWithDelay:operationCopy andOperation:delay];

  [(GKOperationQueue *)self addOperation:v7];
}

@end