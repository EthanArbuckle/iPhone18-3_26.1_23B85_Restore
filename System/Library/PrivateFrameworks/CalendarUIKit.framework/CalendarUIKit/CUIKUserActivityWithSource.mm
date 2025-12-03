@interface CUIKUserActivityWithSource
- (CUIKUserActivityWithSource)initWithDictionary:(id)dictionary;
- (CUIKUserActivityWithSource)initWithSource:(id)source type:(unint64_t)type;
- (id)dictionary;
- (unint64_t)isMatchForSource:(id)source;
- (void)dictionary;
@end

@implementation CUIKUserActivityWithSource

- (CUIKUserActivityWithSource)initWithSource:(id)source type:(unint64_t)type
{
  sourceCopy = source;
  v17.receiver = self;
  v17.super_class = CUIKUserActivityWithSource;
  v7 = [(CUIKUserActivity *)&v17 initWithType:type];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = sourceCopy ? [sourceCopy sourceType] : 0;
  v7->_sourceType = v8;
  if (![(CUIKUserActivityWithSource *)v7 _requiresHostAndOwner])
  {
    goto LABEL_8;
  }

  serverHost = [sourceCopy serverHost];
  sourceHost = v7->_sourceHost;
  v7->_sourceHost = serverHost;

  if (!v7->_sourceHost)
  {
    v16 = +[CUIKLogSubsystem continuity];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CUIKUserActivityWithSource initWithSource:type:];
    }

    goto LABEL_14;
  }

  ownerAddresses = [sourceCopy ownerAddresses];
  anyObject = [ownerAddresses anyObject];
  sourceOwner = v7->_sourceOwner;
  v7->_sourceOwner = anyObject;

  if (!v7->_sourceOwner)
  {
    v16 = +[CUIKLogSubsystem continuity];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CUIKUserActivityWithSource initWithSource:type:];
    }

LABEL_14:

    v14 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v14 = v7;
LABEL_9:

  return v14;
}

- (CUIKUserActivityWithSource)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = CUIKUserActivityWithSource;
  v5 = [(CUIKUserActivity *)&v18 initWithDictionary:dictionaryCopy];
  if (!v5)
  {
    goto LABEL_18;
  }

  v17 = 0;
  v6 = [objc_opt_class() _unsignedIntegerFromDictionary:dictionaryCopy key:@"com.apple.calendarUIKit.userActivity.sourceType" error:&v17];
  v7 = v6;
  if (v6 >= 8)
  {
    v9 = +[CUIKLogSubsystem continuity];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CUIKUserActivityWithSource initWithDictionary:v7];
    }

    v8 = 0;
  }

  else
  {
    v8 = qword_1CAD57E60[v6];
  }

  v5->_sourceType = v8;
  if (v17 != 1)
  {
    if ([(CUIKUserActivityWithSource *)v5 _requiresHostAndOwner])
    {
      v12 = [objc_opt_class() _stringFromDictionary:dictionaryCopy key:@"com.apple.calendarUIKit.userActivity.sourceHost" error:&v17];
      sourceHost = v5->_sourceHost;
      v5->_sourceHost = v12;

      if (v17 == 1)
      {
        v10 = +[CUIKLogSubsystem continuity];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [CUIKUserActivityWithSource initWithDictionary:];
        }

        goto LABEL_10;
      }

      v14 = [objc_opt_class() _stringFromDictionary:dictionaryCopy key:@"com.apple.calendarUIKit.userActivity.sourceOwner" error:&v17];
      sourceOwner = v5->_sourceOwner;
      v5->_sourceOwner = v14;

      if (v17 == 1)
      {
        v10 = +[CUIKLogSubsystem continuity];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [CUIKUserActivityWithSource initWithDictionary:];
        }

        goto LABEL_10;
      }
    }

LABEL_18:
    v11 = v5;
    goto LABEL_19;
  }

  v10 = +[CUIKLogSubsystem continuity];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [CUIKUserActivityWithSource initWithDictionary:];
  }

LABEL_10:

  v11 = 0;
LABEL_19:

  return v11;
}

- (id)dictionary
{
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v12.receiver = self;
  v12.super_class = CUIKUserActivityWithSource;
  dictionary = [(CUIKUserActivity *)&v12 dictionary];
  v5 = [v3 initWithDictionary:dictionary];

  v6 = MEMORY[0x1E696AD98];
  sourceType = self->_sourceType;
  if (sourceType >= 7)
  {
    v9 = +[CUIKLogSubsystem continuity];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CUIKUserActivityWithSource *)sourceType dictionary];
    }

    v8 = 0;
  }

  else
  {
    v8 = sourceType + 1;
  }

  v10 = [v6 numberWithUnsignedInteger:v8];
  [v5 setObject:v10 forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.sourceType"];

  if ([(CUIKUserActivityWithSource *)self _requiresHostAndOwner])
  {
    [v5 setObject:self->_sourceHost forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.sourceHost"];
    [v5 setObject:self->_sourceOwner forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.sourceOwner"];
  }

  return v5;
}

- (unint64_t)isMatchForSource:(id)source
{
  sourceCopy = source;
  sourceType = [sourceCopy sourceType];
  if (sourceType)
  {
    sourceType = self->_sourceType;
    if (sourceType)
    {
      if (sourceType != sourceType)
      {
        goto LABEL_13;
      }

      if (![(CUIKUserActivityWithSource *)self _requiresHostAndOwner])
      {
        goto LABEL_15;
      }

      serverHost = [sourceCopy serverHost];
      if ([serverHost length])
      {
        if ([serverHost isEqualToString:self->_sourceHost])
        {
          goto LABEL_7;
        }
      }

      else if (![(NSString *)self->_sourceHost length])
      {
LABEL_7:
        ownerAddresses = [sourceCopy ownerAddresses];
        if ([ownerAddresses count])
        {
          v9 = [ownerAddresses containsObject:self->_sourceOwner];

          if (v9)
          {
            goto LABEL_15;
          }

          goto LABEL_13;
        }

        v11 = [(NSString *)self->_sourceOwner length];

        if (!v11)
        {
LABEL_15:
          v10 = 1;
          goto LABEL_16;
        }

LABEL_13:
        v10 = 0;
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

  v10 = 2;
LABEL_16:

  return v10;
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_2(&dword_1CAB19000, v2, v3, "Invalid CUIKUserActivitySourceType: %@", v4, v5, v6, v7, 2u);
}

- (void)dictionary
{
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:self];
  OUTLINED_FUNCTION_2(&dword_1CAB19000, v2, v3, "Invalid EKSourceType: %@", v4, v5, v6, v7, 2u);
}

@end