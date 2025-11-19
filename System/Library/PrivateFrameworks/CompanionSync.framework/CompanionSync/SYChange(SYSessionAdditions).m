@interface SYChange(SYSessionAdditions)
@end

@implementation SYChange(SYSessionAdditions)

+ (void)changeWithChangeObject:()SYSessionAdditions serializer:encodeUsingVersion:.cold.2(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = _SYObfuscate(a2);
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_1DF835000, v3, OS_LOG_TYPE_ERROR, "SYChange object %{public}@ does not provide the required objectIdentifier!", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)changeWithChangeObject:()SYSessionAdditions serializer:encodeUsingVersion:.cold.4(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = 1;
  _os_log_error_impl(&dword_1DF835000, log, OS_LOG_TYPE_ERROR, "SYChangeSerializer doesn't support -encodeSYChangeForBackwardCompatibility:protocolVersion:, but I'm being asked to encode a change for version %d", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

@end