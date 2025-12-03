@interface NSError(CardDAVExtensions)
- (uint64_t)DA_isFailedDependencyError;
@end

@implementation NSError(CardDAVExtensions)

- (uint64_t)DA_isFailedDependencyError
{
  if ([self code] == 412)
  {
    domain = [self domain];
    v3 = [domain isEqualToString:*MEMORY[0x277CFDB80]];
  }

  else
  {
    v3 = 0;
  }

  if ([self code] == 7)
  {
    domain2 = [self domain];
    v5 = [domain2 isEqualToString:*MEMORY[0x277CFDB18]];

    v3 |= v5;
  }

  return v3 & 1;
}

@end