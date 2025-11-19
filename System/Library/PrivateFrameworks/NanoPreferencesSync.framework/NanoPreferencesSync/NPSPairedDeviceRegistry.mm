@interface NPSPairedDeviceRegistry
+ (id)activeDevice;
+ (id)registry;
@end

@implementation NPSPairedDeviceRegistry

+ (id)registry
{
  if (registry_onceToken != -1)
  {
    +[NPSPairedDeviceRegistry registry];
  }

  v3 = registry_result;

  return v3;
}

uint64_t __35__NPSPairedDeviceRegistry_registry__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69B7DA0]);
  v1 = registry_result;
  registry_result = v0;

  v2 = registry_result;

  return [v2 start];
}

+ (id)activeDevice
{
  v2 = [a1 registry];
  v3 = [v2 getActiveDevice];

  return v3;
}

@end