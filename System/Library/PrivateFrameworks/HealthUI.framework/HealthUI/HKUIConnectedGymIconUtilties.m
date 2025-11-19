@interface HKUIConnectedGymIconUtilties
+ (id)iconForConnectedGymDevice:(id)a3 preferredIconWidth:(double)a4;
+ (void)initialize;
@end

@implementation HKUIConnectedGymIconUtilties

+ (void)initialize
{
  v2 = __HKUIManufacturerNameToLogoNameMapping;
  __HKUIManufacturerNameToLogoNameMapping = &unk_1F4384BD0;

  v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v4 = _iconCache;
  _iconCache = v3;

  MEMORY[0x1EEE66BB8](v3, v4);
}

+ (id)iconForConnectedGymDevice:(id)a3 preferredIconWidth:(double)a4
{
  v5 = [a3 manufacturer];
  v6 = [v5 lowercaseString];

  v7 = [v6 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F42FFBE0];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [__HKUIManufacturerNameToLogoNameMapping objectForKeyedSubscript:v7];
  v10 = [v8 stringWithFormat:@"%@_%.0f", v9, *&a4];

  v11 = [_iconCache objectForKeyedSubscript:v10];
  if (!v11)
  {
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v13 = [MEMORY[0x1E69DCAB8] imageNamed:v10 inBundle:v12];
    v11 = [v13 hk_watchIconImage];

    if (v11)
    {
      [_iconCache setObject:v11 forKeyedSubscript:v10];
    }

    else
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x1E696B940];
      if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
      {
        [(HKUIConnectedGymIconUtilties *)v10 iconForConnectedGymDevice:v7 preferredIconWidth:v14];
      }
    }
  }

  return v11;
}

+ (void)iconForConnectedGymDevice:(os_log_t)log preferredIconWidth:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1C3942000, log, OS_LOG_TYPE_ERROR, "No GymKit icon found with name '%{public}@' for manufacturer '%{public}@'", &v3, 0x16u);
}

@end