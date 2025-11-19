@interface NSDictionary(CATChangeDictionary)
- (id)cat_calculateAddedObjects;
- (id)cat_calculateRemovedObjects;
- (void)cat_calculateAddedObjects;
- (void)cat_calculateRemovedObjects;
@end

@implementation NSDictionary(CATChangeDictionary)

- (id)cat_calculateAddedObjects
{
  v6 = [a1 valueForKey:*MEMORY[0x277CCA2E8]];
  v7 = [v6 unsignedIntValue];

  if (!v7)
  {
    [(NSDictionary(CATChangeDictionary) *)a2 cat_calculateAddedObjects];
  }

  v8 = [a1 valueForKey:*MEMORY[0x277CCA2F0]];
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
  v11 = [a1 valueForKey:*MEMORY[0x277CCA300]];
  if (v11)
  {
    v3 = [MEMORY[0x277CBEB68] null];
    if (v11 != v3)
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

  if ((v7 - 2) >= 3)
  {
    if (v7 == 1)
    {
      v14 = [v10 mutableCopy];
      [v14 minusSet:v13];
      v15 = [v14 copy];

      v10 = v15;
    }

    else
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      [v14 handleFailureInMethod:a2 object:a1 file:@"NSDictionary+ChangeDictionary.m" lineNumber:40 description:@"Unexpected change type from a KVO'd collection"];
    }
  }

  return v10;
}

- (id)cat_calculateRemovedObjects
{
  v6 = [a1 valueForKey:*MEMORY[0x277CCA2E8]];
  v7 = [v6 unsignedIntValue];

  if (!v7)
  {
    [(NSDictionary(CATChangeDictionary) *)a2 cat_calculateRemovedObjects];
  }

  v8 = [a1 valueForKey:*MEMORY[0x277CCA2F0]];
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
  v11 = [a1 valueForKey:*MEMORY[0x277CCA300]];
  if (v11)
  {
    v3 = [MEMORY[0x277CBEB68] null];
    if (v11 != v3)
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

  if ((v7 - 2) >= 3)
  {
    if (v7 == 1)
    {
      v14 = [v13 mutableCopy];
      [v14 minusSet:v10];
      v15 = [v14 copy];

      v13 = v15;
    }

    else
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      [v14 handleFailureInMethod:a2 object:a1 file:@"NSDictionary+ChangeDictionary.m" lineNumber:72 description:@"Unexpected change type from a KVO'd collection"];
    }
  }

  return v13;
}

- (void)cat_calculateAddedObjects
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSDictionary+ChangeDictionary.m" lineNumber:18 description:@"This is not a KVO change dictionary"];
}

- (void)cat_calculateRemovedObjects
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSDictionary+ChangeDictionary.m" lineNumber:50 description:@"This is not a KVO change dictionary"];
}

@end