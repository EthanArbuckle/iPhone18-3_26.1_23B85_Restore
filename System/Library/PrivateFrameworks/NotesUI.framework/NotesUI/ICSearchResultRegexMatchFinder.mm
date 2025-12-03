@interface ICSearchResultRegexMatchFinder
+ (BOOL)textCheckingResultsAreValid:(id)valid;
+ (id)matchesForToken:(id)token inDocument:(id)document checkPrefixBeforeFallingBack:(BOOL)back;
- (BOOL)isEqual:(id)equal;
- (ICSearchResultRegexMatchFinder)initWithPrefixMatchingTokens:(id)tokens substringMatchingTokens:(id)matchingTokens searchString:(id)string;
- (id)firstMatchInDocumentWithGlobalFallback:(id)fallback;
- (id)matchesInDocumentWithPerTokenFallback:(id)fallback;
- (unint64_t)hash;
@end

@implementation ICSearchResultRegexMatchFinder

- (ICSearchResultRegexMatchFinder)initWithPrefixMatchingTokens:(id)tokens substringMatchingTokens:(id)matchingTokens searchString:(id)string
{
  tokensCopy = tokens;
  matchingTokensCopy = matchingTokens;
  stringCopy = string;
  v31.receiver = self;
  v31.super_class = ICSearchResultRegexMatchFinder;
  v11 = [(ICSearchResultRegexMatchFinder *)&v31 init];
  if (v11)
  {
    v12 = tokensCopy;
    if (!tokensCopy)
    {
      v12 = [MEMORY[0x1E695DFD8] set];
    }

    v13 = [v12 setByAddingObject:stringCopy];
    prefixMatchingTokens = v11->_prefixMatchingTokens;
    v11->_prefixMatchingTokens = v13;

    if (!tokensCopy)
    {
    }

    v15 = matchingTokensCopy;
    if (!matchingTokensCopy)
    {
      v15 = [MEMORY[0x1E695DFD8] set];
    }

    v16 = [v15 setByAddingObject:stringCopy];
    substringMatchingTokens = v11->_substringMatchingTokens;
    v11->_substringMatchingTokens = v16;

    if (!matchingTokensCopy)
    {
    }

    objc_storeStrong(&v11->_searchString, string);
    v18 = MEMORY[0x1E696AE70];
    allObjects = [(NSSet *)v11->_prefixMatchingTokens allObjects];
    allObjects2 = [(NSSet *)v11->_substringMatchingTokens allObjects];
    v21 = [v18 ic_regexForPrefixMatchingTokens:allObjects substringMatchingTokens:allObjects2];
    normalRegex = v11->_normalRegex;
    v11->_normalRegex = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    allObjects3 = [(NSSet *)v11->_prefixMatchingTokens allObjects];
    [v23 addObjectsFromArray:allObjects3];

    allObjects4 = [(NSSet *)v11->_substringMatchingTokens allObjects];
    [v23 addObjectsFromArray:allObjects4];

    v26 = MEMORY[0x1E696AE70];
    allObjects5 = [v23 allObjects];
    v28 = [v26 ic_regexForSearchStrings:allObjects5];
    fallbackRegex = v11->_fallbackRegex;
    v11->_fallbackRegex = v28;
  }

  return v11;
}

- (id)firstMatchInDocumentWithGlobalFallback:(id)fallback
{
  v24[1] = *MEMORY[0x1E69E9840];
  fallbackCopy = fallback;
  if ([fallbackCopy length])
  {
    v5 = MEMORY[0x1E696AE70];
    searchString = [(ICSearchResultRegexMatchFinder *)self searchString];
    v24[0] = searchString;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v8 = [v5 ic_regexForSearchStrings:v7 matchWordBoundaries:1];

    v9 = [v8 firstMatchInString:fallbackCopy options:0 range:{0, objc_msgSend(fallbackCopy, "length")}];
    v10 = v9;
    if ((!v9 || [v9 range] == 0x7FFFFFFFFFFFFFFFLL) && (v11 = MEMORY[0x1E696AE70], -[ICSearchResultRegexMatchFinder searchString](self, "searchString"), v12 = objc_claimAutoreleasedReturnValue(), v23 = v12, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v23, 1), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "ic_regexForSearchStrings:matchWordBoundaries:", v13, 0), v14 = objc_claimAutoreleasedReturnValue(), v13, v12, objc_msgSend(v14, "firstMatchInString:options:range:", fallbackCopy, 0, 0, objc_msgSend(fallbackCopy, "length")), v15 = objc_claimAutoreleasedReturnValue(), v10, v14, (v10 = v15) == 0) || objc_msgSend(v10, "range") == 0x7FFFFFFFFFFFFFFFLL)
    {
      normalRegex = [(ICSearchResultRegexMatchFinder *)self normalRegex];

      if (normalRegex)
      {
        normalRegex2 = [(ICSearchResultRegexMatchFinder *)self normalRegex];
        v18 = [normalRegex2 firstMatchInString:fallbackCopy options:0 range:{0, objc_msgSend(fallbackCopy, "length")}];

        v10 = v18;
      }

      if (!v10)
      {
        goto LABEL_10;
      }
    }

    if ([v10 range] == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_10:
      fallbackRegex = [(ICSearchResultRegexMatchFinder *)self fallbackRegex];

      if (fallbackRegex)
      {
        fallbackRegex2 = [(ICSearchResultRegexMatchFinder *)self fallbackRegex];
        v21 = [fallbackRegex2 firstMatchInString:fallbackCopy options:0 range:{0, objc_msgSend(fallbackCopy, "length")}];

        v10 = v21;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)matchesInDocumentWithPerTokenFallback:(id)fallback
{
  v30 = *MEMORY[0x1E69E9840];
  fallbackCopy = fallback;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([fallbackCopy length])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    prefixMatchingTokens = [(ICSearchResultRegexMatchFinder *)self prefixMatchingTokens];
    v7 = [prefixMatchingTokens countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(prefixMatchingTokens);
          }

          v11 = [objc_opt_class() matchesForToken:*(*(&v24 + 1) + 8 * i) inDocument:fallbackCopy checkPrefixBeforeFallingBack:1];
          if (v11)
          {
            [v5 addObjectsFromArray:v11];
          }
        }

        v8 = [prefixMatchingTokens countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    substringMatchingTokens = [(ICSearchResultRegexMatchFinder *)self substringMatchingTokens];
    v13 = [substringMatchingTokens countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(substringMatchingTokens);
          }

          v17 = [objc_opt_class() matchesForToken:*(*(&v20 + 1) + 8 * j) inDocument:fallbackCopy checkPrefixBeforeFallingBack:0];
          if (v17)
          {
            [v5 addObjectsFromArray:v17];
          }
        }

        v14 = [substringMatchingTokens countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v14);
    }
  }

  v18 = [v5 copy];

  return v18;
}

+ (id)matchesForToken:(id)token inDocument:(id)document checkPrefixBeforeFallingBack:(BOOL)back
{
  backCopy = back;
  v19[1] = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  documentCopy = document;
  if ([documentCopy length])
  {
    if (backCopy)
    {
      v10 = MEMORY[0x1E696AE70];
      v19[0] = tokenCopy;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      v12 = [v10 ic_regexForSearchStrings:v11 matchWordBoundaries:1];

      v13 = [v12 matchesInString:documentCopy options:0 range:{0, objc_msgSend(documentCopy, "length")}];
      if ([self textCheckingResultsAreValid:v13])
      {

        if (v13)
        {
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v14 = MEMORY[0x1E696AE70];
    v18 = tokenCopy;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v16 = [v14 ic_regexForSearchStrings:v15 matchWordBoundaries:0];

    v13 = [v16 matchesInString:documentCopy options:0 range:{0, objc_msgSend(documentCopy, "length")}];
  }

  else
  {
    v13 = 0;
  }

LABEL_9:

  return v13;
}

+ (BOOL)textCheckingResultsAreValid:(id)valid
{
  v15 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  v4 = validCopy;
  if (validCopy && [validCopy count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v10 + 1) + 8 * i) range] != 0x7FFFFFFFFFFFFFFFLL)
          {
            LOBYTE(v6) = 1;
            goto LABEL_14;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_opt_class();
    v5 = ICDynamicCast();
    searchString = [(ICSearchResultRegexMatchFinder *)self searchString];
    searchString2 = [v5 searchString];
    if ([searchString isEqualToString:searchString2])
    {
      prefixMatchingTokens = [(ICSearchResultRegexMatchFinder *)self prefixMatchingTokens];
      prefixMatchingTokens2 = [v5 prefixMatchingTokens];
      if ([prefixMatchingTokens isEqualToSet:prefixMatchingTokens2])
      {
        substringMatchingTokens = [(ICSearchResultRegexMatchFinder *)self substringMatchingTokens];
        substringMatchingTokens2 = [v5 substringMatchingTokens];
        v12 = [substringMatchingTokens isEqualToSet:substringMatchingTokens2];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v24 = *MEMORY[0x1E69E9840];
  searchString = [(ICSearchResultRegexMatchFinder *)self searchString];
  v22[0] = searchString;
  prefixMatchingTokens = [(ICSearchResultRegexMatchFinder *)self prefixMatchingTokens];
  v5 = prefixMatchingTokens;
  if (!prefixMatchingTokens)
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  v22[1] = v5;
  substringMatchingTokens = [(ICSearchResultRegexMatchFinder *)self substringMatchingTokens];
  v7 = substringMatchingTokens;
  if (!substringMatchingTokens)
  {
    v7 = [MEMORY[0x1E695DFD8] set];
  }

  v22[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v10 hash];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v11 = ICHashWithObject(*(*(&v18 + 1) + 8 * i)) - v11 + 32 * v11;
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v14);
  }

  if (!substringMatchingTokens)
  {
  }

  if (!prefixMatchingTokens)
  {
  }

  return v11;
}

@end