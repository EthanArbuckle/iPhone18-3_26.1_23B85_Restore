@interface ML3DaemonClient
+ (ML3DaemonClient)sharedDaemonClient;
- (ML3DaemonClient)init;
@end

@implementation ML3DaemonClient

+ (ML3DaemonClient)sharedDaemonClient
{
  if (sharedDaemonClient___once != -1)
  {
    dispatch_once(&sharedDaemonClient___once, &__block_literal_global_12352);
  }

  v3 = sharedDaemonClient___sharedDaemonClient;

  return v3;
}

- (ML3DaemonClient)init
{
  v3.receiver = self;
  v3.super_class = ML3DaemonClient;
  return [(ML3Client *)&v3 initWithConnection:0];
}

uint64_t __37__ML3DaemonClient_sharedDaemonClient__block_invoke()
{
  v0 = objc_alloc_init(ML3DaemonClient);
  v1 = sharedDaemonClient___sharedDaemonClient;
  sharedDaemonClient___sharedDaemonClient = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end