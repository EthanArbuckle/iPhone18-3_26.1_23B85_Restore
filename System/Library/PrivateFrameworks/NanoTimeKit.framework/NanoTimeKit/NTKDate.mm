@interface NTKDate
+ (id)faceDateWithTimeIntervalSinceNow:(double)now;
@end

@implementation NTKDate

+ (id)faceDateWithTimeIntervalSinceNow:(double)now
{
  v4 = MEMORY[0x277CBEAA8];
  faceDate = [self faceDate];
  v6 = [v4 dateWithTimeInterval:faceDate sinceDate:now];

  return v6;
}

@end