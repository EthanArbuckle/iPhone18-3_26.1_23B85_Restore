@interface NSDateComponents(MTUtilities)
- (double)mtTimeIntervalSinceComponents:()MTUtilities;
- (double)mtTimeIntervalSinceComponents:()MTUtilities now:;
@end

@implementation NSDateComponents(MTUtilities)

- (double)mtTimeIntervalSinceComponents:()MTUtilities
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  mtNow = [v4 mtNow];
  [self mtTimeIntervalSinceComponents:v5 now:mtNow];
  v8 = v7;

  return v8;
}

- (double)mtTimeIntervalSinceComponents:()MTUtilities now:
{
  v6 = MEMORY[0x1E695DEE8];
  v7 = a4;
  v8 = a3;
  mtGregorianCalendar = [v6 mtGregorianCalendar];
  v10 = [mtGregorianCalendar mtNextDateAfterDate:v7 matchingComponents:v8];

  v11 = [mtGregorianCalendar mtNextDateAfterDate:v10 matchingComponents:self];
  [v11 timeIntervalSinceDate:v10];
  v13 = v12;

  return v13;
}

@end