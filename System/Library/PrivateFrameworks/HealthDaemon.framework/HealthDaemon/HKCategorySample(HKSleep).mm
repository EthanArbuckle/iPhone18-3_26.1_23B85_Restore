@interface HKCategorySample(HKSleep)
+ (id)categorySampleWithType:()HKSleep value:clampedInterval:;
@end

@implementation HKCategorySample(HKSleep)

+ (id)categorySampleWithType:()HKSleep value:clampedInterval:
{
  v7 = a5;
  v8 = a3;
  startDate = [v7 startDate];
  [v7 duration];
  v11 = v10;

  [v8 maximumAllowedDuration];
  if (v11 < v12)
  {
    v12 = v11;
  }

  v13 = [startDate dateByAddingTimeInterval:v12];
  v14 = [MEMORY[0x277CCD0B0] categorySampleWithType:v8 value:a4 startDate:startDate endDate:v13];

  return v14;
}

@end