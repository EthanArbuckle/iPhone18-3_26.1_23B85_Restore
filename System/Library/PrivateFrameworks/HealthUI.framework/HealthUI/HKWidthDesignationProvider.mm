@interface HKWidthDesignationProvider
+ (int64_t)widthDesignationFromViewWidth:(double)a3;
@end

@implementation HKWidthDesignationProvider

+ (int64_t)widthDesignationFromViewWidth:(double)a3
{
  v3 = a3;
  if ((a3 - 320) < 0x37)
  {
    return 1;
  }

  if (v3 > 1194)
  {
    return 6;
  }

  if ((v3 - 982) < 0xD5)
  {
    return 5;
  }

  if ((v3 - 667) < 0x13B)
  {
    return 4;
  }

  if ((v3 - 461) < 0xCE)
  {
    return 3;
  }

  if ((v3 - 375) < 0x56)
  {
    return 2;
  }

  _HKInitializeLogging();
  v6 = *MEMORY[0x1E696B940];
  if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
  {
    [(HKWidthDesignationProvider *)v6 widthDesignationFromViewWidth:a3];
  }

  return 1;
}

+ (void)widthDesignationFromViewWidth:(void *)a1 .cold.1(void *a1, double a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v5 = 138543618;
  v6 = objc_opt_class();
  v7 = 2050;
  v8 = a2;
  v4 = v6;
  _os_log_error_impl(&dword_1C3942000, v3, OS_LOG_TYPE_ERROR, "[%{public}@]: View with width outside defined width: (%{public}f)", &v5, 0x16u);
}

@end