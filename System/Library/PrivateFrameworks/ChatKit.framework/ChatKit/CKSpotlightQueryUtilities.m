@interface CKSpotlightQueryUtilities
+ (BOOL)shouldDisplayWalletSearchController;
+ (id)annotatedResultStringWithSearchText:(id)a3 resultText:(id)a4 primaryTextColor:(id)a5 annotatedTextColor:(id)a6;
+ (id)annotatedResultStringWithSearchText:(id)a3 resultText:(id)a4 primaryTextColor:(id)a5 primaryFont:(id)a6 annotatedTextColor:(id)a7 annotatedFont:(id)a8;
+ (id)defaultSearchControllers;
+ (id)detailsSearchControllers;
+ (id)matchedRankingQueriesForResult:(id)a3 withRankingQueryCount:(unint64_t)a4 maxRankingQuery:(unint64_t *)a5;
+ (id)queryStringForSearchString:(id)a3 attributes:(id)a4 matchType:(unint64_t)a5;
+ (id)queryStringFromSubqueries:(id)a3 combineOperator:(unint64_t)a4;
+ (id)rankingQueriesForSearchString:(id)a3 attributes:(id)a4;
+ (id)rankingQueryForField:(id)a3 matchType:(unint64_t)a4 searchString:(id)a5;
+ (id)stringByEscapingSearchString:(id)a3;
+ (id)tokenAddressesForFilteringWithContact:(id)a3;
+ (unint64_t)countOfNonSpaceCharsInSearchString:(id)a3;
@end

@implementation CKSpotlightQueryUtilities

+ (id)defaultSearchControllers
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF70];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:7];
  v4 = [v2 arrayWithArray:{v3, v8, v9, v10, v11, v12, v13}];

  if (+[CKSpotlightQueryUtilities shouldDisplayWalletSearchController])
  {
    [v4 insertObject:objc_opt_class() atIndex:6];
  }

  [v4 insertObject:objc_opt_class() atIndex:3];
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isSearchTokensEnabled];

  if (v6)
  {
    [v4 insertObject:objc_opt_class() atIndex:1];
  }

  return v4;
}

+ (BOOL)shouldDisplayWalletSearchController
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 1;
  }

  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 supportsPassbookAttachments];

  return v5;
}

+ (id)detailsSearchControllers
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF70];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:5];
  v4 = [v2 arrayWithArray:{v3, v6, v7, v8, v9}];

  if (+[CKSpotlightQueryUtilities shouldDisplayWalletSearchController])
  {
    [v4 insertObject:objc_opt_class() atIndex:4];
  }

  [v4 insertObject:objc_opt_class() atIndex:1];

  return v4;
}

+ (id)annotatedResultStringWithSearchText:(id)a3 resultText:(id)a4 primaryTextColor:(id)a5 primaryFont:(id)a6 annotatedTextColor:(id)a7 annotatedFont:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if ([v14 length])
  {
    v29 = v15;
    v19 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v14];
    v20 = [v19 length];
    v27 = v13;
    if ([v13 length])
    {
      v21 = [v14 rangeOfString:v13 options:129];
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v24 = *MEMORY[0x1E69DB648];
    [v19 addAttribute:*MEMORY[0x1E69DB648] value:v16 range:{0, v20, v27}];
    v25 = *MEMORY[0x1E69DB650];
    [v19 addAttribute:*MEMORY[0x1E69DB650] value:v29 range:{0, v20}];
    if (v23)
    {
      [v19 addAttribute:v25 value:v17 range:{v21, v23}];
      [v19 addAttribute:v24 value:v18 range:{v21, v23}];
    }

    v13 = v28;
    v15 = v29;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)annotatedResultStringWithSearchText:(id)a3 resultText:(id)a4 primaryTextColor:(id)a5 annotatedTextColor:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v10 length])
  {
    v13 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v10];
    v14 = [v13 length];
    if ([v9 length])
    {
      v15 = [v10 rangeOfString:v9 options:129];
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v18 = *MEMORY[0x1E69DB650];
    [v13 addAttribute:*MEMORY[0x1E69DB650] value:v11 range:{0, v14}];
    if (v17)
    {
      [v13 addAttribute:v18 value:v12 range:{v15, v17}];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)stringByEscapingSearchString:(id)a3
{
  v3 = [a3 mutableCopy];
  [v3 replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@" withString:@"\ options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"'" withString:@"\\'" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"*" withString:@"\\*" options:0 range:{0, objc_msgSend(v3, "length")}];

  return v3;
}

+ (unint64_t)countOfNonSpaceCharsInSearchString:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v5 = [v3 componentsSeparatedByCharactersInSet:v4];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v9 += [*(*(&v13 + 1) + 8 * i) length];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)queryStringForSearchString:(id)a3 attributes:(id)a4 matchType:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [objc_opt_class() stringByEscapingSearchString:v7];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__81;
  v21 = __Block_byref_object_dispose__81;
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__CKSpotlightQueryUtilities_queryStringForSearchString_attributes_matchType___block_invoke;
  v13[3] = &unk_1E72F17D0;
  v16 = a5;
  v10 = v9;
  v14 = v10;
  v15 = &v17;
  [v8 enumerateObjectsUsingBlock:v13];
  v11 = [v18[5] componentsJoinedByString:@" || "];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __77__CKSpotlightQueryUtilities_queryStringForSearchString_attributes_matchType___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_7;
    }

    v5 = @"%@=*%@*%@";
  }

  else
  {
    v5 = @"%@=%@*%@";
  }

  v8 = v3;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:v5, v3, a1[4], @"cwdt"];
  v3 = v8;
  if (v6)
  {
    v7 = v6;
    [*(*(a1[5] + 8) + 40) addObject:v6];

    v3 = v8;
  }

LABEL_7:
}

+ (id)rankingQueriesForSearchString:(id)a3 attributes:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() stringByEscapingSearchString:v6];

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [objc_opt_class() rankingQueryForField:v15 matchType:0 searchString:{v7, v20}];
        v17 = [objc_opt_class() rankingQueryForField:v15 matchType:1 searchString:v7];
        [v8 addObject:v16];
        [v9 addObject:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v18 = [v8 arrayByAddingObjectsFromArray:v9];

  return v18;
}

+ (id)rankingQueryForField:(id)a3 matchType:(unint64_t)a4 searchString:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (!a4)
  {
    v9 = @"%@=%@*%@";
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v9 = @"%@=*%@*%@";
LABEL_5:
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:v9, v7, v8, @"cwdt"];
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

+ (id)matchedRankingQueriesForResult:(id)a3 withRankingQueryCount:(unint64_t)a4 maxRankingQuery:(unint64_t *)a5
{
  if (a4)
  {
    v7 = [a3 attributeSet];
    v8 = [v7 queryResultRelevance];

    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v10 = [v8 unsignedIntValue];
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = v11 + 1;
        if ((v10 >> v11))
        {
          [v9 addIndex:v13];
          if (v12 <= v13)
          {
            v12 = v13;
          }
        }

        v11 = v13;
      }

      while (a4 != v13);
      if (a5)
      {
        *a5 = v12;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)queryStringFromSubqueries:(id)a3 combineOperator:(unint64_t)a4
{
  v5 = a3;
  if ([v5 count])
  {
    v6 = @"&&";
    if (!a4)
    {
      v6 = @"||";
    }

    v7 = v6;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__81;
    v18 = __Block_byref_object_dispose__81;
    v19 = [MEMORY[0x1E696AEC0] string];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__CKSpotlightQueryUtilities_queryStringFromSubqueries_combineOperator___block_invoke;
    v11[3] = &unk_1E72F8780;
    v13 = &v14;
    v8 = v7;
    v12 = v8;
    [v5 enumerateObjectsUsingBlock:v11];
    v9 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __71__CKSpotlightQueryUtilities_queryStringFromSubqueries_combineOperator___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (a3)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@" %@ (%@)", *(a1 + 32), a2];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", a2, v8];
  }
  v9 = ;
  v5 = [v4 stringByAppendingString:v9];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

+ (id)tokenAddressesForFilteringWithContact:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = [v3 emailAddresses];
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v24 + 1) + 8 * i) value];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v7);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = [v3 phoneNumbers];
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v20 + 1) + 8 * j) value];
          v17 = [v16 stringValue];
          v18 = IMNormalizeFormattedString();

          [v4 addObject:v18];
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

@end