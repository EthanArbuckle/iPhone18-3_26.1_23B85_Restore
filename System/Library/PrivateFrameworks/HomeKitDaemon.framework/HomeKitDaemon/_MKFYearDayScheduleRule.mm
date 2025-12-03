@interface _MKFYearDayScheduleRule
+ (id)populateYearDayScheduleRuleFromDictionary:(id)dictionary existingLocalModels:(id)models context:(id)context;
- (BOOL)isValid;
- (MKFYearDayScheduleRuleDatabaseID)databaseID;
- (id)dictionaryRepresentation;
- (id)yearDayScheduleRule;
@end

@implementation _MKFYearDayScheduleRule

- (MKFYearDayScheduleRuleDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFYearDayScheduleRuleDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (id)dictionaryRepresentation
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"mi";
  modelID = [(_MKFYearDayScheduleRule *)self modelID];
  v10[0] = modelID;
  v9[1] = @"st";
  startDate = [(_MKFYearDayScheduleRule *)self startDate];
  v10[1] = startDate;
  v9[2] = @"et";
  endDate = [(_MKFYearDayScheduleRule *)self endDate];
  v10[2] = endDate;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)isValid
{
  modelID = [(_MKFYearDayScheduleRule *)self modelID];
  if (modelID)
  {
    startDate = [(_MKFYearDayScheduleRule *)self startDate];
    if (startDate)
    {
      endDate = [(_MKFYearDayScheduleRule *)self endDate];
      v6 = endDate != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)yearDayScheduleRule
{
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  startDate = [(_MKFYearDayScheduleRule *)self startDate];
  endDate = [(_MKFYearDayScheduleRule *)self endDate];
  v6 = [v3 initWithStartDate:startDate endDate:endDate];

  v7 = [objc_alloc(MEMORY[0x277CD1F48]) initWithDateInterval:v6];

  return v7;
}

+ (id)populateYearDayScheduleRuleFromDictionary:(id)dictionary existingLocalModels:(id)models context:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
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

  v17 = [dictionaryCopy objectForKeyedSubscript:@"mi"];
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

  if (v19 && v13 && v16)
  {
    v20 = [modelsCopy objectForKeyedSubscript:v19];
    if (!v20)
    {
      v20 = [[_MKFYearDayScheduleRule alloc] initWithContext:contextCopy];
      [(_MKFYearDayScheduleRule *)v20 setModelID:v19];
      [(_MKFYearDayScheduleRule *)v20 setStartDate:v13];
      [(_MKFYearDayScheduleRule *)v20 setEndDate:v16];
    }

    startDate = [(_MKFYearDayScheduleRule *)v20 startDate];
    v22 = HMFEqualObjects();

    if ((v22 & 1) == 0)
    {
      [(_MKFYearDayScheduleRule *)v20 setStartDate:v13];
    }

    endDate = [(_MKFYearDayScheduleRule *)v20 endDate];
    v24 = HMFEqualObjects();

    if ((v24 & 1) == 0)
    {
      [(_MKFYearDayScheduleRule *)v20 setEndDate:v16];
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      v31 = 138543618;
      v32 = v28;
      v33 = 2112;
      v34 = dictionaryCopy;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Cannot create year day schedule rule from dictionary : %@", &v31, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v20 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v20;
}

@end