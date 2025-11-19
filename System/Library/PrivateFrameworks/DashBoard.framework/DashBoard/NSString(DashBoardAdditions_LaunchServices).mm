@interface NSString(DashBoardAdditions_LaunchServices)
- (id)_db_stringByTrimmingAppSuffix;
@end

@implementation NSString(DashBoardAdditions_LaunchServices)

- (id)_db_stringByTrimmingAppSuffix
{
  if ([a1 hasSuffix:@".app"])
  {
    v2 = [a1 stringByReplacingOccurrencesOfString:@".app" withString:&stru_285A57218];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

@end