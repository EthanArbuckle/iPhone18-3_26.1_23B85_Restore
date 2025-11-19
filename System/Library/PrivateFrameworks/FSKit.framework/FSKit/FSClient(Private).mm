@interface FSClient(Private)
@end

@implementation FSClient(Private)

- (void)validateVolumeName:()Private usingBundle:volumeID:replyHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)validateVolumeName:()Private usingBundle:volumeID:replyHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startFSCKWithDevice:()Private volumes:error:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_1_1(a1, *MEMORY[0x277D85DE8]);
  v2 = *(*v1 + 40);
  v6 = 136315650;
  v7 = "[FSClient(Private) startFSCKWithDevice:volumes:error:]";
  v8 = 2112;
  v9 = v3;
  v10 = 2112;
  v11 = v2;
  _os_log_debug_impl(&dword_24A929000, v4, OS_LOG_TYPE_DEBUG, "%s: returning taskID (%@) error (%@)", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)doneFSCKWithTask:()Private .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_1_1(a1, *MEMORY[0x277D85DE8]);
  v4 = 136315394;
  v5 = "[FSClient(Private) doneFSCKWithTask:]";
  v6 = 2112;
  v7 = v1;
  _os_log_debug_impl(&dword_24A929000, v2, OS_LOG_TYPE_DEBUG, "%s: returning error (%@)", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end