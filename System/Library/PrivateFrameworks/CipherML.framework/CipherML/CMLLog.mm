@interface CMLLog
+ (id)client;
@end

@implementation CMLLog

+ (id)client
{
  if (client_onceToken != -1)
  {
    +[CMLLog client];
  }

  v3 = client__client;

  return v3;
}

uint64_t __16__CMLLog_client__block_invoke()
{
  client__client = os_log_create(kCMLLogSubsystem, "client");

  return MEMORY[0x2821F96F8]();
}

@end