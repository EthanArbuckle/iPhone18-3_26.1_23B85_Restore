@interface UITextView(DataDetectorsOperationExtensions)
- (DDTextKitOperation)dd_newOperation;
@end

@implementation UITextView(DataDetectorsOperationExtensions)

- (DDTextKitOperation)dd_newOperation
{
  v2 = [[DDTextKitOperation alloc] initWithContainer:a1];
  -[DDOperation setIgnoreSignatures:](v2, "setIgnoreSignatures:", [a1 dd_ignoreSignatures]);
  return v2;
}

@end