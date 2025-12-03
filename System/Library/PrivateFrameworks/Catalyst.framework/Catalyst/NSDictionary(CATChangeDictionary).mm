@interface NSDictionary(CATChangeDictionary)
- (id)cat_calculateAddedObjects;
- (id)cat_calculateRemovedObjects;
- (void)cat_calculateAddedObjects;
- (void)cat_calculateRemovedObjects;
@end

@implementation NSDictionary(CATChangeDictionary)

- (id)cat_calculateAddedObjects
{
  v6 = [self valueForKey:*MEMORY[0x277CCA2E8]];
  unsignedIntValue = [v6 unsignedIntValue];

  if (!unsignedIntValue)
  {
    [(NSDictionary(CATChangeDictionary) *)a2 cat_calculateAddedObjects];
  }

  v8 = [self valueForKey:*MEMORY[0x277CCA2F0]];
  if (!v8 || ([MEMORY[0x277CBEB68] null], v2 = objc_claimAutoreleasedReturnValue(), v8 == v2))
  {
    v10 = [MEMORY[0x277CBEB98] set];
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [MEMORY[0x277CBEB98] setWithArray:v8];
    }

    else
    {
      v9 = v8;
    }

    v10 = v9;
  }

LABEL_12:
  v11 = [self valueForKey:*MEMORY[0x277CCA300]];
  if (v11)
  {
    null = [MEMORY[0x277CBEB68] null];
    if (v11 != null)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [MEMORY[0x277CBEB98] setWithArray:v11];
      }

      else
      {
        v12 = v11;
      }

      v13 = v12;
      goto LABEL_20;
    }
  }

  v13 = [MEMORY[0x277CBEB98] set];
  if (v11)
  {
LABEL_20:
  }

  if ((unsignedIntValue - 2) >= 3)
  {
    if (unsignedIntValue == 1)
    {
      currentHandler = [v10 mutableCopy];
      [currentHandler minusSet:v13];
      v15 = [currentHandler copy];

      v10 = v15;
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"NSDictionary+ChangeDictionary.m" lineNumber:40 description:@"Unexpected change type from a KVO'd collection"];
    }
  }

  return v10;
}

- (id)cat_calculateRemovedObjects
{
  v6 = [self valueForKey:*MEMORY[0x277CCA2E8]];
  unsignedIntValue = [v6 unsignedIntValue];

  if (!unsignedIntValue)
  {
    [(NSDictionary(CATChangeDictionary) *)a2 cat_calculateRemovedObjects];
  }

  v8 = [self valueForKey:*MEMORY[0x277CCA2F0]];
  if (!v8 || ([MEMORY[0x277CBEB68] null], v2 = objc_claimAutoreleasedReturnValue(), v8 == v2))
  {
    v10 = [MEMORY[0x277CBEB98] set];
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [MEMORY[0x277CBEB98] setWithArray:v8];
    }

    else
    {
      v9 = v8;
    }

    v10 = v9;
  }

LABEL_12:
  v11 = [self valueForKey:*MEMORY[0x277CCA300]];
  if (v11)
  {
    null = [MEMORY[0x277CBEB68] null];
    if (v11 != null)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [MEMORY[0x277CBEB98] setWithArray:v11];
      }

      else
      {
        v12 = v11;
      }

      v13 = v12;
      goto LABEL_20;
    }
  }

  v13 = [MEMORY[0x277CBEB98] set];
  if (v11)
  {
LABEL_20:
  }

  if ((unsignedIntValue - 2) >= 3)
  {
    if (unsignedIntValue == 1)
    {
      currentHandler = [v13 mutableCopy];
      [currentHandler minusSet:v10];
      v15 = [currentHandler copy];

      v13 = v15;
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"NSDictionary+ChangeDictionary.m" lineNumber:72 description:@"Unexpected change type from a KVO'd collection"];
    }
  }

  return v13;
}

- (void)cat_calculateAddedObjects
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"NSDictionary+ChangeDictionary.m" lineNumber:18 description:@"This is not a KVO change dictionary"];
}

- (void)cat_calculateRemovedObjects
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"NSDictionary+ChangeDictionary.m" lineNumber:50 description:@"This is not a KVO change dictionary"];
}

@end