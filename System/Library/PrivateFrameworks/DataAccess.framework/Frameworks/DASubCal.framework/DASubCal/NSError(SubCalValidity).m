@interface NSError(SubCalValidity)
- (BOOL)isSubCalAuthError;
@end

@implementation NSError(SubCalValidity)

- (BOOL)isSubCalAuthError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277D03F90]])
  {
    v3 = [a1 code] == 5;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end