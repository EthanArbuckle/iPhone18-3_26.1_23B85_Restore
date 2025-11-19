@interface YahooCalDAVServerVersion
- (YahooCalDAVServerVersion)init;
@end

@implementation YahooCalDAVServerVersion

- (YahooCalDAVServerVersion)init
{
  v6.receiver = self;
  v6.super_class = YahooCalDAVServerVersion;
  v2 = [(CalDAVServerVersion *)&v6 init];
  if (v2)
  {
    v5 = 0;
    v3 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"ATS|YTS/([0-9]+\\.[0-9]+)" options:1 error:&v5];
    [(CalDAVConcreteServerVersion *)v2 setRegularExpression:v3];

    [(CalDAVServerVersion *)v2 setSupportsChecksumming:0];
  }

  return v2;
}

@end