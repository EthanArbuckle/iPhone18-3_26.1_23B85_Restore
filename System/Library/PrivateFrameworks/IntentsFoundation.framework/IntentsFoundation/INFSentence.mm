@interface INFSentence
+ (id)sentenceWithIdentifier:(id)identifier;
- (BOOL)containsUnresolvedTokens:(id)tokens;
- (INFGrammarCollection)collection;
- (INFSentence)init;
- (INFSentence)initWithDictionary:(id)dictionary identifier:(id)identifier;
- (INFSentence)initWithIdentifier:(id)identifier;
- (NSSet)placeholders;
- (NSString)resolvedSentence;
- (id)concreteToken:(id)token in:(id)in;
- (id)dictionaryRepresentation;
- (id)filteredPlaceholders;
- (id)unresolvedInArray:(id)array;
- (void)generatePlaceholders;
- (void)reportCyclesIfAny;
- (void)setFormat:(id)format;
- (void)setNumber:(id)number forPlaceholder:(id)placeholder;
- (void)setToken:(id)token forPlaceholder:(id)placeholder;
@end

@implementation INFSentence

- (INFGrammarCollection)collection
{
  WeakRetained = objc_loadWeakRetained(&self->_collection);

  return WeakRetained;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:self->_format forKeyedSubscript:@"LOCSentenceFormat"];
  [dictionary setObject:self->_relationships forKeyedSubscript:@"LOCSentenceRelationships"];
  filteredPlaceholders = [(INFSentence *)self filteredPlaceholders];
  [dictionary setObject:filteredPlaceholders forKeyedSubscript:@"LOCSentencePlaceholders"];

  return dictionary;
}

- (id)filteredPlaceholders
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableDictionary *)self->_placeholdersToTokens mutableCopy];
  allKeys = [v3 allKeys];
  v5 = [allKeys copy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v3 objectForKeyedSubscript:v10];
        WeakRetained = objc_loadWeakRetained(&self->_collection);
        v13 = [WeakRetained tokenWithIdentifier:v11];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          [v3 setObject:0 forKeyedSubscript:v10];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)concreteToken:(id)token in:(id)in
{
  v22 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  inCopy = in;
  v7 = [inCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(inCopy);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        originalToken = [v10 originalToken];
        identifier = [originalToken identifier];
        identifier2 = [tokenCopy identifier];
        v14 = [identifier isEqualToString:identifier2];

        if (v14)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [inCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)unresolvedInArray:(id)array
{
  v18 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = arrayCopy;
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

        v10 = *(*(&v13 + 1) + 8 * i);
        if (([v10 isResolved] & 1) == 0)
        {
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return array;
}

- (BOOL)containsUnresolvedTokens:(id)tokens
{
  tokensCopy = tokens;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__INFSentence_containsUnresolvedTokens___block_invoke;
  v6[3] = &unk_2797E9810;
  v6[4] = &v7;
  [tokensCopy enumerateObjectsUsingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __40__INFSentence_containsUnresolvedTokens___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isResolved];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (NSString)resolvedSentence
{
  v81 = *MEMORY[0x277D85DE8];
  [(INFSentence *)self reportCyclesIfAny];
  v54 = [MEMORY[0x277CCAB68] stringWithString:self->_format];
  collection = [(INFSentence *)self collection];
  array = [MEMORY[0x277CBEB18] array];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  selfCopy = self;
  v4 = self->_placeholdersToTokens;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v73 objects:v80 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v74;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v74 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v73 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)selfCopy->_placeholdersToTokens objectForKeyedSubscript:v9];
        v11 = [collection tokenWithIdentifier:v10];
        v12 = [INFSentenceTokenWithContext sentenceResolvedTokenWithOriginalToken:v11 placeholderName:v9];
        [array addObject:v12];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v73 objects:v80 count:16];
    }

    while (v6);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v13 = array;
  v14 = [v13 countByEnumeratingWithState:&v69 objects:v79 count:16];
  v15 = selfCopy;
  obj = v13;
  if (v14)
  {
    v16 = v14;
    v17 = *v70;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v70 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v69 + 1) + 8 * j);
        relationships = selfCopy->_relationships;
        placeholderName = [v19 placeholderName];
        v22 = [(NSMutableDictionary *)relationships objectForKeyedSubscript:placeholderName];

        if (!v22)
        {
          [v19 setResolved:1];
          originalToken = [v19 originalToken];
          contributingSentenceContext = [originalToken contributingSentenceContext];
          [v19 setContext:contributingSentenceContext];
        }
      }

      v13 = obj;
      v16 = [obj countByEnumeratingWithState:&v69 objects:v79 count:16];
    }

    while (v16);
  }

  if ([(INFSentence *)selfCopy containsUnresolvedTokens:v13])
  {
    do
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v58 = [(INFSentence *)v15 unresolvedInArray:v13];
      v25 = [v58 countByEnumeratingWithState:&v65 objects:v78 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v66;
        v55 = *v66;
        do
        {
          v28 = 0;
          v56 = v26;
          do
          {
            if (*v66 != v27)
            {
              objc_enumerationMutation(v58);
            }

            v29 = *(*(&v65 + 1) + 8 * v28);
            v30 = v15->_relationships;
            placeholderName2 = [v29 placeholderName];
            v32 = [(NSMutableDictionary *)v30 objectForKeyedSubscript:placeholderName2];

            v33 = [(NSMutableDictionary *)v15->_placeholdersToTokens objectForKeyedSubscript:v32];
            v34 = [collection tokenWithIdentifier:v33];
            v35 = [(INFSentence *)v15 concreteToken:v34 in:v13];
            if ([v35 isResolved])
            {
              context = [v35 context];
              originalToken2 = [v29 originalToken];
              contributingSentenceContext2 = [originalToken2 contributingSentenceContext];
              v39 = [context combinedWithContext:contributingSentenceContext2];

              v15 = selfCopy;
              v26 = v56;

              v27 = v55;
              [v29 setContext:v39];
              [v29 setResolved:1];

              v13 = obj;
            }

            ++v28;
          }

          while (v26 != v28);
          v26 = [v58 countByEnumeratingWithState:&v65 objects:v78 count:16];
        }

        while (v26);
      }
    }

    while ([(INFSentence *)v15 containsUnresolvedTokens:v13]);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v40 = v13;
  v41 = [v40 countByEnumeratingWithState:&v61 objects:v77 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v62;
    do
    {
      for (k = 0; k != v42; ++k)
      {
        if (*v62 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v61 + 1) + 8 * k);
        v46 = MEMORY[0x277CCACA8];
        placeholderName3 = [v45 placeholderName];
        v48 = [v46 stringWithFormat:@"%%#@%@@", placeholderName3];

        originalToken3 = [v45 originalToken];
        context2 = [v45 context];
        v51 = [originalToken3 stringForContext:context2];

        if (v51)
        {
          [v54 replaceOccurrencesOfString:v48 withString:v51 options:0 range:{0, objc_msgSend(v54, "length")}];
        }
      }

      v42 = [v40 countByEnumeratingWithState:&v61 objects:v77 count:16];
    }

    while (v42);
  }

  v52 = *MEMORY[0x277D85DE8];

  return v54;
}

- (void)reportCyclesIfAny
{
  v2 = [(NSMutableDictionary *)self->_relationships copy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__INFSentence_reportCyclesIfAny__block_invoke;
  v4[3] = &unk_2797E97E8;
  v5 = v2;
  v3 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __32__INFSentence_reportCyclesIfAny__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v15 = v3;
  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v15];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v15];

  v6 = v15;
  if (v5)
  {
    v7 = *MEMORY[0x277CBE658];
    v8 = MEMORY[0x277CBEC38];
    v9 = v15;
    do
    {
      v10 = [*(a1 + 32) objectForKeyedSubscript:v9];
      v11 = [v4 objectForKeyedSubscript:v10];

      if (v11)
      {
        v12 = MEMORY[0x277CBEAD8];
        v13 = [*(a1 + 32) objectForKeyedSubscript:v9];
        [v12 raise:v7 format:{@"Cycle detected when reaching %@ from %@", v13, v9}];
      }

      v6 = [*(a1 + 32) objectForKeyedSubscript:v9];

      [v4 setObject:v8 forKeyedSubscript:v6];
      v14 = [*(a1 + 32) objectForKeyedSubscript:v6];

      v9 = v6;
    }

    while (v14);
  }
}

- (void)setNumber:(id)number forPlaceholder:(id)placeholder
{
  v6 = MEMORY[0x277CCACA8];
  identifier = self->_identifier;
  placeholderCopy = placeholder;
  numberCopy = number;
  placeholderCopy = [v6 stringWithFormat:@"%@_%@", identifier, placeholderCopy];
  v10 = [INFNumber numberWithIdentifier:placeholderCopy];
  [v10 setValue:numberCopy];

  WeakRetained = objc_loadWeakRetained(&self->_collection);
  [WeakRetained addToken:v10];

  [(INFSentence *)self setToken:v10 forPlaceholder:placeholderCopy];
}

- (void)setToken:(id)token forPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  identifier = [token identifier];
  [(NSMutableDictionary *)self->_placeholdersToTokens setObject:identifier forKeyedSubscript:placeholderCopy];
}

- (void)setFormat:(id)format
{
  v4 = [format copy];
  format = self->_format;
  self->_format = v4;

  placeholders = self->_placeholders;
  self->_placeholders = 0;
}

- (void)generatePlaceholders
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = MEMORY[0x277CCAC68];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%%#@%@@", @"([a-zA-Z0-9\\-_]+)"];
  v6 = [v4 regularExpressionWithPattern:v5 options:0 error:0];

  format = self->_format;
  v8 = [(NSString *)format length];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __35__INFSentence_generatePlaceholders__block_invoke;
  v12[3] = &unk_2797E97C0;
  v12[4] = self;
  v9 = v3;
  v13 = v9;
  [v6 enumerateMatchesInString:format options:0 range:0 usingBlock:{v8, v12}];
  placeholders = self->_placeholders;
  self->_placeholders = v9;
  v11 = v9;
}

void __35__INFSentence_generatePlaceholders__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v10 = v3;
    v4 = [v3 numberOfRanges] >= 2;
    v3 = v10;
    if (v4)
    {
      v5 = [v10 rangeAtIndex:1];
      v7 = v6;
      v8 = [*(a1 + 32) format];
      v9 = [v8 substringWithRange:{v5, v7}];

      [*(a1 + 40) addObject:v9];
      v3 = v10;
    }
  }
}

- (NSSet)placeholders
{
  placeholders = self->_placeholders;
  if (!placeholders)
  {
    [(INFSentence *)self generatePlaceholders];
    placeholders = self->_placeholders;
  }

  return placeholders;
}

- (INFSentence)initWithDictionary:(id)dictionary identifier:(id)identifier
{
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v8 = [(INFSentence *)self init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [dictionaryCopy objectForKeyedSubscript:@"LOCSentenceFormat"];
    v12 = [v11 copy];
    format = v8->_format;
    v8->_format = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"LOCSentenceRelationships"];
    v15 = [v14 mutableCopy];
    relationships = v8->_relationships;
    v8->_relationships = v15;

    v17 = [dictionaryCopy objectForKeyedSubscript:@"LOCSentencePlaceholders"];

    if (v17)
    {
      v18 = [dictionaryCopy objectForKeyedSubscript:@"LOCSentencePlaceholders"];
      v19 = [v18 mutableCopy];
      placeholdersToTokens = v8->_placeholdersToTokens;
      v8->_placeholdersToTokens = v19;
    }
  }

  return v8;
}

- (INFSentence)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(INFSentence *)self init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (INFSentence)init
{
  v12.receiver = self;
  v12.super_class = INFSentence;
  v2 = [(INFSentence *)&v12 init];
  v3 = v2;
  if (v2)
  {
    identifier = v2->_identifier;
    v2->_identifier = &stru_28676DA60;

    format = v3->_format;
    v3->_format = &stru_28676DA60;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    relationships = v3->_relationships;
    v3->_relationships = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    placeholdersToTokens = v3->_placeholdersToTokens;
    v3->_placeholdersToTokens = dictionary2;

    placeholders = v3->_placeholders;
    v3->_placeholders = 0;
  }

  return v3;
}

+ (id)sentenceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithIdentifier:identifierCopy];

  return v5;
}

@end