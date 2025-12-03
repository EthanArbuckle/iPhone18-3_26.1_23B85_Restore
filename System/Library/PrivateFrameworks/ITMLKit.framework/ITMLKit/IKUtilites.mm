@interface IKUtilites
+ (BOOL)isAppTrusted;
+ (BOOL)isAppleTV;
+ (BOOL)runningAnInternalBuild;
+ (id)_arrayByAddingValuesFromArrayOfDictionaries:(id)dictionaries;
+ (id)_entriesBySectionIndexForArrayOfStringEntries:(id)entries currentCollation:(id)collation;
+ (id)sort:(id)sort options:(id)options;
@end

@implementation IKUtilites

+ (id)sort:(id)sort options:(id)options
{
  v39 = *MEMORY[0x277D85DE8];
  sortCopy = sort;
  optionsCopy = options;
  currentCollation = [MEMORY[0x277D75700] currentCollation];
  v30 = sortCopy;
  v7 = [objc_opt_class() _entriesBySectionIndexForArrayOfStringEntries:sortCopy currentCollation:currentCollation];
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = IKRequiredVisibilitySetForLocalizedIndexedCollation();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        if (v13 && [*(*(&v34 + 1) + 8 * i) count])
        {
          sectionTitles = [currentCollation sectionTitles];
          v15 = [sectionTitles objectAtIndex:v10];

          sectionIndexTitles = [currentCollation sectionIndexTitles];
          v17 = [sectionIndexTitles objectAtIndex:v10];

          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"systemBucketID-%@", v15];
          v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v19 setObject:v15 forKey:@"sectionTitle"];
          [v19 setObject:v17 forKey:@"sectionIndexTitle"];
          [v19 setObject:v18 forKey:@"indexBarEntryID"];
          [v19 setObject:v13 forKey:@"values"];
          if ([v31 containsObject:v17])
          {
            [v19 setObject:@"required" forKey:@"visibility"];
          }

          [v32 addObject:v19];
        }

        ++v10;
      }

      v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v9);
  }

  if (optionsCopy)
  {
    v20 = [optionsCopy objectForKey:@"bucket"];

    v21 = v32;
    if (!v20 || ([optionsCopy objectForKey:@"bucket"], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "BOOLValue"), v22, (v23 & 1) != 0))
    {
      v24 = v32;
      goto LABEL_20;
    }

    v25 = objc_opt_class();
  }

  else
  {
    v25 = objc_opt_class();
    v21 = v32;
  }

  v24 = [v25 _arrayByAddingValuesFromArrayOfDictionaries:v21];
LABEL_20:
  v26 = v24;

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (BOOL)runningAnInternalBuild
{
  if (!+[IKAppContext isInFactoryMode]&& runningAnInternalBuild_onceToken != -1)
  {
    +[IKUtilites runningAnInternalBuild];
  }

  return runningAnInternalBuild_internalBuild;
}

void __36__IKUtilites_runningAnInternalBuild__block_invoke()
{
  runningAnInternalBuild_internalBuild = 0;
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      runningAnInternalBuild_internalBuild = CFBooleanGetValue(v1) != 0;
    }

    CFRelease(v1);
  }
}

+ (BOOL)isAppleTV
{
  if (isAppleTV_sOnce != -1)
  {
    +[IKUtilites isAppleTV];
  }

  return isAppleTV_sIsAppleTV;
}

uint64_t __23__IKUtilites_isAppleTV__block_invoke()
{
  result = MGGetSInt32Answer();
  isAppleTV_sIsAppleTV = result == 4;
  return result;
}

+ (BOOL)isAppTrusted
{
  if (+[IKAppContext isInFactoryMode])
  {
    return 0;
  }

  v2 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = SecTaskCopyValueForEntitlement(v2, @"com.apple.itunesstored.private", 0);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    v7 = v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v5) != 0;
    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v3);
  return v7;
}

+ (id)_entriesBySectionIndexForArrayOfStringEntries:(id)entries currentCollation:(id)collation
{
  v29 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  collationCopy = collation;
  sectionIndexTitles = [collationCopy sectionIndexTitles];
  v8 = [sectionIndexTitles count];

  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v8];
  if (v8 >= 1)
  {
    v10 = v8;
    do
    {
      array = [MEMORY[0x277CBEB18] array];
      [v9 addObject:array];

      --v10;
    }

    while (v10);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = entriesCopy;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = [v9 objectAtIndex:{objc_msgSend(collationCopy, "sectionForObject:collationStringSelector:", v17, sel_self, v24)}];
        [v18 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  if (v8)
  {
    for (j = 0; j != v8; ++j)
    {
      v20 = [v9 objectAtIndex:{j, v24}];
      v21 = [collationCopy sortedArrayFromArray:v20 collationStringSelector:sel_self];
      [v9 replaceObjectAtIndex:j withObject:v21];
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_arrayByAddingValuesFromArrayOfDictionaries:(id)dictionaries
{
  v18 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = dictionariesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) objectForKey:{@"values", v13}];
        [v4 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

@end