@interface MTMaterialLayer(Private)
@end

@implementation MTMaterialLayer(Private)

- (void)setContentReplacedWithSnapshot:()Private .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1BF527000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to render server snapshot", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)setContentReplacedWithSnapshot:()Private .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1BF527000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create an IOSurface", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end