@interface MSDSetupUILocalization
+ (id)localizedStringForKey:(id)key;
+ (id)localizedStringForKey:(id)key withStringArgument:(id)argument;
@end

@implementation MSDSetupUILocalization

+ (id)localizedStringForKey:(id)key
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CCA8D8];
  keyCopy = key;
  v6 = [v4 bundleWithPath:@"/System/Library/PrivateFrameworks/MobileStoreDemoSetupUI.framework"];
  v7 = [v6 localizedStringForKey:keyCopy value:&stru_286AE2298 table:@"Localizable"];

  v8 = [v3 localizedStringWithFormat:v7];

  return v8;
}

+ (id)localizedStringForKey:(id)key withStringArgument:(id)argument
{
  argumentCopy = argument;
  v6 = [MSDSetupUILocalization localizedStringForKey:key];
  v11 = 0;
  argumentCopy = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v11, argumentCopy];

  v8 = v11;
  if (!argumentCopy)
  {
    v9 = defaultLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MSDSetupUILocalization *)v6 localizedStringForKey:v8 withStringArgument:v9];
    }
  }

  return argumentCopy;
}

+ (void)localizedStringForKey:(NSObject *)a3 withStringArgument:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 localizedDescription];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_259BCA000, a3, OS_LOG_TYPE_ERROR, "Failed to validate localized format string %{public}@: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end