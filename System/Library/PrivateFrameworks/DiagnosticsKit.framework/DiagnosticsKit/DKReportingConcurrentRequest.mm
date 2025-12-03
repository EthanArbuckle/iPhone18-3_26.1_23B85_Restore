@interface DKReportingConcurrentRequest
+ (id)concurrentRequestWithGenerator:(id)generator;
- (DKReportingConcurrentRequest)initWithGenerator:(id)generator;
@end

@implementation DKReportingConcurrentRequest

- (DKReportingConcurrentRequest)initWithGenerator:(id)generator
{
  generatorCopy = generator;
  v11.receiver = self;
  v11.super_class = DKReportingConcurrentRequest;
  v6 = [(DKReportingConcurrentRequest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_generator, generator);
    v8 = [MEMORY[0x277CBEB58] set];
    manifest = v7->_manifest;
    v7->_manifest = v8;
  }

  return v7;
}

+ (id)concurrentRequestWithGenerator:(id)generator
{
  generatorCopy = generator;
  v5 = [[self alloc] initWithGenerator:generatorCopy];

  return v5;
}

@end