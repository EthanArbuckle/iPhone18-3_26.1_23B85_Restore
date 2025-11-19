@interface NSDateInterval(MOExtensions)
- (id)unionWithDateInterval:()MOExtensions;
@end

@implementation NSDateInterval(MOExtensions)

- (id)unionWithDateInterval:()MOExtensions
{
  v4 = a3;
  if ([a1 intersectsDateInterval:v4])
  {
    v5 = [a1 startDate];
    v6 = [v4 startDate];
    v7 = [v5 earlierDate:v6];

    v8 = [a1 endDate];
    v9 = [v4 endDate];
    v10 = [v8 laterDate:v9];

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