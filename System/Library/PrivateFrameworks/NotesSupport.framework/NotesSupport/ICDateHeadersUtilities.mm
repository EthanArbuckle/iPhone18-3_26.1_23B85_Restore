@interface ICDateHeadersUtilities
+ (BOOL)isShowingQueryDateHeadersForDateHeadersType:(int64_t)type;
+ (BOOL)showsQueryDateHeaders;
+ (BOOL)supportsQueryDateHeaders;
+ (id)actionItemTitleWithDateHeadersType:(int64_t)type;
+ (id)stringForDateHeadersType:(int64_t)type;
+ (int64_t)defaultDateHeadersType;
+ (int64_t)queryDateHeadersType;
+ (void)clearCache;
+ (void)setDateHeadersOn:(BOOL)on;
+ (void)setDateHeadersUserPreference:(int64_t)preference forKey:(id)key postNotificationName:(id)name;
+ (void)setDefaultDateHeadersType:(int64_t)type;
+ (void)setQueryDateHeadersType:(int64_t)type;
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

+ (void)setDefaultDateHeadersType:(int64_t)type
{
  if ([self defaultDateHeadersType] != type)
  {
    if ((type - 1) >= 2)
    {
      if (!type)
      {

        +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[ICDateHeadersUtilities setDefaultDateHeadersType:]", 1, 0, @"Default should never be stored as user preference. Ignore.");
      }
    }

    else
    {
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
      v6 = cachedDefaultDateHeadersType;
      cachedDefaultDateHeadersType = v5;

      [self setDateHeadersUserPreference:type forKey:@"kICSettingsNoteDateHeadersTypeKey" postNotificationName:@"kICDateHeadersUtilitiesDidChangeDefaultDateHeadersTypeNotification"];
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

+ (void)setQueryDateHeadersType:(int64_t)type
{
  queryDateHeadersType = [self queryDateHeadersType];
  if (type <= 2 && queryDateHeadersType != type)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v7 = cachedQueryDateHeadersType;
    cachedQueryDateHeadersType = v6;

    [self setDateHeadersUserPreference:type forKey:@"kICQueryDateHeadersTypeKey" postNotificationName:@"kICDateHeadersUtilitiesDidChangeQueryDateHeadersTypeNotification"];
  }
}

+ (BOOL)showsQueryDateHeaders
{
  queryDateHeadersType = [self queryDateHeadersType];

  return [self isShowingQueryDateHeadersForDateHeadersType:queryDateHeadersType];
}

+ (BOOL)supportsQueryDateHeaders
{
  v2 = +[ICFolderCustomNoteSortType querySortType];
  v3 = [v2 resolvedCustomSortTypeOrder] != 3;

  return v3;
}

+ (id)actionItemTitleWithDateHeadersType:(int64_t)type
{
  switch(type)
  {
    case 2:
      v3 = @"On";
      goto LABEL_7;
    case 1:
      v3 = @"Off";
LABEL_7:
      self = __ICLocalizedFrameworkString_impl(v3, v3, 0, 1);
      break;
    case 0:
      self = [self stringForDateHeadersType:?];
      break;
  }

  return self;
}

+ (id)stringForDateHeadersType:(int64_t)type
{
  defaultDateHeadersType = [self defaultDateHeadersType];
  if (type != 2)
  {
    if (type == 1)
    {
      v6 = @"Off";
      goto LABEL_10;
    }

    if (type)
    {
      goto LABEL_11;
    }

    switch(defaultDateHeadersType)
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

+ (void)setDateHeadersOn:(BOOL)on
{
  if (on)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [ICDateHeadersUtilities setDefaultDateHeadersType:v3];
}

+ (void)setDateHeadersUserPreference:(int64_t)preference forKey:(id)key postNotificationName:(id)name
{
  v7 = MEMORY[0x1E696AD98];
  nameCopy = name;
  keyCopy = key;
  v10 = [v7 numberWithInteger:preference];
  [ICSettingsUtilities setObject:v10 forKey:keyCopy];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:nameCopy object:0];
}

+ (BOOL)isShowingQueryDateHeadersForDateHeadersType:(int64_t)type
{
  if (type)
  {
    if (type == 2)
    {

      return [self supportsQueryDateHeaders];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    defaultDateHeadersType = [self defaultDateHeadersType];

    return [self isShowingQueryDateHeadersForDateHeadersType:defaultDateHeadersType];
  }
}

@end