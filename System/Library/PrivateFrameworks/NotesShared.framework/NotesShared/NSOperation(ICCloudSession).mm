@interface NSOperation(ICCloudSession)
- (void)setIc_cloudSession:()ICCloudSession;
@end

@implementation NSOperation(ICCloudSession)

- (void)setIc_cloudSession:()ICCloudSession
{
  value = a3;
  identifier = [value identifier];
  uUIDString = [identifier UUIDString];
  [self ic_setCloudSessionIdentifier:uUIDString];

  objc_setAssociatedObject(self, &ICNSOperationCloudSession, value, 1);
}

@end