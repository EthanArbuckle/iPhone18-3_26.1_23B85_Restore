@interface NSFileManager(DeviceRecoveryExtras)
@end

@implementation NSFileManager(DeviceRecoveryExtras)

- (void)fileAtPathIsSymlink:()DeviceRecoveryExtras .cold.1()
{
  v4[0] = 136448002;
  OUTLINED_FUNCTION_2();
  v5 = "error == nil";
  v6 = 2114;
  v7 = v0;
  v8 = 2114;
  v9 = v1;
  v10 = v2;
  v11 = "";
  v12 = v2;
  v13 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m";
  v14 = 1026;
  v15 = 914;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s: AssertMacros: %{public}s - Failed to get file attributes: %{public}@ - %{public}@, %{public}s file: %{public}s, line: %{public}d\n", v4, 0x4Eu);
}

- (void)fileAtPathIsSymlink:()DeviceRecoveryExtras .cold.2()
{
  OUTLINED_FUNCTION_23();
  v0 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_15(v0))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_10_0(&dword_0, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_19_0();
}

- (void)fileAtPathIsSymlink:()DeviceRecoveryExtras .cold.3()
{
  OUTLINED_FUNCTION_23();
  v0 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_15(v0))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_10_0(&dword_0, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_19_0();
}

@end