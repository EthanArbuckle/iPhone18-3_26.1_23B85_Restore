@interface DESUserDefaultsStoreRecord
+ (id)bmltActivatedEventDate;
+ (id)schedulerWakeupPeriodInSeconds;
+ (void)purgeObsoleted;
+ (void)setBmltActivatedEventDate:(id)a3;
+ (void)setSchedulerWakeupPeriodInSeconds:(id)a3;
- (BOOL)shouldRegisterXPCActivity;
- (DESUserDefaultsStoreRecord)initWithRecordID:(id)a3;
- (NSDate)lastCompletionDate;
- (NSDictionary)debugInfo;
- (NSNumber)maxTimeLimitInSeconds;
- (NSNumber)periodInSeconds;
- (id)description;
- (int64_t)performCount;
- (void)setDebugInfo:(id)a3;
- (void)setLastCompletionDate:(id)a3;
- (void)setMaxTimeLimitInSeconds:(id)a3;
- (void)setPerformCount:(int64_t)a3;
- (void)setPeriodInSeconds:(id)a3;
@end

@implementation DESUserDefaultsStoreRecord

+ (void)purgeObsoleted
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 dictionaryRepresentation];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 removeObjectForKey:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

+ (id)schedulerWakeupPeriodInSeconds
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"SchedulerInterval"];

  return v3;
}

+ (void)setSchedulerWakeupPeriodInSeconds:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  [v5 setObject:v4 forKey:@"SchedulerInterval"];
}

+ (id)bmltActivatedEventDate
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"BMLTActivatedEventDate"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)setBmltActivatedEventDate:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  [v5 setObject:v4 forKey:@"BMLTActivatedEventDate"];
}

- (DESUserDefaultsStoreRecord)initWithRecordID:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = DESUserDefaultsStoreRecord;
    v6 = [(DESUserDefaultsStoreRecord *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_recordID, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(DESUserDefaultsStoreRecord *)self recordID];
  v7 = [(DESUserDefaultsStoreRecord *)self performCount];
  v8 = [(DESUserDefaultsStoreRecord *)self lastCompletionDate];
  v9 = [(DESUserDefaultsStoreRecord *)self periodInSeconds];
  v10 = [(DESUserDefaultsStoreRecord *)self maxTimeLimitInSeconds];
  v11 = [v3 stringWithFormat:@"%@(%@, %lu, %@, %@, %@)", v5, v6, v7, v8, v9, v10];

  return v11;
}

- (NSDate)lastCompletionDate
{
  v2 = [(DESUserDefaultsStoreRecord *)self completionDateKey];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 objectForKey:v2];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v6 = v5;

  return v6;
}

- (void)setLastCompletionDate:(id)a3
{
  v4 = a3;
  v6 = [(DESUserDefaultsStoreRecord *)self completionDateKey];
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v5 setObject:v4 forKey:v6];
}

- (int64_t)performCount
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [(DESUserDefaultsStoreRecord *)self performCountKey];
  v5 = [v3 objectForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setPerformCount:(int64_t)a3
{
  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [(DESUserDefaultsStoreRecord *)self performCountKey];
  [v7 setObject:v5 forKey:v6];
}

- (NSDictionary)debugInfo
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [(DESUserDefaultsStoreRecord *)self debugInfoKey];
  v5 = [v3 dictionaryForKey:v4];

  return v5;
}

- (void)setDebugInfo:(id)a3
{
  v4 = MEMORY[0x277CBEBD0];
  v5 = a3;
  v7 = [v4 standardUserDefaults];
  v6 = [(DESUserDefaultsStoreRecord *)self debugInfoKey];
  [v7 setObject:v5 forKey:v6];
}

- (NSNumber)periodInSeconds
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [(DESUserDefaultsStoreRecord *)self periodKey];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setPeriodInSeconds:(id)a3
{
  v4 = MEMORY[0x277CBEBD0];
  v5 = a3;
  v7 = [v4 standardUserDefaults];
  v6 = [(DESUserDefaultsStoreRecord *)self periodKey];
  [v7 setObject:v5 forKey:v6];
}

- (NSNumber)maxTimeLimitInSeconds
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [(DESUserDefaultsStoreRecord *)self maxTimeLimitKey];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setMaxTimeLimitInSeconds:(id)a3
{
  v4 = MEMORY[0x277CBEBD0];
  v5 = a3;
  v7 = [v4 standardUserDefaults];
  v6 = [(DESUserDefaultsStoreRecord *)self maxTimeLimitKey];
  [v7 setObject:v5 forKey:v6];
}

- (BOOL)shouldRegisterXPCActivity
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [(DESUserDefaultsStoreRecord *)self shouldRegisterXPCActivityKey];
  v5 = [v3 BOOLForKey:v4];

  return v5;
}

@end