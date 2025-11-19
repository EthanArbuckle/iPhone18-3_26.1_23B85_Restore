@interface NSError(PBUIWallpaper)
- (uint64_t)pbui_isFileNotFoundError;
@end

@implementation NSError(PBUIWallpaper)

- (uint64_t)pbui_isFileNotFoundError
{
  v2 = [a1 domain];
  v3 = [a1 code];
  if ([v2 isEqualToString:*MEMORY[0x277CCA5B8]])
  {
    v4 = v3 == 2;
  }

  else
  {
    v5 = [v2 isEqualToString:*MEMORY[0x277CCA050]];
    if (v3 == 4)
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