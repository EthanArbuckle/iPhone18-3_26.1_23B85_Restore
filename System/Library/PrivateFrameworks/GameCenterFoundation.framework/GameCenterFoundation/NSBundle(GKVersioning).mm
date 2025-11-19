@interface NSBundle(GKVersioning)
- (id)_gkFrameworkVersionDescription;
@end

@implementation NSBundle(GKVersioning)

- (id)_gkFrameworkVersionDescription
{
  v2 = [a1 infoDictionary];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"CFBundleVersion"];
    v5 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];

    if ([v6 length])
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundle:%@", v6];
    }

    else
    {
      v7 = 0;
    }

    if (![(__CFString *)v7 length])
    {

      v7 = @"(ad-hoc build)";
    }

    v10 = [a1 bundlePath];
    v11 = [v10 pathComponents];
    v12 = [v11 lastObject];

    if (v7)
    {
      v13 = [v12 stringByAppendingString:@" "];
      v9 = [v13 stringByAppendingString:v7];
    }

    else
    {
      v9 = [v12 stringByAppendingString:@" no versions found"];
    }
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v6 = [a1 bundlePath];
    v9 = [v8 stringWithFormat:@"<no info plist for %@>", v6];
  }

  return v9;
}

@end