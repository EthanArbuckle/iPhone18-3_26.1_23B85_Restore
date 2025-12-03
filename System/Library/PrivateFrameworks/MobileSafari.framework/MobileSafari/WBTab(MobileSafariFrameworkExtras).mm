@interface WBTab(MobileSafariFrameworkExtras)
+ (uint64_t)linkCountForTabs:()MobileSafariFrameworkExtras;
- (BOOL)hasLinkToCopy;
@end

@implementation WBTab(MobileSafariFrameworkExtras)

- (BOOL)hasLinkToCopy
{
  v1 = [self url];
  v2 = v1 != 0;

  return v2;
}

+ (uint64_t)linkCountForTabs:()MobileSafariFrameworkExtras
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) hasLinkToCopy];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end