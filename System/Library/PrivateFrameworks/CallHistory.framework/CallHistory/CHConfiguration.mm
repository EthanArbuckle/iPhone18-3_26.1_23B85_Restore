@interface CHConfiguration
- (BOOL)isCloudKitEnabled;
- (CHConfiguration)initWithDataSource:(id)source;
- (id)numberForKey:(id)key;
- (int64_t)keepCallsTimeIntervalType;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)removeDelegate:(id)delegate;
@end

@implementation CHConfiguration

- (CHConfiguration)initWithDataSource:(id)source
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = CHConfiguration;
  v6 = [(CHConfiguration *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
    v8 = objc_alloc_init(CHDelegateController);
    delegateController = v7->_delegateController;
    v7->_delegateController = v8;
  }

  return v7;
}

- (BOOL)isCloudKitEnabled
{
  v2 = [(CHConfiguration *)self numberForKey:@"cloudKitEnabled"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)keepCallsTimeIntervalType
{
  v2 = [(CHConfiguration *)self numberForKey:@"keepCallsTimeIntervalType"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (id)numberForKey:(id)key
{
  keyCopy = key;
  dataSource = [(CHConfiguration *)self dataSource];
  v6 = [dataSource objectForKey:keyCopy];

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

- (void)addDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  delegateController = [(CHConfiguration *)self delegateController];
  [delegateController addDelegate:delegateCopy queue:queueCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateController = [(CHConfiguration *)self delegateController];
  [delegateController removeDelegate:delegateCopy];
}

@end