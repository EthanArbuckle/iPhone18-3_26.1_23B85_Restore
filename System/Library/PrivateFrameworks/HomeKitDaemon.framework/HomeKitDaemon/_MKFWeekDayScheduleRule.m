@interface _MKFWeekDayScheduleRule
+ (id)initWeekDayScheduleRuleWithModelID:(id)a3 startTime:(id)a4 endTime:(id)a5 daysOfTheWeek:(id)a6 context:(id)a7;
+ (id)populateWeekDayScheduleRuleFromDictionary:(id)a3 existingLocalModels:(id)a4 context:(id)a5;
- (BOOL)isValid;
- (MKFWeekDayScheduleRuleDatabaseID)databaseID;
- (id)dictionaryRepresentation;
- (id)weekDayScheduleRule;
- (void)updateFromWeekDayScheduleRule:(id)a3;
@end

@implementation _MKFWeekDayScheduleRule

- (MKFWeekDayScheduleRuleDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFWeekDayScheduleRuleDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (id)dictionaryRepresentation
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"mi";
  v3 = [(_MKFWeekDayScheduleRule *)self modelID];
  v11[0] = v3;
  v10[1] = @"st";
  v4 = [(_MKFWeekDayScheduleRule *)self startTime];
  v11[1] = v4;
  v10[2] = @"et";
  v5 = [(_MKFWeekDayScheduleRule *)self endTime];
  v11[2] = v5;
  v10[3] = @"dow";
  v6 = [(_MKFWeekDayScheduleRule *)self daysOfTheWeek];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)isValid
{
  v3 = [(_MKFWeekDayScheduleRule *)self modelID];
  if (v3)
  {
    v4 = [(_MKFWeekDayScheduleRule *)self daysOfTheWeek];
    if (v4)
    {
      v5 = [(_MKFWeekDayScheduleRule *)self startTime];
      if (v5)
      {
        v6 = [(_MKFWeekDayScheduleRule *)self endTime];
        v7 = v6 != 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateFromWeekDayScheduleRule:(id)a3
{
  v4 = a3;
  v5 = [v4 startTime];
  v6 = HMSecondsFromDateComponent();
  [(_MKFWeekDayScheduleRule *)self setStartTime:v6];

  v7 = [v4 endTime];
  v8 = HMSecondsFromDateComponent();
  [(_MKFWeekDayScheduleRule *)self setEndTime:v8];

  v9 = MEMORY[0x277CCABB0];
  v10 = [v4 daysOfTheWeek];

  v11 = [v9 numberWithUnsignedInteger:v10];
  [(_MKFWeekDayScheduleRule *)self setDaysOfTheWeek:v11];
}

- (id)weekDayScheduleRule
{
  v3 = objc_alloc(MEMORY[0x277CD1F20]);
  v4 = [(_MKFWeekDayScheduleRule *)self startTime];
  v5 = HMDateComponentFromSecondsOfDay();
  v6 = [(_MKFWeekDayScheduleRule *)self endTime];
  v7 = HMDateComponentFromSecondsOfDay();
  v8 = [(_MKFWeekDayScheduleRule *)self daysOfTheWeek];
  v9 = [v3 initWithStartTime:v5 endTime:v7 daysOfTheWeek:{objc_msgSend(v8, "unsignedIntValue")}];

  return v9;
}

+ (id)populateWeekDayScheduleRuleFromDictionary:(id)a3 existingLocalModels:(id)a4 context:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 objectForKeyedSubscript:@"st"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v8 objectForKeyedSubscript:@"et"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = [v8 objectForKeyedSubscript:@"dow"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = [v8 objectForKeyedSubscript:@"mi"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  if (v22 && v13 && v16 && v19)
  {
    v23 = [v9 objectForKeyedSubscript:v22];
    if (!v23)
    {
      v23 = [a1 initWeekDayScheduleRuleWithModelID:v22 startTime:v13 endTime:v16 daysOfTheWeek:v19 context:v10];
    }

    v24 = [v23 startTime];
    v25 = HMFEqualObjects();

    if ((v25 & 1) == 0)
    {
      [v23 setStartTime:v13];
    }

    v26 = [v23 endTime];
    v27 = HMFEqualObjects();

    if ((v27 & 1) == 0)
    {
      [v23 setEndTime:v16];
    }

    v28 = [v23 daysOfTheWeek];
    v29 = HMFEqualObjects();

    if ((v29 & 1) == 0)
    {
      [v23 setDaysOfTheWeek:v19];
    }
  }

  else
  {
    v37 = v9;
    v30 = v10;
    v31 = objc_autoreleasePoolPush();
    v32 = a1;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v34;
      v40 = 2112;
      v41 = v8;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Cannot create week day schedule rule from dictionary : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v23 = 0;
    v10 = v30;
    v9 = v37;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)initWeekDayScheduleRuleWithModelID:(id)a3 startTime:(id)a4 endTime:(id)a5 daysOfTheWeek:(id)a6 context:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[_MKFWeekDayScheduleRule alloc] initWithContext:v11];

  [(_MKFWeekDayScheduleRule *)v16 setModelID:v15];
  [(_MKFWeekDayScheduleRule *)v16 setStartTime:v14];

  [(_MKFWeekDayScheduleRule *)v16 setEndTime:v13];
  [(_MKFWeekDayScheduleRule *)v16 setDaysOfTheWeek:v12];

  return v16;
}

@end