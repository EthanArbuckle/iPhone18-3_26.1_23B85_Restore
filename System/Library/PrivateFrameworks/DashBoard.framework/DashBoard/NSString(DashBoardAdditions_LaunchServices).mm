@interface NSString(DashBoardAdditions_LaunchServices)
- (id)_db_stringByTrimmingAppSuffix;
@end

@implementation NSString(DashBoardAdditions_LaunchServices)

- (id)_db_stringByTrimmingAppSuffix
{
  if ([self hasSuffix:@".app"])
  {
    selfCopy = [self stringByReplacingOccurrencesOfString:@".app" withString:&stru_285A57218];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end