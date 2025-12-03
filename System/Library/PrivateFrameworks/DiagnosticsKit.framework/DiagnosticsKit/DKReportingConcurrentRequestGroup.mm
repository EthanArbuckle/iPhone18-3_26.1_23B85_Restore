@interface DKReportingConcurrentRequestGroup
+ (id)initWithResources:(id)resources;
- (BOOL)addComponentIdentity:(id)identity usingGenerator:(id)generator;
- (DKReportingConcurrentRequestGroup)init;
@end

@implementation DKReportingConcurrentRequestGroup

- (DKReportingConcurrentRequestGroup)init
{
  v10.receiver = self;
  v10.super_class = DKReportingConcurrentRequestGroup;
  v2 = [(DKReportingConcurrentRequestGroup *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    resources = v2->_resources;
    v2->_resources = v3;

    v5 = [MEMORY[0x277CBEB58] set];
    requests = v2->_requests;
    v2->_requests = v5;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    requestLookupByGenerator = v2->_requestLookupByGenerator;
    v2->_requestLookupByGenerator = dictionary;
  }

  return v2;
}

+ (id)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v4 = objc_opt_new();
  resources = [v4 resources];
  [resources unionSet:resourcesCopy];

  return v4;
}

- (BOOL)addComponentIdentity:(id)identity usingGenerator:(id)generator
{
  identityCopy = identity;
  generatorCopy = generator;
  resources = [(DKReportingConcurrentRequestGroup *)self resources];
  resources2 = [identityCopy resources];
  v10 = [resources isEqualToSet:resources2];

  if (v10)
  {
    requestLookupByGenerator = [(DKReportingConcurrentRequestGroup *)self requestLookupByGenerator];
    extensionAttributes = [generatorCopy extensionAttributes];
    v13 = [requestLookupByGenerator objectForKeyedSubscript:extensionAttributes];

    if (!v13)
    {
      v13 = [DKReportingConcurrentRequest concurrentRequestWithGenerator:generatorCopy];
      requestLookupByGenerator2 = [(DKReportingConcurrentRequestGroup *)self requestLookupByGenerator];
      extensionAttributes2 = [generatorCopy extensionAttributes];
      [requestLookupByGenerator2 setObject:v13 forKeyedSubscript:extensionAttributes2];
    }

    manifest = [v13 manifest];
    v17 = [manifest count];
    v18 = v17 == 0;

    if (!v17)
    {
      manifest2 = [v13 manifest];
      [manifest2 addObject:identityCopy];

      requests = [(DKReportingConcurrentRequestGroup *)self requests];
      [requests addObject:v13];

      resources3 = [(DKReportingConcurrentRequestGroup *)self resources];
      resources4 = [identityCopy resources];
      [resources3 unionSet:resources4];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end