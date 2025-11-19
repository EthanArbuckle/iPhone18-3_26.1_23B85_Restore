@interface NTPBTodaySectionConfigArticle(NTAdditions)
- (id)displayDate;
@end

@implementation NTPBTodaySectionConfigArticle(NTAdditions)

- (id)displayDate
{
  v1 = [a1 displayDateString];
  if (v1)
  {
    v2 = [MEMORY[0x277CBEAA8] fc_dateFromStringWithISO8601Format:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end