@interface ICASSnapshotTimeData
- (ICASSnapshotTimeData)initWithLastTimeOfAttemptedSchedule:(id)schedule;
- (id)toDict;
@end

@implementation ICASSnapshotTimeData

- (ICASSnapshotTimeData)initWithLastTimeOfAttemptedSchedule:(id)schedule
{
  scheduleCopy = schedule;
  v9.receiver = self;
  v9.super_class = ICASSnapshotTimeData;
  v6 = [(ICASSnapshotTimeData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lastTimeOfAttemptedSchedule, schedule);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"lastTimeOfAttemptedSchedule";
  lastTimeOfAttemptedSchedule = [(ICASSnapshotTimeData *)self lastTimeOfAttemptedSchedule];
  if (lastTimeOfAttemptedSchedule)
  {
    lastTimeOfAttemptedSchedule2 = [(ICASSnapshotTimeData *)self lastTimeOfAttemptedSchedule];
  }

  else
  {
    lastTimeOfAttemptedSchedule2 = objc_opt_new();
  }

  v5 = lastTimeOfAttemptedSchedule2;
  v10[0] = lastTimeOfAttemptedSchedule2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end