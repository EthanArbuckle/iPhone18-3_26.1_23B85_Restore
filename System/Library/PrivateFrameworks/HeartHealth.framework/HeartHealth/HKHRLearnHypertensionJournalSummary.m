@interface HKHRLearnHypertensionJournalSummary
- (BOOL)hasBedtimeSamplesForDayIndex:(int64_t)a3;
- (BOOL)hasWakeupSamplesForDayIndex:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (HKHRLearnHypertensionJournalSummary)initWithWakeupSampleMap:(id)a3 bedtimeSampleMap:(id)a4 completeDate:(id)a5;
- (NSDate)completeDate;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation HKHRLearnHypertensionJournalSummary

- (HKHRLearnHypertensionJournalSummary)initWithWakeupSampleMap:(id)a3 bedtimeSampleMap:(id)a4 completeDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HKHRLearnHypertensionJournalSummary;
  v12 = [(HKHRLearnHypertensionJournalSummary *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_wakeupSampleMap, a3);
    objc_storeStrong(&v13->_bedtimeSampleMap, a4);
    v14 = [(NSDictionary *)v13->_wakeupSampleMap allKeys];
    v13->_wakeUpCount = [v14 count];

    v15 = [(NSDictionary *)v13->_bedtimeSampleMap allKeys];
    v13->_bedTimeCount = [v15 count];

    objc_storeStrong(&v13->_completedDate, a5);
  }

  return v13;
}

- (BOOL)hasWakeupSamplesForDayIndex:(int64_t)a3
{
  wakeupSampleMap = self->_wakeupSampleMap;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSDictionary *)wakeupSampleMap objectForKey:v4];
  LOBYTE(wakeupSampleMap) = v5 != 0;

  return wakeupSampleMap;
}

- (BOOL)hasBedtimeSamplesForDayIndex:(int64_t)a3
{
  bedtimeSampleMap = self->_bedtimeSampleMap;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSDictionary *)bedtimeSampleMap objectForKey:v4];
  LOBYTE(bedtimeSampleMap) = v5 != 0;

  return bedtimeSampleMap;
}

- (NSDate)completeDate
{
  if ([(HKHRLearnHypertensionJournalSummary *)self isComplete])
  {
    v3 = self->_completedDate;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HKHRLearnHypertensionJournalSummary;
  if ([(HKHRLearnHypertensionJournalSummary *)&v16 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = v6;
      if (self->_wakeUpCount == v6[2] && (bedTimeCount = self->_bedTimeCount, bedTimeCount == [v6 bedTimeCount]))
      {
        wakeupSampleMap = self->_wakeupSampleMap;
        v10 = [v7 wakeupSampleMap];
        if ([(NSDictionary *)wakeupSampleMap isEqualToDictionary:v10])
        {
          bedtimeSampleMap = self->_bedtimeSampleMap;
          v12 = [v7 bedtimeSampleMap];
          if ([(NSDictionary *)bedtimeSampleMap isEqualToDictionary:v12])
          {
            completedDate = self->_completedDate;
            v14 = [v7 completedDate];
            v5 = completedDate == v14;
          }

          else
          {
            v5 = 0;
          }
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(HKHRLearnHypertensionJournalSummary *)self wakeupSampleMap];
  v4 = [v3 hash];
  v5 = [(HKHRLearnHypertensionJournalSummary *)self bedtimeSampleMap];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HKHRLearnHypertensionJournalSummary *)self wakeUpCount];
  v6 = [(HKHRLearnHypertensionJournalSummary *)self bedTimeCount];
  v7 = [(HKHRLearnHypertensionJournalSummary *)self wakeupSampleMap];
  v8 = [(HKHRLearnHypertensionJournalSummary *)self bedtimeSampleMap];
  v9 = [v3 stringWithFormat:@"<%@: %p, wakeupCount: %lu, bedTimeCount:%lu, _wakeupSampleMap: %@, _bedtimeSampleMap: %@>", v4, self, v5, v6, v7, v8];

  return v9;
}

@end