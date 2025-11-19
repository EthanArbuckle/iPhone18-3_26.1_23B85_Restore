@interface OSASubmissionClient(OSADRESubmissionClient)
- (void)overrideMountPath;
@end

@implementation OSASubmissionClient(OSADRESubmissionClient)

- (void)overrideMountPath
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)submitDRETelemetryAndDiagnostics:()OSADRESubmissionClient .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end