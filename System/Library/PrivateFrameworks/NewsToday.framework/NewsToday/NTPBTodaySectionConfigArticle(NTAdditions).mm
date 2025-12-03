@interface NTPBTodaySectionConfigArticle(NTAdditions)
- (id)displayDate;
@end

@implementation NTPBTodaySectionConfigArticle(NTAdditions)

- (id)displayDate
{
  displayDateString = [self displayDateString];
  if (displayDateString)
  {
    v2 = [MEMORY[0x277CBEAA8] fc_dateFromStringWithISO8601Format:displayDateString];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end