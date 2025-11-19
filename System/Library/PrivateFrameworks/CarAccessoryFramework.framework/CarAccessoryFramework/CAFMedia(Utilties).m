@interface CAFMedia(Utilties)
@end

@implementation CAFMedia(Utilties)

- (void)tuneToMediaItem:()Utilties inSource:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4(&dword_231618000, v0, v1, "Tuning to mediaItem %@ in source %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)tuneToFrequency:()Utilties inSourceWithIdentifier:completion:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1];
  OUTLINED_FUNCTION_1_1();
  v8 = a2;
  _os_log_debug_impl(&dword_231618000, a3, OS_LOG_TYPE_DEBUG, "Tuning to frequency %@ in source %@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)tuneToMediaItemIdentifier:()Utilties inSourceWithIdentifier:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4(&dword_231618000, v0, v1, "Tuning to media item identifier %@ in source %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end