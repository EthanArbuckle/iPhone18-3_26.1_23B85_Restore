@interface MDMBlockOperationContext
- (void)endBlockOperation;
@end

@implementation MDMBlockOperationContext

- (void)endBlockOperation
{
  operation = [(MDMBlockOperationContext *)self operation];
  [operation endOperationWithResultObject:0];
}

@end