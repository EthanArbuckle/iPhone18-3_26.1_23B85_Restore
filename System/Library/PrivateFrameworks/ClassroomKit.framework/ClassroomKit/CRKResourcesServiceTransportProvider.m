@interface CRKResourcesServiceTransportProvider
- (void)fetchTransportWithCompletion:(id)a3;
@end

@implementation CRKResourcesServiceTransportProvider

- (void)fetchTransportWithCompletion:(id)a3
{
  v3 = MEMORY[0x277CCAE80];
  v4 = a3;
  v6 = [[v3 alloc] initWithServiceName:@"com.apple.ClassroomKit.ResourcesService"];
  v5 = [objc_alloc(MEMORY[0x277CF95B8]) initWithXPCConnection:v6];
  v4[2](v4, v5, 0);
}

@end