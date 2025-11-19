@interface MTStoreAMSBagDelegatePackage
- (MTStoreAMSBagDelegatePackage)init;
- (MTStoreAMSBagDelegatePackage)initWithAMSBag:(id)a3 containerId:(id)a4 pageURLBlock:(id)a5 resourceRevNumBlock:(id)a6 hostAppBlock:(id)a7;
@end

@implementation MTStoreAMSBagDelegatePackage

- (MTStoreAMSBagDelegatePackage)init
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"-init is not a valid initializer for the class %@", v4];

  v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v5 userInfo:0];
  objc_exception_throw(v6);
}

- (MTStoreAMSBagDelegatePackage)initWithAMSBag:(id)a3 containerId:(id)a4 pageURLBlock:(id)a5 resourceRevNumBlock:(id)a6 hostAppBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = MTStoreAMSBagDelegatePackage;
  v17 = [(MTStoreAMSBagDelegatePackage *)&v25 init];
  if (v17)
  {
    v18 = [[MTConfigAMSMetricsDelegate alloc] initWithAMSBag:v12];
    configDelegate = v17->_configDelegate;
    v17->_configDelegate = v18;

    v20 = [[MTConvenienceEnvironmentDelegate alloc] initWithPageURLBlock:v14 resourceRevNumBlock:v15 hostAppBlock:v16];
    environmentDelegate = v17->_environmentDelegate;
    v17->_environmentDelegate = v20;

    v22 = [[MTEventRecorderAMSMetricsDelegate alloc] initWithContainerId:v13 amsBag:v12];
    eventRecorderDelegate = v17->_eventRecorderDelegate;
    v17->_eventRecorderDelegate = v22;
  }

  return v17;
}

@end