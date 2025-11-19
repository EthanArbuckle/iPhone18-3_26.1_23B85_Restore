@interface ICDateHeadersUtilities
+ (BOOL)isShowingQueryDateHeadersForDateHeadersType:(int64_t)a3;
+ (BOOL)showsQueryDateHeaders;
+ (BOOL)supportsQueryDateHeaders;
+ (id)actionItemTitleWithDateHeadersType:(int64_t)a3;
+ (id)stringForDateHeadersType:(int64_t)a3;
+ (int64_t)defaultDateHeadersType;
+ (int64_t)queryDateHeadersType;
+ (void)clearCache;
+ (void)setDateHeadersOn:(BOOL)a3;
+ (void)setDateHeadersUserPreference:(int64_t)a3 forKey:(id)a4 postNotificationName:(id)a5;
+ (void)setDefaultDateHeadersType:(int64_t)a3;
+ (void)setQueryDateHeadersType:(int64_t)a3;
@end

@implementation ICDateHeadersUtilities

+ (int64_t)defaultDateHeadersType
{
  v2 = cachedDefaultDateHeadersType;
  if (cachedDefaultDateHeadersType || (v3 = objc_opt_class(), [ICSettingsUtilities objectForKey:@"kICSettingsNoteDateHeadersTypeKey"], v4 = objc_claimAutoreleasedReturnValue(), ICCheckedDynamicCast(v3, v4), v5 = objc_claimAutoreleasedReturnValue(), v6 = cachedDefaultDateHeadersType, cachedDefaultDateHeadersType = v5, v6, v4, (v2 = cachedDefaultDateHeadersType) != 0))
  {
    result = [v2 integerValue];
    if (result)
    {
      return result;
    }

    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[ICDateHeadersUtilities defaultDateHeadersType]", 1, 0, @"Default should never be stored as user preference. Return fallback default instead.");
  }

  else
  {
    cachedDefaultDateHeadersType = &unk_1F4FD70C8;
  }

  return 2;
}

+ (void)clearCache
{
  v2 = cachedDefaultDateHeadersType;
  cachedDefaultDateHeadersType = 0;

  v3 = cachedQueryDateHeadersType;
  cachedQueryDateHeadersType = 0;
}

+ (void)setDefaultDateHeadersType:(int64_t)a3
{
  if ([a1 defaultDateHeadersType] != a3)
  {
    if ((a3 - 1) >= 2)
    {
      if (!a3)
      {

        +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[ICDateHeadersUtilities setDefaultDateHeadersType:]", 1, 0, @"Default should never be stored as user preference. Ignore.");
      }
    }

    else
    {
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v6 = cachedDefaultDateHeadersType;
      cachedDefaultDateHeadersType = v5;

      [a1 setDateHeadersUserPreference:a3 forKey:@"kICSettingsNoteDateHeadersTypeKey" postNotificationName:@"kICDateHeadersUtilitiesDidChangeDefaultDateHeadersTypeNotification"];
    }
  }
}

+ (int64_t)queryDateHeadersType
{
  v2 = cachedQueryDateHeadersType;
  if (cachedQueryDateHeadersType || (v3 = objc_opt_class(), [ICSettingsUtilities objectForKey:@"kICQueryDateHeadersTypeKey"], v4 = objc_claimAutoreleasedReturnValue(), ICCheckedDynamicCast(v3, v4), v5 = objc_claimAutoreleasedReturnValue(), v6 = cachedQueryDateHeadersType, cachedQueryDateHeadersType = v5, v6, v4, (v2 = cachedQueryDateHeadersType) != 0))
  {

    return [v2 integerValue];
  }

  else
  {
    cachedQueryDateHeadersType = &unk_1F4FD70E0;

    return 0;
  }
}

+ (void)setQueryDateHeadersType:(int64_t)a3
{
  v5 = [a1 queryDateHeadersType];
  if (a3 <= 2 && v5 != a3)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v7 = cachedQueryDateHeadersType;
    cachedQueryDateHeadersType = v6;

    [a1 setDateHeadersUserPreference:a3 forKey:@"kICQueryDateHeadersTypeKey" postNotificationName:@"kICDateHeadersUtilitiesDidChangeQueryDateHeadersTypeNotification"];
  }
}

+ (BOOL)showsQueryDateHeaders
{
  v3 = [a1 queryDateHeadersType];

  return [a1 isShowingQueryDateHeadersForDateHeadersType:v3];
}

+ (BOOL)supportsQueryDateHeaders
{
  v2 = +[ICFolderCustomNoteSortType querySortType];
  v3 = [v2 resolvedCustomSortTypeOrder] != 3;

  return v3;
}

+ (id)actionItemTitleWithDateHeadersType:(int64_t)a3
{
  switch(a3)
  {
    case 2:
      v3 = @"On";
      goto LABEL_7;
    case 1:
      v3 = @"Off";
LABEL_7:
      a1 = __ICLocalizedFrameworkString_impl(v3, v3, 0, 1);
      break;
    case 0:
      a1 = [a1 stringForDateHeadersType:?];
      break;
  }

  return a1;
}

+ (id)stringForDateHeadersType:(int64_t)a3
{
  v4 = [a1 defaultDateHeadersType];
  if (a3 != 2)
  {
    if (a3 == 1)
    {
      v6 = @"Off";
      goto LABEL_10;
    }

    if (a3)
    {
      goto LABEL_11;
    }

    switch(v4)
    {
      case 2:
        v6 = @"Default (On)";
        goto LABEL_10;
      case 1:
        v6 = @"Default (Off)";
        goto LABEL_10;
      case 0:
        +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[ICDateHeadersUtilities stringForDateHeadersType:]", 1, 0, @"Default should never be stored as user preference. Ignore.");
        v5 = 0;
        goto LABEL_11;
    }
  }

  v6 = @"On";
LABEL_10:
  v5 = __ICLocalizedFrameworkString_impl(v6, v6, 0, 1);
LABEL_11:

  return v5;
}

+ (void)setDateHeadersOn:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [ICDateHeadersUtilities setDefaultDateHeadersType:v3];
}

+ (void)setDateHeadersUserPreference:(int64_t)a3 forKey:(id)a4 postNotificationName:(id)a5
{
  v7 = MEMORY[0x1E696AD98];
  v8 = a5;
  v9 = a4;
  v10 = [v7 numberWithInteger:a3];
  [ICSettingsUtilities setObject:v10 forKey:v9];

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 postNotificationName:v8 object:0];
}

+ (BOOL)isShowingQueryDateHeadersForDateHeadersType:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 2)
    {

      return [a1 supportsQueryDateHeaders];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5 = [a1 defaultDateHeadersType];

    return [a1 isShowingQueryDateHeadersForDateHeadersType:v5];
  }
}

@end