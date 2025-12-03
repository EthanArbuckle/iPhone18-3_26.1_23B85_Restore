@interface DESUserDefaultsStoreRecord
+ (id)bmltActivatedEventDate;
+ (id)schedulerWakeupPeriodInSeconds;
+ (void)purgeObsoleted;
+ (void)setBmltActivatedEventDate:(id)date;
+ (void)setSchedulerWakeupPeriodInSeconds:(id)seconds;
- (BOOL)shouldRegisterXPCActivity;
- (DESUserDefaultsStoreRecord)initWithRecordID:(id)d;
- (NSDate)lastCompletionDate;
- (NSDictionary)debugInfo;
- (NSNumber)maxTimeLimitInSeconds;
- (NSNumber)periodInSeconds;
- (id)description;
- (int64_t)performCount;
- (void)setDebugInfo:(id)info;
- (void)setLastCompletionDate:(id)date;
- (void)setMaxTimeLimitInSeconds:(id)seconds;
- (void)setPerformCount:(int64_t)count;
- (void)setPeriodInSeconds:(id)seconds;
@end

@implementation DESUserDefaultsStoreRecord

+ (void)purgeObsoleted
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  dictionaryRepresentation = [standardUserDefaults dictionaryRepresentation];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [dictionaryRepresentation countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(dictionaryRepresentation);
        }

        [standardUserDefaults removeObjectForKey:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [dictionaryRepresentation countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

+ (id)schedulerWakeupPeriodInSeconds
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"SchedulerInterval"];

  return v3;
}

+ (void)setSchedulerWakeupPeriodInSeconds:(id)seconds
{
  v3 = MEMORY[0x277CBEBD0];
  secondsCopy = seconds;
  standardUserDefaults = [v3 standardUserDefaults];
  [standardUserDefaults setObject:secondsCopy forKey:@"SchedulerInterval"];
}

+ (id)bmltActivatedEventDate
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"BMLTActivatedEventDate"];

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

+ (void)setBmltActivatedEventDate:(id)date
{
  v3 = MEMORY[0x277CBEBD0];
  dateCopy = date;
  standardUserDefaults = [v3 standardUserDefaults];
  [standardUserDefaults setObject:dateCopy forKey:@"BMLTActivatedEventDate"];
}

- (DESUserDefaultsStoreRecord)initWithRecordID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v10.receiver = self;
    v10.super_class = DESUserDefaultsStoreRecord;
    v6 = [(DESUserDefaultsStoreRecord *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_recordID, d);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  recordID = [(DESUserDefaultsStoreRecord *)self recordID];
  performCount = [(DESUserDefaultsStoreRecord *)self performCount];
  lastCompletionDate = [(DESUserDefaultsStoreRecord *)self lastCompletionDate];
  periodInSeconds = [(DESUserDefaultsStoreRecord *)self periodInSeconds];
  maxTimeLimitInSeconds = [(DESUserDefaultsStoreRecord *)self maxTimeLimitInSeconds];
  v11 = [v3 stringWithFormat:@"%@(%@, %lu, %@, %@, %@)", v5, recordID, performCount, lastCompletionDate, periodInSeconds, maxTimeLimitInSeconds];

  return v11;
}

- (NSDate)lastCompletionDate
{
  completionDateKey = [(DESUserDefaultsStoreRecord *)self completionDateKey];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:completionDateKey];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    distantPast = v4;
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  v6 = distantPast;

  return v6;
}

- (void)setLastCompletionDate:(id)date
{
  dateCopy = date;
  completionDateKey = [(DESUserDefaultsStoreRecord *)self completionDateKey];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setObject:dateCopy forKey:completionDateKey];
}

- (int64_t)performCount
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  performCountKey = [(DESUserDefaultsStoreRecord *)self performCountKey];
  v5 = [standardUserDefaults objectForKey:performCountKey];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)setPerformCount:(int64_t)count
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  performCountKey = [(DESUserDefaultsStoreRecord *)self performCountKey];
  [standardUserDefaults setObject:v5 forKey:performCountKey];
}

- (NSDictionary)debugInfo
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  debugInfoKey = [(DESUserDefaultsStoreRecord *)self debugInfoKey];
  v5 = [standardUserDefaults dictionaryForKey:debugInfoKey];

  return v5;
}

- (void)setDebugInfo:(id)info
{
  v4 = MEMORY[0x277CBEBD0];
  infoCopy = info;
  standardUserDefaults = [v4 standardUserDefaults];
  debugInfoKey = [(DESUserDefaultsStoreRecord *)self debugInfoKey];
  [standardUserDefaults setObject:infoCopy forKey:debugInfoKey];
}

- (NSNumber)periodInSeconds
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  periodKey = [(DESUserDefaultsStoreRecord *)self periodKey];
  v5 = [standardUserDefaults objectForKey:periodKey];

  return v5;
}

- (void)setPeriodInSeconds:(id)seconds
{
  v4 = MEMORY[0x277CBEBD0];
  secondsCopy = seconds;
  standardUserDefaults = [v4 standardUserDefaults];
  periodKey = [(DESUserDefaultsStoreRecord *)self periodKey];
  [standardUserDefaults setObject:secondsCopy forKey:periodKey];
}

- (NSNumber)maxTimeLimitInSeconds
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  maxTimeLimitKey = [(DESUserDefaultsStoreRecord *)self maxTimeLimitKey];
  v5 = [standardUserDefaults objectForKey:maxTimeLimitKey];

  return v5;
}

- (void)setMaxTimeLimitInSeconds:(id)seconds
{
  v4 = MEMORY[0x277CBEBD0];
  secondsCopy = seconds;
  standardUserDefaults = [v4 standardUserDefaults];
  maxTimeLimitKey = [(DESUserDefaultsStoreRecord *)self maxTimeLimitKey];
  [standardUserDefaults setObject:secondsCopy forKey:maxTimeLimitKey];
}

- (BOOL)shouldRegisterXPCActivity
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  shouldRegisterXPCActivityKey = [(DESUserDefaultsStoreRecord *)self shouldRegisterXPCActivityKey];
  v5 = [standardUserDefaults BOOLForKey:shouldRegisterXPCActivityKey];

  return v5;
}

@end