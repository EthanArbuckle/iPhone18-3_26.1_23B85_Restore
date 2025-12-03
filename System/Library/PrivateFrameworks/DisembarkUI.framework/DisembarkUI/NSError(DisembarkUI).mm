@interface NSError(DisembarkUI)
- (BOOL)dkui_isBackupDisabled;
@end

@implementation NSError(DisembarkUI)

- (BOOL)dkui_isBackupDisabled
{
  domain = [self domain];
  v3 = [domain isEqualToString:@"MBErrorDomain"];

  if (!v3)
  {
    return 0;
  }

  if ([self code] == 204)
  {
    return 1;
  }

  return [self code] == 210;
}

@end