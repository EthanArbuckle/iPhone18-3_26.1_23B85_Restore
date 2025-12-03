@interface ML3ProcessClient
+ (ML3ProcessClient)sharedProcessClient;
- (ML3ProcessClient)init;
- (id)bundleID;
- (id)name;
@end

@implementation ML3ProcessClient

- (id)name
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];

  return processName;
}

- (id)bundleID
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  return bundleIdentifier;
}

- (ML3ProcessClient)init
{
  v3.receiver = self;
  v3.super_class = ML3ProcessClient;
  return [(ML3Client *)&v3 initWithConnection:0];
}

+ (ML3ProcessClient)sharedProcessClient
{
  if (sharedProcessClient___once != -1)
  {
    dispatch_once(&sharedProcessClient___once, &__block_literal_global_314);
  }

  v3 = sharedProcessClient___sharedProcessClient;

  return v3;
}

uint64_t __39__ML3ProcessClient_sharedProcessClient__block_invoke()
{
  sharedProcessClient___sharedProcessClient = objc_alloc_init(ML3ProcessClient);

  return MEMORY[0x2821F96F8]();
}

@end