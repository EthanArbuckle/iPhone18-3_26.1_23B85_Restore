@interface NTPBTodayResultOperationFetchInfo
@end

@implementation NTPBTodayResultOperationFetchInfo

uint64_t __83__NTPBTodayResultOperationFetchInfo_NTAdditions__setUserSegmentationSegmentSetIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];

  return [v2 addUserSegmentationSegmentSetIds:v3];
}

uint64_t __82__NTPBTodayResultOperationFetchInfo_NTAdditions__setUserSegmentationTreatmentIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];

  return [v2 addUserSegmentationTreatmentIds:v3];
}

@end