@interface _MKFWeekDayScheduleRule
+ (id)initWeekDayScheduleRuleWithModelID:(id)d startTime:(id)time endTime:(id)endTime daysOfTheWeek:(id)week context:(id)context;
+ (id)populateWeekDayScheduleRuleFromDictionary:(id)dictionary existingLocalModels:(id)models context:(id)context;
- (BOOL)isValid;
- (MKFWeekDayScheduleRuleDatabaseID)databaseID;
- (id)dictionaryRepresentation;
- (id)weekDayScheduleRule;
- (void)updateFromWeekDayScheduleRule:(id)rule;
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
  modelID = [(_MKFWeekDayScheduleRule *)self modelID];
  v11[0] = modelID;
  v10[1] = @"st";
  startTime = [(_MKFWeekDayScheduleRule *)self startTime];
  v11[1] = startTime;
  v10[2] = @"et";
  endTime = [(_MKFWeekDayScheduleRule *)self endTime];
  v11[2] = endTime;
  v10[3] = @"dow";
  daysOfTheWeek = [(_MKFWeekDayScheduleRule *)self daysOfTheWeek];
  v11[3] = daysOfTheWeek;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)isValid
{
  modelID = [(_MKFWeekDayScheduleRule *)self modelID];
  if (modelID)
  {
    daysOfTheWeek = [(_MKFWeekDayScheduleRule *)self daysOfTheWeek];
    if (daysOfTheWeek)
    {
      startTime = [(_MKFWeekDayScheduleRule *)self startTime];
      if (startTime)
      {
        endTime = [(_MKFWeekDayScheduleRule *)self endTime];
        v7 = endTime != 0;
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

- (void)updateFromWeekDayScheduleRule:(id)rule
{
  ruleCopy = rule;
  startTime = [ruleCopy startTime];
  v6 = HMSecondsFromDateComponent();
  [(_MKFWeekDayScheduleRule *)self setStartTime:v6];

  endTime = [ruleCopy endTime];
  v8 = HMSecondsFromDateComponent();
  [(_MKFWeekDayScheduleRule *)self setEndTime:v8];

  v9 = MEMORY[0x277CCABB0];
  daysOfTheWeek = [ruleCopy daysOfTheWeek];

  v11 = [v9 numberWithUnsignedInteger:daysOfTheWeek];
  [(_MKFWeekDayScheduleRule *)self setDaysOfTheWeek:v11];
}

- (id)weekDayScheduleRule
{
  v3 = objc_alloc(MEMORY[0x277CD1F20]);
  startTime = [(_MKFWeekDayScheduleRule *)self startTime];
  v5 = HMDateComponentFromSecondsOfDay();
  endTime = [(_MKFWeekDayScheduleRule *)self endTime];
  v7 = HMDateComponentFromSecondsOfDay();
  daysOfTheWeek = [(_MKFWeekDayScheduleRule *)self daysOfTheWeek];
  v9 = [v3 initWithStartTime:v5 endTime:v7 daysOfTheWeek:{objc_msgSend(daysOfTheWeek, "unsignedIntValue")}];

  return v9;
}

+ (id)populateWeekDayScheduleRuleFromDictionary:(id)dictionary existingLocalModels:(id)models context:(id)context
{
  v42 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  modelsCopy = models;
  contextCopy = context;
  v11 = [dictionaryCopy objectForKeyedSubscript:@"st"];
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

  v14 = [dictionaryCopy objectForKeyedSubscript:@"et"];
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

  v17 = [dictionaryCopy objectForKeyedSubscript:@"dow"];
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

  v20 = [dictionaryCopy objectForKeyedSubscript:@"mi"];
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
    v23 = [modelsCopy objectForKeyedSubscript:v22];
    if (!v23)
    {
      v23 = [self initWeekDayScheduleRuleWithModelID:v22 startTime:v13 endTime:v16 daysOfTheWeek:v19 context:contextCopy];
    }

    startTime = [v23 startTime];
    v25 = HMFEqualObjects();

    if ((v25 & 1) == 0)
    {
      [v23 setStartTime:v13];
    }

    endTime = [v23 endTime];
    v27 = HMFEqualObjects();

    if ((v27 & 1) == 0)
    {
      [v23 setEndTime:v16];
    }

    daysOfTheWeek = [v23 daysOfTheWeek];
    v29 = HMFEqualObjects();

    if ((v29 & 1) == 0)
    {
      [v23 setDaysOfTheWeek:v19];
    }
  }

  else
  {
    v37 = modelsCopy;
    v30 = contextCopy;
    v31 = objc_autoreleasePoolPush();
    selfCopy = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v34;
      v40 = 2112;
      v41 = dictionaryCopy;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Cannot create week day schedule rule from dictionary : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v23 = 0;
    contextCopy = v30;
    modelsCopy = v37;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)initWeekDayScheduleRuleWithModelID:(id)d startTime:(id)time endTime:(id)endTime daysOfTheWeek:(id)week context:(id)context
{
  contextCopy = context;
  weekCopy = week;
  endTimeCopy = endTime;
  timeCopy = time;
  dCopy = d;
  v16 = [[_MKFWeekDayScheduleRule alloc] initWithContext:contextCopy];

  [(_MKFWeekDayScheduleRule *)v16 setModelID:dCopy];
  [(_MKFWeekDayScheduleRule *)v16 setStartTime:timeCopy];

  [(_MKFWeekDayScheduleRule *)v16 setEndTime:endTimeCopy];
  [(_MKFWeekDayScheduleRule *)v16 setDaysOfTheWeek:weekCopy];

  return v16;
}

@end