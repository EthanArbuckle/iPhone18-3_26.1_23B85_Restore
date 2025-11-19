@interface IKRestrictionsUtilities
+ (id)_purgableRatingsDictionary;
+ (id)_ratingDictionaryForDomain:(id)a3 countryCode:(id)a4;
+ (id)orderedRankingsInDomain:(id)a3 countryCode:(id)a4;
+ (id)rankingForRestrictionRating:(id)a3 inDomain:(id)a4 countryCode:(id)a5;
+ (id)ratingForRestrictionRanking:(id)a3 inDomain:(id)a4 countryCode:(id)a5;
- (void)cache:(id)a3 willEvictObject:(id)a4;
@end

@implementation IKRestrictionsUtilities

+ (id)_purgableRatingsDictionary
{
  if (_purgableRatingsDictionary_sOnce != -1)
  {
    +[IKRestrictionsUtilities _purgableRatingsDictionary];
  }

  v3 = a1;
  objc_sync_enter(v3);
  v4 = [_purgableRatingsDictionary_sCache objectForKey:@"dictionary"];
  if (!v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 URLForResource:@"RatingProviders" withExtension:@"plist"];

    v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v6];
    [_purgableRatingsDictionary_sCache setObject:v4 forKey:@"dictionary"];
  }

  objc_sync_exit(v3);

  return v4;
}

uint64_t __53__IKRestrictionsUtilities__purgableRatingsDictionary__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = _purgableRatingsDictionary_sCache;
  _purgableRatingsDictionary_sCache = v0;

  v2 = objc_alloc_init(IKRestrictionsUtilities);
  v3 = _purgableRatingsDictionary_sDelegateInstance;
  _purgableRatingsDictionary_sDelegateInstance = v2;

  v4 = _purgableRatingsDictionary_sCache;
  v5 = _purgableRatingsDictionary_sDelegateInstance;

  return [v4 setDelegate:v5];
}

- (void)cache:(id)a3 willEvictObject:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = ITMLKitGetLogObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_2549A4000, v4, OS_LOG_TYPE_INFO, "%@ cached ratings dictionary will be evicted", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)ratingForRestrictionRanking:(id)a3 inDomain:(id)a4 countryCode:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 _ratingDictionaryForDomain:v9 countryCode:v10];
  v12 = [v8 integerValue];
  v13 = [v11 count];
  v14 = *MEMORY[0x277CEC570];
  if (v13)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v29 = v11;
      v30 = v10;
      v31 = v9;
      v32 = v8;
      v33 = 0;
      v18 = *v35;
      v28 = v14;
      v19 = v14;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v34 + 1) + 8 * i);
          v22 = [v21 objectForKey:{@"rank", v28, v29, v30, v31, v32}];
          v23 = [v22 integerValue];

          if (v23 >= v12 && v19 >= v23)
          {
            v19 = v23;
            v24 = v21;

            v33 = v24;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v17);

      v9 = v31;
      v8 = v32;
      v11 = v29;
      v10 = v30;
      v14 = v28;
      if (v33)
      {
        v25 = [v33 objectForKey:@"rating"];

        goto LABEL_23;
      }
    }

    else
    {
    }

    if (v12 == v14)
    {
      v25 = @"Any";
    }

    else
    {
      v25 = @"None";
    }
  }

  else if (v12 == v14)
  {
    v25 = @"Any";
  }

  else if (v12 == *MEMORY[0x277CEC578])
  {
    v25 = @"None";
  }

  else
  {
    v25 = 0;
  }

LABEL_23:

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)orderedRankingsInDomain:(id)a3 countryCode:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _purgableRatingsDictionary];
  v9 = *MEMORY[0x277CEC568];
  if (v6)
  {
    v9 = v6;
  }

  v10 = v9;

  v11 = [v10 lowercaseString];

  v12 = [v8 objectForKey:v11];

  v13 = [v12 objectForKey:v7];

  v14 = [v13 valueForKey:@"rank"];
  v15 = [v14 sortedArrayUsingSelector:sel_compare_];

  return v15;
}

+ (id)rankingForRestrictionRating:(id)a3 inDomain:(id)a4 countryCode:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isEqualToString:@"Any"])
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = MEMORY[0x277CEC570];
LABEL_5:
    v13 = [v11 numberWithInt:*v12];
    goto LABEL_19;
  }

  if ([v8 isEqualToString:@"None"])
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = MEMORY[0x277CEC578];
    goto LABEL_5;
  }

  [a1 _ratingDictionaryForDomain:v9 countryCode:v10];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v27 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
LABEL_8:
    v18 = 0;
    while (1)
    {
      if (*v25 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v24 + 1) + 8 * v18);
      v20 = [v19 objectForKey:{@"rating", v24}];
      if ([v20 isEqualToString:v8])
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v16)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }

    v21 = v19;

    if (!v21)
    {
      goto LABEL_17;
    }

    v13 = [v21 objectForKey:@"rank"];
  }

  else
  {
LABEL_14:

LABEL_17:
    v13 = [MEMORY[0x277CCABB0] numberWithInt:{*MEMORY[0x277CEC570], v24}];
  }

LABEL_19:
  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)_ratingDictionaryForDomain:(id)a3 countryCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _purgableRatingsDictionary];
  v9 = [v6 isEqualToString:@"ratingApps"];
  v10 = *MEMORY[0x277CEC568];
  if (v7)
  {
    v11 = v9;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = *MEMORY[0x277CEC568];
  }

  else
  {
    v12 = v7;
  }

  v13 = v12;

  v14 = [v13 lowercaseString];
  v15 = [v8 objectForKey:v14];

  if (!v15)
  {
    v16 = v10;

    v17 = [v16 lowercaseString];
    v15 = [v8 objectForKey:v17];

    v13 = v16;
  }

  v18 = [v15 objectForKey:v6];

  return v18;
}

@end