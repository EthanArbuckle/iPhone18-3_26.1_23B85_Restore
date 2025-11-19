@interface HTPrefs
+ (id)sharedPrefs;
- (BOOL)BOOLProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4;
- (BOOL)shouldUpdateHangsHUD;
- (HTPrefInit)prefInitList;
- (NSArray)prefContextPrefixPriorityOrder;
- (double)doubleProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4;
- (id)objectProperty:(HTPrefInit *)a3 matchingSelector:(SEL)a4 contextPrefixOut:(id *)a5;
- (id)prefNamed:(__CFString *)a3 domain:(__CFString *)a4 profile:(id)a5 matchingSelector:(SEL)a6 contextPrefixOut:(id *)a7;
- (id)stringProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4;
- (int)intProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4;
- (unint64_t)unsignedLongLongProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4;
- (unint64_t)unsignedLongProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4;
- (unsigned)unsignedIntProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4;
- (void)__createInternalSettings;
- (void)_removeAllPrefs;
- (void)dealloc;
- (void)earlyInitNecessaryPrefs;
- (void)initBoolProperty:(HTPrefInit *)a3;
- (void)initDoubleProperty:(HTPrefInit *)a3;
- (void)initIntProperty:(HTPrefInit *)a3;
- (void)initNSObjectProperty:(HTPrefInit *)a3;
- (void)initNSStringProperty:(HTPrefInit *)a3;
- (void)initPropertyHangtracerDaemonEnabled:(HTPrefInit *)a3;
- (void)initPropertyHaveInternalSettings:(HTPrefInit *)a3;
- (void)initPropertyIsInternal:(HTPrefInit *)a3;
- (void)initPropertyReportPeriod:(HTPrefInit *)a3;
- (void)initPropertyShouldSaveAndCompressTailspins:(HTPrefInit *)a3;
- (void)initPropertyThirdPartyDevPreferredLanguages:(HTPrefInit *)a3;
- (void)initUnsignedIntProperty:(HTPrefInit *)a3;
- (void)initUnsignedLongLongProperty:(HTPrefInit *)a3;
- (void)initUnsignedLongProperty:(HTPrefInit *)a3;
- (void)refreshHTPrefs;
- (void)setupPrefsWithQueue:(id)a3;
- (void)setupPrefsWithQueue:(id)a3 profilePath:(id)a4 taskingDomainName:(__CFString *)a5 hangtracerDomain:(__CFString *)a6 setupInternalPrefs:(BOOL)a7;
@end

@implementation HTPrefs

- (NSArray)prefContextPrefixPriorityOrder
{
  if (qword_10001A168 != -1)
  {
    sub_1000084C8();
  }

  v3 = qword_10001A170;

  return v3;
}

- (id)prefNamed:(__CFString *)a3 domain:(__CFString *)a4 profile:(id)a5 matchingSelector:(SEL)a6 contextPrefixOut:(id *)a7
{
  v25 = a5;
  v27 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(HTPrefs *)self prefContextPrefixPriorityOrder];
  v10 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = [(__CFString *)v14 isEqualToString:&stru_100014AD8];
        if (v15)
        {
          v16 = v27;
        }

        else
        {
          v16 = [NSString stringWithFormat:@"%@.%@", v14, v27];
        }

        v17 = v16;
        if ([(__CFString *)v14 isEqualToString:@"HTProfile"])
        {
          v18 = [v25 objectForKeyedSubscript:v17];
        }

        else
        {
          v18 = CFPreferencesCopyValue(v17, a4, @"mobile", kCFPreferencesAnyHost);
        }

        v19 = v18;
        if (v18 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v20 = shared_ht_log_handle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v23 = @"<base context>";
            *buf = 138412802;
            if (!v15)
            {
              v23 = v14;
            }

            v33 = v23;
            v34 = 2112;
            v35 = v27;
            v36 = 2112;
            v37 = v19;
            _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "HTPrefs: Overriden by %@: %@ = %@", buf, 0x20u);
          }

          if (a7)
          {
            v21 = v14;
            *a7 = v14;
          }

          goto LABEL_25;
        }

        if (a7)
        {
          *a7 = 0;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  obj = shared_ht_log_handle();
  if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
  {
    sub_1000084DC();
  }

  v19 = 0;
LABEL_25:

  return v19;
}

- (BOOL)BOOLProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4
{
  v4 = 16;
  if (!self->_isInternal)
  {
    v4 = 24;
  }

  v5 = *(&a3->var0 + v4);
  v6 = [(HTPrefs *)self prefNamed:a3->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:"BOOLValue" contextPrefixOut:a4];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 BOOLValue];
  }

  return v5 & 1;
}

- (int)intProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4
{
  v5 = 24;
  if (self->_isInternal)
  {
    v5 = 16;
  }

  v6 = *(&a3->var0 + v5);
  v7 = [(HTPrefs *)self prefNamed:a3->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:"intValue" contextPrefixOut:a4];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = [v7 intValue];
  v9 = v8;
  if ((a3->var4 & 1) != 0 && !v8)
  {
    v10 = shared_ht_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      var0 = a3->var0;
      var4 = a3->var4;
      v14 = 138412802;
      v15 = var0;
      v16 = 2048;
      v17 = var4;
      v18 = 1024;
      v19 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HTPrefs: %@ failed policy check (%lu) for value %d", &v14, 0x1Cu);
    }

LABEL_9:
    v9 = v6;
  }

  return v9;
}

- (unsigned)unsignedIntProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4
{
  v5 = 24;
  if (self->_isInternal)
  {
    v5 = 16;
  }

  v6 = *(&a3->var0 + v5);
  v7 = [(HTPrefs *)self prefNamed:a3->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:"unsignedIntValue" contextPrefixOut:a4];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = [v7 unsignedIntValue];
  v9 = v8;
  if ((a3->var4 & 1) != 0 && !v8)
  {
    v10 = shared_ht_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      var0 = a3->var0;
      var4 = a3->var4;
      v14 = 138412802;
      v15 = var0;
      v16 = 2048;
      v17 = var4;
      v18 = 1024;
      v19 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HTPrefs: %@ failed policy check (%lu) for value %u", &v14, 0x1Cu);
    }

LABEL_9:
    v9 = v6;
  }

  return v9;
}

- (unint64_t)unsignedLongProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4
{
  v5 = 24;
  if (self->_isInternal)
  {
    v5 = 16;
  }

  v6 = *(&a3->var0 + v5);
  v7 = [(HTPrefs *)self prefNamed:a3->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:"unsignedLongValue" contextPrefixOut:a4];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = [v7 unsignedLongValue];
  v9 = v8;
  if ((a3->var4 & 1) != 0 && !v8)
  {
    v10 = shared_ht_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      var0 = a3->var0;
      var4 = a3->var4;
      v14 = 138412802;
      v15 = var0;
      v16 = 2048;
      v17 = var4;
      v18 = 2048;
      v19 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HTPrefs: %@ failed policy check (%lu) for value %lu", &v14, 0x20u);
    }

LABEL_9:
    v9 = v6;
  }

  return v9;
}

- (unint64_t)unsignedLongLongProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4
{
  v5 = 24;
  if (self->_isInternal)
  {
    v5 = 16;
  }

  v6 = *(&a3->var0 + v5);
  v7 = [(HTPrefs *)self prefNamed:a3->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:"unsignedLongLongValue" contextPrefixOut:a4];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = [v7 unsignedLongLongValue];
  v9 = v8;
  if ((a3->var4 & 1) != 0 && !v8)
  {
    v10 = shared_ht_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      var0 = a3->var0;
      var4 = a3->var4;
      v14 = 138412802;
      v15 = var0;
      v16 = 2048;
      v17 = var4;
      v18 = 2048;
      v19 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HTPrefs: %@ failed policy check (%lu) for value %llu", &v14, 0x20u);
    }

LABEL_9:
    v9 = v6;
  }

  return v9;
}

- (double)doubleProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4
{
  v5 = 24;
  if (self->_isInternal)
  {
    v5 = 16;
  }

  v6 = *(&a3->var0 + v5);
  v7 = [(HTPrefs *)self prefNamed:a3->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:"doubleValue" contextPrefixOut:a4];
  if (objc_opt_respondsToSelector())
  {
    [v7 doubleValue];
    v9 = v8;
    if ((a3->var4 & 2) != 0 && v8 < v6)
    {
      v10 = shared_ht_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        var0 = a3->var0;
        var4 = a3->var4;
        v14 = 138412802;
        v15 = var0;
        v16 = 2048;
        v17 = var4;
        v18 = 2048;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HTPrefs: %@ failed policy check (%lu) for value %f", &v14, 0x20u);
      }
    }

    else
    {
      v6 = v8;
    }
  }

  return v6;
}

- (id)stringProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4
{
  v7 = 24;
  if (self->_isInternal)
  {
    v7 = 16;
  }

  v8 = *(&a3->var0 + v7);
  v9 = [(HTPrefs *)self prefNamed:a3->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:"isEqualToString:" contextPrefixOut:a4];
  v10 = v9;
  if (v9)
  {
    if ((a3->var4 & 4) != 0 && ![v9 length])
    {
      v13 = shared_ht_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        var0 = a3->var0;
        var4 = a3->var4;
        v16 = 138412802;
        v17 = var0;
        v18 = 2048;
        v19 = var4;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "HTPrefs: %@ failed policy check (%lu) for value %@", &v16, 0x20u);
      }
    }

    else
    {
      v11 = v10;

      v8 = v11;
    }
  }

  return v8;
}

- (id)objectProperty:(HTPrefInit *)a3 matchingSelector:(SEL)a4 contextPrefixOut:(id *)a5
{
  v9 = 24;
  if (self->_isInternal)
  {
    v9 = 16;
  }

  v10 = *(&a3->var0 + v9);
  v11 = [(HTPrefs *)self prefNamed:a3->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:a4 contextPrefixOut:a5];
  v12 = v11;
  if (v11)
  {
    v13 = v11;

    v10 = v13;
  }

  return v10;
}

- (void)initBoolProperty:(HTPrefInit *)a3
{
  v5 = *a3->var1;
  v6 = [HTPrefs BOOLProperty:"BOOLProperty:contextPrefixOut:" contextPrefixOut:?];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = shared_ht_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v10 = 138412802;
      v11 = var0;
      v12 = 1024;
      v13 = v5;
      v14 = 1024;
      v15 = v7;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %{BOOL}d -> %{BOOL}d", &v10, 0x18u);
    }

    *a3->var1 = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initIntProperty:(HTPrefInit *)a3
{
  v5 = *a3->var1;
  v6 = [HTPrefs intProperty:"intProperty:contextPrefixOut:" contextPrefixOut:?];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = shared_ht_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v10 = 138412802;
      v11 = var0;
      v12 = 1024;
      v13 = v5;
      v14 = 1024;
      v15 = v7;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %d -> %d", &v10, 0x18u);
    }

    *a3->var1 = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initUnsignedIntProperty:(HTPrefInit *)a3
{
  v5 = *a3->var1;
  v6 = [HTPrefs unsignedIntProperty:"unsignedIntProperty:contextPrefixOut:" contextPrefixOut:?];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = shared_ht_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v10 = 138412802;
      v11 = var0;
      v12 = 1024;
      v13 = v5;
      v14 = 1024;
      v15 = v7;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %u -> %u", &v10, 0x18u);
    }

    *a3->var1 = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initUnsignedLongProperty:(HTPrefInit *)a3
{
  v5 = *a3->var1;
  v6 = [HTPrefs unsignedLongProperty:"unsignedLongProperty:contextPrefixOut:" contextPrefixOut:?];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = shared_ht_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v10 = 138412802;
      v11 = var0;
      v12 = 2048;
      v13 = v5;
      v14 = 2048;
      v15 = v7;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %lu -> %lu", &v10, 0x20u);
    }

    *a3->var1 = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initUnsignedLongLongProperty:(HTPrefInit *)a3
{
  v5 = *a3->var1;
  v6 = [HTPrefs unsignedLongProperty:"unsignedLongProperty:contextPrefixOut:" contextPrefixOut:?];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = shared_ht_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v10 = 138412802;
      v11 = var0;
      v12 = 2048;
      v13 = v5;
      v14 = 2048;
      v15 = v7;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %llu -> %llu", &v10, 0x20u);
    }

    *a3->var1 = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initDoubleProperty:(HTPrefInit *)a3
{
  v5 = *a3->var1;
  [HTPrefs doubleProperty:"doubleProperty:contextPrefixOut:" contextPrefixOut:?];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = shared_ht_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v10 = 138412802;
      v11 = var0;
      v12 = 2048;
      v13 = v5;
      v14 = 2048;
      v15 = v7;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %f -> %f", &v10, 0x20u);
    }

    *a3->var1 = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initNSStringProperty:(HTPrefInit *)a3
{
  v5 = *a3->var1;
  v6 = [(HTPrefs *)self stringProperty:a3 contextPrefixOut:0];
  if (([v6 isEqualToString:v5] & 1) == 0)
  {
    v7 = shared_ht_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v12 = 138412802;
      v13 = var0;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %@ -> %@", &v12, 0x20u);
    }

    v8 = [(HTPrefs *)self stringProperty:a3 contextPrefixOut:0];
    var1 = a3->var1;
    v10 = *var1;
    *var1 = v8;

    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initNSObjectProperty:(HTPrefInit *)a3
{
  v5 = *a3->var1;
  v6 = [(HTPrefs *)self objectProperty:a3 matchingSelector:"isEqual:" contextPrefixOut:0];
  v7 = v6;
  if ((v5 == 0) == (v6 != 0) || (v5 ? (v8 = v6 == 0) : (v8 = 1), !v8 && ([v5 isEqual:v6] & 1) == 0))
  {
    v9 = shared_ht_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v14 = 138412802;
      v15 = var0;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v7;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %@ -> %@", &v14, 0x20u);
    }

    v10 = [(HTPrefs *)self objectProperty:a3 matchingSelector:"isEqual:" contextPrefixOut:0];
    var1 = a3->var1;
    v12 = *var1;
    *var1 = v10;

    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initPropertyHangtracerDaemonEnabled:(HTPrefInit *)a3
{
  hangtracerDaemonEnabled = self->_hangtracerDaemonEnabled;
  v13 = 0;
  v6 = [(HTPrefs *)self BOOLProperty:a3 contextPrefixOut:&v13];
  v7 = v13;
  v8 = v13;
  v9 = self->_enablementPrefix;
  if (![(NSString *)v9 isEqualToString:v8])
  {
    objc_storeStrong(&self->_enablementPrefix, v7);
    v10 = shared_ht_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10000855C(v9, &self->_enablementPrefix);
    }
  }

  if (hangtracerDaemonEnabled != v6)
  {
    self->_hangtracerDaemonEnabled = v6;
    v11 = shared_ht_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      *buf = 138412802;
      v15 = var0;
      v16 = 1024;
      v17 = hangtracerDaemonEnabled;
      v18 = 1024;
      v19 = v6;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %{BOOL}d -> %{BOOL}d", buf, 0x18u);
    }

    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initPropertyIsInternal:(HTPrefInit *)a3
{
  isInternalNoOverride = self->__isInternalNoOverride;
  v5 = MGGetBoolAnswer();
  if (isInternalNoOverride != v5)
  {
    v6 = v5;
    v7 = shared_ht_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000085F0();
    }

    self->__isInternalNoOverride = v6;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }

  v8 = !self->_customerModeEnabled && self->__isInternalNoOverride;
  v9 = v8;
  if (self->_isInternal != v8)
  {
    v10 = shared_ht_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100008694();
    }

    self->_isInternal = v9;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initPropertyShouldSaveAndCompressTailspins:(HTPrefInit *)a3
{
  shouldSaveTailspins = self->_shouldSaveTailspins;
  shouldCompressSavedTailspins = self->_shouldCompressSavedTailspins;
  tailspinSaveFormat = self->_tailspinSaveFormat;
  if (!tailspinSaveFormat)
  {
    v8 = 0;
    keepTailspinsLegacy = self->_keepTailspinsLegacy;
    goto LABEL_9;
  }

  isInternal = self->_isInternal;
  if ([(NSString *)tailspinSaveFormat isEqualToString:@"compressed"])
  {
    v8 = 1;
LABEL_7:
    keepTailspinsLegacy = 1;
    goto LABEL_9;
  }

  if ([(NSString *)self->_tailspinSaveFormat isEqualToString:@"uncompressed"])
  {
    v8 = 0;
    goto LABEL_7;
  }

  v8 = ![(NSString *)self->_tailspinSaveFormat isEqualToString:@"none"]&& isInternal;
  keepTailspinsLegacy = v8;
LABEL_9:
  v10 = self->_savedTailspinMaxMB != 0;
  v11 = v10 & v8;
  v12 = v10 && keepTailspinsLegacy;
  if (shouldSaveTailspins != (v10 && keepTailspinsLegacy))
  {
    v13 = shared_ht_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100008738();
    }

    self->_shouldSaveTailspins = v12;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }

  if (shouldCompressSavedTailspins != v11)
  {
    v14 = shared_ht_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1000087DC();
    }

    self->_shouldCompressSavedTailspins = v11;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initPropertyReportPeriod:(HTPrefInit *)a3
{
  reportPeriodMATU = self->_reportPeriodMATU;
  [(HTPrefs *)self doubleProperty:a3 contextPrefixOut:0];
  v7 = v6 * 1000.0 / timebaseConversionFactor();
  if (v7 != reportPeriodMATU)
  {
    v8 = shared_ht_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v10 = 138412802;
      v11 = var0;
      v12 = 2048;
      v13 = reportPeriodMATU;
      v14 = 2048;
      v15 = v7;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %f -> %f", &v10, 0x20u);
    }

    self->_reportPeriodMATU = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initPropertyHaveInternalSettings:(HTPrefInit *)a3
{
  v5 = CFPreferencesCopyValue(@"HangTracerInternalSettingCreated", self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
  hasInternalSettings = self->_hasInternalSettings;
  v7 = v5 != 0;
  if (hasInternalSettings != v7)
  {
    v8 = shared_ht_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v10 = 138412802;
      v11 = var0;
      v12 = 1024;
      v13 = hasInternalSettings;
      v14 = 1024;
      v15 = v5 != 0;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %{BOOL}d -> %{BOOL}d", &v10, 0x18u);
    }

    self->_hasInternalSettings = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initPropertyThirdPartyDevPreferredLanguages:(HTPrefInit *)a3
{
  v5 = self->_thirdPartyDevPreferredLanguages;
  v6 = CFPreferencesCopyValue(@"AppleLanguages", kCFPreferencesAnyApplication, @"mobile", kCFPreferencesAnyHost);
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = +[NSLocale preferredLanguages];
  }

  v8 = v7;
  if (![(NSArray *)v5 isEqualToArray:v7])
  {
    v9 = shared_ht_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v11 = 138412802;
      v12 = var0;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v8;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %@ -> %@", &v11, 0x20u);
    }

    objc_storeStrong(&self->_thirdPartyDevPreferredLanguages, v8);
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

+ (id)sharedPrefs
{
  if (qword_10001A180 != -1)
  {
    sub_100008880();
  }

  v3 = qword_10001A178;

  return v3;
}

- (void)dealloc
{
  prefInitList = self->_prefInitList;
  if (prefInitList)
  {
    free(prefInitList);
  }

  v4.receiver = self;
  v4.super_class = HTPrefs;
  [(HTPrefs *)&v4 dealloc];
}

- (HTPrefInit)prefInitList
{
  result = self->_prefInitList;
  if (!result)
  {
    v4 = shared_ht_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100008894(v4);
    }

    v18 = +[NSDate distantFuture];
    [v18 timeIntervalSinceReferenceDate];
    v6 = v5;
    v17 = +[NSDate distantFuture];
    [v17 timeIntervalSinceReferenceDate];
    v8 = v7;
    v91 = 0u;
    HIBYTE(v91) = 0;

    result = malloc_type_malloc(0x1020uLL, 0x5FA256FFuLL);
    result[71].var0 = @"PDSEPrefWorkflowResponsivenessPeriodDays";
    result[71].var1 = &self->_pdseWorkflowResponsivenessPeriodDays;
    result[72].var0 = @"HangTracerCollectOSSignpostsDeferred";
    result[72].var1 = &self->_shouldAugmentSentryTailspinWithSignposts;
    result[73].var0 = @"PDSEPrefHTBadDayKillSwitch";
    result->var0 = @"HangTracerEnableTailspin";
    result->var1 = &self->_htTailspinEnabled;
    result[73].var1 = &self->_pdseHTBadDayKillSwitch;
    result[74].var0 = @"PDSEPrefAllowEnableTailspin";
    result[74].var1 = &self->_pdseAllowEnableTailspin;
    result[75].var0 = @"BadDaySecondsBetweenLastEnablementAndReferenceDate";
    result[1].var0 = @"HangTracerEnableHUD";
    result[1].var1 = &self->_hudEnabled;
    result[75].var1 = &self->_badDaySecondsBetweenLastEnablementAndReferenceDate;
    result[76].var0 = @"BadDayEnablementMinimumBreakDurationDays";
    result[76].var1 = &self->_badDayEnablementMinimumBreakDurationDays;
    result[77].var0 = @"BadDayEnablementDurationDaysKey";
    result[2].var0 = @"HangTracerCollectOSSignposts";
    result[2].var1 = &self->_shouldCollectOSSignposts;
    result[77].var1 = &self->_badDayEnablementDurationDays;
    result[78].var0 = @"BadDayEnablementForHangDurationMSec";
    result[78].var1 = &self->_badDayEnablementForHangDurationMSec;
    result[79].var0 = @"BadDayEnablementForLogCount";
    result[3].var0 = @"HangTracerSavedTailspinsMaxMB";
    result[3].var1 = &self->_savedTailspinMaxMB;
    result[79].var1 = &self->_badDayEnablementForLogCount;
    result[80].var0 = @"BadDayEnablementForPreviousDays";
    result[80].var1 = &self->_badDayEnablementForPreviousDays;
    result[81].var0 = @"HangTracerTelemetryHaveNonDefaultFeatureFlags";
    result[4].var0 = @"HangTracerKeepTailspins";
    result[4].var1 = &self->_keepTailspinsLegacy;
    result[81].var1 = &self->_haveNonDefaultFeatureFlags;
    result[82].var0 = @"HangTracerTelemetrySerialLoggingEnabled";
    result[82].var1 = &self->_haveSerialLoggingEnabled;
    result[83].var0 = @"HangTracerTelemetryNumOSCryptexFileExtents";
    result[5].var0 = @"HangTracerKeepTailspinsWithFormat";
    result[5].var1 = &self->_tailspinSaveFormat;
    result[5].var2.var3 = @"compressed";
    result[5].var3.var3 = @"none";
    result[83].var1 = &self->_numOSCryptexFileExtents;
    result[84].var0 = @"HangTracerTelemetryHaveRootsInstalled";
    result[84].var1 = &self->_haveRootsInstalled;
    result[5].var5 = "initNSStringProperty:";
    result[6].var1 = &self->_shouldSaveTailspins;
    HIDWORD(result[6].var2.var3) = *&v86[3];
    *(&result[6].var2.var0 + 1) = *v86;
    HIDWORD(result[6].var3.var3) = *&v85[3];
    *(&result[6].var3.var0 + 1) = *v85;
    HIDWORD(result[7].var2.var3) = *&v84[3];
    *(&result[7].var2.var0 + 1) = *v84;
    HIDWORD(result[7].var3.var3) = *&v83[3];
    *(&result[7].var3.var0 + 1) = *v83;
    HIDWORD(result[8].var2.var3) = *&v82[3];
    *(&result[8].var2.var0 + 1) = *v82;
    HIDWORD(result[8].var3.var3) = *&v81[3];
    *(&result[8].var3.var0 + 1) = *v81;
    HIDWORD(result[9].var2.var3) = *&v80[3];
    *(&result[9].var2.var0 + 1) = *v80;
    HIDWORD(result[9].var3.var3) = *&v79[3];
    *(&result[9].var3.var0 + 1) = *v79;
    HIDWORD(result[10].var2.var3) = *&v78[3];
    *(&result[10].var2.var0 + 1) = *v78;
    HIDWORD(result[10].var3.var3) = *&v77[3];
    *(&result[10].var3.var0 + 1) = *v77;
    *(&result[24].var2.var0 + 1) = *v76;
    *(&result[24].var3.var0 + 1) = *v75;
    *(&result[27].var2.var0 + 1) = *v74;
    *(&result[27].var3.var0 + 1) = *v73;
    HIDWORD(result[29].var2.var3) = *&v72[3];
    *(&result[29].var2.var0 + 1) = *v72;
    HIDWORD(result[29].var3.var3) = *&v71[3];
    *(&result[29].var3.var0 + 1) = *v71;
    *(&result[32].var2.var0 + 1) = *v70;
    *(&result[32].var3.var0 + 1) = *v69;
    HIDWORD(result[33].var2.var3) = *&v68[3];
    *(&result[33].var2.var0 + 1) = *v68;
    HIDWORD(result[33].var3.var3) = *&v67[3];
    *(&result[33].var3.var0 + 1) = *v67;
    *(&result[36].var2.var0 + 1) = *v66;
    *(&result[36].var3.var0 + 1) = *v65;
    HIDWORD(result[37].var2.var3) = *&v64[3];
    *(&result[37].var2.var0 + 1) = *v64;
    HIDWORD(result[37].var3.var3) = *&v63[3];
    *(&result[37].var3.var0 + 1) = *v63;
    HIDWORD(result[40].var2.var3) = *&v62[3];
    *(&result[40].var2.var0 + 1) = *v62;
    HIDWORD(result[40].var3.var3) = *&v61[3];
    *(&result[40].var3.var0 + 1) = *v61;
    *(&result[43].var2.var0 + 1) = *v60;
    *(&result[43].var3.var0 + 1) = *v59;
    HIDWORD(result[44].var2.var3) = *&v58[3];
    *(&result[44].var2.var0 + 1) = *v58;
    HIDWORD(result[44].var3.var3) = *&v57[3];
    *(&result[44].var3.var0 + 1) = *v57;
    HIDWORD(result[45].var2.var3) = *&v56[3];
    *(&result[45].var2.var0 + 1) = *v56;
    *(&result[45].var3.var0 + 1) = *v55;
    HIDWORD(result[48].var2.var3) = *&v54[3];
    *(&result[48].var2.var0 + 1) = *v54;
    HIDWORD(result[48].var3.var3) = *&v53[3];
    *(&result[48].var3.var0 + 1) = *v53;
    HIDWORD(result[49].var2.var3) = *&v52[3];
    *(&result[49].var2.var0 + 1) = *v52;
    HIDWORD(result[49].var3.var3) = *&v51[3];
    *(&result[49].var3.var0 + 1) = *v51;
    HIDWORD(result[50].var2.var3) = *&v50[3];
    *(&result[50].var2.var0 + 1) = *v50;
    HIDWORD(result[50].var3.var3) = *&v49[3];
    *(&result[50].var3.var0 + 1) = *v49;
    HIDWORD(result[51].var2.var3) = *&v48[3];
    *(&result[51].var2.var0 + 1) = *v48;
    HIDWORD(result[51].var3.var3) = *&v47[3];
    *(&result[51].var3.var0 + 1) = *v47;
    HIDWORD(result[52].var2.var3) = *&v46[3];
    *(&result[52].var2.var0 + 1) = *v46;
    HIDWORD(result[52].var3.var3) = *&v45[3];
    *(&result[52].var3.var0 + 1) = *v45;
    HIDWORD(result[53].var2.var3) = *&v44[3];
    *(&result[53].var2.var0 + 1) = *v44;
    HIDWORD(result[53].var3.var3) = *&v43[3];
    *(&result[53].var3.var0 + 1) = *v43;
    HIDWORD(result[54].var2.var3) = *&v42[3];
    *(&result[54].var2.var0 + 1) = *v42;
    HIDWORD(result[54].var3.var3) = *&v41[3];
    *(&result[54].var3.var0 + 1) = *v41;
    HIDWORD(result[56].var2.var3) = *&v40[3];
    *(&result[56].var2.var0 + 1) = *v40;
    HIDWORD(result[56].var3.var3) = *&v39[3];
    *(&result[56].var3.var0 + 1) = *v39;
    *(&result[60].var2.var0 + 1) = *v38;
    *(&result[60].var3.var0 + 1) = *v37;
    HIDWORD(result[61].var2.var3) = *&v36[3];
    *(&result[61].var2.var0 + 1) = *v36;
    HIDWORD(result[61].var3.var3) = *&v35[3];
    *(&result[61].var3.var0 + 1) = *v35;
    HIDWORD(result[62].var2.var3) = *&v34[3];
    *(&result[62].var2.var0 + 1) = *v34;
    *(&result[62].var3.var0 + 1) = *v33;
    *(&result[2].var2.var0 + 1) = *v90;
    HIDWORD(result[2].var2.var3) = *&v90[3];
    *(&result[2].var3.var0 + 1) = *v89;
    HIDWORD(result[2].var3.var3) = *&v89[3];
    result[3].var2.var1 = 50;
    HIDWORD(result[4].var2.var3) = *&v88[3];
    *(&result[4].var2.var0 + 1) = *v88;
    HIDWORD(result[4].var3.var3) = *&v87[3];
    *(&result[4].var3.var0 + 1) = *v87;
    result[6].var5 = "initPropertyShouldSaveAndCompressTailspins:";
    result[7].var0 = @"HangTracerIncludeDiskInfo";
    result[7].var1 = &self->_shouldIncludeDiskInfo;
    result[8].var0 = @"HangTracerEnableDisplayData";
    result[8].var1 = &self->_shouldIncludeDisplayData;
    result[9].var0 = @"HangTracerIncludeNetworkState";
    result[9].var1 = &self->_shouldIncludeNetworkState;
    result[10].var0 = @"HangTracerThirdPartyRunloopLogsEnabled";
    result[10].var1 = &self->_thirdPartyRunLoopHangLogsEnabled;
    result[11].var0 = @"HangTracerSamplingPercentForMicroHangs";
    result[11].var1 = &self->_samplingPercentForMicroHangs;
    result[12].var0 = @"HangTracerPercentFullSpinReports";
    result[12].var1 = &self->_runloopHangPercentHeavyLogs;
    result[13].var0 = @"HangTracerDailyMicroHangLogLimit";
    result[13].var1 = &self->_runLoopMicroHangDailyLogLimit;
    result[14].var0 = @"HangTracerDailyLogLimit";
    result[14].var1 = &self->_runLoopHangDailyLogLimit;
    result[15].var0 = @"HangTracerPerPeriodLogLimit";
    result[15].var1 = &self->_runLoopHangPerPeriodLogLimit;
    result[16].var0 = @"HangTracerDailyLongLogLimit";
    result[16].var1 = &self->_runLoopLongHangDailyLogLimit;
    result[17].var0 = @"HangTracerDailyThirdPartyLogLimit";
    result[17].var1 = &self->_runloopHangThirdPartyDailyLogLimit;
    result[18].var0 = @"HangTracerFenceHangLogLimit";
    result[18].var1 = &self->_fenceHangDailyLogLimit;
    result[19].var0 = @"HangTracerHangTimeoutDuration";
    result[19].var1 = &self->_runloopHangTimeoutDurationMSec;
    v9 = vdupq_n_s64(0x2328uLL);
    result[20].var0 = @"HangTracerDuration";
    result[20].var1 = &self->_runloopHangDurationThresholdMSec;
    result[21].var0 = @"HangTracerLongHangDurationThreshold";
    result[21].var1 = &self->_runloopLongHangDurationThresholdMSec;
    v10 = vdupq_n_s64(0x7D0uLL);
    result[22].var0 = @"HangTracerThirdPartyHangThreshold";
    result[22].var1 = &self->_runloopHangThirdPartyDurationThresholdMSec;
    result[23].var0 = @"HangTracerSpringBoardHangIORegGPUDumpTimeout";
    result[23].var1 = &self->_springBoardHangIORegGPUDumpTimeoutMSec;
    result[24].var0 = @"HangTracerFenceTrackingEnabled";
    result[24].var1 = &self->_fenceTrackingEnabled;
    HIDWORD(result[24].var2.var3) = *&v76[3];
    HIDWORD(result[24].var3.var3) = *&v75[3];
    result[25].var0 = @"HangTracerSlowActPerAppMax";
    result[25].var1 = &self->_slowAppActivationPerAppMaxLogLimit;
    result[26].var0 = @"HangTracerSlowActDailyLogLimit";
    result[26].var1 = &self->_slowAppActivationDailyLogLimit;
    result[27].var0 = @"HangTracerSlowActTailspinsEnabled";
    result[27].var1 = &self->_slowAppActivationTailspinEnabled;
    HIDWORD(result[27].var2.var3) = *&v74[3];
    HIDWORD(result[27].var3.var3) = *&v73[3];
    result[28].var0 = @"HangTracerSlowActLaunchTailspinThreshold";
    result[28].var1 = &self->_slowAppActivationThresholdMSec;
    v11 = vdupq_n_s64(0x1388uLL);
    result[29].var0 = @"HangTracerEnableSignpostMonitoring";
    result[29].var1 = &self->_signpostMonitoringEnabled;
    result[30].var0 = @"HangTracerSignpostMonitoringDailyLogLimit";
    result[30].var1 = &self->_signpostMonitoringDailyLogLimit;
    result[31].var0 = @"HangTracerSignpostMonitoringPerPeriodLogLimit";
    result[31].var1 = &self->_signpostMonitoringPerPeriodLogLimit;
    result[32].var0 = @"HangTracerEnableAppLaunchMonitoring";
    result[32].var1 = &self->_appLaunchMonitoringEnabled;
    HIDWORD(result[32].var2.var3) = *&v70[3];
    HIDWORD(result[32].var3.var3) = *&v69[3];
    result[33].var0 = @"HangTracerEnableWorkflowResponsiveness";
    result[33].var1 = &self->_workflowResponsivenessEnabled;
    result[34].var0 = @"HangTracerWorkflowResponsivenessDailyLogLimit";
    result[34].var1 = &self->_workflowResponsivenessDailyLogLimit;
    result[35].var0 = @"HangTracerWorkflowResponsivenessPerPeriodLogLimit";
    result[35].var1 = &self->_workflowResponsivenessPerPeriodLogLimit;
    result[15].var2.var1 = 4;
    result[15].var3.var1 = 4;
    result[31].var2.var1 = 4;
    result[31].var3.var1 = 4;
    result[35].var2.var1 = 4;
    result[35].var3.var1 = 4;
    result[36].var0 = @"EPLEnabledProfile";
    result[36].var1 = &self->_eplEnabledProfile;
    HIDWORD(result[36].var2.var3) = *&v66[3];
    HIDWORD(result[36].var3.var3) = *&v65[3];
    result[37].var0 = @"EPLEnabled";
    result[37].var1 = &self->_eplEnabled;
    result[38].var0 = @"EPLTimeoutTimestampSec";
    result[38].var1 = &self->_eplTimeoutTimestampSec;
    result[39].var0 = @"HangTracerReportPeriod";
    result[39].var1 = &self->_reportPeriodMATU;
    result[39].var5 = "initPropertyReportPeriod:";
    result[40].var0 = @"HangTracerInternalSettingCreated";
    result[40].var1 = &self->_hasInternalSettings;
    result[40].var5 = "initPropertyHaveInternalSettings:";
    result[41].var0 = @"HangTracerHUDThresholdMSec";
    result[41].var1 = &self->_hudThresholdMSec;
    result[41].var2.var1 = 500;
    result[41].var3.var1 = 500;
    result[42].var0 = @"HangTracerForceQuitDetectionThresholdMSec";
    result[42].var1 = &self->_forceQuitDetectionThresholdMSec;
    result[42].var2.var1 = 3000;
    result[42].var3.var1 = 3000;
    result[43].var0 = @"HangTracerShouldEmitTelemetry";
    result[43].var1 = &self->_shouldEmitTelemetry;
    HIDWORD(result[43].var2.var3) = *&v60[3];
    HIDWORD(result[43].var3.var3) = *&v59[3];
    result[44].var0 = @"HangTracerThirdPartyDevHangHUDEnabled";
    result[44].var1 = &self->_thirdPartyDevHangHUDEnabled;
    result[45].var0 = @"HangTracerThirdPartyIncludeNonDevelopmentApps";
    result[45].var1 = &self->_thirdPartyIncludeNonDevelopmentApps;
    HIDWORD(result[45].var3.var3) = *&v55[3];
    result[46].var0 = @"HangTracerHangWaitTimeoutDuration";
    result[46].var1 = &self->_hangWaitTimeoutDurationMSec;
    result[47].var0 = @"HangTracerConsecutiveHangWaitTimeoutDuration";
    result[47].var1 = &self->_consecutiveHangWaitTimeoutDurationMSec;
    result[19].var5 = "initUnsignedLongProperty:";
    result[20].var5 = "initUnsignedLongProperty:";
    result[21].var5 = "initUnsignedLongProperty:";
    result[22].var5 = "initUnsignedLongProperty:";
    result[23].var5 = "initUnsignedLongProperty:";
    result[28].var5 = "initUnsignedLongProperty:";
    result[46].var5 = "initUnsignedLongProperty:";
    result[47].var5 = "initUnsignedLongProperty:";
    result[48].var0 = @"enableLoggingForPoster";
    result[48].var1 = &self->_enableLoggingForPoster;
    result[49].var0 = @"enableLoggingForWidgetRenderer";
    result[49].var1 = &self->_enableLoggingForWidgetRenderer;
    result[50].var0 = @"PDSEPrefHangTracerKillSwitch";
    result[50].var1 = &self->_pdseHangTracerKillSwitch;
    result[51].var0 = @"PDSEPrefHTRateOnlyKillSwitch";
    result[51].var1 = &self->_pdseHTRateOnlyKillSwitch;
    result[52].var0 = @"PDSEPrefHTThirdPartyKillSwitch";
    result[52].var1 = &self->_pdseHTThirdPartyKillSwitch;
    result[53].var0 = @"PDSEPrefAppLaunchKillSwitch";
    result[53].var1 = &self->_pdseAppLaunchKillSwitch;
    result[54].var0 = @"PDSEPrefWBClientHangKillSwitch";
    result[54].var1 = &self->_pdseWBClientHangKillSwitch;
    result[55].var0 = @"PDSEPrefWBClientHangPeriodDays";
    result[55].var1 = &self->_pdseWBClientHangPeriodDays;
    result[56].var0 = @"HangTracerShouldUploadToDiagPipe";
    result[56].var1 = &self->_shouldUploadToDiagPipe;
    result[57].var0 = @"tailspinReportingThresholdSec";
    result[57].var1 = &self->_tailspinReportingThresholdSec;
    result[58].var0 = @"HTFGTrackingTelemetryPersistentEmissionRateSec";
    result[58].var1 = &self->_persistentFGEmissionThresholdSec;
    result[59].var0 = @"HTFGTrackingTelemetryMinEmissionThresholdSec";
    result[59].var1 = &self->_minFGEmissionThresholdSec;
    result[5].var4 = 0;
    result[6].var0 = 0;
    result[6].var4 = 0;
    __asm { FMOV            V18.2D, #2.0 }

    *&result[11].var2.var0 = _Q18;
    *&result[12].var2.var0 = xmmword_10000A9E0;
    result[60].var0 = @"ShouldCollectCPURoleInfo";
    *&result[20].var2.var0 = vdupq_n_s64(0x1F4uLL);
    *&result[22].var2.var0 = vdupq_n_s64(0x3E8uLL);
    *&result[19].var2.var0 = v9;
    *&result[23].var2.var0 = v9;
    result[38].var2 = v6;
    result[38].var3 = v8;
    *&result[39].var2.var0 = vdupq_n_s64(0x40AC200000000000uLL);
    *&result[47].var2.var0 = vdupq_n_s64(0x15EuLL);
    result[60].var1 = &self->_shouldCollectCPURoleInfo;
    HIDWORD(result[60].var2.var3) = *&v38[3];
    HIDWORD(result[60].var3.var3) = *&v37[3];
    result->var2.var0 = 1;
    result->var3.var0 = 0;
    result->var4 = 0;
    result->var5 = "initBoolProperty:";
    result[1].var2.var0 = 0;
    result[1].var3.var0 = 0;
    result[1].var4 = 0;
    result[1].var5 = "initBoolProperty:";
    result[2].var2.var0 = 0;
    result[2].var3.var0 = 0;
    result[2].var4 = 0;
    result[2].var5 = "initBoolProperty:";
    result[61].var0 = @"PDSEPrefSentryKillSwitch";
    result[3].var3.var1 = 20;
    result[3].var4 = 0;
    result[3].var5 = "initUnsignedIntProperty:";
    result[4].var2.var0 = 0;
    result[4].var3.var0 = 0;
    result[4].var4 = 0;
    result[4].var5 = "initBoolProperty:";
    result[6].var2.var0 = 0;
    result[6].var3.var0 = 0;
    result[7].var2.var0 = 0;
    result[7].var3.var0 = 0;
    result[7].var4 = 0;
    result[7].var5 = "initBoolProperty:";
    result[8].var2.var0 = 1;
    result[8].var3.var0 = 1;
    result[8].var4 = 0;
    result[8].var5 = "initBoolProperty:";
    result[9].var2.var0 = 0;
    result[9].var3.var0 = 0;
    result[9].var4 = 0;
    result[9].var5 = "initBoolProperty:";
    result[10].var2.var0 = 1;
    result[10].var3.var0 = 1;
    result[10].var4 = 0;
    result[10].var5 = "initBoolProperty:";
    result[11].var4 = 0;
    result[11].var5 = "initDoubleProperty:";
    result[12].var4 = 0;
    result[12].var5 = "initDoubleProperty:";
    result[61].var1 = &self->_pdseSentryKillSwitch;
    result[13].var2.var1 = 10;
    result[13].var3.var1 = 10;
    result[13].var4 = 0;
    result[13].var5 = "initIntProperty:";
    result[47].var4 = 0;
    result[62].var0 = @"PDSEPrefWorkflowResponsivenessKillSwitch";
    result[14].var2.var1 = 25;
    result[14].var3.var1 = 25;
    result[14].var4 = 0;
    *&result[46].var2.var0 = v11;
    result[46].var4 = 0;
    result[14].var5 = "initIntProperty:";
    result[15].var4 = 0;
    result[15].var5 = "initIntProperty:";
    result[45].var3.var0 = 0;
    result[45].var4 = 0;
    result[45].var5 = "initBoolProperty:";
    result[16].var2.var1 = 25;
    result[16].var3.var1 = 25;
    result[16].var4 = 0;
    result[44].var4 = 0;
    result[44].var5 = "initBoolProperty:";
    result[45].var2.var0 = 0;
    result[16].var5 = "initIntProperty:";
    result[17].var2.var1 = 10;
    result[17].var3.var1 = 10;
    result[43].var5 = "initBoolProperty:";
    result[44].var2.var0 = 0;
    result[44].var3.var0 = 0;
    result[17].var4 = 0;
    result[17].var5 = "initIntProperty:";
    result[18].var2.var1 = 25;
    result[43].var2.var0 = 1;
    result[43].var3.var0 = 1;
    result[43].var4 = 0;
    result[18].var3.var1 = 25;
    result[18].var4 = 0;
    result[18].var5 = "initIntProperty:";
    result[19].var4 = 1;
    result[42].var4 = 1;
    result[42].var5 = "initUnsignedIntProperty:";
    result[20].var4 = 1;
    *&result[21].var2.var0 = v10;
    result[21].var4 = 1;
    result[22].var4 = 1;
    result[41].var4 = 1;
    result[41].var5 = "initUnsignedIntProperty:";
    result[23].var4 = 0;
    result[24].var2.var0 = 1;
    result[24].var3.var0 = 1;
    result[24].var4 = 0;
    result[40].var3.var0 = 0;
    result[40].var4 = 0;
    result[24].var5 = "initBoolProperty:";
    result[25].var2.var1 = 25;
    result[25].var3.var1 = 25;
    result[25].var4 = 0;
    result[39].var4 = 2;
    result[40].var2.var0 = 0;
    result[25].var5 = "initIntProperty:";
    result[26].var2.var1 = 25;
    result[26].var3.var1 = 25;
    result[26].var4 = 0;
    result[38].var4 = 0;
    result[38].var5 = "initDoubleProperty:";
    result[26].var5 = "initIntProperty:";
    result[27].var2.var0 = 0;
    result[27].var3.var0 = 0;
    result[27].var4 = 0;
    result[37].var4 = 0;
    result[37].var5 = "initBoolProperty:";
    result[27].var5 = "initBoolProperty:";
    *&result[28].var2.var0 = v11;
    result[28].var4 = 1;
    result[36].var5 = "initBoolProperty:";
    result[37].var2.var0 = 0;
    result[37].var3.var0 = 0;
    result[29].var2.var0 = 1;
    result[29].var3.var0 = 0;
    result[29].var4 = 0;
    result[36].var2.var0 = 0;
    result[36].var3.var0 = 0;
    result[36].var4 = 0;
    result[29].var5 = "initBoolProperty:";
    result[30].var2.var1 = 25;
    result[30].var3.var1 = 25;
    result[30].var4 = 0;
    result[35].var4 = 0;
    result[35].var5 = "initIntProperty:";
    result[30].var5 = "initIntProperty:";
    result[31].var4 = 0;
    result[34].var2.var1 = 25;
    result[34].var3.var1 = 25;
    result[34].var4 = 0;
    result[34].var5 = "initIntProperty:";
    result[31].var5 = "initIntProperty:";
    result[32].var2.var0 = 1;
    result[32].var3.var0 = 0;
    result[33].var3.var0 = 0;
    result[33].var4 = 0;
    result[33].var5 = "initBoolProperty:";
    result[32].var4 = 0;
    result[32].var5 = "initBoolProperty:";
    result[33].var2.var0 = 1;
    result[48].var2.var0 = 0;
    result[48].var3.var0 = 0;
    result[48].var4 = 0;
    result[48].var5 = "initBoolProperty:";
    result[49].var2.var0 = 0;
    result[49].var3.var0 = 0;
    result[49].var4 = 0;
    result[49].var5 = "initBoolProperty:";
    result[50].var2.var0 = 0;
    result[50].var3.var0 = 0;
    result[50].var4 = 0;
    result[50].var5 = "initBoolProperty:";
    result[51].var2.var0 = 0;
    result[51].var3.var0 = 0;
    result[51].var4 = 0;
    result[51].var5 = "initBoolProperty:";
    result[52].var2.var0 = 0;
    result[52].var3.var0 = 0;
    result[52].var4 = 0;
    result[52].var5 = "initBoolProperty:";
    result[53].var2.var0 = 0;
    result[53].var3.var0 = 0;
    result[53].var4 = 0;
    result[53].var5 = "initBoolProperty:";
    result[54].var2.var0 = 1;
    result[54].var3.var0 = 1;
    result[54].var4 = 0;
    result[54].var5 = "initBoolProperty:";
    result[62].var1 = &self->_pdseWorkflowResponsivenessKillSwitch;
    HIDWORD(result[62].var3.var3) = *&v33[3];
    result[55].var2.var1 = 0x7FFFFFFF;
    result[55].var3.var1 = 0x7FFFFFFF;
    result[55].var4 = 0;
    result[55].var5 = "initIntProperty:";
    result[56].var2.var0 = 1;
    result[56].var3.var0 = 1;
    result[56].var4 = 0;
    result[56].var5 = "initBoolProperty:";
    *&result[57].var2.var0 = vdupq_n_s64(0x40BC200000000000uLL);
    result[57].var4 = 0;
    result[57].var5 = "initDoubleProperty:";
    *&result[58].var2.var0 = vdupq_n_s64(0x408C200000000000uLL);
    result[58].var4 = 0;
    result[58].var5 = "initDoubleProperty:";
    *&result[59].var2.var0 = vdupq_n_s64(0x404E000000000000uLL);
    result[59].var4 = 0;
    result[59].var5 = "initDoubleProperty:";
    result[60].var2.var0 = 1;
    result[60].var3.var0 = 1;
    result[60].var4 = 0;
    result[60].var5 = "initBoolProperty:";
    result[61].var2.var0 = 0;
    result[61].var3.var0 = 1;
    result[61].var4 = 0;
    result[61].var5 = "initBoolProperty:";
    result[62].var2.var0 = 0;
    result[63].var0 = @"PDSEPrefCATailspinKillSwitch";
    result[63].var1 = &self->_pdseCATailspinKillSwitch;
    HIDWORD(result[63].var2.var3) = *&v32[3];
    *(&result[63].var2.var0 + 1) = *v32;
    HIDWORD(result[63].var3.var3) = *&v31[3];
    result[62].var3.var0 = 1;
    result[62].var4 = 0;
    result[62].var5 = "initBoolProperty:";
    result[63].var2.var0 = 0;
    result[63].var3.var0 = 1;
    *(&result[63].var3.var0 + 1) = *v31;
    result[63].var4 = 0;
    result[63].var5 = "initBoolProperty:";
    result[64].var0 = @"HTSEEnablementPeriodDays";
    result[64].var1 = &self->_pdseHTPeriodDays;
    result[64].var2.var1 = 200;
    result[64].var3.var1 = 1000;
    result[64].var4 = 0;
    result[64].var5 = "initIntProperty:";
    result[65].var0 = @"PDSEPrefHTRateOnlyPeriodDays";
    result[65].var1 = &self->_pdseHTRateOnlyPeriodDays;
    result[65].var2.var1 = 200;
    result[65].var3.var1 = 25;
    result[65].var4 = 0;
    result[65].var5 = "initIntProperty:";
    result[66].var0 = @"PDSEPrefHTThirdPartyPeriodDays";
    result[66].var1 = &self->_pdseHTThirdPartyPeriodDays;
    result[66].var2.var1 = 200;
    result[66].var3.var1 = 200;
    result[66].var4 = 0;
    result[66].var5 = "initIntProperty:";
    result[67].var0 = @"PDSEPrefHTThirdPartyNoLogUploadPeriodDays";
    result[67].var1 = &self->_pdseHTThirdPartyNoLogUploadPeriodDays;
    result[67].var2.var1 = 200;
    result[67].var3.var1 = 200;
    result[67].var4 = 0;
    result[67].var5 = "initIntProperty:";
    result[68].var0 = @"PDSEPrefCATailspinPeriodDays";
    result[68].var1 = &self->_pdseCATailspinPeriodDays;
    result[68].var2.var1 = 100;
    result[68].var3.var1 = 0x7FFFFFFF;
    result[68].var4 = 0;
    result[68].var5 = "initIntProperty:";
    result[69].var0 = @"PDSEPrefAppLaunchPeriodDays";
    result[69].var1 = &self->_pdseAppLaunchPeriodDays;
    result[69].var2.var1 = 200;
    result[69].var3.var1 = 400;
    result[69].var4 = 0;
    result[69].var5 = "initIntProperty:";
    result[70].var0 = @"PDSEPrefSentryPeriodDays";
    result[70].var1 = &self->_pdseSentryPeriodDays;
    result[70].var2.var1 = 10;
    result[70].var3.var1 = 0x7FFFFFFF;
    result[70].var4 = 0;
    result[70].var5 = "initIntProperty:";
    result[71].var2.var1 = 20;
    result[71].var3.var1 = 1000;
    result[71].var4 = 0;
    result[71].var5 = "initIntProperty:";
    result[72].var2.var0 = 1;
    *(&result[72].var2.var0 + 1) = *v30;
    HIDWORD(result[72].var2.var3) = *&v30[3];
    result[72].var3.var0 = 0;
    *(&result[72].var3.var0 + 1) = *v29;
    HIDWORD(result[72].var3.var3) = *&v29[3];
    result[72].var4 = 0;
    result[72].var5 = "initBoolProperty:";
    result[73].var2.var0 = 0;
    HIDWORD(result[73].var2.var3) = *&v28[3];
    *(&result[73].var2.var0 + 1) = *v28;
    result[73].var3.var0 = 1;
    HIDWORD(result[73].var3.var3) = *&v27[3];
    *(&result[73].var3.var0 + 1) = *v27;
    result[73].var4 = 0;
    result[73].var5 = "initBoolProperty:";
    result[74].var2.var0 = 1;
    HIDWORD(result[74].var2.var3) = *&v26[3];
    *(&result[74].var2.var0 + 1) = *v26;
    result[74].var3.var0 = 1;
    *(&result[74].var3.var0 + 1) = *v25;
    HIDWORD(result[74].var3.var3) = *&v25[3];
    result[74].var4 = 0;
    result[74].var5 = "initBoolProperty:";
    result[75].var4 = 0;
    *&result[75].var2.var0 = 0u;
    result[75].var5 = "initDoubleProperty:";
    result[76].var2.var1 = 14;
    result[76].var3.var1 = 14;
    result[76].var4 = 0;
    result[76].var5 = "initUnsignedIntProperty:";
    result[77].var2.var1 = 2;
    result[77].var3.var1 = 2;
    result[77].var4 = 0;
    result[77].var5 = "initUnsignedIntProperty:";
    *&result[78].var2.var0 = v10;
    result[78].var4 = 0;
    result[78].var5 = "initUnsignedIntProperty:";
    result[79].var2.var1 = 8;
    result[79].var3.var1 = 8;
    result[79].var4 = 0;
    result[79].var5 = "initUnsignedIntProperty:";
    result[80].var2.var1 = 1;
    result[80].var3.var1 = 1;
    result[80].var4 = 1;
    result[80].var5 = "initUnsignedIntProperty:";
    result[81].var2.var0 = 0;
    *(&result[81].var2.var0 + 1) = *v24;
    HIDWORD(result[81].var2.var3) = *&v24[3];
    result[81].var3.var0 = 0;
    *(&result[81].var3.var0 + 1) = *v23;
    HIDWORD(result[81].var3.var3) = *&v23[3];
    result[81].var4 = 0;
    result[81].var5 = "initBoolProperty:";
    result[82].var2.var0 = 0;
    HIDWORD(result[82].var2.var3) = *&v22[3];
    *(&result[82].var2.var0 + 1) = *v22;
    result[82].var3.var0 = 0;
    HIDWORD(result[82].var3.var3) = *&v21[3];
    *(&result[82].var3.var0 + 1) = *v21;
    result[82].var4 = 0;
    result[82].var5 = "initBoolProperty:";
    result[83].var2.var1 = 0;
    result[83].var3.var1 = 0;
    result[83].var4 = 0;
    result[83].var5 = "initIntProperty:";
    result[84].var2.var0 = 0;
    HIDWORD(result[84].var2.var3) = *&v20[3];
    *(&result[84].var2.var0 + 1) = *v20;
    result[84].var3.var0 = 0;
    HIDWORD(result[84].var3.var3) = *&v19[3];
    *(&result[84].var3.var0 + 1) = *v19;
    result[84].var4 = 0;
    result[84].var5 = "initBoolProperty:";
    result[85].var2.var0 = 0;
    *(&result[85].var2.var0 + 1) = 0;
    HIDWORD(result[85].var2.var3) = 0;
    result[85].var3.var0 = 0;
    *(&result[85].var3.var0 + 1) = v91;
    result[85].var5 = 0;
    *&result[85].var0 = 0u;
    self->_prefInitList = result;
  }

  return result;
}

- (BOOL)shouldUpdateHangsHUD
{
  if ([(HTPrefs *)self hudEnabled]&& [(HTPrefs *)self isInternal])
  {
    return 1;
  }

  return [(HTPrefs *)self thirdPartyDevHangHUDEnabled];
}

- (void)refreshHTPrefs
{
  v3 = shared_ht_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "HTPrefs: Refreshing preferences", v10, 2u);
  }

  v4 = [NSDictionary dictionaryWithContentsOfFile:self->__profilePath];
  installedHTProfileDict = self->__installedHTProfileDict;
  self->__installedHTProfileDict = v4;

  CFPreferencesAppSynchronize(self->__htTaskingDomain);
  CFPreferencesAppSynchronize(self->__htDomain);
  [(HTPrefs *)self earlyInitNecessaryPrefs];
  v6 = [(HTPrefs *)self prefInitList];
  v10[3] = 0;
  v10[0] = @"HangTracerEnabled";
  v10[1] = &self->_hangtracerDaemonEnabled;
  v10[2] = 1;
  v10[4] = 0;
  v10[5] = "initPropertyHangtracerDaemonEnabled:";
  [(HTPrefs *)self initPropertyHangtracerDaemonEnabled:v10];
  for (i = v6->var5; i; ++v6)
  {
    [self i];
    i = v6[1].var5;
  }

  if ([(HTPrefs *)self shouldPostHTPrefsChangedNotification])
  {
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:0];
    v8 = shared_ht_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = @"com.apple.hangtracer.htprefs.refreshed";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Posting notification %@", buf, 0xCu);
    }

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"com.apple.hangtracer.htprefs.refreshed" object:self userInfo:0];
  }
}

- (void)earlyInitNecessaryPrefs
{
  v5[0] = @"HangTracerEnableCustomerMode";
  v5[1] = &self->_customerModeEnabled;
  v6 = 0;
  v7 = 0;
  v2 = "initBoolProperty:";
  v8 = 0;
  v9 = "initBoolProperty:";
  v10 = 0;
  p_isInternal = &self->_isInternal;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = "initPropertyIsInternal:";
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  if ("initBoolProperty:")
  {
    v4 = v5;
    do
    {
      [self v2];
      v2 = v4[11];
      v4 += 6;
    }

    while (v2);
  }
}

- (void)__createInternalSettings
{
  if (![(HTPrefs *)self isInternal])
  {
    return;
  }

  v3 = CFPreferencesCopyValue(@"HangTracerInternalSettingCreated", self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
  v4 = v3;
  if (!v3 || ([v3 BOOLValue] & 1) == 0)
  {
    v5 = shared_ht_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "checkPreferences: Internal install, force enabled.", buf, 2u);
    }

    CFPreferencesSetValue(@"HangTracerEnabled", kCFBooleanTrue, self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
    CFPreferencesSetValue(@"HangTracerInternalSettingCreated", kCFBooleanTrue, self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
  }

  v6 = CFPreferencesCopyValue(@"HangTracerInternalSettingsVersion", self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
  v7 = v6;
  if (!v6)
  {
    CFPreferencesSetValue(@"HangTracerDuration", 0, self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
    goto LABEL_11;
  }

  if ([v6 unsignedIntegerValue] != 3)
  {
LABEL_11:
    v8 = [@"HangTracerEnableTerminationsTrackedReasons" stringByAppendingString:@"."];
    v9 = [v8 stringByAppendingFormat:@"%llu", 2];
    v10 = CFPreferencesCopyValue(v9, self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
    v11 = v10;
    if (v10)
    {
      CFPreferencesSetValue(v9, +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 unsignedLongLongValue] & 0xFFFFFFFFFFFBFFFFLL), self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
    }

    CFPreferencesSetValue(@"HangTracerInternalSettingsVersion", &off_100015CE8, self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
  }

  v12 = CFPreferencesCopyValue(@"HangTracerEnableTailspin", self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
  if (!v12)
  {
    CFPreferencesSetValue(@"HangTracerEnableTailspin", kCFBooleanTrue, self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
  }
}

- (void)setupPrefsWithQueue:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_1000088D8();
  }

  v5 = v4;
  [(HTPrefs *)self setupPrefsWithQueue:v4 profilePath:@"/Library/Managed Preferences/mobile/.GlobalPreferences.plist" taskingDomainName:@"com.apple.da" hangtracerDomain:@"com.apple.hangtracer" setupInternalPrefs:1];
}

- (void)setupPrefsWithQueue:(id)a3 profilePath:(id)a4 taskingDomainName:(__CFString *)a5 hangtracerDomain:(__CFString *)a6 setupInternalPrefs:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = shared_ht_log_handle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "HTPrefs initialization", buf, 2u);
  }

  objc_storeStrong(&self->__profilePath, a4);
  self->__htTaskingDomain = a5;
  self->__htDomain = a6;
  *&self->_shouldAllowSentryEnablement = 0;
  [(HTPrefs *)self earlyInitNecessaryPrefs];
  if (v7)
  {
    [(HTPrefs *)self __createInternalSettings];
  }

  v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  if (!self->__prefsQueue)
  {
    v16 = dispatch_queue_create_with_target_V2("com.apple.hangtracer.preferences", v15, v12);
    prefsQueue = self->__prefsQueue;
    self->__prefsQueue = v16;
  }

  objc_initWeak(&location, self);
  *buf = 0;
  v42 = buf;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000053E0;
  v21[3] = &unk_100014420;
  v21[5] = buf;
  v21[6] = &v37;
  v21[7] = &v33;
  v21[8] = &v29;
  v21[9] = v27;
  objc_copyWeak(&v22, &location);
  v21[4] = self;
  v18 = objc_retainBlock(v21);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100005730;
  v20[3] = &unk_100014448;
  v20[4] = &v23;
  v19 = objc_retainBlock(v20);
  notify_register_dispatch(EPL_STATE_CHANGED_NOTIFICATION, v30 + 6, self->__prefsQueue, v18);
  notify_register_dispatch(HANGTRACER_TASKING_CHANGED_NOTIFICATION, v42 + 6, self->__prefsQueue, v18);
  notify_register_dispatch(HANGTRACER_TELEMETRY_CHANGED_NOTIFICATION, v38 + 6, self->__prefsQueue, v18);
  notify_register_dispatch(HANGTRACER_PROFILE_LIST_CHANGED_NOTIFICATION, v34 + 6, self->__prefsQueue, v18);
  notify_register_dispatch(TEST_RESET_LOG_LIMITS_NOTIFICATION, v24 + 6, self->__prefsQueue, v19);
  [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  [(HTPrefs *)self refreshHTPrefs];

  objc_destroyWeak(&v22);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(buf, 8);
  objc_destroyWeak(&location);
}

- (void)_removeAllPrefs
{
  v22[0] = @"HangTracerInternalSettingCreated";
  v22[1] = @"HangTracerInternalSettingsVersion";
  v22[2] = @"HangTracerReportPeriod";
  v22[3] = @"HangTracerEnableCustomerMode";
  v22[4] = @"HangTracerEnabled";
  v22[5] = @"HangTracerThirdPartyRunloopLogsEnabled";
  v22[6] = @"HangTracerEnableHUD";
  v22[7] = @"HangTracerEnableForceQuitDetection";
  v22[8] = @"HangTracerCollectOSSignposts";
  v22[9] = @"HangTracerCollectOSSignpostsDeferred";
  v22[10] = @"HangTracerEnableTailspin";
  v22[11] = @"HangTracerSavedTailspinsMaxMB";
  v22[12] = @"HangTracerKeepTailspins";
  v22[13] = @"HangTracerKeepTailspinsWithFormat";
  v22[14] = @"HangTracerPercentFullSpinReports";
  v22[15] = @"HangTracerDailyLogLimit";
  v22[16] = @"HangTracerPerPeriodLogLimit";
  v22[17] = @"HangTracerDailyLongLogLimit";
  v22[18] = @"HangTracerDailyThirdPartyLogLimit";
  v22[19] = @"HangTracerDuration";
  v22[20] = @"HangTracerLongHangDurationThreshold";
  v22[21] = @"HangTracerThirdPartyHangThreshold";
  v22[22] = @"HangTracerHangTimeoutDuration";
  v22[23] = @"HangTracerSpringBoardHangIORegGPUDumpTimeout";
  v22[24] = @"HangTracerIncludeDiskInfo";
  v22[25] = @"HangTracerEnableDisplayData";
  v22[26] = @"HangTracerIncludeNetworkState";
  v22[27] = @"HangTracerFenceTrackingEnabled";
  v22[28] = @"HangTracerSlowActTailspinsEnabled";
  v22[29] = @"HangTracerSlowActPerAppMax";
  v22[30] = @"HangTracerSlowActDailyLogLimit";
  v22[31] = @"HangTracerSlowActLaunchTailspinThreshold";
  v22[32] = @"HangTracerEnableSignpostMonitoring";
  v22[33] = @"HangTracerSignpostMonitoringDailyLogLimit";
  v22[34] = @"HangTracerSignpostMonitoringPerPeriodLogLimit";
  v22[35] = @"HangTracerEnableAppLaunchMonitoring";
  v22[36] = @"HangTracerEnableWorkflowResponsiveness";
  v22[37] = @"HangTracerWorkflowResponsivenessDailyLogLimit";
  v22[38] = @"HangTracerWorkflowResponsivenessPerPeriodLogLimit";
  v22[39] = @"ShouldCollectCPURoleInfo";
  v22[40] = @"HangTracerShouldEmitTelemetry";
  v22[41] = @"HTFGTrackingTelemetryPersistentEmissionRateSec";
  v22[42] = @"HTFGTrackingTelemetryMinEmissionThresholdSec";
  v22[43] = @"EPLEnabled";
  v22[44] = @"EPLTimeoutTimestampSec";
  v22[45] = @"HangTracerHUDThresholdMSec";
  v22[46] = @"HangTracerForceQuitDetectionThresholdMSec";
  v22[47] = @"AutomatedDeviceGroup";
  v22[48] = @"ExperimentGroup";
  v22[49] = @"HangTracerHangWaitTimeoutDuration";
  v22[50] = @"HangTracerConsecutiveHangWaitTimeoutDuration";
  [NSArray arrayWithObjects:v22 count:51];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        CFPreferencesSetValue(*(*(&v16 + 1) + 8 * v7), 0, self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v5);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8 = [&__NSArray0__struct countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(&__NSArray0__struct);
        }

        CFPreferencesSetValue(*(*(&v12 + 1) + 8 * v11), 0, self->__htDomain, @"mobile", kCFPreferencesAnyHost);
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [&__NSArray0__struct countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v9);
  }

  CFPreferencesSynchronize(self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
  CFPreferencesSynchronize(self->__htDomain, @"mobile", kCFPreferencesAnyHost);
}

@end