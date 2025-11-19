@interface DKSyncContextObjectFactory
@end

@implementation DKSyncContextObjectFactory

uint64_t __61___DKSyncContextObjectFactory_objectFactoryForClass_context___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:24];
  v1 = objectFactoryForClass_context__instances;
  objectFactoryForClass_context__instances = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end