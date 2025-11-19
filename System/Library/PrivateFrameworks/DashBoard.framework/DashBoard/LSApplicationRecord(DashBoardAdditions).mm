@interface LSApplicationRecord(DashBoardAdditions)
- (id)db_localizedCarName;
@end

@implementation LSApplicationRecord(DashBoardAdditions)

- (id)db_localizedCarName
{
  v1 = [a1 localizedNameWithContext:@"Car"];
  v2 = [v1 _db_stringByTrimmingAppSuffix];

  return v2;
}

@end