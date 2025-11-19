@interface CUIKUserActivity
+ (BOOL)_BOOLFromDictionary:(id)a3 key:(id)a4 error:(BOOL *)a5;
+ (double)_doubleFromDictionary:(id)a3 key:(id)a4 error:(BOOL *)a5;
+ (id)_stringFromDictionary:(id)a3 key:(id)a4 error:(BOOL *)a5;
+ (id)activityForActivity:(id)a3;
+ (id)activityForDictionary:(id)a3;
+ (int64_t)_integerFromDictionary:(id)a3 key:(id)a4 error:(BOOL *)a5;
+ (unint64_t)_typeFromDictionary:(id)a3;
+ (unint64_t)_unsignedIntegerFromDictionary:(id)a3 key:(id)a4 error:(BOOL *)a5;
- (CUIKUserActivity)initWithDictionary:(id)a3;
- (CUIKUserActivity)initWithType:(unint64_t)a3;
- (id)dictionary;
- (void)updateActivity:(id)a3;
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

- (CUIKUserActivity)initWithType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CUIKUserActivity;
  result = [(CUIKUserActivity *)&v5 init];
  if (result)
  {
    result->_type = a3;
    result->_version = 65537;
  }

  return result;
}

- (CUIKUserActivity)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CUIKUserActivity;
  v5 = [(CUIKUserActivity *)&v12 init];
  if (v5)
  {
    v5->_type = [objc_opt_class() _typeFromDictionary:v4];
    v11 = 0;
    v6 = [objc_opt_class() _unsignedIntegerFromDictionary:v4 key:@"com.apple.calendarUIKit.userActivity.version" error:&v11];
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

+ (id)activityForDictionary:(id)a3
{
  v4 = a3;
  v5 = [a1 _typeFromDictionary:v4];
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
      if ([a1 _BOOLFromDictionary:v4 key:@"com.apple.calendarUIKit.userActivity.tomorrow" error:0])
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
  v9 = [[v7 alloc] initWithDictionary:v4];

  return v9;
}

+ (id)activityForActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [a1 activityForDictionary:v5];

  v7 = [v4 title];
  [v6 setActivityTitle:v7];

  v8 = [v4 contentAttributeSet];
  v9 = [v8 subtitle];
  [v6 setActivitySubtitle:v9];

  v10 = [v4 _keywords];

  [v6 setActivityKeywords:v10];

  return v6;
}

+ (BOOL)_BOOLFromDictionary:(id)a3 key:(id)a4 error:(BOOL *)a5
{
  v6 = [a3 objectForKeyedSubscript:a4];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 BOOLValue];
      v8 = 0;
      if (!a5)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v7 = 0;
  v8 = 1;
  if (a5)
  {
LABEL_6:
    *a5 = v8;
  }

LABEL_7:

  return v7;
}

+ (int64_t)_integerFromDictionary:(id)a3 key:(id)a4 error:(BOOL *)a5
{
  v6 = [a3 objectForKeyedSubscript:a4];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 integerValue];
      v8 = 0;
      if (!a5)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v7 = 0;
  v8 = 1;
  if (a5)
  {
LABEL_6:
    *a5 = v8;
  }

LABEL_7:

  return v7;
}

+ (unint64_t)_unsignedIntegerFromDictionary:(id)a3 key:(id)a4 error:(BOOL *)a5
{
  v6 = [a3 objectForKeyedSubscript:a4];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 unsignedIntegerValue];
      v8 = 0;
      if (!a5)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v7 = 0;
  v8 = 1;
  if (a5)
  {
LABEL_6:
    *a5 = v8;
  }

LABEL_7:

  return v7;
}

+ (double)_doubleFromDictionary:(id)a3 key:(id)a4 error:(BOOL *)a5
{
  v6 = [a3 objectForKeyedSubscript:a4];
  v7 = 0.0;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      v7 = v8;
      v9 = 0;
      if (!a5)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v9 = 1;
  if (a5)
  {
LABEL_6:
    *a5 = v9;
  }

LABEL_7:

  return v7;
}

+ (id)_stringFromDictionary:(id)a3 key:(id)a4 error:(BOOL *)a5
{
  v6 = [a3 objectForKeyedSubscript:a4];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = 0;
    v8 = 1;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = v6;
  v8 = 0;
  if (a5)
  {
LABEL_6:
    *a5 = v8;
  }

LABEL_7:

  return v7;
}

+ (unint64_t)_typeFromDictionary:(id)a3
{
  v5 = 0;
  result = [a1 _unsignedIntegerFromDictionary:a3 key:@"com.apple.calendarUIKit.userActivity.type" error:&v5];
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

- (void)updateActivity:(id)a3
{
  v13 = a3;
  v4 = [(CUIKUserActivity *)self activityTitle];
  [v13 setTitle:v4];

  v5 = [(CUIKUserActivity *)self activitySubtitle];

  if (v5)
  {
    v6 = [v13 contentAttributeSet];
    v7 = [v6 copy];

    if (!v7)
    {
      v8 = objc_alloc(EKWeakLinkClass());
      v9 = [v13 activityType];
      v7 = [v8 initWithItemContentType:v9];
    }

    v10 = [(CUIKUserActivity *)self activitySubtitle];
    [v7 setSubtitle:v10];

    [v13 setContentAttributeSet:v7];
  }

  v11 = [(CUIKUserActivity *)self activityKeywords];
  [v13 _setKeywords:v11];

  v12 = [(CUIKUserActivity *)self dictionary];
  [v13 setUserInfo:v12];

  [v13 _setEligibleForUserActivityIndexing:1];
  [v13 _setEligibleForUserActivityPublicIndexing:0];
  [v13 _setEligibleForUserActivityHandoff:1];
  [v13 _setEligibleForUserActivityReminders:1];
}

+ (void)activityForDictionary:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_2(&dword_1CAB19000, v2, v3, "invalid CUIKUserActivityType: %@", v4, v5, v6, v7, 2u);
}

@end