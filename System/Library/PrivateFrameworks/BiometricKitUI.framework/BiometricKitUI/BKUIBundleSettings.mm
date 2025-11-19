@interface BKUIBundleSettings
+ (BOOL)BOOLForUserDefaultsKey:(id)a3;
+ (BOOL)isFpEnrollHapticFeedbackDisabled;
+ (BOOL)isUserStudy;
+ (float)floatForUserDefaultsKey:(id)a3;
+ (id)objectForKey:(id)a3;
+ (int64_t)integerForUserDefaultsKey:(id)a3;
+ (void)isFpEnrollHapticFeedbackDisabled;
+ (void)isUserStudy;
+ (void)setInteger:(int64_t)a3 forUserDefaultsKey:(id)a4;
+ (void)synchronize;
@end

@implementation BKUIBundleSettings

+ (void)synchronize
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[BKUIBundleSettings synchronize];
  }

  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF030];
  CFPreferencesSynchronize(@"com.apple.biometrickitui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  CFPreferencesSynchronize(@"com.apple.biometrickitd", v2, v3);
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v4 synchronize];
}

+ (BOOL)isFpEnrollHapticFeedbackDisabled
{
  v2 = CFPreferencesCopyAppValue(@"enableEnrollVibe", @"com.apple.biometrickitd");
  if (v2)
  {
    v3 = v2;
    v4 = CFBooleanGetValue(v2) == 0;
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[BKUIBundleSettings isFpEnrollHapticFeedbackDisabled];
  }

  return v4;
}

+ (BOOL)isUserStudy
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"userStudy"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[BKUIBundleSettings isUserStudy];
  }

  return v3;
}

+ (void)setInteger:(int64_t)a3 forUserDefaultsKey:(id)a4
{
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[BKUIBundleSettings setInteger:forUserDefaultsKey:];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [a1 setObject:v7 forKey:v6];

  [a1 synchronize];
}

+ (BOOL)BOOLForUserDefaultsKey:(id)a3
{
  v4 = a3;
  v5 = [a1 objectForKey:v4];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[BKUIBundleSettings BOOLForUserDefaultsKey:];
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [v5 BOOLValue];
LABEL_6:

  return v6;
}

+ (int64_t)integerForUserDefaultsKey:(id)a3
{
  v4 = a3;
  v5 = [a1 objectForKey:v4];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[BKUIBundleSettings integerForUserDefaultsKey:];
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [v5 integerValue];
LABEL_6:

  return v6;
}

+ (float)floatForUserDefaultsKey:(id)a3
{
  v4 = a3;
  v5 = [a1 objectForKey:v4];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[BKUIBundleSettings floatForUserDefaultsKey:];
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0.0;
    goto LABEL_6;
  }

  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v5 floatValue];
  v7 = v6;
LABEL_6:

  return v7;
}

+ (id)objectForKey:(id)a3
{
  v3 = CFPreferencesCopyValue(a3, @"com.apple.biometrickitui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);

  return v3;
}

+ (void)isFpEnrollHapticFeedbackDisabled
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)isUserStudy
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)setBool:forUserDefaultsKey:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)setInteger:forUserDefaultsKey:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)BOOLForUserDefaultsKey:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)integerForUserDefaultsKey:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)floatForUserDefaultsKey:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end