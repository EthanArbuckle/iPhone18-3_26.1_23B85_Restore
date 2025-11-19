@interface CHConfiguration
- (BOOL)isCloudKitEnabled;
- (CHConfiguration)initWithDataSource:(id)a3;
- (id)numberForKey:(id)a3;
- (int64_t)keepCallsTimeIntervalType;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)removeDelegate:(id)a3;
@end

@implementation CHConfiguration

- (CHConfiguration)initWithDataSource:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CHConfiguration;
  v6 = [(CHConfiguration *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
    v8 = objc_alloc_init(CHDelegateController);
    delegateController = v7->_delegateController;
    v7->_delegateController = v8;
  }

  return v7;
}

- (BOOL)isCloudKitEnabled
{
  v2 = [(CHConfiguration *)self numberForKey:@"cloudKitEnabled"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int64_t)keepCallsTimeIntervalType
{
  v2 = [(CHConfiguration *)self numberForKey:@"keepCallsTimeIntervalType"];
  v3 = [v2 integerValue];

  return v3;
}

- (id)numberForKey:(id)a3
{
  v4 = a3;
  v5 = [(CHConfiguration *)self dataSource];
  v6 = [v5 objectForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CHConfiguration *)self delegateController];
  [v8 addDelegate:v7 queue:v6];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CHConfiguration *)self delegateController];
  [v5 removeDelegate:v4];
}

@end