@interface CTLogging
+ (id)appHandle;
+ (id)contextKitHandle;
+ (id)domainHandle;
@end

@implementation CTLogging

+ (id)appHandle
{
  if (appHandle_onceToken != -1)
  {
    +[CTLogging appHandle];
  }

  v3 = appHandle_handle;

  return v3;
}

uint64_t __22__CTLogging_appHandle__block_invoke()
{
  appHandle_handle = os_log_create("com.apple.CTCategories", "App");

  return MEMORY[0x2821F96F8]();
}

+ (id)domainHandle
{
  if (domainHandle_onceToken != -1)
  {
    +[CTLogging domainHandle];
  }

  v3 = domainHandle_handle;

  return v3;
}

uint64_t __25__CTLogging_domainHandle__block_invoke()
{
  domainHandle_handle = os_log_create("com.apple.CTCategories", "Domain");

  return MEMORY[0x2821F96F8]();
}

+ (id)contextKitHandle
{
  if (contextKitHandle_onceToken != -1)
  {
    +[CTLogging contextKitHandle];
  }

  v3 = contextKitHandle_handle;

  return v3;
}

uint64_t __29__CTLogging_contextKitHandle__block_invoke()
{
  contextKitHandle_handle = os_log_create("com.apple.CTCategories", "ContextKit");

  return MEMORY[0x2821F96F8]();
}

@end