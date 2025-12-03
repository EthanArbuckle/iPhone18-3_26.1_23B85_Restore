@interface LSApplicationRecord(DashBoardAdditions)
- (id)db_localizedCarName;
@end

@implementation LSApplicationRecord(DashBoardAdditions)

- (id)db_localizedCarName
{
  v1 = [self localizedNameWithContext:@"Car"];
  _db_stringByTrimmingAppSuffix = [v1 _db_stringByTrimmingAppSuffix];

  return _db_stringByTrimmingAppSuffix;
}

@end