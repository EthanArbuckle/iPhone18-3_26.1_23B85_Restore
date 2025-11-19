@interface _ICNamedEntityStore
+ (id)tokenize:(id)a3;
- (BOOL)areStringCharactersWhitelisted:(id)a3;
- (BOOL)isCloserToTitleCase:(id)a3 than:(id)a4;
- (BOOL)isValidNamedEntity:(id)a3 explanation:(id *)a4;
- (USet)_exemplarSetForCustomLocales:(id)a3;
- (USet)exemplarSetForSupportedLocales;
- (_ICLexiconView)phraseLexicon;
- (_ICLexiconView)wordLexicon;
- (_ICNamedEntityStore)initWithName:(id)a3 maximumRecentlyAddedEntities:(unint64_t)a4;
- (id)_adjustWordsForHyphenationIfNeeded:(id)a3 didAdjust:(BOOL *)a4;
- (void)_addEntity:(void *)a3 asAliasOfEntity:(int)a4 isPhrase:;
- (void)_addEntity:(void *)a3 tokens:;
- (void)addEntity:(id)a3 isDurable:(BOOL)a4;
- (void)reloadRecents;
- (void)removeAllEntities;
@end

@implementation _ICNamedEntityStore

- (_ICNamedEntityStore)initWithName:(id)a3 maximumRecentlyAddedEntities:(unint64_t)a4
{
  v6 = a3;
  v22.receiver = self;
  v22.super_class = _ICNamedEntityStore;
  v7 = [(_ICNamedEntityStore *)&v22 init];
  if (v7)
  {
    v8 = [v6 copy];
    name = v7->_name;
    v7->_name = v8;

    v7->_maximumRecentlyAddedEntities = a4;
    v10 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:a4];
    leastRecentlyAddedEntities = v7->_leastRecentlyAddedEntities;
    v7->_leastRecentlyAddedEntities = v10;

    v12 = [_ICTransientLexicon alloc];
    v13 = [v6 stringByAppendingString:@"Words"];
    v14 = [(_ICTransientLexicon *)v12 initWithName:v13 typeFlags:1];
    wordLexiconImpl = v7->_wordLexiconImpl;
    v7->_wordLexiconImpl = v14;

    v16 = [_ICTransientLexicon alloc];
    v17 = [v6 stringByAppendingString:@"Phrases"];
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

- (BOOL)isCloserToTitleCase:(id)a3 than:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 isEqualToString:v5])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v5 capitalizedString];
    if ([v5 isEqualToString:v8] && !objc_msgSend(v6, "isEqualToString:", v8))
    {
      v7 = 1;
    }

    else if ([v6 isEqualToString:v8])
    {
      v7 = 0;
    }

    else
    {
      v9 = [v5 length];
      v10 = [v6 length];
      if (v9 >= v10)
      {
        v9 = v10;
      }

      v11 = [v8 length];
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
          v16 = [v5 characterAtIndex:v13];
          if (v16 == [v8 characterAtIndex:v13])
          {
            ++v14;
          }

          v17 = [v6 characterAtIndex:v13];
          if (v17 == [v8 characterAtIndex:v13])
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

- (USet)_exemplarSetForCustomLocales:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!_exemplarSetForCustomLocales__cachedExemplarSets)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = _exemplarSetForCustomLocales__cachedExemplarSets;
    _exemplarSetForCustomLocales__cachedExemplarSets = v4;
  }

  v6 = [MEMORY[0x277CBEB58] setWithArray:v3];
  v7 = [_exemplarSetForCustomLocales__cachedExemplarSets objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 pointerValue];
  }

  else
  {
    v13 = 0;
    v9 = _createExemplarSetForLocales(v3, &v13);
    if (v9)
    {
      v10 = [MEMORY[0x277CCAE60] valueWithPointer:v9];
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
  return v9;
}

- (USet)exemplarSetForSupportedLocales
{
  if (exemplarSetForSupportedLocales_onceToken != -1)
  {
    [_ICNamedEntityStore exemplarSetForSupportedLocales];
  }

  return exemplarSetForSupportedLocales_exemplarSet;
}

- (BOOL)areStringCharactersWhitelisted:(id)a3
{
  v4 = a3;
  v5 = [(_ICNamedEntityStore *)self acceptedLanguages];

  if (v5)
  {
    v6 = [(_ICNamedEntityStore *)self acceptedLanguages];
    v7 = [v6 allObjects];
    v8 = [(_ICNamedEntityStore *)self _exemplarSetForCustomLocales:v7];

    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = [(_ICNamedEntityStore *)self exemplarSetForSupportedLocales];
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v9 = [v4 precomposedStringWithCanonicalMapping];
  v10 = [v9 length];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54___ICNamedEntityStore_areStringCharactersWhitelisted___block_invoke;
  v12[3] = &unk_2797ADE90;
  v12[4] = &v13;
  v12[5] = v8;
  if ([v9 _ICEnumerateLongCharactersInRange:0 usingBlock:{v10, v12}])
  {
    LOBYTE(v8) = *(v14 + 24);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  _Block_object_dispose(&v13, 8);
LABEL_9:

  return v8 & 1;
}

- (BOOL)isValidNamedEntity:(id)a3 explanation:(id *)a4
{
  v6 = a3;
  if ([v6 length] >= 0x81)
  {
    if (a4)
    {
      v7 = @"too long";
LABEL_8:
      v8 = 0;
      *a4 = v7;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (![(_ICNamedEntityStore *)self areStringCharactersWhitelisted:v6])
  {
    if (a4)
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

- (id)_adjustWordsForHyphenationIfNeeded:(id)a3 didAdjust:(BOOL *)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_treatHyphenatedWordAsPhrase && [v6 count] == 1 && (objc_msgSend(v7, "objectAtIndexedSubscript:", 0), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "containsString:", @"-"), v8, (v9 & 1) != 0))
  {
    if (a4)
    {
      *a4 = 1;
    }

    v10 = [v7 objectAtIndexedSubscript:0];
    v11 = [v10 componentsSeparatedByString:@"-"];
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    v11 = v7;
  }

  return v11;
}

- (void)addEntity:(id)a3 isDurable:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (isTransientLexiconIngestionV2Enabled() && ([v6 passesFilters] & 1) == 0)
  {
    v8 = _ICPersNamedEntityOSLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_ICNamedEntityStore addEntity:v6 isDurable:v8];
    }
  }

  else
  {
    v7 = 64;
    if (v4)
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
    v9 = [v6 name];
    v31 = 0;
    v10 = [(_ICNamedEntityStore *)self isValidNamedEntity:v9 explanation:&v31];
    v11 = v31;

    if (v10)
    {
      v12 = objc_opt_class();
      v13 = [v6 name];
      v14 = [v12 tokenize:v13];

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

        v16 = [*(&self->super.isa + v17) sortKeyEquivalents:v6];
        v18 = [v6 name];
        v19 = __43___ICNamedEntityStore_addEntity_isDurable___block_invoke_2(v18, v16, v18);

        if (!v19)
        {
          goto LABEL_20;
        }

        v20 = [v6 name];
        [v19 name];
        v21 = v29 = v19;
        v22 = [v20 isEqualToString:v21];

        v19 = v29;
        if (!v22)
        {
          v23 = [v6 name];
          v24 = [v29 name];
          v27 = [(_ICNamedEntityStore *)self isCloserToTitleCase:v23 than:v24];

          v25 = _ICPersNamedEntityOSLogFacility();
          v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
          if (v27)
          {
            v19 = v29;
            if (v26)
            {
              [_ICNamedEntityStore addEntity:v29 isDurable:v6];
            }

            [(_ICTransientLexicon *)self->_phraseLexiconImpl removeEntity:v29];
            [(_ICTransientLexicon *)self->_wordLexiconImpl removeEntity:v29];
            [(_ICNamedEntityStore *)self _addEntity:v6 tokens:v15];
            [(_ICNamedEntityStore *)self _addEntity:v29 asAliasOfEntity:v6 isPhrase:v28 > 1];
            if (!v4)
            {
              [(NSMutableOrderedSet *)self->_leastRecentlyAddedEntities removeObject:v29];
              (*(v8 + 16))(v8, v6);
            }
          }

          else
          {
            v19 = v29;
            if (v26)
            {
              [_ICNamedEntityStore addEntity:v6 isDurable:v29];
            }

            [(_ICNamedEntityStore *)self _addEntity:v6 asAliasOfEntity:v29 isPhrase:v28 > 1];
            if (!v4)
            {
              (*(v8 + 16))(v8, v29);
            }
          }

          if (v30 == 1)
          {
            [(_ICTransientLexicon *)self->_wordLexiconImpl setIsHyphenatedWord:1 forEntity:v6];
          }
        }

        else
        {
LABEL_20:
          [(_ICNamedEntityStore *)self _addEntity:v6 tokens:v15];
          if (v30 == 1)
          {
            [(_ICTransientLexicon *)self->_wordLexiconImpl setIsHyphenatedWord:1 forEntity:v6];
          }

          if (!v4)
          {
            (*(v8 + 16))(v8, v6);
          }
        }
      }

      else
      {
        v16 = _ICPersNamedEntityOSLogFacility();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [_ICNamedEntityStore addEntity:v6 isDurable:?];
        }
      }
    }

    else
    {
      v15 = _ICPersNamedEntityOSLogFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [_ICNamedEntityStore addEntity:v6 isDurable:?];
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
        v10 = [v8 name];
        v11 = [v9 tokenize:v10];

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

+ (id)tokenize:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [v3 array];
  v6 = [v4 stringByAppendingString:@" "];

  v7 = 4 * [v6 length];
  v8 = [v6 length];
  v9 = malloc_type_malloc(v7, 0x100004077774924uLL);
  v13 = [v6 length];
  [v6 getBytes:v9 maxLength:v7 usedLength:&v13 encoding:4 options:0 range:0 remainingRange:{v8, 0}];
  v10 = CFLocaleCreate(0, @"en_US");
  LMStreamTokenizerCreate();
  v12 = v5;
  LMStreamTokenizerPushBytes();
  LMStreamTokenizerRelease();
  CFRelease(v10);
  free(v9);

  return v12;
}

- (void)_addEntity:(void *)a3 asAliasOfEntity:(int)a4 isPhrase:
{
  v8 = a2;
  v7 = a3;
  if (a1)
  {
    if (a4)
    {
      [*(a1 + 96) addEntity:v8 asAliasOfEntity:v7];
    }

    if ([*(a1 + 88) containsEntity:v7])
    {
      [*(a1 + 88) addEntity:v8 asAliasOfEntity:v7];
    }
  }
}

- (void)_addEntity:(void *)a3 tokens:
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if ([v6 count] >= 2)
    {
      v8 = *(a1 + 96);
      v9 = [v5 name];
      [v8 addEntity:v5 forEntry:v9];
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
          if ([v15 length] >= *(a1 + 72))
          {
            [*(a1 + 88) addEntity:v5 forEntry:v15];
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