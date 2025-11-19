@interface CalEntitlementsVerifier
+ (BOOL)currentProcessCanAccessProcedureOrEmailAlarms;
+ (BOOL)currentProcessHasBooleanEntitlement:(id)a3;
+ (BOOL)currentProcessIsAutomator;
+ (BOOL)currentProcessIsFirstPartyApp;
+ (BOOL)currentProcessIsPreferences;
+ (BOOL)currentProcessIsShortcuts;
+ (id)_currentProcessValueForEntitlement:(id)a3 loadBlock:(id)a4;
@end

@implementation CalEntitlementsVerifier

+ (BOOL)currentProcessHasBooleanEntitlement:(id)a3
{
  v3 = [a1 _currentProcessValueForEntitlement:a3 loadBlock:&__block_literal_global_24];
  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t __63__CalEntitlementsVerifier_currentProcessHasBooleanEntitlement___block_invoke(int a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    v5 = v4 == CFBooleanGetTypeID() && CFBooleanGetValue(cf) != 0;
    v2 = vars8;
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x1E696AD98];

  return [v6 numberWithBool:v5];
}

id __62__CalEntitlementsVerifier_currentProcessGetStringEntitlement___block_invoke(int a1, void *cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      v5 = cf;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __70__CalEntitlementsVerifier_currentProcessGetArrayOfStringsEntitlement___block_invoke(int a1, void *cf)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  v3 = CFGetTypeID(cf);
  if (v3 != CFArrayGetTypeID())
  {
    v13 = CFGetTypeID(cf);
    if (v13 == CFStringGetTypeID())
    {
      v20 = cf;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v4 = cf;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 addObject:{v11, v16}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
LABEL_16:
  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)_currentProcessValueForEntitlement:(id)a3 loadBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  os_unfair_lock_lock(&_currentProcessValueForEntitlement_loadBlock__lock);
  v7 = [_currentProcessValueForEntitlement_loadBlock__s_cache objectForKey:v5];
  if (!v7)
  {
    v8 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
    error = 0;
    v9 = SecTaskCopyValueForEntitlement(v8, v5, &error);
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = error == 0;
    }

    if (!v10)
    {
      v11 = +[CalFoundationLogSubsystem defaultCategory];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(CalEntitlementsVerifier *)v5 _currentProcessValueForEntitlement:v11 loadBlock:?];
      }
    }

    v7 = v6[2](v6, v9);
    if (v9)
    {
      CFRelease(v9);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (!v7)
    {
      v7 = [MEMORY[0x1E695DFB0] null];
    }

    v12 = _currentProcessValueForEntitlement_loadBlock__s_cache;
    if (!_currentProcessValueForEntitlement_loadBlock__s_cache)
    {
      v13 = objc_opt_new();
      v14 = _currentProcessValueForEntitlement_loadBlock__s_cache;
      _currentProcessValueForEntitlement_loadBlock__s_cache = v13;

      v12 = _currentProcessValueForEntitlement_loadBlock__s_cache;
    }

    [v12 setObject:v7 forKey:v5];
  }

  os_unfair_lock_unlock(&_currentProcessValueForEntitlement_loadBlock__lock);
  v15 = [MEMORY[0x1E695DFB0] null];
  if (v7 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v7;
  }

  v17 = v16;

  return v16;
}

+ (BOOL)currentProcessIsPreferences
{
  v2 = [a1 currentProcessGetStringEntitlement:@"application-identifier"];
  v3 = [v2 isEqualToString:@"com.apple.Preferences"];

  return v3;
}

+ (BOOL)currentProcessIsAutomator
{
  v2 = [a1 currentProcessGetStringEntitlement:@"com.apple.application-identifier"];
  v3 = [v2 isEqualToString:@"com.apple.Automator"];

  return v3;
}

+ (BOOL)currentProcessIsShortcuts
{
  v2 = [a1 currentProcessGetStringEntitlement:@"com.apple.application-identifier"];
  v3 = [v2 isEqualToString:@"com.apple.shortcuts"];

  return v3;
}

+ (BOOL)currentProcessCanAccessProcedureOrEmailAlarms
{
  if ([a1 currentProcessIsAutomator] & 1) != 0 || (objc_msgSend(a1, "currentProcessIsShortcuts") & 1) != 0 || (objc_msgSend(a1, "currentProcessIsFirstPartyCalendarApp") & 1) != 0 || (objc_msgSend(a1, "currentProcessIsCalendarDaemon") & 1) != 0 || (objc_msgSend(a1, "currentProcessHasSyncClientEntitlement"))
  {
    return 1;
  }

  return [a1 currentProcessHasTestingEntitlement];
}

+ (BOOL)currentProcessIsFirstPartyApp
{
  v3 = [a1 currentProcessGetArrayOfStringsEntitlement:@"com.apple.private.tcc.allow"];
  if ([v3 containsObject:@"kTCCServiceCalendar"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [a1 currentProcessGetArrayOfStringsEntitlement:@"com.apple.private.tcc.allow.overridable"];
    if ([v5 containsObject:@"kTCCServiceCalendar"])
    {
      v4 = 1;
    }

    else
    {
      v6 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
      v7 = [v6 teamIdentifier];
      v8 = v7;
      if (v7)
      {
        if ([v7 isEqualToString:@"0000000000"])
        {
          v4 = 1;
        }

        else
        {
          v4 = [v8 isEqualToString:@"ZL6BUSYGB3"];
        }
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

+ (void)_currentProcessValueForEntitlement:(os_log_t)log loadBlock:.cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_1B990D000, log, OS_LOG_TYPE_ERROR, "An error occurred while checking to see if the current process has entitlement %@. %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end