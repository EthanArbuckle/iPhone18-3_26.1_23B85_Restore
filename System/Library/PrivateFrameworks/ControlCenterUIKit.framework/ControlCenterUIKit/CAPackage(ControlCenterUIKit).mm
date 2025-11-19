@interface CAPackage(ControlCenterUIKit)
+ (id)ccuiPackageFromDescription:()ControlCenterUIKit;
@end

@implementation CAPackage(ControlCenterUIKit)

+ (id)ccuiPackageFromDescription:()ControlCenterUIKit
{
  v3 = a3;
  v4 = MEMORY[0x1E6979400];
  v5 = [v3 packageURL];
  v6 = *MEMORY[0x1E6979EF8];
  v11 = 0;
  v7 = [v4 packageWithContentsOfURL:v5 type:v6 options:0 error:&v11];
  v8 = v11;

  if (v8)
  {
    v9 = CCUILogUserInterface;
    if (os_log_type_enabled(CCUILogUserInterface, OS_LOG_TYPE_ERROR))
    {
      [(CAPackage(ControlCenterUIKit) *)v9 ccuiPackageFromDescription:v3, v8];
    }
  }

  return v7;
}

+ (void)ccuiPackageFromDescription:()ControlCenterUIKit .cold.1(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 packageURL];
  v7 = 138543618;
  v8 = v6;
  v9 = 2114;
  v10 = a3;
  _os_log_error_impl(&dword_1D168A000, v5, OS_LOG_TYPE_ERROR, "Cannot load CAPackage from %{public}@: %{public}@", &v7, 0x16u);
}

@end