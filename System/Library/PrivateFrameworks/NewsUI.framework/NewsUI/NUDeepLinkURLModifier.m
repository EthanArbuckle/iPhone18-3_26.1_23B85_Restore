@interface NUDeepLinkURLModifier
- (id)modifyURL:(id)a3;
@end

@implementation NUDeepLinkURLModifier

- (id)modifyURL:(id)a3
{
  if (a3)
  {
    v3 = [a3 copy];
    v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v5 = [v4 URLOverrideForURL:v3];

    v6 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v7 = [v6 applicationsAvailableForOpeningURL:v5];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [v5 copy];

      v3 = v9;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end