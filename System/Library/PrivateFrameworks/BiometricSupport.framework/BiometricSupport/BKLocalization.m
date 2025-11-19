@interface BKLocalization
+ (id)getLocalizedString:(id)a3;
+ (id)getLocalizedString:(id)a3 fromFile:(id)a4;
+ (id)getLocalizedString:(id)a3 fromStringTable:(id)a4 withBundle:(id)a5;
+ (id)getLocalizedStringOrNil:(id)a3 fromStringTable:(id)a4 withBundle:(id)a5;
+ (void)reportLocalizationABC;
@end

@implementation BKLocalization

+ (id)getLocalizedString:(id)a3
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 bundleWithPath:@"/System/Library/PrivateFrameworks/BiometricSupport.framework"];
  v7 = [a1 getLocalizedString:v5 fromStringTable:@"biometrickitd" withBundle:v6];

  return v7;
}

+ (id)getLocalizedString:(id)a3 fromFile:(id)a4
{
  v6 = MEMORY[0x277CCA8D8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 bundleWithPath:@"/System/Library/PrivateFrameworks/BiometricSupport.framework"];
  v10 = [a1 getLocalizedString:v8 fromStringTable:v7 withBundle:v9];

  return v10;
}

+ (void)reportLocalizationABC
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)getLocalizedString:(id)a3 fromStringTable:(id)a4 withBundle:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 getLocalizedStringOrNil:v8 fromStringTable:v9 withBundle:v10];
  v12 = v11;
  if (!v11 || [v11 isEqualToString:v8])
  {
    v13 = [v10 pathForResource:v9 ofType:@"loctable"];
    v14 = MEMORY[0x277D86220];
    if (__osLog)
    {
      v15 = __osLog;
    }

    else
    {
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = MEMORY[0x277CCAA00];
      v17 = v15;
      v18 = [v16 defaultManager];
      v26 = 138412546;
      v27 = v13;
      v28 = 1024;
      LODWORD(v29) = [v18 fileExistsAtPath:v13];
      _os_log_impl(&dword_223E00000, v17, OS_LOG_TYPE_DEFAULT, "BKLocalization Loctable path='%@' exists=%d\n", &v26, 0x12u);
    }

    v19 = [v10 localizedStringForKey:v8 value:0 table:v9 localization:@"en"];

    if (__osLog)
    {
      v20 = __osLog;
    }

    else
    {
      v20 = v14;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v19;
      v22 = v20;
      v23 = [v19 UTF8String];
      v26 = 138412546;
      v27 = v8;
      v28 = 2080;
      v29 = v23;
      _os_log_impl(&dword_223E00000, v22, OS_LOG_TYPE_DEFAULT, "BKLocalization fallback to en: %@ => %s\n", &v26, 0x16u);
    }

    if (!v19)
    {
      v19 = v8;
    }

    [a1 reportLocalizationABC];

    v12 = v19;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)getLocalizedStringOrNil:(id)a3 fromStringTable:(id)a4 withBundle:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x277CBF008], @"mobile", *MEMORY[0x277CBF010]);
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![v10 count])
        {
          v11 = (__osLog ? __osLog : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEFAULT, "BKLocalization getLocalizedStringOrNil: languagePreferences are empty\n", buf, 2u);
          }
        }

        v12 = MEMORY[0x277CCA8D8];
        v13 = [v9 localizations];
        v14 = [v12 preferredLocalizationsFromArray:v13 forPreferences:v10];

        if (__osLog)
        {
          v15 = __osLog;
        }

        else
        {
          v15 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          v17 = [v14 count];
          *buf = 67109378;
          *v41 = v17;
          *&v41[4] = 2112;
          *&v41[6] = v14;
          _os_log_impl(&dword_223E00000, v16, OS_LOG_TYPE_DEFAULT, "BKLocalization preferred Localizations total: %d contents %@\n", buf, 0x12u);
        }

        v35 = v10;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v18 = v14;
        v19 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v37;
LABEL_17:
          v22 = 0;
          while (1)
          {
            if (*v37 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v36 + 1) + 8 * v22);
            v24 = [v9 localizedStringForKey:v7 value:0 table:v8 localization:v23];
            if (__osLog)
            {
              v25 = __osLog;
            }

            else
            {
              v25 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = v23;
              v27 = v25;
              v28 = [v23 UTF8String];
              v29 = [v24 UTF8String];
              *buf = 136315650;
              *v41 = v28;
              *&v41[8] = 2112;
              *&v41[10] = v7;
              v42 = 2080;
              v43 = v29;
              _os_log_impl(&dword_223E00000, v27, OS_LOG_TYPE_DEFAULT, "BKLocalization [%s] %@ => %s\n", buf, 0x20u);
            }

            if (v24)
            {
              break;
            }

            if (v20 == ++v22)
            {
              v20 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
              if (v20)
              {
                goto LABEL_17;
              }

              goto LABEL_28;
            }
          }
        }

        else
        {
LABEL_28:
          v24 = 0;
        }

        v10 = v35;
        goto LABEL_48;
      }

      if (__osLog)
      {
        v31 = __osLog;
      }

      else
      {
        v31 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
LABEL_47:
        v24 = 0;
LABEL_48:

        goto LABEL_49;
      }

      *buf = 0;
      v32 = "BKLocalization languagePreferences are not kind of NSArray\n";
    }

    else
    {
      if (__osLog)
      {
        v31 = __osLog;
      }

      else
      {
        v31 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      *buf = 0;
      v32 = "BKLocalization languagePreferences are not available\n";
    }

    _os_log_impl(&dword_223E00000, v31, OS_LOG_TYPE_ERROR, v32, buf, 2u);
    goto LABEL_47;
  }

  if (__osLog)
  {
    v30 = __osLog;
  }

  else
  {
    v30 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v30, OS_LOG_TYPE_ERROR, "BKLocalization getLocalizedStringOrNil: bundle is nil\n", buf, 2u);
  }

  v24 = 0;
LABEL_49:

  v33 = *MEMORY[0x277D85DE8];

  return v24;
}

@end