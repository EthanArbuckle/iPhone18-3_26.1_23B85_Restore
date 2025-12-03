@interface NSMutableDictionary(CMSCodingUtils)
- (uint64_t)cmsSetOptionalObject:()CMSCodingUtils forKey:;
- (void)cmsSetNullableCodedObject:()CMSCodingUtils forKey:;
- (void)cmsSetNullableObject:()CMSCodingUtils forKey:;
- (void)cmsSetOptionalCodedObject:()CMSCodingUtils forKey:;
@end

@implementation NSMutableDictionary(CMSCodingUtils)

- (void)cmsSetOptionalCodedObject:()CMSCodingUtils forKey:
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v9 cmsCoded], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
      [self setObject:v7 forKey:v6];
    }

    else
    {
      [self removeObjectForKey:v6];
    }
  }
}

- (void)cmsSetNullableCodedObject:()CMSCodingUtils forKey:
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v9 cmsCoded], (null = objc_claimAutoreleasedReturnValue()) == 0))
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v8 = null;
    [self setObject:null forKey:v6];
  }
}

- (uint64_t)cmsSetOptionalObject:()CMSCodingUtils forKey:
{
  if (a3)
  {
    return [self setObject:? forKey:?];
  }

  else
  {
    return [self removeObjectForKey:a4];
  }
}

- (void)cmsSetNullableObject:()CMSCodingUtils forKey:
{
  if (a3)
  {
    null = a4;
    [self setObject:a3 forKey:?];
  }

  else
  {
    v6 = MEMORY[0x277CBEB68];
    v7 = a4;
    null = [v6 null];
    [self setObject:? forKey:?];
  }
}

@end