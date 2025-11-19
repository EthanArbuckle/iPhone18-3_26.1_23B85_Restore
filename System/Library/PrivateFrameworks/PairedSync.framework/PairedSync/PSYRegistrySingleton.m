@interface PSYRegistrySingleton
+ (id)registry;
+ (void)addDelegate:(id)a3;
@end

@implementation PSYRegistrySingleton

+ (id)registry
{
  if (registry_onceToken != -1)
  {
    +[PSYRegistrySingleton registry];
  }

  v3 = registry_singleton;

  return v3;
}

uint64_t __32__PSYRegistrySingleton_registry__block_invoke()
{
  registry_singleton = objc_alloc_init(MEMORY[0x277D37B50]);

  return MEMORY[0x2821F96F8]();
}

+ (void)addDelegate:(id)a3
{
  v3 = a3;
  v4 = +[PSYRegistrySingleton registry];
  [v4 addDelegate:v3];

  if (([v4 started] & 1) == 0)
  {
    [v4 start];
  }
}

@end