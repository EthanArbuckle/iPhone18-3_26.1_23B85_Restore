@interface LSApplicationProxy(DashBoardAdditions)
- (id)db_localizedCarName;
@end

@implementation LSApplicationProxy(DashBoardAdditions)

- (id)db_localizedCarName
{
  v1 = [a1 localizedNameForContext:@"Car"];
  v2 = [v1 _db_stringByTrimmingAppSuffix];

  return v2;
}

@end