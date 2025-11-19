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
      [a1 setObject:v7 forKey:v6];
    }

    else
    {
      [a1 removeObjectForKey:v6];
    }
  }
}

- (void)cmsSetNullableCodedObject:()CMSCodingUtils forKey:
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v9 cmsCoded], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v7 = [MEMORY[0x277CBEB68] null];
    }

    v8 = v7;
    [a1 setObject:v7 forKey:v6];
  }
}

- (uint64_t)cmsSetOptionalObject:()CMSCodingUtils forKey:
{
  if (a3)
  {
    return [a1 setObject:? forKey:?];
  }

  else
  {
    return [a1 removeObjectForKey:a4];
  }
}

- (void)cmsSetNullableObject:()CMSCodingUtils forKey:
{
  if (a3)
  {
    v8 = a4;
    [a1 setObject:a3 forKey:?];
  }

  else
  {
    v6 = MEMORY[0x277CBEB68];
    v7 = a4;
    v8 = [v6 null];
    [a1 setObject:? forKey:?];
  }
}

@end