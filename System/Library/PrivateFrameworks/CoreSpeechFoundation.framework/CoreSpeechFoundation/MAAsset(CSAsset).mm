@interface MAAsset(CSAsset)
- (BOOL)isLatestCompareTo:()CSAsset;
- (BOOL)isPremium;
- (id)_compatibilityVersion;
- (id)_footprint;
- (id)_version;
- (id)getCSAssetOfType:()CSAsset;
- (id)path;
@end

@implementation MAAsset(CSAsset)

- (BOOL)isLatestCompareTo:()CSAsset
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = [a1 attributes];
  v6 = *MEMORY[0x1E69B1848];
  v7 = [v5 objectForKey:*MEMORY[0x1E69B1848]];
  v8 = [v7 integerValue];

  v9 = [v4 attributes];
  v10 = [v9 objectForKey:v6];
  v11 = [v10 integerValue];

  if (v8 >= v11)
  {
    if (v8 == v11)
    {
      if (![a1 isPremium])
      {
        goto LABEL_3;
      }

      if ([v4 isPremium])
      {
        v12 = [a1 state] == 5;
        goto LABEL_9;
      }
    }

LABEL_8:
    v12 = 1;
    goto LABEL_9;
  }

LABEL_3:
  v12 = 0;
LABEL_9:

  return v12;
}

- (id)path
{
  v1 = [a1 getLocalUrl];
  v2 = [v1 path];

  return v2;
}

- (BOOL)isPremium
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"Footprint"];

  v3 = v2 && ([v2 isEqualToString:@"Premium"] & 1) != 0;
  return v3;
}

- (id)_compatibilityVersion
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:*MEMORY[0x1E69B1840]];

  return v2;
}

- (id)_version
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:*MEMORY[0x1E69B1848]];

  return v2;
}

- (id)_footprint
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"Footprint"];

  return v2;
}

- (id)getCSAssetOfType:()CSAsset
{
  v5 = [a1 getLocalUrl];
  v6 = [v5 path];

  v7 = [MEMORY[0x1E696AD60] string];
  v8 = [a1 _compatibilityVersion];
  v9 = [v8 stringValue];
  [v7 appendString:v9];

  if (v7)
  {
    v10 = [a1 _version];

    if (v10)
    {
      v11 = [a1 _version];
      v12 = [v11 stringValue];
      [v7 appendFormat:@".%@", v12];
    }

    v13 = [a1 _footprint];

    if (v13)
    {
      v14 = [a1 _footprint];
      [v7 appendFormat:@".%@", v14];
    }
  }

  v15 = [CSAsset assetForAssetType:a3 resourcePath:v6 configVersion:v7 assetProvider:0 assetVariant:1 identity:0 assistantLanguageCode:0];

  return v15;
}

@end