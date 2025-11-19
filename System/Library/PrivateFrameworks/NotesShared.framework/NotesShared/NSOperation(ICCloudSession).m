@interface NSOperation(ICCloudSession)
- (void)setIc_cloudSession:()ICCloudSession;
@end

@implementation NSOperation(ICCloudSession)

- (void)setIc_cloudSession:()ICCloudSession
{
  value = a3;
  v4 = [value identifier];
  v5 = [v4 UUIDString];
  [a1 ic_setCloudSessionIdentifier:v5];

  objc_setAssociatedObject(a1, &ICNSOperationCloudSession, value, 1);
}

@end