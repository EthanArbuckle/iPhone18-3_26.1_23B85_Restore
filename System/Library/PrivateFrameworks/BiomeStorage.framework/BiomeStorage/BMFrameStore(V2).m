@interface BMFrameStore(V2)
@end

@implementation BMFrameStore(V2)

- (void)getSegmentHeader:()V2 fromFileV2:fileSize:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E698E9C8];
  v2 = [a1 attributes];
  v3 = [v2 path];
  v4 = [v1 privacyPathname:v3];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)getSegmentHeader:()V2 fromFileV2:fileSize:.cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [a1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_2_1() privacyPathname:?];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)getSegmentHeader:()V2 fromFileV2:fileSize:.cold.3(_DWORD *a1, void *a2, NSObject *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = MEMORY[0x1E698E9C8];
  v7 = [a2 attributes];
  v8 = [v7 path];
  v9 = [v6 privacyPathname:v8];
  v11[0] = 68290050;
  v11[1] = 4;
  v12 = 2082;
  v13 = a1;
  v14 = 1024;
  v15 = v5;
  v16 = 2114;
  v17 = v9;
  v18 = 1042;
  v19 = 4;
  v20 = 2082;
  v21 = "SEGB";
  _os_log_error_impl(&dword_1C928A000, a3, OS_LOG_TYPE_ERROR, "Segment header magic '%{public}.4s' (0x%04X) in file %{public}@ doesn't match expected magic '%{public}.4s'.", v11, 0x32u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)getSegmentHeader:()V2 fromFileV2:fileSize:.cold.4(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E698E9C8];
  v2 = [a1 attributes];
  v3 = [v2 path];
  v4 = [v1 privacyPathname:v3];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)getSegmentHeader:()V2 fromFileV2:fileSize:.cold.5(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [a1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_2_1() privacyPathname:?];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithFileHandleV2:()V2 permission:.cold.2(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E698E9C8];
  v2 = [a1 backingFile];
  v3 = [v2 attributes];
  v4 = [v3 path];
  v5 = [v1 privacyPathname:v4];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)initWithFileHandleV2:()V2 permission:.cold.3(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E698E9C8];
  v2 = [a1 segmentPath];
  v3 = [v1 privacyPathname:v2];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithFileHandleV2:()V2 permission:.cold.4(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E698E9C8];
  v2 = [a1 backingFile];
  v3 = [v2 attributes];
  v4 = [v3 path];
  v5 = [v1 privacyPathname:v4];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)frameWithOffsetV2:()V2 expectedState:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)enumerateWithOptionsV2:()V2 fromOffset:usingBlock:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BMFrameStoreV2.m" lineNumber:1092 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

- (void)determineFrameNumberToBeWritten:()V2 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E698E9C8];
  v2 = [a1 segmentPath];
  v3 = [v1 privacyPathname:v2];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)reserveSpaceAndAssignAnOffsetTableEntryForTimestamp:()V2 state:length:outFrameNumber:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)reserveSpaceAndAssignAnOffsetTableEntryForTimestamp:()V2 state:length:outFrameNumber:.cold.3(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)reserveSpaceAndAssignAnOffsetTableEntryForTimestamp:()V2 state:length:outFrameNumber:.cold.4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkBoundsLength:()V2 .cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)writeFrameV2ForBytes:()V2 length:dataVersion:timestamp:outOffset:.cold.1(int *a1, int a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5[0] = 67109632;
  v5[1] = v3;
  v6 = 1024;
  v7 = 1;
  v8 = 1024;
  v9 = a2;
  _os_log_error_impl(&dword_1C928A000, log, OS_LOG_TYPE_ERROR, "Unable to update status to written, someone else seems to have overwritten the value. We expect to see %u, but instead are seeing %u. The write status is %d", v5, 0x14u);
  v4 = *MEMORY[0x1E69E9840];
}

@end