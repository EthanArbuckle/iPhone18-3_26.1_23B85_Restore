@interface NSError(DisembarkUI)
- (BOOL)dkui_isBackupDisabled;
@end

@implementation NSError(DisembarkUI)

- (BOOL)dkui_isBackupDisabled
{
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:@"MBErrorDomain"];

  if (!v3)
  {
    return 0;
  }

  if ([a1 code] == 204)
  {
    return 1;
  }

  return [a1 code] == 210;
}

@end