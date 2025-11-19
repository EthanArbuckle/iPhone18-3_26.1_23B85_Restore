@interface MDMBlockOperationContext
- (void)endBlockOperation;
@end

@implementation MDMBlockOperationContext

- (void)endBlockOperation
{
  v2 = [(MDMBlockOperationContext *)self operation];
  [v2 endOperationWithResultObject:0];
}

@end