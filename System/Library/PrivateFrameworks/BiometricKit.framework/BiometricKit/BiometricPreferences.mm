@interface BiometricPreferences
+ (BOOL)setPreferenceValue:(id)a3 forKey:(id)a4;
+ (id)preferenceValueOfClass:(Class)a3 forKey:(id)a4;
@end

@implementation BiometricPreferences

+ (id)preferenceValueOfClass:(Class)a3 forKey:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:@"/Library/Managed Preferences/mobile/com.apple.biometrickitd.plist"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:v4];
    if (objc_opt_isKindOfClass())
    {
      if (v7)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }
  }

  v8 = CFPreferencesCopyValue(v4, @"com.apple.biometrickitd", *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E8B0]);
  if (v8)
  {
    v7 = v8;
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_22;
    }

    if (__osLog)
    {
      v9 = __osLog;
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 136316162;
      v14 = "0";
      v15 = 2048;
      v16 = 0;
      v17 = 2080;
      v18 = &unk_1C82F52EE;
      v19 = 2080;
      v20 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BiometricSupportTools.m";
      v21 = 1024;
      v22 = 1032;
      _os_log_impl(&dword_1C82AD000, v9, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v13, 0x30u);
    }

    CFRelease(v7);
  }

  v7 = CFPreferencesCopyValue(v4, @"com.apple.biometrickitd", @"mobile", *MEMORY[0x1E695E898]);
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (__osLog)
    {
      v10 = __osLog;
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136316162;
      v14 = "0";
      v15 = 2048;
      v16 = 0;
      v17 = 2080;
      v18 = &unk_1C82F52EE;
      v19 = 2080;
      v20 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BiometricSupportTools.m";
      v21 = 1024;
      v22 = 1050;
      _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v13, 0x30u);
    }

    CFRelease(v7);
    v7 = 0;
  }

LABEL_22:

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (BOOL)setPreferenceValue:(id)a3 forKey:(id)a4
{
  v4 = *MEMORY[0x1E695E8A0];
  v5 = *MEMORY[0x1E695E8B0];
  CFPreferencesSetValue(a4, a3, @"com.apple.biometrickitd", *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E8B0]);
  return CFPreferencesSynchronize(@"com.apple.biometrickitd", v4, v5) != 0;
}

@end