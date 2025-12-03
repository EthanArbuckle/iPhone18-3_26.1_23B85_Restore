@interface LSApplicationProxy(DashBoardAdditions)
- (id)db_localizedCarName;
@end

@implementation LSApplicationProxy(DashBoardAdditions)

- (id)db_localizedCarName
{
  v1 = [self localizedNameForContext:@"Car"];
  _db_stringByTrimmingAppSuffix = [v1 _db_stringByTrimmingAppSuffix];

  return _db_stringByTrimmingAppSuffix;
}

@end