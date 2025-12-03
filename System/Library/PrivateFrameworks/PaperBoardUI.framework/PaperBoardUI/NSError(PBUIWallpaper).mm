@interface NSError(PBUIWallpaper)
- (uint64_t)pbui_isFileNotFoundError;
@end

@implementation NSError(PBUIWallpaper)

- (uint64_t)pbui_isFileNotFoundError
{
  domain = [self domain];
  code = [self code];
  if ([domain isEqualToString:*MEMORY[0x277CCA5B8]])
  {
    v4 = code == 2;
  }

  else
  {
    v5 = [domain isEqualToString:*MEMORY[0x277CCA050]];
    if (code == 4)
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