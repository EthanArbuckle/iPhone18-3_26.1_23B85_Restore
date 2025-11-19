@interface _DKEvent(INRelevantShortcut)
- (void)relevantShortcut;
@end

@implementation _DKEvent(INRelevantShortcut)

+ (void)eventWithRelevantShortcut:()INRelevantShortcut bundleID:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Error archiving relevant shortcut: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)relevantShortcut
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Error unarchiving relevant shortcut: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end