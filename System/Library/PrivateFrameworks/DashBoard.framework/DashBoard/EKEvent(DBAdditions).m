@interface EKEvent(DBAdditions)
- (id)db_ShortDescription;
@end

@implementation EKEvent(DBAdditions)

- (id)db_ShortDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = [a1 eventIdentifier];
  v5 = [a1 title];
  v6 = [a1 startDate];
  v7 = [DBDateFormatter formattedDate:v6];
  v8 = [a1 endDate];
  v9 = [DBDateFormatter formattedDate:v8];
  v10 = [v2 stringWithFormat:@"<%@:%p uniqueIdentifier=%@ title=%@ start=%@ end=%@>", v3, a1, v4, v5, v7, v9];

  return v10;
}

@end