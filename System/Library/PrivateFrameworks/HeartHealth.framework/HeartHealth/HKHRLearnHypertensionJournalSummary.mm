@interface HKHRLearnHypertensionJournalSummary
- (BOOL)hasBedtimeSamplesForDayIndex:(int64_t)index;
- (BOOL)hasWakeupSamplesForDayIndex:(int64_t)index;
- (BOOL)isEqual:(id)equal;
- (HKHRLearnHypertensionJournalSummary)initWithWakeupSampleMap:(id)map bedtimeSampleMap:(id)sampleMap completeDate:(id)date;
- (NSDate)completeDate;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation HKHRLearnHypertensionJournalSummary

- (HKHRLearnHypertensionJournalSummary)initWithWakeupSampleMap:(id)map bedtimeSampleMap:(id)sampleMap completeDate:(id)date
{
  mapCopy = map;
  sampleMapCopy = sampleMap;
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = HKHRLearnHypertensionJournalSummary;
  v12 = [(HKHRLearnHypertensionJournalSummary *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_wakeupSampleMap, map);
    objc_storeStrong(&v13->_bedtimeSampleMap, sampleMap);
    allKeys = [(NSDictionary *)v13->_wakeupSampleMap allKeys];
    v13->_wakeUpCount = [allKeys count];

    allKeys2 = [(NSDictionary *)v13->_bedtimeSampleMap allKeys];
    v13->_bedTimeCount = [allKeys2 count];

    objc_storeStrong(&v13->_completedDate, date);
  }

  return v13;
}

- (BOOL)hasWakeupSamplesForDayIndex:(int64_t)index
{
  wakeupSampleMap = self->_wakeupSampleMap;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  v5 = [(NSDictionary *)wakeupSampleMap objectForKey:v4];
  LOBYTE(wakeupSampleMap) = v5 != 0;

  return wakeupSampleMap;
}

- (BOOL)hasBedtimeSamplesForDayIndex:(int64_t)index
{
  bedtimeSampleMap = self->_bedtimeSampleMap;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:index];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v16.receiver = self;
  v16.super_class = HKHRLearnHypertensionJournalSummary;
  if ([(HKHRLearnHypertensionJournalSummary *)&v16 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = v6;
      if (self->_wakeUpCount == v6[2] && (bedTimeCount = self->_bedTimeCount, bedTimeCount == [v6 bedTimeCount]))
      {
        wakeupSampleMap = self->_wakeupSampleMap;
        wakeupSampleMap = [v7 wakeupSampleMap];
        if ([(NSDictionary *)wakeupSampleMap isEqualToDictionary:wakeupSampleMap])
        {
          bedtimeSampleMap = self->_bedtimeSampleMap;
          bedtimeSampleMap = [v7 bedtimeSampleMap];
          if ([(NSDictionary *)bedtimeSampleMap isEqualToDictionary:bedtimeSampleMap])
          {
            completedDate = self->_completedDate;
            completedDate = [v7 completedDate];
            v5 = completedDate == completedDate;
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
  wakeupSampleMap = [(HKHRLearnHypertensionJournalSummary *)self wakeupSampleMap];
  v4 = [wakeupSampleMap hash];
  bedtimeSampleMap = [(HKHRLearnHypertensionJournalSummary *)self bedtimeSampleMap];
  v6 = [bedtimeSampleMap hash];

  return v6 ^ v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  wakeUpCount = [(HKHRLearnHypertensionJournalSummary *)self wakeUpCount];
  bedTimeCount = [(HKHRLearnHypertensionJournalSummary *)self bedTimeCount];
  wakeupSampleMap = [(HKHRLearnHypertensionJournalSummary *)self wakeupSampleMap];
  bedtimeSampleMap = [(HKHRLearnHypertensionJournalSummary *)self bedtimeSampleMap];
  v9 = [v3 stringWithFormat:@"<%@: %p, wakeupCount: %lu, bedTimeCount:%lu, _wakeupSampleMap: %@, _bedtimeSampleMap: %@>", v4, self, wakeUpCount, bedTimeCount, wakeupSampleMap, bedtimeSampleMap];

  return v9;
}

@end