@interface NTPBTodayResultOperationFetchInfo(NTAdditions)
- (id)appConfigTreatmentID;
- (id)locale;
- (uint64_t)setAppConfigTreatmentID:()NTAdditions;
- (uint64_t)setUserSegmentationSegmentSetIDs:()NTAdditions;
- (uint64_t)setUserSegmentationTreatmentIDs:()NTAdditions;
- (void)setLocale:()NTAdditions;
@end

@implementation NTPBTodayResultOperationFetchInfo(NTAdditions)

- (uint64_t)setAppConfigTreatmentID:()NTAdditions
{
  integerValue = [a3 integerValue];

  return [self setAppConfigTreatmentIDInteger:integerValue];
}

- (id)appConfigTreatmentID
{
  if ([self hasAppConfigTreatmentIDInteger])
  {
    v2 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(self, "appConfigTreatmentIDInteger")}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setLocale:()NTAdditions
{
  localeIdentifier = [a3 localeIdentifier];
  [self setLocaleIdentifier:localeIdentifier];
}

- (id)locale
{
  localeIdentifier = [self localeIdentifier];
  if (localeIdentifier)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:localeIdentifier];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)setUserSegmentationSegmentSetIDs:()NTAdditions
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83__NTPBTodayResultOperationFetchInfo_NTAdditions__setUserSegmentationSegmentSetIDs___block_invoke;
  v4[3] = &unk_279983BD0;
  v4[4] = self;
  return [a3 enumerateObjectsUsingBlock:v4];
}

- (uint64_t)setUserSegmentationTreatmentIDs:()NTAdditions
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __82__NTPBTodayResultOperationFetchInfo_NTAdditions__setUserSegmentationTreatmentIDs___block_invoke;
  v4[3] = &unk_279983BD0;
  v4[4] = self;
  return [a3 enumerateObjectsUsingBlock:v4];
}

@end