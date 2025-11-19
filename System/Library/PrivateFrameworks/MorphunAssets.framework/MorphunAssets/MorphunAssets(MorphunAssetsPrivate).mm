@interface MorphunAssets(MorphunAssetsPrivate)
@end

@implementation MorphunAssets(MorphunAssetsPrivate)

+ (void)validateLocale:()MorphunAssetsPrivate .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "+[MorphunAssets(MorphunAssetsPrivate) validateLocale:]";
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_25AACA000, a2, OS_LOG_TYPE_ERROR, "%s %{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)validateLocale:()MorphunAssetsPrivate .cold.2(os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "+[MorphunAssets(MorphunAssetsPrivate) validateLocale:]";
  v4 = 2114;
  v5 = @"Locale passed in was nil!";
  _os_log_error_impl(&dword_25AACA000, log, OS_LOG_TYPE_ERROR, "%s %{public}@", &v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end