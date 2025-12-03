@interface FCNewsPersonalizationTrainingBias
+ (id)identifierForEventType:(id)type feedType:(id)feedType groupType:(id)groupType;
- (FCNewsPersonalizationTrainingBias)initWithDictionary:(id)dictionary;
- (NSString)identifier;
- (id)description;
@end

@implementation FCNewsPersonalizationTrainingBias

- (FCNewsPersonalizationTrainingBias)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = FCNewsPersonalizationTrainingBias;
  v5 = [(FCNewsPersonalizationTrainingBias *)&v17 init];
  if (v5)
  {
    v6 = FCAppConfigurationStringValue(dictionaryCopy, @"eventType", 0);
    v7 = FCAppConfigurationStringValue(dictionaryCopy, @"feedType", 0);
    v8 = FCAppConfigurationStringValue(dictionaryCopy, @"groupType", 0);
    v9 = v8;
    if (!v6 && !v7 && !v8)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Was supplied a group bias with no event, feed or group type"];
        *buf = 136315906;
        v19 = "[FCNewsPersonalizationTrainingBias initWithDictionary:]";
        v20 = 2080;
        v21 = "FCNewsPersonalizationTrainingBias.m";
        v22 = 1024;
        v23 = 37;
        v24 = 2114;
        v25 = v15;
        _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: InvalidGroupBias) : %s %s:%d %{public}@", buf, 0x26u);
      }

      v5 = 0;
LABEL_15:
      v12 = 0;
      goto LABEL_16;
    }

    v10 = FCAppConfigurationNumberValue(dictionaryCopy, @"bias", 0);
    if (v10)
    {
      objc_storeStrong(&v5->_eventType, v6);
      objc_storeStrong(&v5->_feedType, v7);
      objc_storeStrong(&v5->_groupType, v9);
      [v10 doubleValue];
      v5->_bias = v11;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Was supplied a group bias with no bias"];
        *buf = 136315906;
        v19 = "[FCNewsPersonalizationTrainingBias initWithDictionary:]";
        v20 = 2080;
        v21 = "FCNewsPersonalizationTrainingBias.m";
        v22 = 1024;
        v23 = 44;
        v24 = 2114;
        v25 = v16;
        _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: InvalidGroupBias) : %s %s:%d %{public}@", buf, 0x26u);
      }

      v5 = 0;
    }

    if (!v10)
    {
      goto LABEL_15;
    }
  }

  v5 = v5;
  v12 = v5;
LABEL_16:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (NSString)identifier
{
  eventType = [(FCNewsPersonalizationTrainingBias *)self eventType];
  feedType = [(FCNewsPersonalizationTrainingBias *)self feedType];
  groupType = [(FCNewsPersonalizationTrainingBias *)self groupType];
  v6 = [FCNewsPersonalizationTrainingBias identifierForEventType:eventType feedType:feedType groupType:groupType];

  return v6;
}

+ (id)identifierForEventType:(id)type feedType:(id)feedType groupType:(id)groupType
{
  typeCopy = type;
  feedTypeCopy = feedType;
  groupTypeCopy = groupType;
  string = [MEMORY[0x1E696AD60] string];
  if (typeCopy)
  {
    v11 = [typeCopy stringByAppendingString:@"-"];
    [string appendString:v11];
  }

  if (feedTypeCopy)
  {
    v12 = [feedTypeCopy stringByAppendingString:@"-"];
    [string appendString:v12];
  }

  if (groupTypeCopy)
  {
    v13 = [groupTypeCopy stringByAppendingString:@"-"];
    [string appendString:v13];
  }

  if ([string length])
  {
    [string deleteCharactersInRange:{objc_msgSend(string, "length") - 1, 1}];
  }

  return string;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  eventType = [(FCNewsPersonalizationTrainingBias *)self eventType];
  [v3 appendFormat:@"; eventType: %@", eventType];

  feedType = [(FCNewsPersonalizationTrainingBias *)self feedType];
  [v3 appendFormat:@"; feedType: %@", feedType];

  groupType = [(FCNewsPersonalizationTrainingBias *)self groupType];
  [v3 appendFormat:@"; groupType: %@", groupType];

  [(FCNewsPersonalizationTrainingBias *)self bias];
  [v3 appendFormat:@"; bias: %f", v7];
  [v3 appendString:@">"];

  return v3;
}

@end