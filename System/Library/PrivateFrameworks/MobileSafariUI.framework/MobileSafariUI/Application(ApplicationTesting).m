@interface Application(ApplicationTesting)
@end

@implementation Application(ApplicationTesting)

+ (void)prepareTestControllerWithType:()ApplicationTesting suiteURL:bundleNames:outputURL:.cold.3()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_215819000, v0, OS_LOG_TYPE_DEBUG, "Opened result fifo: %@", v1, 0xCu);
}

+ (void)prepareTestControllerWithType:()ApplicationTesting suiteURL:bundleNames:outputURL:.cold.5()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_215819000, v0, OS_LOG_TYPE_DEBUG, "Created result bundle: %@", v1, 0xCu);
}

@end