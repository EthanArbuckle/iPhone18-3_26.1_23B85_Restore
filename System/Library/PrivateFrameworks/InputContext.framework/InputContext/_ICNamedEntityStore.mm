@interface _ICNamedEntityStore
+ (id)tokenize:(id)tokenize;
- (BOOL)areStringCharactersWhitelisted:(id)whitelisted;
- (BOOL)isCloserToTitleCase:(id)case than:(id)than;
- (BOOL)isValidNamedEntity:(id)entity explanation:(id *)explanation;
- (USet)_exemplarSetForCustomLocales:(id)locales;
- (USet)exemplarSetForSupportedLocales;
- (_ICLexiconView)phraseLexicon;
- (_ICLexiconView)wordLexicon;
- (_ICNamedEntityStore)initWithName:(id)name maximumRecentlyAddedEntities:(unint64_t)entities;
- (id)_adjustWordsForHyphenationIfNeeded:(id)needed didAdjust:(BOOL *)adjust;
- (void)_addEntity:(void *)entity asAliasOfEntity:(int)ofEntity isPhrase:;
- (void)_addEntity:(void *)entity tokens:;
- (void)addEntity:(id)entity isDurable:(BOOL)durable;
- (void)reloadRecents;
- (void)removeAllEntities;
@end

@implementation _ICNamedEntityStore

- (_ICNamedEntityStore)initWithName:(id)name maximumRecentlyAddedEntities:(unint64_t)entities
{
  nameCopy = name;
  v22.receiver = self;
  v22.super_class = _ICNamedEntityStore;
  v7 = [(_ICNamedEntityStore *)&v22 init];
  if (v7)
  {
    v8 = [nameCopy copy];
    name = v7->_name;
    v7->_name = v8;

    v7->_maximumRecentlyAddedEntities = entities;
    v10 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:entities];
    leastRecentlyAddedEntities = v7->_leastRecentlyAddedEntities;
    v7->_leastRecentlyAddedEntities = v10;

    v12 = [_ICTransientLexicon alloc];
    v13 = [nameCopy stringByAppendingString:@"Words"];
    v14 = [(_ICTransientLexicon *)v12 initWithName:v13 typeFlags:1];
    wordLexiconImpl = v7->_wordLexiconImpl;
    v7->_wordLexiconImpl = v14;

    v16 = [_ICTransientLexicon alloc];
    v17 = [nameCopy stringByAppendingString:@"Phrases"];
    v18 = [(_ICTransientLexicon *)v16 initWithName:v17 typeFlags:5];
    phraseLexiconImpl = v7->_phraseLexiconImpl;
    v7->_phraseLexiconImpl = v18;

    v7->_minimumWordLength = 4;
    v7->_treatHyphenatedWordAsPhrase = 0;
    v20 = v7;
  }

  return v7;
}

- (_ICLexiconView)wordLexicon
{
  wordLexiconView = self->_wordLexiconView;
  if (!wordLexiconView)
  {
    v4 = [_ICLexiconView alloc];
    v5 = [(NSString *)self->_name stringByAppendingString:@"Words"];
    v6 = [(_ICLexiconView *)v4 initWithName:v5 typeFlags:1];
    v7 = self->_wordLexiconView;
    self->_wordLexiconView = v6;

    wordLexiconView = self->_wordLexiconView;
  }

  v8 = wordLexiconView;

  return v8;
}

- (_ICLexiconView)phraseLexicon
{
  phraseLexiconView = self->_phraseLexiconView;
  if (!phraseLexiconView)
  {
    v4 = [_ICLexiconView alloc];
    v5 = [(NSString *)self->_name stringByAppendingString:@"Phrases"];
    v6 = [(_ICLexiconView *)v4 initWithName:v5 typeFlags:5];
    v7 = self->_phraseLexiconView;
    self->_phraseLexiconView = v6;

    phraseLexiconView = self->_phraseLexiconView;
  }

  v8 = phraseLexiconView;

  return v8;
}

- (BOOL)isCloserToTitleCase:(id)case than:(id)than
{
  caseCopy = case;
  thanCopy = than;
  if ([thanCopy isEqualToString:caseCopy])
  {
    v7 = 0;
  }

  else
  {
    capitalizedString = [caseCopy capitalizedString];
    if ([caseCopy isEqualToString:capitalizedString] && !objc_msgSend(thanCopy, "isEqualToString:", capitalizedString))
    {
      v7 = 1;
    }

    else if ([thanCopy isEqualToString:capitalizedString])
    {
      v7 = 0;
    }

    else
    {
      v9 = [caseCopy length];
      v10 = [thanCopy length];
      if (v9 >= v10)
      {
        v9 = v10;
      }

      v11 = [capitalizedString length];
      if (v9 >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = v9;
      }

      if (v12)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = [caseCopy characterAtIndex:v13];
          if (v16 == [capitalizedString characterAtIndex:v13])
          {
            ++v14;
          }

          v17 = [thanCopy characterAtIndex:v13];
          if (v17 == [capitalizedString characterAtIndex:v13])
          {
            ++v15;
          }

          ++v13;
        }

        while (v12 != v13);
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      v7 = v14 > v15;
    }
  }

  return v7;
}

- (USet)_exemplarSetForCustomLocales:(id)locales
{
  v16 = *MEMORY[0x277D85DE8];
  localesCopy = locales;
  if (!_exemplarSetForCustomLocales__cachedExemplarSets)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = _exemplarSetForCustomLocales__cachedExemplarSets;
    _exemplarSetForCustomLocales__cachedExemplarSets = dictionary;
  }

  v6 = [MEMORY[0x277CBEB58] setWithArray:localesCopy];
  v7 = [_exemplarSetForCustomLocales__cachedExemplarSets objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    pointerValue = [v7 pointerValue];
  }

  else
  {
    v13 = 0;
    pointerValue = _createExemplarSetForLocales(localesCopy, &v13);
    if (pointerValue)
    {
      v10 = [MEMORY[0x277CCAE60] valueWithPointer:pointerValue];
      [_exemplarSetForCustomLocales__cachedExemplarSets setObject:v10 forKeyedSubscript:v6];
    }

    else
    {
      v10 = _ICPersNamedEntityOSLogFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v15 = v13;
        _os_log_impl(&dword_254BD0000, v10, OS_LOG_TYPE_DEFAULT, "Unable to create exemplar set for given languages (UErrorCode=%d)", buf, 8u);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return pointerValue;
}

- (USet)exemplarSetForSupportedLocales
{
  if (exemplarSetForSupportedLocales_onceToken != -1)
  {
    [_ICNamedEntityStore exemplarSetForSupportedLocales];
  }

  return exemplarSetForSupportedLocales_exemplarSet;
}

- (BOOL)areStringCharactersWhitelisted:(id)whitelisted
{
  whitelistedCopy = whitelisted;
  acceptedLanguages = [(_ICNamedEntityStore *)self acceptedLanguages];

  if (acceptedLanguages)
  {
    acceptedLanguages2 = [(_ICNamedEntityStore *)self acceptedLanguages];
    allObjects = [acceptedLanguages2 allObjects];
    exemplarSetForSupportedLocales = [(_ICNamedEntityStore *)self _exemplarSetForCustomLocales:allObjects];

    if (!exemplarSetForSupportedLocales)
    {
      goto LABEL_9;
    }
  }

  else
  {
    exemplarSetForSupportedLocales = [(_ICNamedEntityStore *)self exemplarSetForSupportedLocales];
    if (!exemplarSetForSupportedLocales)
    {
      goto LABEL_9;
    }
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  precomposedStringWithCanonicalMapping = [whitelistedCopy precomposedStringWithCanonicalMapping];
  v10 = [precomposedStringWithCanonicalMapping length];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54___ICNamedEntityStore_areStringCharactersWhitelisted___block_invoke;
  v12[3] = &unk_2797ADE90;
  v12[4] = &v13;
  v12[5] = exemplarSetForSupportedLocales;
  if ([precomposedStringWithCanonicalMapping _ICEnumerateLongCharactersInRange:0 usingBlock:{v10, v12}])
  {
    LOBYTE(exemplarSetForSupportedLocales) = *(v14 + 24);
  }

  else
  {
    LOBYTE(exemplarSetForSupportedLocales) = 0;
  }

  _Block_object_dispose(&v13, 8);
LABEL_9:

  return exemplarSetForSupportedLocales & 1;
}

- (BOOL)isValidNamedEntity:(id)entity explanation:(id *)explanation
{
  entityCopy = entity;
  if ([entityCopy length] >= 0x81)
  {
    if (explanation)
    {
      v7 = @"too long";
LABEL_8:
      v8 = 0;
      *explanation = v7;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (![(_ICNamedEntityStore *)self areStringCharactersWhitelisted:entityCopy])
  {
    if (explanation)
    {
      v7 = @"characters are not whitelisted";
      goto LABEL_8;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v8 = 1;
LABEL_10:

  return v8;
}

- (id)_adjustWordsForHyphenationIfNeeded:(id)needed didAdjust:(BOOL *)adjust
{
  neededCopy = needed;
  v7 = neededCopy;
  if (self->_treatHyphenatedWordAsPhrase && [neededCopy count] == 1 && (objc_msgSend(v7, "objectAtIndexedSubscript:", 0), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "containsString:", @"-"), v8, (v9 & 1) != 0))
  {
    if (adjust)
    {
      *adjust = 1;
    }

    v10 = [v7 objectAtIndexedSubscript:0];
    v11 = [v10 componentsSeparatedByString:@"-"];
  }

  else
  {
    if (adjust)
    {
      *adjust = 0;
    }

    v11 = v7;
  }

  return v11;
}

- (void)addEntity:(id)entity isDurable:(BOOL)durable
{
  durableCopy = durable;
  entityCopy = entity;
  if (isTransientLexiconIngestionV2Enabled() && ([entityCopy passesFilters] & 1) == 0)
  {
    v8 = _ICPersNamedEntityOSLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_ICNamedEntityStore addEntity:entityCopy isDurable:v8];
    }
  }

  else
  {
    v7 = 64;
    if (durableCopy)
    {
      v7 = 56;
    }

    ++*(&self->super.isa + v7);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __43___ICNamedEntityStore_addEntity_isDurable___block_invoke;
    v32[3] = &unk_2797ADEB8;
    v32[4] = self;
    v8 = MEMORY[0x259C27030](v32);
    name = [entityCopy name];
    v31 = 0;
    v10 = [(_ICNamedEntityStore *)self isValidNamedEntity:name explanation:&v31];
    v11 = v31;

    if (v10)
    {
      v12 = objc_opt_class();
      name2 = [entityCopy name];
      v14 = [v12 tokenize:name2];

      v30 = 0;
      v15 = [(_ICNamedEntityStore *)self _adjustWordsForHyphenationIfNeeded:v14 didAdjust:&v30];

      if ([v15 count])
      {
        v28 = [v15 count];
        v17 = 88;
        if (v28 > 1)
        {
          v17 = 96;
        }

        v16 = [*(&self->super.isa + v17) sortKeyEquivalents:entityCopy];
        name3 = [entityCopy name];
        v19 = __43___ICNamedEntityStore_addEntity_isDurable___block_invoke_2(name3, v16, name3);

        if (!v19)
        {
          goto LABEL_20;
        }

        name4 = [entityCopy name];
        [v19 name];
        v21 = v29 = v19;
        v22 = [name4 isEqualToString:v21];

        v19 = v29;
        if (!v22)
        {
          name5 = [entityCopy name];
          name6 = [v29 name];
          v27 = [(_ICNamedEntityStore *)self isCloserToTitleCase:name5 than:name6];

          v25 = _ICPersNamedEntityOSLogFacility();
          v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
          if (v27)
          {
            v19 = v29;
            if (v26)
            {
              [_ICNamedEntityStore addEntity:v29 isDurable:entityCopy];
            }

            [(_ICTransientLexicon *)self->_phraseLexiconImpl removeEntity:v29];
            [(_ICTransientLexicon *)self->_wordLexiconImpl removeEntity:v29];
            [(_ICNamedEntityStore *)self _addEntity:entityCopy tokens:v15];
            [(_ICNamedEntityStore *)self _addEntity:v29 asAliasOfEntity:entityCopy isPhrase:v28 > 1];
            if (!durableCopy)
            {
              [(NSMutableOrderedSet *)self->_leastRecentlyAddedEntities removeObject:v29];
              (*(v8 + 16))(v8, entityCopy);
            }
          }

          else
          {
            v19 = v29;
            if (v26)
            {
              [_ICNamedEntityStore addEntity:entityCopy isDurable:v29];
            }

            [(_ICNamedEntityStore *)self _addEntity:entityCopy asAliasOfEntity:v29 isPhrase:v28 > 1];
            if (!durableCopy)
            {
              (*(v8 + 16))(v8, v29);
            }
          }

          if (v30 == 1)
          {
            [(_ICTransientLexicon *)self->_wordLexiconImpl setIsHyphenatedWord:1 forEntity:entityCopy];
          }
        }

        else
        {
LABEL_20:
          [(_ICNamedEntityStore *)self _addEntity:entityCopy tokens:v15];
          if (v30 == 1)
          {
            [(_ICTransientLexicon *)self->_wordLexiconImpl setIsHyphenatedWord:1 forEntity:entityCopy];
          }

          if (!durableCopy)
          {
            (*(v8 + 16))(v8, entityCopy);
          }
        }
      }

      else
      {
        v16 = _ICPersNamedEntityOSLogFacility();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [_ICNamedEntityStore addEntity:entityCopy isDurable:?];
        }
      }
    }

    else
    {
      v15 = _ICPersNamedEntityOSLogFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [_ICNamedEntityStore addEntity:entityCopy isDurable:?];
      }
    }
  }
}

- (void)reloadRecents
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_leastRecentlyAddedEntities;
  v4 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = objc_opt_class();
        name = [v8 name];
        v11 = [v9 tokenize:name];

        v14 = 0;
        v12 = [(_ICNamedEntityStore *)self _adjustWordsForHyphenationIfNeeded:v11 didAdjust:&v14];

        [(_ICNamedEntityStore *)self _addEntity:v8 tokens:v12];
        if (v14 == 1)
        {
          [(_ICTransientLexicon *)self->_wordLexiconImpl setIsHyphenatedWord:1 forEntity:v8];
        }
      }

      v5 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeAllEntities
{
  [(_ICTransientLexicon *)self->_wordLexiconImpl removeAllEntities];
  [(_ICTransientLexicon *)self->_phraseLexiconImpl removeAllEntities];
  self->_durableEntitiesAdded = 0;
  self->_recentEntitiesAdded = 0;
}

+ (id)tokenize:(id)tokenize
{
  v3 = MEMORY[0x277CBEB18];
  tokenizeCopy = tokenize;
  array = [v3 array];
  v6 = [tokenizeCopy stringByAppendingString:@" "];

  v7 = 4 * [v6 length];
  v8 = [v6 length];
  v9 = malloc_type_malloc(v7, 0x100004077774924uLL);
  v13 = [v6 length];
  [v6 getBytes:v9 maxLength:v7 usedLength:&v13 encoding:4 options:0 range:0 remainingRange:{v8, 0}];
  v10 = CFLocaleCreate(0, @"en_US");
  LMStreamTokenizerCreate();
  v12 = array;
  LMStreamTokenizerPushBytes();
  LMStreamTokenizerRelease();
  CFRelease(v10);
  free(v9);

  return v12;
}

- (void)_addEntity:(void *)entity asAliasOfEntity:(int)ofEntity isPhrase:
{
  v8 = a2;
  entityCopy = entity;
  if (self)
  {
    if (ofEntity)
    {
      [*(self + 96) addEntity:v8 asAliasOfEntity:entityCopy];
    }

    if ([*(self + 88) containsEntity:entityCopy])
    {
      [*(self + 88) addEntity:v8 asAliasOfEntity:entityCopy];
    }
  }
}

- (void)_addEntity:(void *)entity tokens:
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  entityCopy = entity;
  v7 = entityCopy;
  if (self)
  {
    if ([entityCopy count] >= 2)
    {
      v8 = *(self + 96);
      name = [v5 name];
      [v8 addEntity:v5 forEntry:name];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          if ([v15 length] >= *(self + 72))
          {
            [*(self + 88) addEntity:v5 forEntry:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addEntity:(uint64_t)a1 isDurable:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_254BD0000, a2, OS_LOG_TYPE_DEBUG, "Rejecting named entity %@ (does not pass local filters)", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)addEntity:(void *)a1 isDurable:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addEntity:(void *)a1 isDurable:(void *)a2 .cold.3(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 name];
  v4 = [a2 name];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addEntity:(void *)a1 isDurable:(void *)a2 .cold.4(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 name];
  v4 = [a2 name];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addEntity:(void *)a1 isDurable:.cold.5(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 name];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end