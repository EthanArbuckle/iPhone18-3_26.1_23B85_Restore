@interface CUIKUserActivity
+ (BOOL)_BOOLFromDictionary:(id)dictionary key:(id)key error:(BOOL *)error;
+ (double)_doubleFromDictionary:(id)dictionary key:(id)key error:(BOOL *)error;
+ (id)_stringFromDictionary:(id)dictionary key:(id)key error:(BOOL *)error;
+ (id)activityForActivity:(id)activity;
+ (id)activityForDictionary:(id)dictionary;
+ (int64_t)_integerFromDictionary:(id)dictionary key:(id)key error:(BOOL *)error;
+ (unint64_t)_typeFromDictionary:(id)dictionary;
+ (unint64_t)_unsignedIntegerFromDictionary:(id)dictionary key:(id)key error:(BOOL *)error;
- (CUIKUserActivity)initWithDictionary:(id)dictionary;
- (CUIKUserActivity)initWithType:(unint64_t)type;
- (id)dictionary;
- (void)updateActivity:(id)activity;
@end

@implementation CUIKUserActivity

- (id)dictionary
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"com.apple.calendarUIKit.userActivity.type";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  v7[1] = @"com.apple.calendarUIKit.userActivity.version";
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_version];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (CUIKUserActivity)initWithType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = CUIKUserActivity;
  result = [(CUIKUserActivity *)&v5 init];
  if (result)
  {
    result->_type = type;
    result->_version = 65537;
  }

  return result;
}

- (CUIKUserActivity)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = CUIKUserActivity;
  v5 = [(CUIKUserActivity *)&v12 init];
  if (v5)
  {
    v5->_type = [objc_opt_class() _typeFromDictionary:dictionaryCopy];
    v11 = 0;
    v6 = [objc_opt_class() _unsignedIntegerFromDictionary:dictionaryCopy key:@"com.apple.calendarUIKit.userActivity.version" error:&v11];
    v5->_version = v6;
    if (v11 == 1)
    {
      v7 = +[CUIKLogSubsystem continuity];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CUIKUserActivity initWithDictionary:];
      }

LABEL_14:

      v8 = 0;
      goto LABEL_15;
    }

    if (v6 <= 0x10001)
    {
      if (v6 != 65537)
      {
        v7 = +[CUIKLogSubsystem continuity];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [CUIKUserActivity initWithDictionary:];
        }

        goto LABEL_14;
      }
    }

    else if ((v6 & 0xFFFE0000) != 0)
    {
      v7 = +[CUIKLogSubsystem continuity];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CUIKUserActivity initWithDictionary:];
      }

      goto LABEL_14;
    }
  }

  v8 = v5;
LABEL_15:

  return v8;
}

+ (id)activityForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [self _typeFromDictionary:dictionaryCopy];
  v6 = v5;
  if (v5 <= 3)
  {
    if (v5 >= 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v5 > 4097)
    {
      if (v5 != 4098 && v5 != 4099)
      {
        if (v5 != 4100)
        {
          goto LABEL_18;
        }

        goto LABEL_12;
      }

      goto LABEL_17;
    }

    if (v5 == 4)
    {
      goto LABEL_17;
    }

    if (v5 == 4097)
    {
      if ([self _BOOLFromDictionary:dictionaryCopy key:@"com.apple.calendarUIKit.userActivity.tomorrow" error:0])
      {
LABEL_12:
        v6 = 4100;
        goto LABEL_17;
      }

      v6 = 4097;
LABEL_17:
      v7 = objc_opt_class();
      if (v7)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_18:
  v8 = +[CUIKLogSubsystem continuity];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [CUIKUserActivity activityForDictionary:v6];
  }

  v7 = 0;
LABEL_21:
  v9 = [[v7 alloc] initWithDictionary:dictionaryCopy];

  return v9;
}

+ (id)activityForActivity:(id)activity
{
  activityCopy = activity;
  userInfo = [activityCopy userInfo];
  v6 = [self activityForDictionary:userInfo];

  title = [activityCopy title];
  [v6 setActivityTitle:title];

  contentAttributeSet = [activityCopy contentAttributeSet];
  subtitle = [contentAttributeSet subtitle];
  [v6 setActivitySubtitle:subtitle];

  _keywords = [activityCopy _keywords];

  [v6 setActivityKeywords:_keywords];

  return v6;
}

+ (BOOL)_BOOLFromDictionary:(id)dictionary key:(id)key error:(BOOL *)error
{
  v6 = [dictionary objectForKeyedSubscript:key];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v6 BOOLValue];
      v8 = 0;
      if (!error)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  bOOLValue = 0;
  v8 = 1;
  if (error)
  {
LABEL_6:
    *error = v8;
  }

LABEL_7:

  return bOOLValue;
}

+ (int64_t)_integerFromDictionary:(id)dictionary key:(id)key error:(BOOL *)error
{
  v6 = [dictionary objectForKeyedSubscript:key];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v6 integerValue];
      v8 = 0;
      if (!error)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  integerValue = 0;
  v8 = 1;
  if (error)
  {
LABEL_6:
    *error = v8;
  }

LABEL_7:

  return integerValue;
}

+ (unint64_t)_unsignedIntegerFromDictionary:(id)dictionary key:(id)key error:(BOOL *)error
{
  v6 = [dictionary objectForKeyedSubscript:key];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v6 unsignedIntegerValue];
      v8 = 0;
      if (!error)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  unsignedIntegerValue = 0;
  v8 = 1;
  if (error)
  {
LABEL_6:
    *error = v8;
  }

LABEL_7:

  return unsignedIntegerValue;
}

+ (double)_doubleFromDictionary:(id)dictionary key:(id)key error:(BOOL *)error
{
  v6 = [dictionary objectForKeyedSubscript:key];
  v7 = 0.0;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      v7 = v8;
      v9 = 0;
      if (!error)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v9 = 1;
  if (error)
  {
LABEL_6:
    *error = v9;
  }

LABEL_7:

  return v7;
}

+ (id)_stringFromDictionary:(id)dictionary key:(id)key error:(BOOL *)error
{
  v6 = [dictionary objectForKeyedSubscript:key];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = 0;
    v8 = 1;
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = v6;
  v8 = 0;
  if (error)
  {
LABEL_6:
    *error = v8;
  }

LABEL_7:

  return v7;
}

+ (unint64_t)_typeFromDictionary:(id)dictionary
{
  v5 = 0;
  result = [self _unsignedIntegerFromDictionary:dictionary key:@"com.apple.calendarUIKit.userActivity.type" error:&v5];
  if (v5 == 1)
  {
    v4 = +[CUIKLogSubsystem continuity];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CUIKUserActivity _typeFromDictionary:];
    }

    return 0;
  }

  return result;
}

- (void)updateActivity:(id)activity
{
  activityCopy = activity;
  activityTitle = [(CUIKUserActivity *)self activityTitle];
  [activityCopy setTitle:activityTitle];

  activitySubtitle = [(CUIKUserActivity *)self activitySubtitle];

  if (activitySubtitle)
  {
    contentAttributeSet = [activityCopy contentAttributeSet];
    v7 = [contentAttributeSet copy];

    if (!v7)
    {
      v8 = objc_alloc(EKWeakLinkClass());
      activityType = [activityCopy activityType];
      v7 = [v8 initWithItemContentType:activityType];
    }

    activitySubtitle2 = [(CUIKUserActivity *)self activitySubtitle];
    [v7 setSubtitle:activitySubtitle2];

    [activityCopy setContentAttributeSet:v7];
  }

  activityKeywords = [(CUIKUserActivity *)self activityKeywords];
  [activityCopy _setKeywords:activityKeywords];

  dictionary = [(CUIKUserActivity *)self dictionary];
  [activityCopy setUserInfo:dictionary];

  [activityCopy _setEligibleForUserActivityIndexing:1];
  [activityCopy _setEligibleForUserActivityPublicIndexing:0];
  [activityCopy _setEligibleForUserActivityHandoff:1];
  [activityCopy _setEligibleForUserActivityReminders:1];
}

+ (void)activityForDictionary:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_2(&dword_1CAB19000, v2, v3, "invalid CUIKUserActivityType: %@", v4, v5, v6, v7, 2u);
}

@end