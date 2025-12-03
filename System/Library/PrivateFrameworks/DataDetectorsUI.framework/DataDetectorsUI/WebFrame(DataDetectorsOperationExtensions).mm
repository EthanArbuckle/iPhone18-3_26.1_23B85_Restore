@interface WebFrame(DataDetectorsOperationExtensions)
- (uint64_t)dd_newOperation;
@end

@implementation WebFrame(DataDetectorsOperationExtensions)

- (uint64_t)dd_newOperation
{
  v2 = [DDWebKitOperation alloc];

  return [(DDOperation *)v2 initWithContainer:self];
}

@end