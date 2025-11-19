@interface MDMUserClient
+ (id)sharedClient;
- (MDMUserClient)init;
@end

@implementation MDMUserClient

+ (id)sharedClient
{
  if (sharedClient_once_0 != -1)
  {
    +[MDMUserClient sharedClient];
  }

  v3 = sharedClient_client_0;

  return v3;
}

uint64_t __29__MDMUserClient_sharedClient__block_invoke()
{
  sharedClient_client_0 = objc_alloc_init(MDMUserClient);

  return MEMORY[0x2821F96F8]();
}

- (MDMUserClient)init
{
  v3.receiver = self;
  v3.super_class = MDMUserClient;
  return [(MDMClientCore *)&v3 initWithChannelType:1];
}

@end