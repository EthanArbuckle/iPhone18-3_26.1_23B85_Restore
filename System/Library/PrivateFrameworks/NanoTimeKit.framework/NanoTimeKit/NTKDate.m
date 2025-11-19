@interface NTKDate
+ (id)faceDateWithTimeIntervalSinceNow:(double)a3;
@end

@implementation NTKDate

+ (id)faceDateWithTimeIntervalSinceNow:(double)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = [a1 faceDate];
  v6 = [v4 dateWithTimeInterval:v5 sinceDate:a3];

  return v6;
}

@end