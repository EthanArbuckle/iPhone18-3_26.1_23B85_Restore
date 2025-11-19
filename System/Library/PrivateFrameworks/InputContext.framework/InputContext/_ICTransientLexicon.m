@interface _ICTransientLexicon
- (BOOL)containsEntity:(id)a3;
- (BOOL)entityIsHyphenatedWord:(id)a3;
- (_ICTransientLexicon)initWithName:(id)a3 typeFlags:(unsigned __int8)a4;
- (id)getEntries;
- (id)getEntryRefCount:(id)a3;
- (id)getUsageCount:(id)a3;
- (id)namedEntitiesForEntry:(id)a3;
- (id)sortKeyEquivalents:(id)a3;
- (uint64_t)_tokenIdentiferForEntry:(uint64_t)TokenID;
- (void)_mutableNamedEntitiesForEntry:(void *)a1;
- (void)_mutableNamedEntitiesForLXEntry:(void *)a1;
- (void)addEntity:(id)a3 asAliasOfEntity:(id)a4;
- (void)addEntity:(id)a3 forEntry:(id)a4;
- (void)createAdditionalDataForEntityIfNeeded:(id)a3;
- (void)dealloc;
- (void)removeAllEntities;
- (void)removeEntity:(id)a3;
- (void)setIsHyphenatedWord:(BOOL)a3 forEntity:(id)a4;
@end

@implementation _ICTransientLexicon

- (void)dealloc
{
  CFRelease(self->_lexicon);
  v3.receiver = self;
  v3.super_class = _ICTransientLexicon;
  [(_ICTransientLexicon *)&v3 dealloc];
}

- (_ICTransientLexicon)initWithName:(id)a3 typeFlags:(unsigned __int8)a4
{
  v7 = a3;
  v22.receiver = self;
  v22.super_class = _ICTransientLexicon;
  v8 = [(_ICTransientLexicon *)&v22 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v8->_name, a3);
  v9->_typeFlags = a4;
  v9->_identifier = ++generateIdentifier_count;
  v10 = objc_opt_new();
  tokenIdentifierToEntitiesMap = v9->_tokenIdentifierToEntitiesMap;
  v9->_tokenIdentifierToEntitiesMap = v10;

  v12 = objc_opt_new();
  entityToTokenIdentifiersMap = v9->_entityToTokenIdentifiersMap;
  v9->_entityToTokenIdentifiersMap = v12;

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D23178], v7);
  v21 = 0;
  v9->_lexicon = LXLexiconCreateTransient();
  CFRelease(Mutable);
  if (v9->_lexicon)
  {
    v15 = transientLexiconMap();
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9->_identifier];
    [v15 setObject:v9 forKeyedSubscript:v16];

    lexicon = v9->_lexicon;
    LXLexiconRepositoryAddOrUpdate();
LABEL_4:
    v18 = v9;
    goto LABEL_8;
  }

  v19 = _ICPersNamedEntityOSLogFacility();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [(_ICTransientLexicon *)v7 initWithName:v19 typeFlags:?];
  }

  v18 = 0;
LABEL_8:

  return v18;
}

- (void)createAdditionalDataForEntityIfNeeded:(id)a3
{
  v4 = a3;
  entityToAdditionalDataMap = self->_entityToAdditionalDataMap;
  v9 = v4;
  if (!entityToAdditionalDataMap)
  {
    v6 = objc_opt_new();
    v7 = self->_entityToAdditionalDataMap;
    self->_entityToAdditionalDataMap = v6;

    v4 = v9;
    entityToAdditionalDataMap = self->_entityToAdditionalDataMap;
  }

  v8 = [(NSMutableDictionary *)entityToAdditionalDataMap objectForKeyedSubscript:v4];

  if (!v8)
  {
    [(NSMutableDictionary *)self->_entityToAdditionalDataMap setObject:&unk_28670F148 forKeyedSubscript:v9];
  }
}

- (BOOL)entityIsHyphenatedWord:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_entityToAdditionalDataMap objectForKeyedSubscript:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4 & 1;
}

- (void)setIsHyphenatedWord:(BOOL)a3 forEntity:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(_ICTransientLexicon *)self createAdditionalDataForEntityIfNeeded:v6];
  v7 = [(NSMutableDictionary *)self->_entityToAdditionalDataMap objectForKeyedSubscript:v6];
  v8 = [v7 unsignedIntegerValue];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8 & 0xFFFFFFFFFFFFFFFELL | v4];
  [(NSMutableDictionary *)self->_entityToAdditionalDataMap setObject:v9 forKeyedSubscript:v6];
}

- (void)addEntity:(id)a3 asAliasOfEntity:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_entityToTokenIdentifiersMap objectForKey:a4];
  entityToTokenIdentifiersMap = self->_entityToTokenIdentifiersMap;
  v9 = [v7 mutableCopy];
  [(NSMutableDictionary *)entityToTokenIdentifiersMap setObject:v9 forKey:v6];

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
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(NSMutableDictionary *)self->_tokenIdentifierToEntitiesMap objectForKeyedSubscript:*(*(&v17 + 1) + 8 * v14), v17];
        [v15 addObject:v6];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeEntity:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_entityToTokenIdentifiersMap objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)self->_tokenIdentifierToEntitiesMap objectForKeyedSubscript:v11];
          [v12 removeObject:v4];
          if (![v12 count])
          {
            [(NSMutableDictionary *)self->_tokenIdentifierToEntitiesMap removeObjectForKey:v11];
            lexicon = self->_lexicon;
            [v11 unsignedIntValue];
            LXLexiconRemoveEntry();
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    [(NSMutableDictionary *)self->_entityToTokenIdentifiersMap removeObjectForKey:v4];
    [(NSMutableDictionary *)self->_entityToAdditionalDataMap removeObjectForKey:v4];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeAllEntities
{
  lexicon = self->_lexicon;
  LXLexiconClear();
  [(NSMutableDictionary *)self->_entityToTokenIdentifiersMap removeAllObjects];
  [(NSMutableDictionary *)self->_tokenIdentifierToEntitiesMap removeAllObjects];
  entityToAdditionalDataMap = self->_entityToAdditionalDataMap;

  [(NSMutableDictionary *)entityToAdditionalDataMap removeAllObjects];
}

- (BOOL)containsEntity:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_entityToTokenIdentifiersMap objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)sortKeyEquivalents:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  lexicon = self->_lexicon;
  v7 = [v4 name];

  v10 = v5;
  LXLexiconEnumerateEntriesForString();

  v8 = v10;
  return v10;
}

- (id)getEntries
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_entityToTokenIdentifiersMap, "count")}];
  lexicon = self->_lexicon;
  RootCursor = LXLexiconCreateRootCursor();
  v7 = v3;
  LXCursorEnumerateEntriesRecursively();
  CFRelease(RootCursor);

  return v7;
}

- (id)getEntryRefCount:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(_ICTransientLexicon(TestingSupport) *)self getEntryRefCount:v4, &v7];
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getUsageCount:(id)a3
{
  v4 = a3;
  if ([v4 length] && (v5 = +[_ICLexiconUtilities copyEntry:forString:](_ICLexiconUtilities, "copyEntry:forString:", self->_lexicon, v4)) != 0)
  {
    v6 = v5;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:LXEntryGetUsageCount()];
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_mutableNamedEntitiesForLXEntry:(void *)a1
{
  v1 = a1;
  if (a1)
  {
    TokenID = LXEntryGetTokenID();
    v3 = v1[2];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:TokenID];
    v1 = [v3 objectForKeyedSubscript:v4];
  }

  return v1;
}

- (uint64_t)_tokenIdentiferForEntry:(uint64_t)TokenID
{
  v3 = a2;
  if (TokenID)
  {
    v4 = [_ICLexiconUtilities copyEntry:*(TokenID + 8) forString:v3];
    if (v4)
    {
      v5 = v4;
      TokenID = LXEntryGetTokenID();
      CFRelease(v5);
    }

    else
    {
      TokenID = 0;
    }
  }

  return TokenID;
}

- (void)_mutableNamedEntitiesForEntry:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [_ICLexiconUtilities copyEntry:a1[1] forString:v3];
    if (v4)
    {
      v6 = v4;
      a1 = [_ICTransientLexicon _mutableNamedEntitiesForLXEntry:a1];
      CFRelease(v6);
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (id)namedEntitiesForEntry:(id)a3
{
  v3 = [(_ICTransientLexicon *)self _mutableNamedEntitiesForEntry:a3];
  v4 = [v3 copy];

  return v4;
}

- (void)addEntity:(id)a3 forEntry:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _ICPersNamedEntityOSLogFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    name = self->_name;
    *buf = 138412546;
    v24 = v7;
    v25 = 2112;
    v26 = name;
    _os_log_debug_impl(&dword_254BD0000, v8, OS_LOG_TYPE_DEBUG, "Add: %@ to: %@", buf, 0x16u);
  }

  if ((self->_typeFlags & 4) != 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v11 = [(_ICTransientLexicon *)self _mutableNamedEntitiesForEntry:v7];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __42___ICTransientLexicon_addEntity_forEntry___block_invoke;
  v21[3] = &unk_2797ADDF0;
  v21[4] = self;
  v22 = v10;
  v12 = MEMORY[0x259C27030](v21);
  if (v11)
  {
    [v11 addObject:v6];
    v14 = [(_ICTransientLexicon *)self _tokenIdentiferForEntry:v7];
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:v10];
    [v11 addObject:v6];
    lexicon = self->_lexicon;
    [v6 timestamp];
    v14 = LXLexiconAddWithCreationTime();
    v15 = self->_lexicon;
    LXLexiconIncrementUsageCount();
    v16 = self->_lexicon;
    identifier = self->_identifier;
    LXLexiconSetUserBitfield();
    tokenIdentifierToEntitiesMap = self->_tokenIdentifierToEntitiesMap;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v14];
    [(NSMutableDictionary *)tokenIdentifierToEntitiesMap setObject:v11 forKeyedSubscript:v19];
  }

  (v12)[2](v12, v6, v14);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)initWithName:(os_log_t)log typeFlags:.cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_254BD0000, log, OS_LOG_TYPE_ERROR, "Error creating lexicon (name = %@): %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end