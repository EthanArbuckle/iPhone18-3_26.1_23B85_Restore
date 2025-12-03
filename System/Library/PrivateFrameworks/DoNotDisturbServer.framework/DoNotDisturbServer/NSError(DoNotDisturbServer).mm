@interface NSError(DoNotDisturbServer)
- (uint64_t)dnds_isOutOfSpaceError;
@end

@implementation NSError(DoNotDisturbServer)

- (uint64_t)dnds_isOutOfSpaceError
{
  domain = [self domain];
  code = [self code];
  if ([domain isEqual:*MEMORY[0x277CCA050]] && code == 640)
  {
    v4 = 1;
  }

  else
  {
    v5 = [domain isEqual:*MEMORY[0x277CCA5B8]];
    if (code == 28)
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