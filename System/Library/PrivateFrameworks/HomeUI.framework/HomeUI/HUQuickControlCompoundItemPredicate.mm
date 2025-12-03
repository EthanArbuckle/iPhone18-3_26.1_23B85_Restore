@interface HUQuickControlCompoundItemPredicate
- (HUQuickControlCompoundItemPredicate)initWithRequiredSubpredicates:(id)subpredicates optionalSubpredicates:(id)optionalSubpredicates minimumNumberOfMatchedPredicates:(unint64_t)predicates;
- (id)allSubpredicates;
- (id)matchingControlItemsForControlItems:(id)items;
- (unint64_t)maximumNumberOfMatches;
@end

@implementation HUQuickControlCompoundItemPredicate

- (HUQuickControlCompoundItemPredicate)initWithRequiredSubpredicates:(id)subpredicates optionalSubpredicates:(id)optionalSubpredicates minimumNumberOfMatchedPredicates:(unint64_t)predicates
{
  subpredicatesCopy = subpredicates;
  optionalSubpredicatesCopy = optionalSubpredicates;
  v16.receiver = self;
  v16.super_class = HUQuickControlCompoundItemPredicate;
  v10 = [(HUQuickControlCompoundItemPredicate *)&v16 init];
  if (v10)
  {
    v11 = [subpredicatesCopy copy];
    requiredSubpredicates = v10->_requiredSubpredicates;
    v10->_requiredSubpredicates = v11;

    v13 = [optionalSubpredicatesCopy copy];
    optionalSubpredicates = v10->_optionalSubpredicates;
    v10->_optionalSubpredicates = v13;

    v10->_minimumNumberOfMatchedPredicates = predicates;
  }

  return v10;
}

- (id)allSubpredicates
{
  requiredSubpredicates = [(HUQuickControlCompoundItemPredicate *)self requiredSubpredicates];
  optionalSubpredicates = [(HUQuickControlCompoundItemPredicate *)self optionalSubpredicates];
  v5 = optionalSubpredicates;
  if (optionalSubpredicates)
  {
    v6 = optionalSubpredicates;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = [requiredSubpredicates arrayByAddingObjectsFromArray:v6];

  return v7;
}

- (unint64_t)maximumNumberOfMatches
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allSubpredicates = [(HUQuickControlCompoundItemPredicate *)self allSubpredicates];
  v3 = [allSubpredicates countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allSubpredicates);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) maximumNumberOfMatches];
      }

      v4 = [allSubpredicates countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)matchingControlItemsForControlItems:(id)items
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = [items mutableCopy];
  v5 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  requiredSubpredicates = [(HUQuickControlCompoundItemPredicate *)self requiredSubpredicates];
  v7 = [requiredSubpredicates countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v30;
    while (2)
    {
      v11 = 0;
      v12 = v9;
      v9 += v8;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(requiredSubpredicates);
        }

        v13 = *(*(&v29 + 1) + 8 * v11);
        if (![v4 count])
        {
          goto LABEL_13;
        }

        v14 = [v13 matchingControlItemsForControlItems:v4];
        if (![v14 count])
        {

LABEL_13:
          v9 = v12;
          goto LABEL_14;
        }

        [v4 removeObjectsInArray:v14];
        [v5 addObjectsFromArray:v14];
        ++v12;

        ++v11;
      }

      while (v8 != v11);
      v8 = [requiredSubpredicates countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_14:

  requiredSubpredicates2 = [(HUQuickControlCompoundItemPredicate *)self requiredSubpredicates];
  v16 = [requiredSubpredicates2 count];

  if (v9 >= v16)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    optionalSubpredicates = [(HUQuickControlCompoundItemPredicate *)self optionalSubpredicates];
    v18 = [optionalSubpredicates countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
LABEL_18:
      v21 = 0;
      while (1)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(optionalSubpredicates);
        }

        v22 = *(*(&v25 + 1) + 8 * v21);
        if (![v4 count])
        {
          break;
        }

        v23 = [v22 matchingControlItemsForControlItems:v4];
        if ([v23 count])
        {
          ++v9;
          [v5 addObjectsFromArray:v23];
          [v4 removeObjectsInArray:v23];
        }

        if (v19 == ++v21)
        {
          v19 = [optionalSubpredicates countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v19)
          {
            goto LABEL_18;
          }

          break;
        }
      }
    }
  }

  else
  {
    [v5 removeAllObjects];
  }

  if (v9 < [(HUQuickControlCompoundItemPredicate *)self minimumNumberOfMatchedPredicates])
  {
    [v5 removeAllObjects];
  }

  return v5;
}

@end