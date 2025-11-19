@interface MADService(UserSafety)
@end

@implementation MADService(UserSafety)

- (void)registerUserSafetyPolicyUpdateHandler:()UserSafety error:.cold.2()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end