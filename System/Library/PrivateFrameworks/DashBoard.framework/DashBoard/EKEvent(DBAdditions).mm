@interface EKEvent(DBAdditions)
- (id)db_ShortDescription;
@end

@implementation EKEvent(DBAdditions)

- (id)db_ShortDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  eventIdentifier = [self eventIdentifier];
  title = [self title];
  startDate = [self startDate];
  v7 = [DBDateFormatter formattedDate:startDate];
  endDate = [self endDate];
  v9 = [DBDateFormatter formattedDate:endDate];
  v10 = [v2 stringWithFormat:@"<%@:%p uniqueIdentifier=%@ title=%@ start=%@ end=%@>", v3, self, eventIdentifier, title, v7, v9];

  return v10;
}

@end