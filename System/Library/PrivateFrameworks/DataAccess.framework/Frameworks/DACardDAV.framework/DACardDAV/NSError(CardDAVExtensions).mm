@interface NSError(CardDAVExtensions)
- (uint64_t)DA_isFailedDependencyError;
@end

@implementation NSError(CardDAVExtensions)

- (uint64_t)DA_isFailedDependencyError
{
  if ([a1 code] == 412)
  {
    v2 = [a1 domain];
    v3 = [v2 isEqualToString:*MEMORY[0x277CFDB80]];
  }

  else
  {
    v3 = 0;
  }

  if ([a1 code] == 7)
  {
    v4 = [a1 domain];
    v5 = [v4 isEqualToString:*MEMORY[0x277CFDB18]];

    v3 |= v5;
  }

  return v3 & 1;
}

@end