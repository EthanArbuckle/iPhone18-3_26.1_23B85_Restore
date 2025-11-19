@interface IMMultiFrameImage(ASTC_Persistence)
@end

@implementation IMMultiFrameImage(ASTC_Persistence)

- (void)writeASTCImage:()ASTC_Persistence duration:error:.cold.1(uint64_t a1, NSObject *a2, double a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2048;
  v7 = a3;
  _os_log_error_impl(&dword_258CD3000, a2, OS_LOG_TYPE_ERROR, "No image (%@) or duration (%f)", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)writeASTCImage:()ASTC_Persistence duration:error:.cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  *v2 = 0;
  _os_log_error_impl(&dword_258CD3000, log, OS_LOG_TYPE_ERROR, "Image destination failed to finalize.", v2, 2u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)writeASTCImage:()ASTC_Persistence duration:error:.cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(*a1 + 40));
  OUTLINED_FUNCTION_0(&dword_258CD3000, a2, a3, "Failed to write image data length to stream with error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)finalizeASTCWithError:()ASTC_Persistence .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_258CD3000, v0, v1, "Metadata dictionary writing to atsc output stream failed. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)finalizeASTCWithError:()ASTC_Persistence .cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_258CD3000, v0, v1, "Failed to write plist data length to stream with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)finalizeASTCWithError:()ASTC_Persistence .cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_258CD3000, v0, v1, "Failed to write frame count to stream with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)finalizeASTCWithError:()ASTC_Persistence .cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_258CD3000, v0, v1, "Failed to write IMMultiFrameImage format magic bytes to stream with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end