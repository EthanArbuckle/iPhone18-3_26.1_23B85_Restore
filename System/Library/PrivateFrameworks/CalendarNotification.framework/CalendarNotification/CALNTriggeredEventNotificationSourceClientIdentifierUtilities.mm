@interface CALNTriggeredEventNotificationSourceClientIdentifierUtilities
+ (id)_characterSetForEncodingIdentifierComponents;
+ (id)alarmIDForSourceClientIdentifier:(id)a3;
+ (id)eventIDForSourceClientIdentifier:(id)a3;
+ (id)sourceClientIdentifierForEventID:(id)a3 alarmID:(id)a4;
+ (void)eventID:(id *)a3 andAlarmID:(id *)a4 fromSourceClientIdentifier:(id)a5;
@end

@implementation CALNTriggeredEventNotificationSourceClientIdentifierUtilities

+ (id)_characterSetForEncodingIdentifierComponents
{
  if (_characterSetForEncodingIdentifierComponents_onceToken != -1)
  {
    +[CALNTriggeredEventNotificationSourceClientIdentifierUtilities _characterSetForEncodingIdentifierComponents];
  }

  v3 = _characterSetForEncodingIdentifierComponents_characterSet;

  return v3;
}

void __109__CALNTriggeredEventNotificationSourceClientIdentifierUtilities__characterSetForEncodingIdentifierComponents__block_invoke()
{
  v3 = [@"" stringByAppendingString:@"%"];;
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:v3];
  v1 = [v0 invertedSet];
  v2 = _characterSetForEncodingIdentifierComponents_characterSet;
  _characterSetForEncodingIdentifierComponents_characterSet = v1;
}

+ (id)sourceClientIdentifierForEventID:(id)a3 alarmID:(id)a4
{
  v21[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [a1 _characterSetForEncodingIdentifierComponents];
  v9 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v8];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &stru_28551FB98;
  }

  v11 = v10;

  if (v6)
  {
    v12 = [a1 _characterSetForEncodingIdentifierComponents];
    v13 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v12];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &stru_28551FB98;
    }

    v16 = v15;

    v21[0] = v11;
    v21[1] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v18 = [v17 componentsJoinedByString:@""];;
  }

  else
  {
    v18 = v11;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)alarmIDForSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = 0;
  [a1 eventID:&v12 andAlarmID:&v11 fromSourceClientIdentifier:v4];
  v5 = v12;
  v6 = v11;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(CALNTriggeredEventNotificationSourceClientIdentifierUtilities *)v4 alarmIDForSourceClientIdentifier:v9];
    }
  }

  return v7;
}

+ (id)eventIDForSourceClientIdentifier:(id)a3
{
  v6 = 0;
  v7 = 0;
  [a1 eventID:&v7 andAlarmID:&v6 fromSourceClientIdentifier:a3];
  v3 = v7;
  v4 = v7;

  return v3;
}

+ (void)eventID:(id *)a3 andAlarmID:(id *)a4 fromSourceClientIdentifier:(id)a5
{
  v7 = a5;
  v8 = [v7 componentsSeparatedByString:@""];;
  *a3 = 0;
  *a4 = 0;
  if ([v8 count])
  {
    v9 = [v8 objectAtIndexedSubscript:0];
    v10 = [v9 stringByRemovingPercentEncoding];
    if ([v8 count] == 2 && (objc_msgSend(v8, "objectAtIndexedSubscript:", 1), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      v13 = [v11 stringByRemovingPercentEncoding];
      v14 = v10;
      *a3 = v10;
      if (v13)
      {
        v15 = v13;
        *a4 = v13;
      }
    }

    else
    {
      v16 = v10;
      v12 = 0;
      *a3 = v10;
    }
  }

  else
  {
    v17 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:v7 andAlarmID:v17 fromSourceClientIdentifier:?];
    }
  }
}

+ (void)alarmIDForSourceClientIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_242909000, a2, OS_LOG_TYPE_DEBUG, "Could not get alarm ID for source client identifier = %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)eventID:(uint64_t)a1 andAlarmID:(NSObject *)a2 fromSourceClientIdentifier:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Invalid sourceClientIdentifier (%{public}@). Could not find at least one component.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end