@interface MobileMeCalDAVServerVersion
- (MobileMeCalDAVServerVersion)init;
@end

@implementation MobileMeCalDAVServerVersion

- (MobileMeCalDAVServerVersion)init
{
  v6.receiver = self;
  v6.super_class = MobileMeCalDAVServerVersion;
  v2 = [(CalDAVServerVersion *)&v6 init];
  if (v2)
  {
    v5 = 0;
    v3 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"MobileMeCalendarServer" options:1 error:&v5];
    [(CalDAVConcreteServerVersion *)v2 setRegularExpression:v3];

    [(CalDAVServerVersion *)v2 setSupportsTimeRangeFilterOnInbox:0];
    [(CalDAVServerVersion *)v2 setSupportsChecksumming:0];
  }

  return v2;
}

@end