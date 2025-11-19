@interface MCProfileConnection(Profiles)
- (void)cancelUserInputResponses;
@end

@implementation MCProfileConnection(Profiles)

- (void)preflightUserInputResponses:()Profiles forPayloadIndex:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1A795B000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)cancelUserInputResponses
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1A795B000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)submitUserInputResponses:()Profiles .cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1A795B000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)respondToMAIDAuthenticationRequest:()Profiles error:isCancelled:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1A795B000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)respondToManagedRestoreRequest:()Profiles error:isCancelled:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1A795B000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)respondToWarningsContinueInstallation:()Profiles .cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1A795B000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)respondToCurrentPasscodeRequestContinue:()Profiles passcode:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1A795B000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)respondToCurrentPasscodeRequestContinue:()Profiles passcodeContext:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1A795B000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end