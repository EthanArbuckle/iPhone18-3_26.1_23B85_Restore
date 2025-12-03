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

  attributes = [self attributes];
  v6 = *MEMORY[0x1E69B1848];
  v7 = [attributes objectForKey:*MEMORY[0x1E69B1848]];
  integerValue = [v7 integerValue];

  attributes2 = [v4 attributes];
  v10 = [attributes2 objectForKey:v6];
  integerValue2 = [v10 integerValue];

  if (integerValue >= integerValue2)
  {
    if (integerValue == integerValue2)
    {
      if (![self isPremium])
      {
        goto LABEL_3;
      }

      if ([v4 isPremium])
      {
        v12 = [self state] == 5;
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
  getLocalUrl = [self getLocalUrl];
  path = [getLocalUrl path];

  return path;
}

- (BOOL)isPremium
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:@"Footprint"];

  v3 = v2 && ([v2 isEqualToString:@"Premium"] & 1) != 0;
  return v3;
}

- (id)_compatibilityVersion
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:*MEMORY[0x1E69B1840]];

  return v2;
}

- (id)_version
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:*MEMORY[0x1E69B1848]];

  return v2;
}

- (id)_footprint
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:@"Footprint"];

  return v2;
}

- (id)getCSAssetOfType:()CSAsset
{
  getLocalUrl = [self getLocalUrl];
  path = [getLocalUrl path];

  string = [MEMORY[0x1E696AD60] string];
  _compatibilityVersion = [self _compatibilityVersion];
  stringValue = [_compatibilityVersion stringValue];
  [string appendString:stringValue];

  if (string)
  {
    _version = [self _version];

    if (_version)
    {
      _version2 = [self _version];
      stringValue2 = [_version2 stringValue];
      [string appendFormat:@".%@", stringValue2];
    }

    _footprint = [self _footprint];

    if (_footprint)
    {
      _footprint2 = [self _footprint];
      [string appendFormat:@".%@", _footprint2];
    }
  }

  v15 = [CSAsset assetForAssetType:a3 resourcePath:path configVersion:string assetProvider:0 assetVariant:1 identity:0 assistantLanguageCode:0];

  return v15;
}

@end