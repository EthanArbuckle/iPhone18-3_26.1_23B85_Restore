@interface NSBundle(GKVersioning)
- (id)_gkFrameworkVersionDescription;
@end

@implementation NSBundle(GKVersioning)

- (id)_gkFrameworkVersionDescription
{
  infoDictionary = [self infoDictionary];
  v3 = infoDictionary;
  if (infoDictionary)
  {
    v4 = [infoDictionary objectForKey:@"CFBundleVersion"];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    bundlePath2 = [v4 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    if ([bundlePath2 length])
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundle:%@", bundlePath2];
    }

    else
    {
      v7 = 0;
    }

    if (![(__CFString *)v7 length])
    {

      v7 = @"(ad-hoc build)";
    }

    bundlePath = [self bundlePath];
    pathComponents = [bundlePath pathComponents];
    lastObject = [pathComponents lastObject];

    if (v7)
    {
      v13 = [lastObject stringByAppendingString:@" "];
      v9 = [v13 stringByAppendingString:v7];
    }

    else
    {
      v9 = [lastObject stringByAppendingString:@" no versions found"];
    }
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    bundlePath2 = [self bundlePath];
    v9 = [v8 stringWithFormat:@"<no info plist for %@>", bundlePath2];
  }

  return v9;
}

@end