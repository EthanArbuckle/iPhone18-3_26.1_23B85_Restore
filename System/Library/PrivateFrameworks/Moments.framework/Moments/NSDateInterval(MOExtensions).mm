@interface NSDateInterval(MOExtensions)
- (id)unionWithDateInterval:()MOExtensions;
@end

@implementation NSDateInterval(MOExtensions)

- (id)unionWithDateInterval:()MOExtensions
{
  v4 = a3;
  if ([self intersectsDateInterval:v4])
  {
    startDate = [self startDate];
    startDate2 = [v4 startDate];
    v7 = [startDate earlierDate:startDate2];

    endDate = [self endDate];
    endDate2 = [v4 endDate];
    v10 = [endDate laterDate:endDate2];

    if ([v7 isBeforeDate:v10])
    {
      v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end