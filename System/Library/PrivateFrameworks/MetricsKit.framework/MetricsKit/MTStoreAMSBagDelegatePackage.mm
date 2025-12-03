@interface MTStoreAMSBagDelegatePackage
- (MTStoreAMSBagDelegatePackage)init;
- (MTStoreAMSBagDelegatePackage)initWithAMSBag:(id)bag containerId:(id)id pageURLBlock:(id)block resourceRevNumBlock:(id)numBlock hostAppBlock:(id)appBlock;
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

- (MTStoreAMSBagDelegatePackage)initWithAMSBag:(id)bag containerId:(id)id pageURLBlock:(id)block resourceRevNumBlock:(id)numBlock hostAppBlock:(id)appBlock
{
  bagCopy = bag;
  idCopy = id;
  blockCopy = block;
  numBlockCopy = numBlock;
  appBlockCopy = appBlock;
  v25.receiver = self;
  v25.super_class = MTStoreAMSBagDelegatePackage;
  v17 = [(MTStoreAMSBagDelegatePackage *)&v25 init];
  if (v17)
  {
    v18 = [[MTConfigAMSMetricsDelegate alloc] initWithAMSBag:bagCopy];
    configDelegate = v17->_configDelegate;
    v17->_configDelegate = v18;

    v20 = [[MTConvenienceEnvironmentDelegate alloc] initWithPageURLBlock:blockCopy resourceRevNumBlock:numBlockCopy hostAppBlock:appBlockCopy];
    environmentDelegate = v17->_environmentDelegate;
    v17->_environmentDelegate = v20;

    v22 = [[MTEventRecorderAMSMetricsDelegate alloc] initWithContainerId:idCopy amsBag:bagCopy];
    eventRecorderDelegate = v17->_eventRecorderDelegate;
    v17->_eventRecorderDelegate = v22;
  }

  return v17;
}

@end