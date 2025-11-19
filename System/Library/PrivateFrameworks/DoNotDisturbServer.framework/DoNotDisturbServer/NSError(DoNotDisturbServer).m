@interface NSError(DoNotDisturbServer)
- (uint64_t)dnds_isOutOfSpaceError;
@end

@implementation NSError(DoNotDisturbServer)

- (uint64_t)dnds_isOutOfSpaceError
{
  v2 = [a1 domain];
  v3 = [a1 code];
  if ([v2 isEqual:*MEMORY[0x277CCA050]] && v3 == 640)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 isEqual:*MEMORY[0x277CCA5B8]];
    if (v3 == 28)
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

@end