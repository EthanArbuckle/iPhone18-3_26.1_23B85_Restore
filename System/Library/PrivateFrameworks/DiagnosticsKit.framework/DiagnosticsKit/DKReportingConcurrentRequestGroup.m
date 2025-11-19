@interface DKReportingConcurrentRequestGroup
+ (id)initWithResources:(id)a3;
- (BOOL)addComponentIdentity:(id)a3 usingGenerator:(id)a4;
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

    v7 = [MEMORY[0x277CBEB38] dictionary];
    requestLookupByGenerator = v2->_requestLookupByGenerator;
    v2->_requestLookupByGenerator = v7;
  }

  return v2;
}

+ (id)initWithResources:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v4 resources];
  [v5 unionSet:v3];

  return v4;
}

- (BOOL)addComponentIdentity:(id)a3 usingGenerator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DKReportingConcurrentRequestGroup *)self resources];
  v9 = [v6 resources];
  v10 = [v8 isEqualToSet:v9];

  if (v10)
  {
    v11 = [(DKReportingConcurrentRequestGroup *)self requestLookupByGenerator];
    v12 = [v7 extensionAttributes];
    v13 = [v11 objectForKeyedSubscript:v12];

    if (!v13)
    {
      v13 = [DKReportingConcurrentRequest concurrentRequestWithGenerator:v7];
      v14 = [(DKReportingConcurrentRequestGroup *)self requestLookupByGenerator];
      v15 = [v7 extensionAttributes];
      [v14 setObject:v13 forKeyedSubscript:v15];
    }

    v16 = [v13 manifest];
    v17 = [v16 count];
    v18 = v17 == 0;

    if (!v17)
    {
      v19 = [v13 manifest];
      [v19 addObject:v6];

      v20 = [(DKReportingConcurrentRequestGroup *)self requests];
      [v20 addObject:v13];

      v21 = [(DKReportingConcurrentRequestGroup *)self resources];
      v22 = [v6 resources];
      [v21 unionSet:v22];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end