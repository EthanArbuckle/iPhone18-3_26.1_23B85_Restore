@interface SYStatisticStore(DatabaseTidying)
- (void)_LOCKED_allServiceNames;
@end

@implementation SYStatisticStore(DatabaseTidying)

- (void)_LOCKED_allServiceNames
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Error while reading service names - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_LOCKED_pruneMessageLogForServices:()DatabaseTidying .cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Failed to create prune statement - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_LOCKED_pruneMessageLogForServices:()DatabaseTidying .cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Failed to execute prune statement - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end