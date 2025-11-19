@interface CDPAccount(Probation)
- (void)rpdProbationFirstSeenDate;
@end

@implementation CDPAccount(Probation)

- (void)rpdProbationFirstSeenDate
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2(&dword_1DED99000, a2, a3, "RPD Probation: date from accountProperties: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setRpdProbationFirstSeenDate:()Probation .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2(&dword_1DED99000, a2, a3, "RPD Probation: Set date in accountProperties: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setRpdProbationFirstSeenDate:()Probation .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "Failed to set RPD Probation date: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)rpdProbationIsInEffectForDuration:()Probation context:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2(&dword_1DED99000, a1, a3, "RPD Probation: Elapsed time since user first exhausted all recovery options: %f", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)rpdProbationIsInEffectForDuration:()Probation context:.cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2(&dword_1DED99000, a1, a3, "RPD Probation period: %f secs", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

@end