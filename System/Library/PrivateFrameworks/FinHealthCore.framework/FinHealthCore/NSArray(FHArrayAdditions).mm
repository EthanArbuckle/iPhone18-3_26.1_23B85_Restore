@interface NSArray(FHArrayAdditions)
- (id)_firstObjectWithPredicate:()FHArrayAdditions order:;
- (id)decimalNumberAtIndex:()FHArrayAdditions;
- (id)stringAtIndex:()FHArrayAdditions;
- (uint64_t)intAtIndex:()FHArrayAdditions;
- (uint64_t)signedIntegerAtIndex:()FHArrayAdditions;
- (uint64_t)unsignedIntAtIndex:()FHArrayAdditions;
@end

@implementation NSArray(FHArrayAdditions)

- (uint64_t)intAtIndex:()FHArrayAdditions
{
  v1 = [self objectAtIndex:?];
  intValue = [v1 intValue];

  return intValue;
}

- (uint64_t)signedIntegerAtIndex:()FHArrayAdditions
{
  v1 = [self objectAtIndex:?];
  integerValue = [v1 integerValue];

  return integerValue;
}

- (id)stringAtIndex:()FHArrayAdditions
{
  v1 = [self objectAtIndex:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = v1;
  }

  else
  {
    stringValue = [v1 stringValue];
  }

  v3 = stringValue;

  return v3;
}

- (uint64_t)unsignedIntAtIndex:()FHArrayAdditions
{
  v1 = [self objectAtIndex:?];
  unsignedIntValue = [v1 unsignedIntValue];

  return unsignedIntValue;
}

- (id)decimalNumberAtIndex:()FHArrayAdditions
{
  v1 = [self objectAtIndex:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MEMORY[0x277CCA980];
    if (v1)
    {
      [v1 decimalValue];
    }

    else
    {
      v9[0] = 0;
      v9[1] = 0;
      v10 = 0;
    }

    v3 = [v2 decimalNumberWithDecimal:v9];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v1 length])
    {
      goto LABEL_14;
    }

    v3 = [MEMORY[0x277CCA980] decimalNumberWithString:v1];
  }

  v4 = v3;
  if (v3)
  {
    notANumber = [MEMORY[0x277CCA980] notANumber];
    if ([v4 isEqualToNumber:notANumber])
    {
      v6 = 0;
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;

    goto LABEL_15;
  }

LABEL_14:
  v7 = 0;
LABEL_15:

  return v7;
}

- (id)_firstObjectWithPredicate:()FHArrayAdditions order:
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    if (a4 == 1)
    {
      [self reverseObjectEnumerator];
    }

    else
    {
      [self objectEnumerator];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v8 = v15 = 0u;
    v7 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v8);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (v6[2](v6, v11))
          {
            v7 = v11;
            goto LABEL_16;
          }
        }

        v7 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

@end