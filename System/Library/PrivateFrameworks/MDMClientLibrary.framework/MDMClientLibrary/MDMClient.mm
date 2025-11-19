@interface MDMClient
+ (id)sharedClient;
- (MDMClient)init;
@end

@implementation MDMClient

+ (id)sharedClient
{
  if (sharedClient_once != -1)
  {
    +[MDMClient sharedClient];
  }

  v3 = sharedClient_client;

  return v3;
}

uint64_t __25__MDMClient_sharedClient__block_invoke()
{
  sharedClient_client = objc_alloc_init(MDMClient);

  return MEMORY[0x2821F96F8]();
}

- (MDMClient)init
{
  v3.receiver = self;
  v3.super_class = MDMClient;
  return [(MDMClientCore *)&v3 initWithChannelType:0];
}

@end