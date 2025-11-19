@interface NSDictionary(CMSCodingUtils)
- (BOOL)cmsBoolForKey:()CMSCodingUtils withDefault:;
- (double)cmsDoubleForKey:()CMSCodingUtils withDefault:;
- (id)cmsOptionalArrayOfClass:()CMSCodingUtils forKey:;
- (id)cmsOptionalArrayOfDecodedClass:()CMSCodingUtils forKey:;
- (id)cmsOptionalDateForKey:()CMSCodingUtils;
- (id)cmsOptionalDecodedClass:()CMSCodingUtils forKey:;
- (id)cmsOptionalDictionaryForKey:()CMSCodingUtils;
- (id)cmsOptionalNumberForKey:()CMSCodingUtils;
- (id)cmsOptionalStringForKey:()CMSCodingUtils;
- (id)cmsOptionalURLForKey:()CMSCodingUtils relativeToURL:;
- (uint64_t)cmsIntegerForKey:()CMSCodingUtils withDefault:;
- (uint64_t)cmsOptionalBoolForKey:()CMSCodingUtils;
- (uint64_t)cmsUnsignedForKey:()CMSCodingUtils withDefault:;
@end

@implementation NSDictionary(CMSCodingUtils)

- (BOOL)cmsBoolForKey:()CMSCodingUtils withDefault:
{
  v5 = [a1 objectForKey:?];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 compare:MEMORY[0x277CBEC28]];
LABEL_6:
      a4 = v6 != 0;
      goto LABEL_7;
    }

    if (objc_opt_respondsToSelector())
    {
      v6 = [v5 integerValue];
      goto LABEL_6;
    }
  }

LABEL_7:

  return a4;
}

- (uint64_t)cmsOptionalBoolForKey:()CMSCodingUtils
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MEMORY[0x277CBEC28];
    if ([v1 compare:MEMORY[0x277CBEC28]])
    {
      v2 = MEMORY[0x277CBEC38];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)cmsOptionalNumberForKey:()CMSCodingUtils
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)cmsIntegerForKey:()CMSCodingUtils withDefault:
{
  v5 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a4 = [v5 integerValue];
  }

  return a4;
}

- (uint64_t)cmsUnsignedForKey:()CMSCodingUtils withDefault:
{
  v5 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a4 = [v5 unsignedIntegerValue];
  }

  return a4;
}

- (double)cmsDoubleForKey:()CMSCodingUtils withDefault:
{
  v3 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v3 doubleValue];
    a2 = v4;
  }

  return a2;
}

- (id)cmsOptionalStringForKey:()CMSCodingUtils
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)cmsOptionalURLForKey:()CMSCodingUtils relativeToURL:
{
  v6 = a4;
  v7 = [a1 objectForKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v6)
    {
      [MEMORY[0x277CBEBC0] URLWithString:v7 relativeToURL:v6];
    }

    else
    {
      [MEMORY[0x277CBEBC0] URLWithString:v7];
    }
    v8 = ;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_12:
    v9 = v8;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v7 URL];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_13;
    }
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (id)cmsOptionalDateForKey:()CMSCodingUtils
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = cmsDateFormatter();
    v3 = [v2 dateFromString:v1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)cmsOptionalArrayOfClass:()CMSCodingUtils forKey:
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [a1 objectForKey:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = v5;
  }

  else
  {
LABEL_12:
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)cmsOptionalDecodedClass:()CMSCodingUtils forKey:
{
  v5 = [a1 objectForKey:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a3 instanceFromCMSCoded:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)cmsOptionalArrayOfDecodedClass:()CMSCodingUtils forKey:
{
  v5 = [a1 objectForKey:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __70__NSDictionary_CMSCodingUtils__cmsOptionalArrayOfDecodedClass_forKey___block_invoke;
    v13 = &unk_278DDCBC8;
    v14 = v6;
    v15 = a3;
    v7 = v6;
    [v5 enumerateObjectsUsingBlock:&v10];
    v8 = [v7 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)cmsOptionalDictionaryForKey:()CMSCodingUtils
{
  v1 = [a1 objectForKey:?];
  v2 = cmsSafeDictionary(v1);

  return v2;
}

@end