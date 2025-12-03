@interface ICSearchQueryTokenizer
+ (NLTokenizer)tokenizer;
+ (id)_expandedTokensForSearchQuerySegmentArray:(id)array searchString:(id)string language:(id)language;
+ (id)_queryTokensForSearchString:(id)string language:(id)language;
+ (id)connectorCharacterSet;
+ (id)expandedTokensForSearchString:(id)string language:(id)language;
+ (id)nonConnectorCharacterSet;
+ (id)spellChecker;
+ (id)spellCheckerGuessesForSearchString:(id)string inRange:(_NSRange)range language:(id)language;
+ (id)tokensFromString:(id)string language:(id)language;
+ (void)_combineConnectorAndTokensAndRemoveDividersInPlaceForMutableTokenArray:(id)array searchString:(id)string;
+ (void)_insertConnectorAndDividerSegmentsIntoMutableTokenArray:(id)array searchString:(id)string;
@end

@implementation ICSearchQueryTokenizer

+ (id)expandedTokensForSearchString:(id)string language:(id)language
{
  stringCopy = string;
  languageCopy = language;
  if (!languageCopy)
  {
    v8 = MEMORY[0x277CBEAF8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    preferredLocalizations = [mainBundle preferredLocalizations];
    firstObject = [preferredLocalizations firstObject];
    languageCopy = [v8 canonicalLocaleIdentifierFromString:firstObject];
  }

  v12 = [self _queryTokensForSearchString:stringCopy language:languageCopy];
  [self _sortMutableSearchQueryTokensInPlace:v12];
  [self _insertConnectorAndDividerSegmentsIntoMutableTokenArray:v12 searchString:stringCopy];
  [self _combineConnectorAndTokensAndRemoveDividersInPlaceForMutableTokenArray:v12 searchString:stringCopy];
  v13 = [self _expandedTokensForSearchQuerySegmentArray:v12 searchString:stringCopy language:languageCopy];

  return v13;
}

+ (id)tokensFromString:(id)string language:(id)language
{
  v22 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v7 = [self _queryTokensForSearchString:stringCopy language:language];
  [self _sortMutableSearchQueryTokensInPlace:v7];
  [self _insertConnectorAndDividerSegmentsIntoMutableTokenArray:v7 searchString:stringCopy];
  [self _combineConnectorAndTokensAndRemoveDividersInPlaceForMutableTokenArray:v7 searchString:stringCopy];
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

        segmentString = [*(*(&v17 + 1) + 8 * i) segmentString];
        [v8 addObject:segmentString];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];

  return v15;
}

+ (id)_queryTokensForSearchString:(id)string language:(id)language
{
  stringCopy = string;
  languageCopy = language;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (languageCopy || (v9 = MEMORY[0x277CBEAF8], [MEMORY[0x277CCA8D8] mainBundle], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "preferredLocalizations"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "firstObject"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "canonicalLocaleIdentifierFromString:", v12), languageCopy = objc_claimAutoreleasedReturnValue(), v12, v11, v10, languageCopy))
  {
    tokenizer = [self tokenizer];

    if (tokenizer)
    {
      tokenizer2 = [self tokenizer];
      objc_sync_enter(tokenizer2);
      tokenizer3 = [self tokenizer];
      [tokenizer3 setLanguage:languageCopy];

      tokenizer4 = [self tokenizer];
      [tokenizer4 setString:stringCopy];

      tokenizer5 = [self tokenizer];
      v18 = [stringCopy length];
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __63__ICSearchQueryTokenizer__queryTokensForSearchString_language___block_invoke;
      v24 = &unk_278197C98;
      v25 = stringCopy;
      v26 = v8;
      [tokenizer5 enumerateTokensInRange:0 usingBlock:{v18, &v21}];

      objc_sync_exit(tokenizer2);
    }
  }

  if (![v8 count])
  {
    v19 = -[ICSearchQuerySegment initWithSegmentString:range:type:isExpandable:]([ICSearchQuerySegment alloc], "initWithSegmentString:range:type:isExpandable:", stringCopy, 0, [stringCopy length], 0, 0);
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

+ (void)_insertConnectorAndDividerSegmentsIntoMutableTokenArray:(id)array searchString:(id)string
{
  arrayCopy = array;
  stringCopy = string;
  if ([arrayCopy count] && objc_msgSend(stringCopy, "length"))
  {
    v7 = [arrayCopy objectAtIndexedSubscript:0];
    segmentRange = [v7 segmentRange];

    v9 = 0;
    if (segmentRange && segmentRange != 0x7FFFFFFFFFFFFFFFLL)
    {
      nonConnectorCharacterSet = [self nonConnectorCharacterSet];
      v11 = [stringCopy rangeOfCharacterFromSet:nonConnectorCharacterSet options:4 range:{0, segmentRange}];
      v13 = v12;

      v14 = segmentRange - (v11 + v13);
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
        segmentRange = v14;
      }

      if (segmentRange)
      {
        v17 = [ICSearchQuerySegment alloc];
        v18 = [stringCopy substringWithRange:{v16, segmentRange}];
        v9 = 1;
        v19 = [(ICSearchQuerySegment *)v17 initWithSegmentString:v18 range:v16 type:segmentRange isExpandable:1, 0];

        [arrayCopy insertObject:v19 atIndex:0];
      }

      else
      {
        v9 = 0;
      }
    }

    if (v9 < [arrayCopy count])
    {
      v20 = 0x278192000uLL;
      do
      {
        v21 = [arrayCopy objectAtIndexedSubscript:v9];
        if ([v21 segmentRange] == 0x7FFFFFFFFFFFFFFFLL)
        {
        }

        else
        {
          v22 = [arrayCopy objectAtIndexedSubscript:v9];
          type = [v22 type];

          if (!type)
          {
            v25 = [arrayCopy objectAtIndexedSubscript:v9];
            segmentRange2 = [v25 segmentRange];
            v28 = segmentRange2 + v27;

            if (v9 < [arrayCopy count] - 1)
            {
              v29 = [arrayCopy objectAtIndexedSubscript:v9 + 1];
              segmentRange3 = [v29 segmentRange];

              goto LABEL_25;
            }

            if (v28 >= [stringCopy length])
            {
LABEL_28:
              v31 = 0;
              goto LABEL_49;
            }

            segmentRange3 = [stringCopy length];
LABEL_25:
            v31 = 0;
            if (segmentRange3 == 0x7FFFFFFFFFFFFFFFLL)
            {
LABEL_49:
              v24 = arrayCopy;
            }

            else
            {
              v32 = segmentRange3 - v28;
              v24 = arrayCopy;
              if (segmentRange3 >= v28)
              {
                if (segmentRange3 > [stringCopy length])
                {
                  goto LABEL_28;
                }

                if (segmentRange3 == v28)
                {
                  v33 = [objc_alloc(*(v20 + 3840)) initWithSegmentString:&stru_2827172C0 range:v28 type:segmentRange3 - v28 isExpandable:{2, 0}];
                  [arrayCopy insertObject:v33 atIndex:v9 + 1];
                  v31 = 1;
                  goto LABEL_48;
                }

                selfCopy = self;
                nonConnectorCharacterSet2 = [self nonConnectorCharacterSet];
                v35 = [stringCopy rangeOfCharacterFromSet:nonConnectorCharacterSet2 options:0 range:{v28, segmentRange3 - v28}];

                if (v35 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v36 = objc_alloc(*(v20 + 3840));
                  v37 = [stringCopy substringWithRange:{v28, segmentRange3 - v28}];
                  v33 = [v36 initWithSegmentString:v37 range:v28 type:v32 isExpandable:{1, 0}];

                  [arrayCopy insertObject:v33 atIndex:v9 + 1];
                  v31 = 1;
                  self = selfCopy;
                  goto LABEL_48;
                }

                if (v35 == v28)
                {
                  v31 = 0;
                }

                else
                {
                  v38 = objc_alloc(*(v20 + 3840));
                  v39 = [stringCopy substringWithRange:{v28, v35 - v28}];
                  v40 = [v38 initWithSegmentString:v39 range:v28 type:v35 - v28 isExpandable:{1, 0}];

                  [arrayCopy insertObject:v40 atIndex:v9 + 1];
                  v31 = 1;
                }

                nonConnectorCharacterSet3 = [selfCopy nonConnectorCharacterSet];
                v42 = [stringCopy rangeOfCharacterFromSet:nonConnectorCharacterSet3 options:4 range:{v28, segmentRange3 - v28}];
                v44 = v43;

                v45 = v42 + v44;
                if (v45 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v46 = segmentRange3 - v45;
                  if (v46)
                  {
                    v47 = [ICSearchQuerySegment alloc];
                    v48 = [stringCopy substringWithRange:{v45, v46}];
                    v49 = [(ICSearchQuerySegment *)v47 initWithSegmentString:v48 range:v45 type:v46 isExpandable:1, 0];

                    v50 = 1;
                    if (v35 != v28)
                    {
                      v50 = 2;
                    }

                    [arrayCopy insertObject:v49 atIndex:v50 + v9];
                    ++v31;
                  }
                }

                self = selfCopy;
                v24 = arrayCopy;
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
                  v54 = [stringCopy substringWithRange:{v35, v52}];
                  v55 = v53;
                  v20 = 0x278192000;
                  v33 = [(ICSearchQuerySegment *)v55 initWithSegmentString:v54 range:v35 type:v52 isExpandable:2, 0];

                  v56 = 1;
                  if (v35 != v28)
                  {
                    v56 = 2;
                  }

                  [arrayCopy insertObject:v33 atIndex:v56 + v9];
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
        v24 = arrayCopy;
      }

      while (v9 < [v24 count]);
    }
  }
}

+ (void)_combineConnectorAndTokensAndRemoveDividersInPlaceForMutableTokenArray:(id)array searchString:(id)string
{
  arrayCopy = array;
  stringCopy = string;
  if ([arrayCopy count] && objc_msgSend(arrayCopy, "count"))
  {
    v6 = 0;
    do
    {
      v7 = [arrayCopy objectAtIndexedSubscript:v6];
      type = [v7 type];

      if (type == 2)
      {
        [arrayCopy removeObjectAtIndex:v6];
        v9 = arrayCopy;
      }

      else
      {
        v10 = v6;
        v9 = arrayCopy;
        while (1)
        {
          v11 = [v9 objectAtIndexedSubscript:v10];
          type2 = [v11 type];

          if (type2 == 2)
          {
            break;
          }

          v13 = ++v10 >= [arrayCopy count];
          v9 = arrayCopy;
          if (v13)
          {
            goto LABEL_14;
          }
        }

        v9 = arrayCopy;
LABEL_14:
        if (v10 - 1 > v6)
        {
          v14 = [arrayCopy objectAtIndexedSubscript:v6];
          segmentRange = [v14 segmentRange];

          v16 = [arrayCopy objectAtIndexedSubscript:v10 - 1];
          segmentRange2 = [v16 segmentRange];
          v19 = v18 - segmentRange;

          v20 = [ICSearchQuerySegment alloc];
          v21 = [stringCopy substringWithRange:{segmentRange, v19 + segmentRange2}];
          v22 = [(ICSearchQuerySegment *)v20 initWithSegmentString:v21 range:segmentRange type:v19 + segmentRange2 isExpandable:0, 0];

          [arrayCopy removeObjectsInRange:{v6, v10 - v6}];
          [arrayCopy insertObject:v22 atIndex:v6];

          v9 = arrayCopy;
        }

        ++v6;
      }
    }

    while (v6 < [v9 count]);
  }
}

+ (id)_expandedTokensForSearchQuerySegmentArray:(id)array searchString:(id)string language:(id)language
{
  v44 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  stringCopy = string;
  languageCopy = language;
  if (!languageCopy)
  {
    v9 = MEMORY[0x277CBEAF8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    preferredLocalizations = [mainBundle preferredLocalizations];
    firstObject = [preferredLocalizations firstObject];
    languageCopy = [v9 canonicalLocaleIdentifierFromString:firstObject];
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = +[ICRankingQueriesDefinition maxCountOfVariantsForCountOfTokens:](ICRankingQueriesDefinition, "maxCountOfVariantsForCountOfTokens:", [arrayCopy count]);
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
  v16 = arrayCopy;
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
          if (languageCopy)
          {
            segmentRange = [v22 segmentRange];
            segmentString2 = [self spellCheckerGuessesForSearchString:stringCopy inRange:segmentRange language:{v24, languageCopy}];
          }

          else
          {
            segmentString = [v22 segmentString];
            v42 = segmentString;
            [*(v20 + 2656) arrayWithObjects:&v42 count:1];
            v28 = v16;
            v30 = v29 = v20;
            segmentString2 = [v30 mutableCopy];

            v20 = v29;
            v16 = v28;
            languageCopy = 0;
            v18 = v34;
          }

          if ([segmentString2 count] > v15)
          {
            [segmentString2 removeObjectsInRange:{v15, objc_msgSend(segmentString2, "count") - v15}];
          }

          v26 = [segmentString2 copy];
        }

        else
        {
          segmentString2 = [v22 segmentString];
          v41 = segmentString2;
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

+ (id)spellCheckerGuessesForSearchString:(id)string inRange:(_NSRange)range language:(id)language
{
  length = range.length;
  location = range.location;
  v49[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  languageCopy = language;
  v44 = stringCopy;
  v10 = [stringCopy substringWithRange:{location, length}];
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v10, 0}];
  spellChecker = [self spellChecker];
  objc_sync_enter(spellChecker);
  obj = spellChecker;
  if ([spellChecker spellServer:0 findMisspelledWordInString:v10 language:languageCopy wordCount:0 countOnly:0] == 0x7FFFFFFFFFFFFFFFLL)
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
    v14 = [obj spellServer:0 suggestContextualGuessDictionariesForWordRange:location inString:length language:v44 options:{languageCopy, v17}];
  }

  objc_sync_exit(obj);

  if ([v14 count])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v47 = [standardUserDefaults BOOLForKey:*MEMORY[0x277D36320]];

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

+ (id)nonConnectorCharacterSet
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ICSearchQueryTokenizer_nonConnectorCharacterSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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