@interface NSDictionary(Goodies)
- (uint64_t)mf_BOOLForKey:()Goodies;
- (uint64_t)mf_integerForKey:()Goodies;
@end

@implementation NSDictionary(Goodies)

- (uint64_t)mf_BOOLForKey:()Goodies
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 uppercaseString];

    return [v2 isEqualToString:@"YES"];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v1 intValue] == 0;
    }

    else
    {
      v4 = v1 == 0;
    }

    return !v4;
  }
}

- (uint64_t)mf_integerForKey:()Goodies
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  return [v1 intValue];
}

@end