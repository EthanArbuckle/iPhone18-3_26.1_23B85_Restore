@interface DKReportingConcurrentRequest
+ (id)concurrentRequestWithGenerator:(id)a3;
- (DKReportingConcurrentRequest)initWithGenerator:(id)a3;
@end

@implementation DKReportingConcurrentRequest

- (DKReportingConcurrentRequest)initWithGenerator:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = DKReportingConcurrentRequest;
  v6 = [(DKReportingConcurrentRequest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_generator, a3);
    v8 = [MEMORY[0x277CBEB58] set];
    manifest = v7->_manifest;
    v7->_manifest = v8;
  }

  return v7;
}

+ (id)concurrentRequestWithGenerator:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithGenerator:v4];

  return v5;
}

@end