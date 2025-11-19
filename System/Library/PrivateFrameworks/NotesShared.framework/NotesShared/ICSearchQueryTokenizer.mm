@interface ICSearchQueryTokenizer
+ (NLTokenizer)tokenizer;
+ (id)_expandedTokensForSearchQuerySegmentArray:(id)a3 searchString:(id)a4 language:(id)a5;
+ (id)_queryTokensForSearchString:(id)a3 language:(id)a4;
+ (id)connectorCharacterSet;
+ (id)expandedTokensForSearchString:(id)a3 language:(id)a4;
+ (id)nonConnectorCharacterSet;
+ (id)spellChecker;
+ (id)spellCheckerGuessesForSearchString:(id)a3 inRange:(_NSRange)a4 language:(id)a5;
+ (id)tokensFromString:(id)a3 language:(id)a4;
+ (void)_combineConnectorAndTokensAndRemoveDividersInPlaceForMutableTokenArray:(id)a3 searchString:(id)a4;
+ (void)_insertConnectorAndDividerSegmentsIntoMutableTokenArray:(id)a3 searchString:(id)a4;
@end

@implementation ICSearchQueryTokenizer

+ (id)expandedTokensForSearchString:(id)a3 language:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = MEMORY[0x277CBEAF8];
    v9 = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [v9 preferredLocalizations];
    v11 = [v10 firstObject];
    v7 = [v8 canonicalLocaleIdentifierFromString:v11];
  }

  v12 = [a1 _queryTokensForSearchString:v6 language:v7];
  [a1 _sortMutableSearchQueryTokensInPlace:v12];
  [a1 _insertConnectorAndDividerSegmentsIntoMutableTokenArray:v12 searchString:v6];
  [a1 _combineConnectorAndTokensAndRemoveDividersInPlaceForMutableTokenArray:v12 searchString:v6];
  v13 = [a1 _expandedTokensForSearchQuerySegmentArray:v12 searchString:v6 language:v7];

  return v13;
}

+ (id)tokensFromString:(id)a3 language:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a1 _queryTokensForSearchString:v6 language:a4];
  [a1 _sortMutableSearchQueryTokensInPlace:v7];
  [a1 _insertConnectorAndDividerSegmentsIntoMutableTokenArray:v7 searchString:v6];
  [a1 _combineConnectorAndTokensAndRemoveDividersInPlaceForMutableTokenArray:v7 searchString:v6];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) segmentString];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];

  return v15;
}

+ (id)_queryTokensForSearchString:(id)a3 language:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v7 || (v9 = MEMORY[0x277CBEAF8], [MEMORY[0x277CCA8D8] mainBundle], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "preferredLocalizations"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "firstObject"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "canonicalLocaleIdentifierFromString:", v12), v7 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, v7))
  {
    v13 = [a1 tokenizer];

    if (v13)
    {
      v14 = [a1 tokenizer];
      objc_sync_enter(v14);
      v15 = [a1 tokenizer];
      [v15 setLanguage:v7];

      v16 = [a1 tokenizer];
      [v16 setString:v6];

      v17 = [a1 tokenizer];
      v18 = [v6 length];
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __63__ICSearchQueryTokenizer__queryTokensForSearchString_language___block_invoke;
      v24 = &unk_278197C98;
      v25 = v6;
      v26 = v8;
      [v17 enumerateTokensInRange:0 usingBlock:{v18, &v21}];

      objc_sync_exit(v14);
    }
  }

  if (![v8 count])
  {
    v19 = -[ICSearchQuerySegment initWithSegmentString:range:type:isExpandable:]([ICSearchQuerySegment alloc], "initWithSegmentString:range:type:isExpandable:", v6, 0, [v6 length], 0, 0);
    [v8 addObject:v19];
  }

  return v8;
}

void __63__ICSearchQueryTokenizer__queryTokensForSearchString_language___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = (a4 & 7) == 0;
  v8 = [ICSearchQuerySegment alloc];
  v9 = [*(a1 + 32) substringWithRange:{a2, a3}];
  v10 = [(ICSearchQuerySegment *)v8 initWithSegmentString:v9 range:a2 type:a3 isExpandable:0, v7];

  [*(a1 + 40) addObject:v10];
}

uint64_t __63__ICSearchQueryTokenizer__sortMutableSearchQueryTokensInPlace___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 segmentRange];
  v6 = [v4 segmentRange];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

+ (void)_insertConnectorAndDividerSegmentsIntoMutableTokenArray:(id)a3 searchString:(id)a4
{
  v58 = a3;
  v6 = a4;
  if ([v58 count] && objc_msgSend(v6, "length"))
  {
    v7 = [v58 objectAtIndexedSubscript:0];
    v8 = [v7 segmentRange];

    v9 = 0;
    if (v8 && v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [a1 nonConnectorCharacterSet];
      v11 = [v6 rangeOfCharacterFromSet:v10 options:4 range:{0, v8}];
      v13 = v12;

      v14 = v8 - (v11 + v13);
      v15 = v11 == 0x7FFFFFFFFFFFFFFFLL;
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = 0;
      }

      else
      {
        v16 = v11 + v13;
      }

      if (!v15)
      {
        v8 = v14;
      }

      if (v8)
      {
        v17 = [ICSearchQuerySegment alloc];
        v18 = [v6 substringWithRange:{v16, v8}];
        v9 = 1;
        v19 = [(ICSearchQuerySegment *)v17 initWithSegmentString:v18 range:v16 type:v8 isExpandable:1, 0];

        [v58 insertObject:v19 atIndex:0];
      }

      else
      {
        v9 = 0;
      }
    }

    if (v9 < [v58 count])
    {
      v20 = 0x278192000uLL;
      do
      {
        v21 = [v58 objectAtIndexedSubscript:v9];
        if ([v21 segmentRange] == 0x7FFFFFFFFFFFFFFFLL)
        {
        }

        else
        {
          v22 = [v58 objectAtIndexedSubscript:v9];
          v23 = [v22 type];

          if (!v23)
          {
            v25 = [v58 objectAtIndexedSubscript:v9];
            v26 = [v25 segmentRange];
            v28 = v26 + v27;

            if (v9 < [v58 count] - 1)
            {
              v29 = [v58 objectAtIndexedSubscript:v9 + 1];
              v30 = [v29 segmentRange];

              goto LABEL_25;
            }

            if (v28 >= [v6 length])
            {
LABEL_28:
              v31 = 0;
              goto LABEL_49;
            }

            v30 = [v6 length];
LABEL_25:
            v31 = 0;
            if (v30 == 0x7FFFFFFFFFFFFFFFLL)
            {
LABEL_49:
              v24 = v58;
            }

            else
            {
              v32 = v30 - v28;
              v24 = v58;
              if (v30 >= v28)
              {
                if (v30 > [v6 length])
                {
                  goto LABEL_28;
                }

                if (v30 == v28)
                {
                  v33 = [objc_alloc(*(v20 + 3840)) initWithSegmentString:&stru_2827172C0 range:v28 type:v30 - v28 isExpandable:{2, 0}];
                  [v58 insertObject:v33 atIndex:v9 + 1];
                  v31 = 1;
                  goto LABEL_48;
                }

                v57 = a1;
                v34 = [a1 nonConnectorCharacterSet];
                v35 = [v6 rangeOfCharacterFromSet:v34 options:0 range:{v28, v30 - v28}];

                if (v35 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v36 = objc_alloc(*(v20 + 3840));
                  v37 = [v6 substringWithRange:{v28, v30 - v28}];
                  v33 = [v36 initWithSegmentString:v37 range:v28 type:v32 isExpandable:{1, 0}];

                  [v58 insertObject:v33 atIndex:v9 + 1];
                  v31 = 1;
                  a1 = v57;
                  goto LABEL_48;
                }

                if (v35 == v28)
                {
                  v31 = 0;
                }

                else
                {
                  v38 = objc_alloc(*(v20 + 3840));
                  v39 = [v6 substringWithRange:{v28, v35 - v28}];
                  v40 = [v38 initWithSegmentString:v39 range:v28 type:v35 - v28 isExpandable:{1, 0}];

                  [v58 insertObject:v40 atIndex:v9 + 1];
                  v31 = 1;
                }

                v41 = [v57 nonConnectorCharacterSet];
                v42 = [v6 rangeOfCharacterFromSet:v41 options:4 range:{v28, v30 - v28}];
                v44 = v43;

                v45 = v42 + v44;
                if (v45 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v46 = v30 - v45;
                  if (v46)
                  {
                    v47 = [ICSearchQuerySegment alloc];
                    v48 = [v6 substringWithRange:{v45, v46}];
                    v49 = [(ICSearchQuerySegment *)v47 initWithSegmentString:v48 range:v45 type:v46 isExpandable:1, 0];

                    v50 = 1;
                    if (v35 != v28)
                    {
                      v50 = 2;
                    }

                    [v58 insertObject:v49 atIndex:v50 + v9];
                    ++v31;
                  }
                }

                a1 = v57;
                v24 = v58;
                if (v28 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v20 = 0x278192000uLL;
                  if (v45 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    goto LABEL_50;
                  }

                  v51 = v45 > v35;
                  v52 = v45 - v35;
                  if (!v51)
                  {
                    goto LABEL_50;
                  }

                  v53 = [ICSearchQuerySegment alloc];
                  v54 = [v6 substringWithRange:{v35, v52}];
                  v55 = v53;
                  v20 = 0x278192000;
                  v33 = [(ICSearchQuerySegment *)v55 initWithSegmentString:v54 range:v35 type:v52 isExpandable:2, 0];

                  v56 = 1;
                  if (v35 != v28)
                  {
                    v56 = 2;
                  }

                  [v58 insertObject:v33 atIndex:v56 + v9];
                  ++v31;
LABEL_48:

                  goto LABEL_49;
                }

                v20 = 0x278192000;
              }
            }

LABEL_50:
            v9 += v31 + 1;
            continue;
          }
        }

        ++v9;
        v24 = v58;
      }

      while (v9 < [v24 count]);
    }
  }
}

+ (void)_combineConnectorAndTokensAndRemoveDividersInPlaceForMutableTokenArray:(id)a3 searchString:(id)a4
{
  v23 = a3;
  v5 = a4;
  if ([v23 count] && objc_msgSend(v23, "count"))
  {
    v6 = 0;
    do
    {
      v7 = [v23 objectAtIndexedSubscript:v6];
      v8 = [v7 type];

      if (v8 == 2)
      {
        [v23 removeObjectAtIndex:v6];
        v9 = v23;
      }

      else
      {
        v10 = v6;
        v9 = v23;
        while (1)
        {
          v11 = [v9 objectAtIndexedSubscript:v10];
          v12 = [v11 type];

          if (v12 == 2)
          {
            break;
          }

          v13 = ++v10 >= [v23 count];
          v9 = v23;
          if (v13)
          {
            goto LABEL_14;
          }
        }

        v9 = v23;
LABEL_14:
        if (v10 - 1 > v6)
        {
          v14 = [v23 objectAtIndexedSubscript:v6];
          v15 = [v14 segmentRange];

          v16 = [v23 objectAtIndexedSubscript:v10 - 1];
          v17 = [v16 segmentRange];
          v19 = v18 - v15;

          v20 = [ICSearchQuerySegment alloc];
          v21 = [v5 substringWithRange:{v15, v19 + v17}];
          v22 = [(ICSearchQuerySegment *)v20 initWithSegmentString:v21 range:v15 type:v19 + v17 isExpandable:0, 0];

          [v23 removeObjectsInRange:{v6, v10 - v6}];
          [v23 insertObject:v22 atIndex:v6];

          v9 = v23;
        }

        ++v6;
      }
    }

    while (v6 < [v9 count]);
  }
}

+ (id)_expandedTokensForSearchQuerySegmentArray:(id)a3 searchString:(id)a4 language:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v36 = a4;
  v8 = a5;
  if (!v8)
  {
    v9 = MEMORY[0x277CBEAF8];
    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 preferredLocalizations];
    v12 = [v11 firstObject];
    v8 = [v9 canonicalLocaleIdentifierFromString:v12];
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = +[ICRankingQueriesDefinition maxCountOfVariantsForCountOfTokens:](ICRankingQueriesDefinition, "maxCountOfVariantsForCountOfTokens:", [v7 count]);
  v37 = 0u;
  v38 = 0u;
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v39 = 0uLL;
  v40 = 0uLL;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    v20 = 0x277CBE000uLL;
    do
    {
      v21 = 0;
      v34 = v18;
      do
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v37 + 1) + 8 * v21);
        if ([v22 isExpandable])
        {
          if (v8)
          {
            v23 = [v22 segmentRange];
            v25 = [a1 spellCheckerGuessesForSearchString:v36 inRange:v23 language:{v24, v8}];
          }

          else
          {
            v27 = [v22 segmentString];
            v42 = v27;
            [*(v20 + 2656) arrayWithObjects:&v42 count:1];
            v28 = v16;
            v30 = v29 = v20;
            v25 = [v30 mutableCopy];

            v20 = v29;
            v16 = v28;
            v8 = 0;
            v18 = v34;
          }

          if ([v25 count] > v15)
          {
            [v25 removeObjectsInRange:{v15, objc_msgSend(v25, "count") - v15}];
          }

          v26 = [v25 copy];
        }

        else
        {
          v25 = [v22 segmentString];
          v41 = v25;
          v26 = [*(v20 + 2656) arrayWithObjects:&v41 count:1];
        }

        v31 = v26;
        [v13 addObject:v26];

        ++v21;
      }

      while (v18 != v21);
      v18 = [v16 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v18);
  }

  v32 = [v13 copy];

  return v32;
}

+ (id)spellCheckerGuessesForSearchString:(id)a3 inRange:(_NSRange)a4 language:(id)a5
{
  length = a4.length;
  location = a4.location;
  v49[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v46 = a5;
  v44 = v9;
  v10 = [v9 substringWithRange:{location, length}];
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v10, 0}];
  v12 = [a1 spellChecker];
  objc_sync_enter(v12);
  obj = v12;
  if ([v12 spellServer:0 findMisspelledWordInString:v10 language:v46 wordCount:0 countOnly:0] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 0;
  }

  else
  {
    gotLoadHelper_x8__PRAppIdentifierKey(v13);
    v48 = **(v15 + 3808);
    v16 = ICNotesAppBundleIdentifier();
    v49[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    v14 = [obj spellServer:0 suggestContextualGuessDictionariesForWordRange:location inString:length language:v44 options:{v46, v17}];
  }

  objc_sync_exit(obj);

  if ([v14 count])
  {
    v18 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v47 = [v18 BOOLForKey:*MEMORY[0x277D36320]];

    if ([v14 count])
    {
      v20 = 0;
      Helper_x8__PRGuessKey = gotLoadHelper_x8__PRGuessKey(v19);
      Helper_x9__PRScoreKey = gotLoadHelper_x9__PRScoreKey(Helper_x8__PRGuessKey);
      v25 = *v24;
      v26 = **(v23 + 3824);
      v27 = 2.22507386e-308;
      do
      {
        v28 = [v14 objectAtIndexedSubscript:{v20, Helper_x9__PRScoreKey}];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v30 = [v14 objectAtIndexedSubscript:v20];
          v31 = [v30 objectForKeyedSubscript:v25];

          v32 = [v14 objectAtIndexedSubscript:v20];
          v33 = [v32 objectForKeyedSubscript:v26];
          [v33 doubleValue];
          v35 = v34;

          if (!v20)
          {
            v27 = v35;
          }

          v36 = [v11 count];
          if (v35 + 30.0 < v27 || v36 >= 0x10)
          {
            v38 = v47;
          }

          else
          {
            v38 = 1;
          }

          if (v38 != 1)
          {

            break;
          }

          if (([v31 isEqualToString:{v10, v35 + 30.0}] & 1) == 0)
          {
            [v11 ic_addNonNilObject:v31];
          }
        }

        ++v20;
      }

      while (v20 < [v14 count]);
    }
  }

  v39 = objc_alloc_init(MEMORY[0x277CCAB58]);
  if ([v11 count] >= 2)
  {
    v40 = 1;
    do
    {
      v41 = [v11 objectAtIndexedSubscript:v40];
      v42 = [v41 length];
      LODWORD(v42) = v42 < [v10 length];

      if (v42)
      {
        [v39 addIndex:v40];
      }

      ++v40;
    }

    while (v40 < [v11 count]);
  }

  [v11 removeObjectsAtIndexes:v39];

  return v11;
}

+ (NLTokenizer)tokenizer
{
  if (tokenizer_s_onceTokenForTokenizer != -1)
  {
    +[ICSearchQueryTokenizer tokenizer];
  }

  v3 = tokenizer_s_tokenizer;

  return v3;
}

void __35__ICSearchQueryTokenizer_tokenizer__block_invoke(double a1)
{
  gotLoadHelper_x8__OBJC_CLASS___NLTokenizer(a1);
  v2 = [objc_alloc(*(v1 + 2528)) initWithUnit:0];
  v3 = tokenizer_s_tokenizer;
  tokenizer_s_tokenizer = v2;
}

+ (id)spellChecker
{
  if (spellChecker_s_onceTokenForSpellChecker != -1)
  {
    +[ICSearchQueryTokenizer spellChecker];
  }

  v3 = spellChecker_s_spellChecker;

  return v3;
}

void __38__ICSearchQueryTokenizer_spellChecker__block_invoke(double a1)
{
  gotLoadHelper_x8__OBJC_CLASS___AppleSpell(a1);
  v2 = objc_alloc_init(*(v1 + 3800));
  v3 = spellChecker_s_spellChecker;
  spellChecker_s_spellChecker = v2;
}

+ (id)connectorCharacterSet
{
  if (connectorCharacterSet_s_onceTokenForConnectorCharacterSet != -1)
  {
    +[ICSearchQueryTokenizer connectorCharacterSet];
  }

  v3 = connectorCharacterSet_s_connectorCharacterSet;

  return v3;
}

void __47__ICSearchQueryTokenizer_connectorCharacterSet__block_invoke()
  v0 = {;
  v1 = connectorCharacterSet_s_connectorCharacterSet;
  connectorCharacterSet_s_connectorCharacterSet = v0;
}

+ (id)nonConnectorCharacterSet
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ICSearchQueryTokenizer_nonConnectorCharacterSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (nonConnectorCharacterSet_s_onceTokenForNonConnectorCharacterSet != -1)
  {
    dispatch_once(&nonConnectorCharacterSet_s_onceTokenForNonConnectorCharacterSet, block);
  }

  v2 = nonConnectorCharacterSet_s_nonConnectorCharacterSet;

  return v2;
}

void __50__ICSearchQueryTokenizer_nonConnectorCharacterSet__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) connectorCharacterSet];
  v1 = [v3 invertedSet];
  v2 = nonConnectorCharacterSet_s_nonConnectorCharacterSet;
  nonConnectorCharacterSet_s_nonConnectorCharacterSet = v1;
}

@end