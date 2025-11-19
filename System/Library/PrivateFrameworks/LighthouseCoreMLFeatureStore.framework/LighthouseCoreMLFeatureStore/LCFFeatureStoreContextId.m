@interface LCFFeatureStoreContextId
+ (id)getContextId;
@end

@implementation LCFFeatureStoreContextId

+ (id)getContextId
{
  if (getContextId_onceToken != -1)
  {
    +[LCFFeatureStoreContextId getContextId];
  }

  v3 = getContextId_contextId;

  return v3;
}

uint64_t __40__LCFFeatureStoreContextId_getContextId__block_invoke()
{
  getContextId_contextId = [MEMORY[0x277CCAD78] UUID];

  return MEMORY[0x2821F96F8]();
}

@end