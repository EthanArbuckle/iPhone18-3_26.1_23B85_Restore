@interface CRKResourcesServiceTransportProvider
- (void)fetchTransportWithCompletion:(id)completion;
@end

@implementation CRKResourcesServiceTransportProvider

- (void)fetchTransportWithCompletion:(id)completion
{
  v3 = MEMORY[0x277CCAE80];
  completionCopy = completion;
  v6 = [[v3 alloc] initWithServiceName:@"com.apple.ClassroomKit.ResourcesService"];
  v5 = [objc_alloc(MEMORY[0x277CF95B8]) initWithXPCConnection:v6];
  completionCopy[2](completionCopy, v5, 0);
}

@end