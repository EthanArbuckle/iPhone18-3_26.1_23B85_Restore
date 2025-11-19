@interface iCloudCalDAVServerVersion
- (iCloudCalDAVServerVersion)init;
@end

@implementation iCloudCalDAVServerVersion

- (iCloudCalDAVServerVersion)init
{
  v6.receiver = self;
  v6.super_class = iCloudCalDAVServerVersion;
  v2 = [(CalDAVServerVersion *)&v6 init];
  if (v2)
  {
    v5 = 0;
    v3 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"iCloudCalendarServer" options:1 error:&v5];
    [(CalDAVConcreteServerVersion *)v2 setRegularExpression:v3];

    [(CalDAVServerVersion *)v2 setSupportsTimeRangeFilterOnInbox:0];
    [(CalDAVServerVersion *)v2 setSupportsCheckForValidEmail:1];
    [(CalDAVServerVersion *)v2 setSupportsChecksumming:0];
  }

  return v2;
}

@end