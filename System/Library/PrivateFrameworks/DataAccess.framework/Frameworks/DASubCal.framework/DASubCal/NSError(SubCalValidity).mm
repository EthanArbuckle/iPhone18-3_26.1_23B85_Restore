@interface NSError(SubCalValidity)
- (BOOL)isSubCalAuthError;
@end

@implementation NSError(SubCalValidity)

- (BOOL)isSubCalAuthError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277D03F90]])
  {
    v3 = [self code] == 5;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end