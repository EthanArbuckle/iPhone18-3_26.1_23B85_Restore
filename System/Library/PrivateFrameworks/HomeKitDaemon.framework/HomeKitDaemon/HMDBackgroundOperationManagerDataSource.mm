@interface HMDBackgroundOperationManagerDataSource
+ (NSString)name;
- (HMDBackgroundOperationManager)owner;
- (HMDBackgroundOperationManagerDataSource)initWithOperationManager:(id)a3;
- (HMDBackgroundOperationManagerDataSource)initWithOperationManager:(id)a3 notificationCenter:(id)a4;
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
  v3 = [(HMDBackgroundOperationManagerDataSource *)self owner];
  [v3 dataSourceHasUpdate:self];
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

- (HMDBackgroundOperationManagerDataSource)initWithOperationManager:(id)a3 notificationCenter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMDBackgroundOperationManagerDataSource;
  v8 = [(HMDBackgroundOperationManagerDataSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notificationCenter, a4);
    objc_storeWeak(&v9->_owner, v6);
  }

  return v9;
}

- (HMDBackgroundOperationManagerDataSource)initWithOperationManager:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = [v4 defaultCenter];
  v7 = [(HMDBackgroundOperationManagerDataSource *)self initWithOperationManager:v5 notificationCenter:v6];

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