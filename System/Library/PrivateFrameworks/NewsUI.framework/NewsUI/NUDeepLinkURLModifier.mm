@interface NUDeepLinkURLModifier
- (id)modifyURL:(id)l;
@end

@implementation NUDeepLinkURLModifier

- (id)modifyURL:(id)l
{
  if (l)
  {
    v3 = [l copy];
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v5 = [defaultWorkspace URLOverrideForURL:v3];

    defaultWorkspace2 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v7 = [defaultWorkspace2 applicationsAvailableForOpeningURL:v5];
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