@interface CHManagedHandle(Additions)
@end

@implementation CHManagedHandle(Additions)

- (void)copyWithContext:()Additions .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = @"Handle";
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_1C3E90000, a2, OS_LOG_TYPE_ERROR, "Could not find CHManagedHandle entity with name %{public}@ in context %{public}@. Falling back to convenience initializer.", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end