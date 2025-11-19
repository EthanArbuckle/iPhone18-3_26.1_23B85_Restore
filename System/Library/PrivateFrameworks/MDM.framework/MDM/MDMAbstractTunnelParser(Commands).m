@interface MDMAbstractTunnelParser(Commands)
@end

@implementation MDMAbstractTunnelParser(Commands)

- (void)_commandDisconnect:()Commands .cold.1(os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = "/Library/Caches/com.apple.xbs/Sources/DeviceManagementClientTools/DeviceManagementClientTools/MDM Framework/Parsers/MDMAbstractTunnelParser.m";
  v4 = 2080;
  v2 = 136315650;
  v5 = "[MDMAbstractTunnelParser(Commands) _commandDisconnect:]";
  v6 = 2048;
  v7 = 43;
  _os_log_debug_impl(&dword_2561F5000, log, OS_LOG_TYPE_DEBUG, "<%s %s:%lu>", &v2, 0x20u);
  v1 = *MEMORY[0x277D85DE8];
}

@end