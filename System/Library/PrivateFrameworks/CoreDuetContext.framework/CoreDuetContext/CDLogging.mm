@interface CDLogging
@end

@implementation CDLogging

void __40___CDLogging_CDUserContext__mdcsChannel__block_invoke()
{
  v0 = os_log_create("com.apple.coreduet", "MDCS");
  v1 = mdcsChannel_mdcsChannel;
  mdcsChannel_mdcsChannel = v0;

  if (!mdcsChannel_mdcsChannel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __40___CDLogging_CDUserContext__mdcsChannel__block_invoke_cold_1();
  }
}

@end