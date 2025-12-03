@interface NSDictionary(CKUtilities)
- (id)__ck_bundleIdentifier;
- (id)__ck_localizedAppNameForTranscriptAttribution;
@end

@implementation NSDictionary(CKUtilities)

- (id)__ck_localizedAppNameForTranscriptAttribution
{
  v2 = [self objectForKey:*MEMORY[0x1E69A6FA8]];
  v3 = [self objectForKey:*MEMORY[0x1E69A6FB0]];
  v4 = [v3 componentsSeparatedByString:@":"];
  lastObject = [v4 lastObject];

  v6 = [MEMORY[0x1E69635E0] bundleProxyForIdentifier:lastObject];
  localizedName = [v6 localizedName];

  v8 = [lastObject isEqualToString:*MEMORY[0x1E69A6A20]];
  v9 = v2;
  if ((v8 & 1) == 0)
  {
    if (IMStringIsEmpty())
    {
      v9 = v2;
    }

    else
    {
      v9 = localizedName;
    }
  }

  v10 = v9;
  v11 = v10;

  return v10;
}

- (id)__ck_bundleIdentifier
{
  v1 = [self objectForKey:*MEMORY[0x1E69A6FB0]];
  v2 = [v1 componentsSeparatedByString:@":"];
  lastObject = [v2 lastObject];

  return lastObject;
}

@end