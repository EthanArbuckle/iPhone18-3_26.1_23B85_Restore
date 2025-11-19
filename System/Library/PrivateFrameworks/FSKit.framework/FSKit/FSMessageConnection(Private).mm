@interface FSMessageConnection(Private)
@end

@implementation FSMessageConnection(Private)

- (void)connect:()Private .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0(&dword_24A929000, a1, a3, "%s:start", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)connect:()Private .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0(&dword_24A929000, a1, a3, "%s: this message connection is already connected.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)connect:()Private .cold.3(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[FSMessageConnection(Private) connect:]";
  _os_log_error_impl(&dword_24A929000, log, OS_LOG_TYPE_ERROR, "%s: getLocalizationSetup didn't reply after 10seconds", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)connect:()Private .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0(&dword_24A929000, a1, a3, "%s:end", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)localizedMessage:()Private table:bundle:arguments:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(&dword_24A929000, v0, OS_LOG_TYPE_ERROR, "Message %@ not found in bundle", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end