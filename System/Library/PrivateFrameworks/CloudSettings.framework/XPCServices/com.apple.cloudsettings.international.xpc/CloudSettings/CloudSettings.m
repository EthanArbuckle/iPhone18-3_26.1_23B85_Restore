int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

uint64_t sub_100001088(uint64_t a1, void *a2, id a3)
{
  v11 = a2;
  if ([(__CFString *)v11 isEqualToString:@"AppleLocale"])
  {
    v5 = *(a1 + 32);
    v6 = @"en_US";
    v7 = @"AppleLocale";
  }

  else
  {
    if (objc_opt_class() == a3)
    {
      v5 = *(a1 + 32);
      v6 = &stru_1000042E0;
    }

    else if (objc_opt_class() == a3)
    {
      v5 = *(a1 + 32);
      v6 = &off_100004828;
    }

    else if (objc_opt_class() == a3)
    {
      v5 = *(a1 + 32);
      v6 = &__NSArray0__struct;
    }

    else
    {
      v8 = objc_opt_class();
      v9 = v11;
      if (v8 != a3)
      {
        goto LABEL_13;
      }

      v5 = *(a1 + 32);
      v6 = &__NSDictionary0__struct;
    }

    v7 = v11;
  }

  v8 = [v5 setObject:v6 forKey:v7];
  v9 = v11;
LABEL_13:

  return _objc_release_x1(v8, v9);
}

void sub_100001940(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([(__CFString *)v5 isEqualToString:@"AppleLocale"])
  {
    v7 = CFPreferencesCopyAppValue(v5, kCFPreferencesAnyApplication);
    v8 = [NSLocale componentsFromLocaleIdentifier:v7];
    v9 = [v8 objectForKeyedSubscript:NSLocaleLanguageCode];

    v10 = [NSLocale componentsFromLocaleIdentifier:v6];
    v11 = [v10 mutableCopy];

    [v11 setObject:v9 forKeyedSubscript:NSLocaleLanguageCode];
    v12 = [NSLocale localeIdentifierFromComponents:v11];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000021A8();
    }

    CFPreferencesSetAppValue(v5, v12, kCFPreferencesAnyApplication);
  }

  else if ([*(a1 + 32) containsObject:v5])
  {
    CFPreferencesSetAppValue(v5, v6, kCFPreferencesAnyApplication);
  }
}

void sub_100001E48(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = CFPreferencesCopyAppValue(v4, kCFPreferencesAnyApplication);
  if (v3)
  {
    [*(a1 + 32) setObject:v3 forKey:v4];
  }
}

void sub_100002110(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}