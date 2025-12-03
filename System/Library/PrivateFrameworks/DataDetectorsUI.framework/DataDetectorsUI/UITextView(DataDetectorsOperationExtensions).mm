@interface UITextView(DataDetectorsOperationExtensions)
- (DDTextKitOperation)dd_newOperation;
@end

@implementation UITextView(DataDetectorsOperationExtensions)

- (DDTextKitOperation)dd_newOperation
{
  v2 = [[DDTextKitOperation alloc] initWithContainer:self];
  -[DDOperation setIgnoreSignatures:](v2, "setIgnoreSignatures:", [self dd_ignoreSignatures]);
  return v2;
}

@end