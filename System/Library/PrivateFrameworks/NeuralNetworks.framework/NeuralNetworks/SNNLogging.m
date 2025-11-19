@interface SNNLogging
+ (id)framework;
@end

@implementation SNNLogging

+ (id)framework
{
  if (framework_onceToken != -1)
  {
    +[SNNLogging framework];
  }

  v3 = framework_coreChannel;

  return v3;
}

void __23__SNNLogging_framework__block_invoke()
{
  v0 = os_log_create("com.apple.neuralnetworks", "backend.milespresso");
  v1 = framework_coreChannel;
  framework_coreChannel = v0;

  if (!framework_coreChannel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __23__SNNLogging_framework__block_invoke_cold_1();
  }
}

@end