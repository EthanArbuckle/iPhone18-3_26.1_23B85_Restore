@interface HMDBackgroundOperationManagerDataSource
+ (NSString)name;
- (HMDBackgroundOperationManager)owner;
- (HMDBackgroundOperationManagerDataSource)initWithOperationManager:(id)manager;
- (HMDBackgroundOperationManagerDataSource)initWithOperationManager:(id)manager notificationCenter:(id)center;
- (NSDictionary)values;
- (void)notifyDataSourceChanged;
@end

@implementation HMDBackgroundOperationManagerDataSource

- (HMDBackgroundOperationManager)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (void)notifyDataSourceChanged
{
  owner = [(HMDBackgroundOperationManagerDataSource *)self owner];
  [owner dataSourceHasUpdate:self];
}

- (NSDictionary)values
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (HMDBackgroundOperationManagerDataSource)initWithOperationManager:(id)manager notificationCenter:(id)center
{
  managerCopy = manager;
  centerCopy = center;
  v11.receiver = self;
  v11.super_class = HMDBackgroundOperationManagerDataSource;
  v8 = [(HMDBackgroundOperationManagerDataSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notificationCenter, center);
    objc_storeWeak(&v9->_owner, managerCopy);
  }

  return v9;
}

- (HMDBackgroundOperationManagerDataSource)initWithOperationManager:(id)manager
{
  v4 = MEMORY[0x277CCAB98];
  managerCopy = manager;
  defaultCenter = [v4 defaultCenter];
  v7 = [(HMDBackgroundOperationManagerDataSource *)self initWithOperationManager:managerCopy notificationCenter:defaultCenter];

  return v7;
}

+ (NSString)name
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end