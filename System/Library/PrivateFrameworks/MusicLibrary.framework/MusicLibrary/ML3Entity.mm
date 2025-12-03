@interface ML3Entity
+ (BOOL)_deleteRowForPersistentIDs:(const int64_t *)ds count:(unint64_t)count library:(id)library table:(id)table usingColumn:(id)column usingConnection:(id)connection;
+ (BOOL)_deleteRowsFromLibraryPinsTableForPersistentIDs:(const int64_t *)ds count:(unint64_t)count library:(id)library usingConnection:(id)connection;
+ (BOOL)_shouldIncrementRevisionForType:(int)type persistentID:(int64_t)d usingConnection:(id)connection;
+ (BOOL)deleteFromLibrary:(id)library deletionType:(int)type canonicalizeCollections:(BOOL)collections persistentIDs:(const int64_t *)ds count:(unint64_t)count usingConnection:(id)connection;
+ (BOOL)deleteFromLibrary:(id)library deletionType:(int)type persistentIDs:(const int64_t *)ds count:(unint64_t)count;
+ (BOOL)incrementRevisionForRevisionTypeContentWithConnection:(id)connection deletionType:(int)type persistentIDs:(const int64_t *)ds count:(unint64_t)count;
+ (BOOL)incrementRevisionForRevisionTypeContentWithConnection:(id)connection deletionType:(int)type persistentIDs:(id)ds;
+ (BOOL)incrementRevisionForRevisionTypeContentWithLibrary:(id)library deletionType:(int)type persistentIDs:(id)ds;
+ (BOOL)incrementRevisionWithLibrary:(id)library persistentID:(int64_t)d deletionType:(int)type revisionType:(int)revisionType;
+ (BOOL)incrementRevisionWithLibrary:(id)library persistentID:(int64_t)d deletionType:(int)type revisionType:(int)revisionType usingConnection:(id)connection;
+ (BOOL)insertValues:(id)values intoTable:(id)table persistentID:(int64_t)d connection:(id)connection;
+ (BOOL)insertValues:(id)values intoTable:(id)table persistentID:(int64_t)d library:(id)library;
+ (BOOL)setDifferentValues:(id)values forProperties:(id)properties forEntityPersistentIDs:(id)ds inLibrary:(id)library usingConnection:(id)connection;
+ (BOOL)setValues:(id)values forProperties:(id)properties forEntityPersistentIDs:(id)ds inLibrary:(id)library usingConnection:(id)connection;
+ (id)URLForEntityWithPersistentID:(int64_t)d libraryUID:(id)iD;
+ (id)_createDisambiguatedSQLForProperty:(id)property;
+ (id)_entityForURLComponents:(id)components inLibrary:(id)library verifyExistence:(BOOL)existence reason:(id *)reason;
+ (id)aggregateQueryWithUnitQuery:(id)query foreignPersistentIDProperty:(id)property;
+ (id)allItemsQueryWithLibrary:(id)library predicate:(id)predicate orderingTerms:(id)terms usingSections:(BOOL)sections;
+ (id)anyInLibrary:(id)library predicate:(id)predicate;
+ (id)anyInLibrary:(id)library predicate:(id)predicate options:(int64_t)options;
+ (id)countingQueryForBaseQuery:(id)query countProperty:(id)property forIdentifier:(int64_t)identifier;
+ (id)disambiguatedSQLForProperty:(id)property;
+ (id)disambiguatedSelectSQLForProperty:(id)property;
+ (id)entityFromURL:(id)l inLibrary:(id)library verifyExistence:(BOOL)existence;
+ (id)entityFromURL:(id)l reason:(id *)reason;
+ (id)indexableSQLForProperties:(id)properties;
+ (id)joinClausesForProperty:(id)property;
+ (id)newSelectAllEntitiesSQLForProperties:(const void *)properties count:(unint64_t)count predicate:(id)predicate;
+ (id)newSelectSQLForProperties:(const void *)properties count:(unint64_t)count predicate:(id)predicate;
+ (id)newWithDictionary:(id)dictionary inLibrary:(id)library;
+ (id)newWithDictionary:(id)dictionary inLibrary:(id)library cachedNameOrders:(id)orders;
+ (id)newWithDictionary:(id)dictionary inLibrary:(id)library cachedNameOrders:(id)orders usingConnection:(id)connection;
+ (id)newWithPersistentID:(int64_t)d inLibrary:(id)library;
+ (id)orderingSQLForProperties:(id)properties directionality:(id)directionality;
+ (id)predicateByOptimizingPredicate:(id)predicate;
+ (id)predicateIncludingSystemwidePredicatesWithPredicate:(id)predicate library:(id)library options:(int64_t)options;
+ (id)predisambiguatedProperties;
+ (id)queryWithLibrary:(id)library predicate:(id)predicate;
+ (id)queryWithLibrary:(id)library predicate:(id)predicate options:(int64_t)options;
+ (id)queryWithLibrary:(id)library predicate:(id)predicate orderingProperties:(id)properties;
+ (id)queryWithLibrary:(id)library predicate:(id)predicate orderingProperties:(id)properties orderingDirectionMappings:(id)mappings usingSections:(BOOL)sections;
+ (id)queryWithLibrary:(id)library predicate:(id)predicate orderingProperties:(id)properties usingSections:(BOOL)sections;
+ (id)queryWithLibrary:(id)library predicate:(id)predicate orderingTerms:(id)terms;
+ (id)queryWithLibrary:(id)library predicate:(id)predicate orderingTerms:(id)terms propertyToCount:(id)count;
+ (id)queryWithLibrary:(id)library predicate:(id)predicate orderingTerms:(id)terms propertyToCount:(id)count options:(int64_t)options;
+ (id)queryWithLibrary:(id)library predicate:(id)predicate orderingTerms:(id)terms usingSections:(BOOL)sections;
+ (id)queryWithLibrary:(id)library predicate:(id)predicate orderingTerms:(id)terms usingSections:(BOOL)sections options:(int64_t)options;
+ (id)queryWithLibrary:(id)library predicate:(id)predicate usingSections:(BOOL)sections;
+ (id)unrestrictedAllItemsQueryWithlibrary:(id)withlibrary predicate:(id)predicate orderingTerms:(id)terms;
+ (id)unrestrictedQueryWithLibrary:(id)library predicate:(id)predicate orderingTerms:(id)terms;
+ (void)_didChangeValueForProperties:(id)properties inLibrary:(id)library;
+ (void)enumeratePersistentIDsInLibrary:(id)library afterRevision:(int64_t)revision usingBlock:(id)block;
+ (void)enumeratePersistentIDsInLibrary:(id)library matchingPredicate:(id)predicate orderingTerms:(id)terms persistentIDs:(const int64_t *)ds count:(unint64_t)count options:(int64_t)options usingBlock:(id)block;
+ (void)predisambiguateProperties:(id)properties toDictionary:(id)dictionary;
- (BOOL)deleteFromLibrary;
- (BOOL)existsInLibrary;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesPredicate:(id)predicate;
- (BOOL)setValue:(id)value forProperty:(id)property;
- (BOOL)setValues:(const void *)values forProperties:(const void *)properties count:(unint64_t)count;
- (BOOL)setValues:(id)values forProperties:(id)properties;
- (BOOL)setValues:(id)values forProperties:(id)properties usingConnection:(id)connection;
- (BOOL)setValuesForPropertiesWithDictionary:(id)dictionary;
- (ML3Entity)initWithDictionary:(id)dictionary inLibrary:(id)library cachedNameOrders:(id)orders usingConnection:(id)connection;
- (ML3Entity)initWithPersistentID:(int64_t)d inLibrary:(id)library;
- (ML3MusicLibrary)library;
- (id)URL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)getValuesForProperties:(id)properties;
- (id)valueForProperty:(id)property;
- (void)didChangeValueForProperties:(id)properties;
- (void)getValues:(id *)values forProperties:(const void *)properties count:(unint64_t)count;
- (void)incrementRevision;
- (void)setValues:(id)values forProperties:(id)properties async:(BOOL)async withCompletionBlock:(id)block;
@end

@implementation ML3Entity

+ (id)predisambiguatedProperties
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"entity_revision.revision";
  v4[1] = @"entity_revision.deleted";
  v5[0] = @"entity_revision.revision";
  v5[1] = @"entity_revision.deleted";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (ML3MusicLibrary)library
{
  WeakRetained = objc_loadWeakRetained(&self->_library);

  return WeakRetained;
}

- (void)incrementRevision
{
  v3 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_library);
  [v3 incrementRevisionWithLibrary:WeakRetained persistentID:self->_persistentID deletionType:0 revisionType:0];
}

- (BOOL)deleteFromLibrary
{
  v3 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_library);
  LOBYTE(self) = [v3 deleteFromLibrary:WeakRetained deletionType:2 persistentIDs:&self->_persistentID count:1];

  return self;
}

- (void)didChangeValueForProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_library);
  [v5 _didChangeValueForProperties:propertiesCopy inLibrary:WeakRetained];
}

- (BOOL)setValue:(id)value forProperty:(id)property
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = value;
  v6 = MEMORY[0x277CBEA60];
  propertyCopy = property;
  valueCopy = value;
  v9 = [v6 arrayWithObjects:v13 count:1];
  v12 = propertyCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];

  LOBYTE(valueCopy) = [(ML3Entity *)self setValues:v9 forProperties:v10];
  return valueCopy;
}

- (BOOL)setValuesForPropertiesWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  allKeys = [dictionaryCopy allKeys];
  allValues = [dictionaryCopy allValues];

  LOBYTE(self) = [(ML3Entity *)self setValues:allValues forProperties:allKeys];
  return self;
}

- (BOOL)setValues:(id)values forProperties:(id)properties usingConnection:(id)connection
{
  v16[1] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  propertiesCopy = properties;
  valuesCopy = values;
  v11 = objc_opt_class();
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[ML3Entity persistentID](self, "persistentID")}];
  v16[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  library = [(ML3Entity *)self library];
  LOBYTE(self) = [v11 setValues:valuesCopy forProperties:propertiesCopy forEntityPersistentIDs:v13 inLibrary:library usingConnection:connectionCopy];

  return self;
}

- (void)setValues:(id)values forProperties:(id)properties async:(BOOL)async withCompletionBlock:(id)block
{
  valuesCopy = values;
  propertiesCopy = properties;
  blockCopy = block;
  if (blockCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_library);
    isCurrentThreadInTransaction = [WeakRetained isCurrentThreadInTransaction];

    if (isCurrentThreadInTransaction)
    {
      v15 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "Warning: ignoring asynchronous flag", buf, 2u);
      }

      goto LABEL_10;
    }

    if (!async)
    {
LABEL_10:
      blockCopy[2](blockCopy, [(ML3Entity *)self setValues:valuesCopy forProperties:propertiesCopy], 0);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (async)
  {
LABEL_9:
    library = [(ML3Entity *)self library];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __63__ML3Entity_setValues_forProperties_async_withCompletionBlock___block_invoke;
    v17[3] = &unk_27875CFE0;
    v17[4] = self;
    v18 = valuesCopy;
    v19 = propertiesCopy;
    [library performAsyncDatabaseWriteTransactionWithBlock:v17 completionBlock:blockCopy];

    goto LABEL_11;
  }

  [(ML3Entity *)self setValues:valuesCopy forProperties:propertiesCopy];
LABEL_11:
}

- (BOOL)setValues:(id)values forProperties:(id)properties
{
  propertiesCopy = properties;
  valuesCopy = values;
  library = [(ML3Entity *)self library];
  checkoutWriterConnection = [library checkoutWriterConnection];
  [checkoutWriterConnection pushTransaction];
  LOBYTE(self) = [(ML3Entity *)self setValues:valuesCopy forProperties:propertiesCopy usingConnection:checkoutWriterConnection];

  [checkoutWriterConnection popTransactionAndCommit:1];
  [library checkInDatabaseConnection:checkoutWriterConnection];

  return self;
}

- (BOOL)setValues:(const void *)values forProperties:(const void *)properties count:(unint64_t)count
{
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:count];
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:count];
  if (count)
  {
    v11 = 0;
    v12 = 1;
    do
    {
      if (values[v11])
      {
        [v9 addObject:?];
      }

      else
      {
        null = [MEMORY[0x277CBEB68] null];
        [v9 addObject:null];
      }

      if (properties[v11])
      {
        [v10 addObject:?];
      }

      else
      {
        null2 = [MEMORY[0x277CBEB68] null];
        [v10 addObject:null2];
      }

      v11 = v12++;
    }

    while (v11 < count);
  }

  v15 = [(ML3Entity *)self setValues:v9 forProperties:v10];

  return v15;
}

- (id)valueForProperty:(id)property
{
  v6 = 0;
  propertyCopy = property;
  [(ML3Entity *)self getValues:&v6 forProperties:&propertyCopy count:1];
  v4 = v6;

  return v4;
}

- (id)getValuesForProperties:(id)properties
{
  v50 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
  if ([propertiesCopy count])
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v36 = propertiesCopy;
    v8 = propertiesCopy;
    v9 = [v8 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v45;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v45 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v44 + 1) + 8 * i);
          if ([v13 isEqualToString:@"ROWID"])
          {
            v14 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_persistentID];
            [v5 setObject:v14 forKey:@"ROWID"];
          }

          else
          {
            if ([objc_opt_class() propertyIsCountProperty:v13])
            {
              v15 = v7;
            }

            else
            {
              v15 = v6;
            }

            [v15 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v10);
    }

    WeakRetained = objc_loadWeakRetained(&self->_library);
    v17 = objc_opt_class();
    v18 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:self->_persistentID];
    v19 = [v17 unrestrictedAllItemsQueryWithlibrary:WeakRetained predicate:v18 orderingTerms:0];

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __36__ML3Entity_getValuesForProperties___block_invoke;
    v41[3] = &unk_2787624D0;
    v42 = v6;
    v35 = v5;
    v20 = v5;
    v43 = v20;
    v33 = v42;
    v34 = v19;
    [v19 enumeratePersistentIDsAndProperties:v42 usingBlock:v41];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v21 = v7;
    v22 = [v21 countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v38;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v37 + 1) + 8 * j);
          v27 = objc_opt_class();
          v28 = [objc_opt_class() queryWithLibrary:WeakRetained predicate:0];
          v29 = [v27 countingQueryForBaseQuery:v28 countProperty:v26 forIdentifier:self->_persistentID];

          if (v29)
          {
            countOfEntities = [v29 countOfEntities];
          }

          else
          {
            countOfEntities = 0;
          }

          v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:countOfEntities];
          [v20 setObject:v31 forKey:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v37 objects:v48 count:16];
      }

      while (v23);
    }

    v5 = v35;
    propertiesCopy = v36;
  }

  return v5;
}

unint64_t __36__ML3Entity_getValuesForProperties___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v7 = *(a3 + 8 * i);
      if (v7)
      {
        v8 = *(a1 + 40);
        v9 = [*(a1 + 32) objectAtIndex:i];
        [v8 setObject:v7 forKey:v9];
      }

      result = [*(a1 + 32) count];
    }
  }

  return result;
}

- (void)getValues:(id *)values forProperties:(const void *)properties count:(unint64_t)count
{
  v34 = *MEMORY[0x277D85DE8];
  if (count)
  {
    countCopy = count;
    propertiesCopy = properties;
    if (count == 1 && [*properties isEqualToString:@"ROWID"])
    {
      *values = [MEMORY[0x277CCABB0] numberWithLongLong:self->_persistentID];
    }

    else
    {
      v27[1] = v27;
      v9 = v27 - ((countCopy + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v9, countCopy);
      v10 = 8 * countCopy;
      v29 = v27 - ((8 * countCopy + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v29, 8 * countCopy);
      v11 = 0;
      v12 = 0;
      do
      {
        values[v11] = 0;
        if ([objc_opt_class() propertyIsCountProperty:propertiesCopy[v11]])
        {
          v9[v11] = 1;
        }

        else
        {
          objc_storeStrong(&v29[8 * v12++], propertiesCopy[v11]);
        }

        ++v11;
      }

      while (countCopy != v11);
      bzero(values, 8 * countCopy);
      WeakRetained = objc_loadWeakRetained(&self->_library);
      if (v12)
      {
        v14 = malloc_type_calloc(8uLL, v12, 0x80040B8603338uLL);
        v15 = [objc_opt_class() newSelectSQLForProperties:v29 count:v12 predicate:0];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __43__ML3Entity_getValues_forProperties_count___block_invoke;
        v30[3] = &unk_27875D5F0;
        v31 = v15;
        selfCopy = self;
        v28 = v14;
        v33 = v14;
        v16 = v15;
        [WeakRetained databaseConnectionAllowingWrites:0 withBlock:v30];
      }

      else
      {
        v28 = 0;
      }

      v17 = 0;
      do
      {
        v18 = *v9++;
        if (v18 == 1)
        {
          v19 = objc_opt_class();
          v20 = WeakRetained;
          v21 = [objc_opt_class() queryWithLibrary:WeakRetained predicate:0];
          v22 = [v19 countingQueryForBaseQuery:v21 countProperty:*propertiesCopy forIdentifier:self->_persistentID];

          if (v22)
          {
            v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22, "countOfEntities")}];
          }

          else
          {
            v23 = &unk_2840C8888;
          }

          *values = v23;

          WeakRetained = v20;
        }

        else
        {
          v24 = v28;
          *values = v28[v17];
          v25 = v24[v17];
          v24[v17] = 0;

          ++v17;
        }

        ++values;
        ++propertiesCopy;
        --countCopy;
      }

      while (countCopy);
      free(v28);

      v26 = v29 - 8;
      do
      {

        v10 -= 8;
      }

      while (v10);
    }
  }
}

void __43__ML3Entity_getValues_forProperties_count___block_invoke(void *a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1[4];
  v5 = *(a1[5] + 16);
  v6 = a2;
  v7 = [v3 numberWithLongLong:v5];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v9 = [v6 executeQuery:v4 withParameters:v8];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__ML3Entity_getValues_forProperties_count___block_invoke_2;
  v10[3] = &__block_descriptor_40_e40_v32__0__ML3DatabaseRow_8__NSError_16_B24l;
  v10[4] = a1[6];
  [v9 enumerateRowsWithBlock:v10];
}

void __43__ML3Entity_getValues_forProperties_count___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = [v14 columnCount];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = [v14 objectAtIndexedSubscript:v8];
      v11 = *(a1 + 32);
      v12 = *(v11 + 8 * v8);
      *(v11 + 8 * v8) = v10;

      v8 = v9;
    }

    while (v7 > v9++);
  }

  *a4 = 1;
}

- (id)URL
{
  v3 = objc_opt_class();
  persistentID = [(ML3Entity *)self persistentID];
  library = [(ML3Entity *)self library];
  libraryUID = [library libraryUID];
  v7 = [v3 URLForEntityWithPersistentID:persistentID libraryUID:libraryUID];

  return v7;
}

- (BOOL)matchesPredicate:(id)predicate
{
  predicateCopy = predicate;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14 = @"ROWID";
  v5 = [objc_opt_class() newSelectSQLForProperties:&v14 count:1 predicate:predicateCopy];
  WeakRetained = objc_loadWeakRetained(&self->_library);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __30__ML3Entity_matchesPredicate___block_invoke;
  v10[3] = &unk_2787628F8;
  v10[4] = self;
  v7 = predicateCopy;
  v11 = v7;
  v8 = v5;
  v12 = v8;
  v13 = &v15;
  [WeakRetained databaseConnectionAllowingWrites:0 withBlock:v10];

  LOBYTE(WeakRetained) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return WeakRetained;
}

void __30__ML3Entity_matchesPredicate___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = *(*(a1 + 32) + 16);
  v5 = a2;
  v6 = [v3 numberWithLongLong:v4];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = [v7 mutableCopy];

  v9 = [*(a1 + 40) databaseStatementParameters];
  [v8 addObjectsFromArray:v9];

  v10 = [v5 executeQuery:*(a1 + 48) withParameters:v8];

  *(*(*(a1 + 56) + 8) + 24) = [v10 hasAtLeastOneRow];
}

- (BOOL)existsInLibrary
{
  v3 = objc_opt_class();
  v4 = [@"SELECT 1 FROM " mutableCopy];
  databaseTable = [v3 databaseTable];
  [v4 appendString:databaseTable];

  [v4 appendString:@" WHERE ROWID = ? LIMIT 1;"];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_library);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __28__ML3Entity_existsInLibrary__block_invoke;
  v9[3] = &unk_278763398;
  v7 = v4;
  v10 = v7;
  selfCopy = self;
  v12 = &v13;
  [WeakRetained databaseConnectionAllowingWrites:0 withBlock:v9];

  LOBYTE(self) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return self;
}

void __28__ML3Entity_existsInLibrary__block_invoke(void *a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1[4];
  v5 = *(a1[5] + 16);
  v6 = a2;
  v7 = [v3 numberWithLongLong:v5];
  v10[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v9 = [v6 executeQuery:v4 withParameters:v8];

  *(*(a1[6] + 8) + 24) = [v9 hasAtLeastOneRow];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = ML3Entity;
  v3 = [(ML3Entity *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@"(pid = %lld)", self->_persistentID];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && equalCopy[2] == self->_persistentID)
  {
    library = [equalCopy library];
    library2 = [(ML3Entity *)self library];
    v8 = library == library2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  persistentID = self->_persistentID;
  WeakRetained = objc_loadWeakRetained(&self->_library);
  v7 = [v4 initWithPersistentID:persistentID inLibrary:WeakRetained];

  return v7;
}

- (ML3Entity)initWithDictionary:(id)dictionary inLibrary:(id)library cachedNameOrders:(id)orders usingConnection:(id)connection
{
  dictionaryCopy = dictionary;
  libraryCopy = library;
  ordersCopy = orders;
  connectionCopy = connection;
  v14 = [dictionaryCopy objectForKey:@"ROWID"];
  v15 = v14;
  if (v14)
  {
    IntegerUUID = [v14 longLongValue];
  }

  else
  {
    IntegerUUID = ML3CreateIntegerUUID();
  }

  v17 = IntegerUUID;
  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  unsettableProperties = [objc_opt_class() unsettableProperties];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __75__ML3Entity_initWithDictionary_inLibrary_cachedNameOrders_usingConnection___block_invoke;
  v43[3] = &unk_27875CF18;
  v20 = unsettableProperties;
  v44 = v20;
  selfCopy = self;
  v45 = selfCopy;
  v47 = a2;
  v22 = v18;
  v46 = v22;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v43];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  checkoutWriterConnection = connectionCopy;
  if (!connectionCopy)
  {
    checkoutWriterConnection = [libraryCopy checkoutWriterConnection];
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __75__ML3Entity_initWithDictionary_inLibrary_cachedNameOrders_usingConnection___block_invoke_2;
  v32[3] = &unk_27875CF68;
  v24 = selfCopy;
  v33 = v24;
  v25 = v22;
  v34 = v25;
  v38 = v17;
  v26 = libraryCopy;
  v35 = v26;
  v37 = &v39;
  v27 = checkoutWriterConnection;
  v36 = v27;
  [v27 performTransactionWithBlock:v32];
  if (!connectionCopy)
  {
    [v26 checkInDatabaseConnection:v27];

    v27 = 0;
  }

  v28 = *(v40 + 24);
  if (v28 == 1)
  {
    v28 = [objc_opt_class() incrementRevisionWithLibrary:v26 persistentID:v17 deletionType:0 revisionType:0];
    *(v40 + 24) = v28;
  }

  if (v28)
  {
    v24 = [(ML3Entity *)v24 initWithPersistentID:v17 inLibrary:v26];
    v29 = v24;
  }

  else
  {
    v29 = 0;
  }

  _Block_object_dispose(&v39, 8);
  return v29;
}

void __75__ML3Entity_initWithDictionary_inLibrary_cachedNameOrders_usingConnection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v14])
  {
    goto LABEL_2;
  }

  v8 = [objc_opt_class() joinClausesForProperty:v14];
  v9 = [v8 count];

  if (v9)
  {
    v6 = [objc_opt_class() foreignDatabaseTableForProperty:v14];
    if (!v6)
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      [v13 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"ML3Entity.m" lineNumber:341 description:{@"Cannot perform insert with %@ property: no table", v14}];
    }

    v10 = [objc_opt_class() foreignColumnForProperty:v14];
    if (!v10)
    {
      v11 = [MEMORY[0x277CCA890] currentHandler];
      [v11 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"ML3Entity.m" lineNumber:343 description:{@"Cannot perform insert with %@ property: no column", v14}];

      v7 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    if ([v14 isEqualToString:@"ROWID"])
    {
LABEL_2:
      v6 = 0;
      v7 = 0;
      goto LABEL_15;
    }

    v6 = [objc_opt_class() databaseTable];
    v10 = v14;
  }

  v7 = v10;
LABEL_11:
  if (v6)
  {
    v12 = [*(a1 + 48) objectForKey:v6];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [*(a1 + 48) setValue:v12 forKey:v6];
    }

    [v12 setValue:v5 forKey:v7];
  }

LABEL_15:
}

uint64_t __75__ML3Entity_initWithDictionary_inLibrary_cachedNameOrders_usingConnection___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __75__ML3Entity_initWithDictionary_inLibrary_cachedNameOrders_usingConnection___block_invoke_3;
  v23[3] = &unk_27875CF40;
  v3 = *(a1 + 72);
  v26 = v2;
  v27 = v3;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v24 = v5;
  v25 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v23];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v2 extraTablesToInsert];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [*(a1 + 40) objectForKey:v12];

        if (!v13)
        {
          [v2 insertValues:0 intoTable:v12 persistentID:*(a1 + 72) library:*(a1 + 48)];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v9);
  }

  if ([objc_opt_class() insertionChangesLibraryContents])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __75__ML3Entity_initWithDictionary_inLibrary_cachedNameOrders_usingConnection___block_invoke_4;
    v17[3] = &unk_278765158;
    v14 = *(a1 + 56);
    v18 = *(a1 + 48);
    [v14 enqueueBlockForTransactionCommit:v17];
  }

  v15 = *(*(*(a1 + 64) + 8) + 24);

  return v15;
}

uint64_t __75__ML3Entity_initWithDictionary_inLibrary_cachedNameOrders_usingConnection___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 48) insertValues:a3 intoTable:a2 persistentID:*(a1 + 56) library:*(a1 + 32)];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t __75__ML3Entity_initWithDictionary_inLibrary_cachedNameOrders_usingConnection___block_invoke_4(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) notifyEntitiesAddedOrRemoved];
    v3 = *(v2 + 32);

    return [v3 notifyContentsDidChange];
  }

  return result;
}

- (ML3Entity)initWithPersistentID:(int64_t)d inLibrary:(id)library
{
  libraryCopy = library;
  v12.receiver = self;
  v12.super_class = ML3Entity;
  v8 = [(ML3Entity *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_persistentID = d;
    if (!libraryCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v9 file:@"ML3Entity.m" lineNumber:64 description:&stru_28408B690];
    }

    objc_storeWeak(&v9->_library, libraryCopy);
  }

  return v9;
}

+ (void)enumeratePersistentIDsInLibrary:(id)library afterRevision:(int64_t)revision usingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    libraryCopy = library;
    revisionTrackingCode = [objc_opt_class() revisionTrackingCode];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__ML3Entity_enumeratePersistentIDsInLibrary_afterRevision_usingBlock___block_invoke;
    v10[3] = &unk_27875D0D0;
    v11 = blockCopy;
    [libraryCopy enumeratePersistentIDsAfterRevision:revision revisionTrackingCode:revisionTrackingCode maximumRevisionType:3 usingBlock:v10];
  }
}

+ (id)orderingSQLForProperties:(id)properties directionality:(id)directionality
{
  v27 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  directionalityCopy = directionality;
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = propertiesCopy;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [self disambiguatedSQLForProperty:*(*(&v22 + 1) + 8 * i)];
        v13 = @"ASC";
        if ([directionalityCopy count] > v9)
        {
          v13 = [directionalityCopy objectAtIndex:v9];
        }

        uppercaseString = [(__CFString *)v13 uppercaseString];
        v15 = [uppercaseString isEqual:@"DESC"];

        if (v15)
        {
          v16 = [v12 stringByAppendingFormat:@" %@", @"DESC"];

          v12 = v16;
        }

        [v21 addObject:v12];
        ++v9;
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v17 = [v21 componentsJoinedByString:{@", "}];

  return v17;
}

+ (id)indexableSQLForProperties:(id)properties
{
  v19 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [propertiesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(propertiesCopy);
        }

        v10 = [self joinClausesForProperty:*(*(&v14 + 1) + 8 * v9)];

        if (v10)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"ML3Entity.m" lineNumber:1390 description:@"Properties requiring a join cannot be indexed"];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [propertiesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [propertiesCopy componentsJoinedByString:{@", "}];

  return v12;
}

+ (id)disambiguatedSelectSQLForProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"entity_revision.revision"])
  {
    v5 = @"MAX(entity_revision.revision)";
  }

  else
  {
    v5 = [self disambiguatedSQLForProperty:propertyCopy];
  }

  return v5;
}

+ (id)_createDisambiguatedSQLForProperty:(id)property
{
  propertyCopy = property;
  v5 = [self joinClausesForProperty:propertyCopy];
  if ([v5 count])
  {
    propertyCopy = propertyCopy;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    databaseTable = [self databaseTable];
    propertyCopy = [v7 stringWithFormat:@"%@.%@", databaseTable, propertyCopy];
  }

  return propertyCopy;
}

+ (id)disambiguatedSQLForProperty:(id)property
{
  propertyCopy = property;
  predisambiguatedProperties = [self predisambiguatedProperties];
  v6 = [predisambiguatedProperties objectForKey:propertyCopy];

  if (!v6)
  {
    v6 = [objc_opt_class() _createDisambiguatedSQLForProperty:propertyCopy];
  }

  return v6;
}

+ (void)predisambiguateProperties:(id)properties toDictionary:(id)dictionary
{
  v18 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  dictionaryCopy = dictionary;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [propertiesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(propertiesCopy);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = [objc_opt_class() _createDisambiguatedSQLForProperty:v11];
        [dictionaryCopy setObject:v12 forKey:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [propertiesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

+ (BOOL)deleteFromLibrary:(id)library deletionType:(int)type canonicalizeCollections:(BOOL)collections persistentIDs:(const int64_t *)ds count:(unint64_t)count usingConnection:(id)connection
{
  libraryCopy = library;
  connectionCopy = connection;
  if (count)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __104__ML3Entity_deleteFromLibrary_deletionType_canonicalizeCollections_persistentIDs_count_usingConnection___block_invoke;
    v19[3] = &unk_27875D0A8;
    countCopy = count;
    selfCopy = self;
    dsCopy = ds;
    v20 = libraryCopy;
    v26 = a2;
    collectionsCopy = collections;
    v21 = connectionCopy;
    v22 = &v29;
    typeCopy = type;
    [v21 performTransactionWithBlock:v19];
    v17 = *(v30 + 24);

    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v17 = 1;
  }

  return v17 & 1;
}

uint64_t __104__ML3Entity_deleteFromLibrary_deletionType_canonicalizeCollections_persistentIDs_count_usingConnection___block_invoke(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = [*(a1 + 64) databaseTable];
    *buf = 134218242;
    *v76 = v3;
    *&v76[8] = 2114;
    *&v76[10] = v4;
    _os_log_impl(&dword_22D2FA000, v2, OS_LOG_TYPE_DEFAULT, "deleting %lu rows from %{public}@ table", buf, 0x16u);
  }

  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = [v6 databaseTable];
  LODWORD(v5) = [v6 _deleteRowForPersistentIDs:v5 count:v7 library:v8 table:v9 usingColumn:@"ROWID" usingConnection:*(a1 + 40)];

  if (v5)
  {
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v70 = 0u;
    obj = [*(a1 + 64) extraTablesToDelete];
    v10 = [obj countByEnumeratingWithState:&v70 objects:v79 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v71;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v71 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v70 + 1) + 8 * i);
          v15 = [*(a1 + 64) persistentIDColumnForTable:v14];
          if (!v15)
          {
            v59 = [MEMORY[0x277CCA890] currentHandler];
            [v59 handleFailureInMethod:*(a1 + 80) object:*(a1 + 64) file:@"ML3Entity.m" lineNumber:1247 description:{@"no pid column for %@ %@", objc_opt_class(), v14}];
          }

          v16 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *(a1 + 56);
            *buf = 134218498;
            *v76 = v17;
            *&v76[8] = 2114;
            *&v76[10] = v14;
            v77 = 2114;
            v78 = v15;
            _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_DEFAULT, "deleting %lu rows from %{public}@ table using column=%{public}@", buf, 0x20u);
          }

          if (([*(a1 + 64) _deleteRowForPersistentIDs:*(a1 + 72) count:*(a1 + 56) library:*(a1 + 32) table:v14 usingColumn:v15 usingConnection:*(a1 + 40)] & 1) == 0)
          {
            v44 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v45 = *(a1 + 64);
              v46 = [v14 stringByAppendingFormat:@".%@", v15];
              *buf = 138543618;
              *v76 = v45;
              *&v76[8] = 2114;
              *&v76[10] = v46;
              _os_log_impl(&dword_22D2FA000, v44, OS_LOG_TYPE_ERROR, "Could not delete %{public}@ %{public}@", buf, 0x16u);
            }

            goto LABEL_41;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v70 objects:v79 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v18 = objc_opt_class();
    if (v18 == objc_opt_class())
    {
      v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a1 + 56)];
      if (*(a1 + 56))
      {
        v20 = 0;
        do
        {
          v21 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*(a1 + 72) + 8 * v20)];
          [v19 addObject:v21];

          ++v20;
        }

        while (v20 < *(a1 + 56));
      }

      v22 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 56);
        *buf = 134217984;
        *v76 = v23;
        _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_DEFAULT, "deleting %lu items from item store, stats table", buf, 0xCu);
      }

      v24 = *(a1 + 56);
      if (v24)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0x27875C000uLL;
        obja = v19;
        do
        {
          if (v24 - v26 >= 0x1F4)
          {
            v28 = 500;
          }

          else
          {
            v28 = v24 - v26;
          }

          v29 = [v19 subarrayWithRange:{v26, v28}];
          v30 = [*(v27 + 1208) defaultRenderer];
          v31 = objc_msgSend(v30, "statementWithPrefix:inParameterCount:", @"DELETE FROM item_stats WHERE item_pid IN(SELECT item_pid FROM item_store WHERE sync_id = 0 AND item_pid"), v28;

          v32 = [v31 stringByAppendingString:@""]);

          v33 = *(a1 + 40);
          v69 = v25;
          v34 = [v33 executeUpdate:v32 withParameters:v29 error:&v69];
          v35 = v69;

          if ((v34 & 1) == 0)
          {
            v36 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *v76 = v35;
              _os_log_impl(&dword_22D2FA000, v36, OS_LOG_TYPE_DEFAULT, "Failed to clean up item_stats where sync_id = 0 with error: %{public}@", buf, 0xCu);
            }
          }

          v37 = v27;
          v38 = [*(v27 + 1208) defaultRenderer];
          v39 = [v38 statementWithPrefix:@"DELETE FROM item_store WHERE sync_id = 0 AND item_pid" inParameterCount:v28];

          v40 = *(a1 + 40);
          v68 = v35;
          v41 = [v40 executeUpdate:v39 withParameters:v29 error:&v68];
          v25 = v68;

          if ((v41 & 1) == 0)
          {
            v42 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *v76 = v25;
              _os_log_impl(&dword_22D2FA000, v42, OS_LOG_TYPE_DEFAULT, "Failed to clean up item_store where sync_id = 0 with error: %{public}@", buf, 0xCu);
            }
          }

          v26 += v28;

          v24 = *(a1 + 56);
          v27 = v37;
          v19 = obja;
        }

        while (v26 < v24);
      }

      else
      {
        v25 = 0;
      }

      [*(a1 + 64) _deleteRowsFromLibraryPinsTableForPersistentIDs:*(a1 + 72) count:? library:? usingConnection:?];
    }

    if (*(a1 + 92) == 1)
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      obj = [*(a1 + 64) collectionClassesToUpdateBeforeDelete];
      v47 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v65;
LABEL_47:
        v50 = 0;
        while (1)
        {
          if (*v65 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v51 = *(*(&v64 + 1) + 8 * v50);
          v52 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *v76 = v51;
            _os_log_impl(&dword_22D2FA000, v52, OS_LOG_TYPE_DEFAULT, "canonicalize collection=%{public}@", buf, 0xCu);
          }

          *(*(*(a1 + 48) + 8) + 24) = [v51 canonicalizeCollectionRepresentativeItemsInLibrary:*(a1 + 32) usingConnection:*(a1 + 40)];
          if (*(*(*(a1 + 48) + 8) + 24) != 1)
          {
            break;
          }

          if (v48 == ++v50)
          {
            v48 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
            if (v48)
            {
              goto LABEL_47;
            }

            goto LABEL_55;
          }
        }

LABEL_41:
        v43 = 0;
        goto LABEL_59;
      }

LABEL_55:
    }

    [*(a1 + 64) incrementRevisionForRevisionTypeContentWithConnection:*(a1 + 40) deletionType:*(a1 + 88) persistentIDs:*(a1 + 72) count:*(a1 + 56)];
    v53 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = *(a1 + 88);
      v55 = *(a1 + 72);
      *buf = 67109376;
      *v76 = v54;
      *&v76[4] = 2048;
      *&v76[6] = v55;
      _os_log_impl(&dword_22D2FA000, v53, OS_LOG_TYPE_DEFAULT, "finished incrementing revsion with deletionType=%d for %lu persistentIDs", buf, 0x12u);
    }

    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __104__ML3Entity_deleteFromLibrary_deletionType_canonicalizeCollections_persistentIDs_count_usingConnection___block_invoke_228;
    v62[3] = &unk_278765158;
    v56 = *(a1 + 40);
    v63 = *(a1 + 32);
    [v56 enqueueBlockForTransactionCommit:v62];
    v57 = *(*(a1 + 48) + 8);
    v43 = 1;
    *(v57 + 24) = 1;
    obj = v63;
LABEL_59:

    return v43;
  }

  return 0;
}

uint64_t __104__ML3Entity_deleteFromLibrary_deletionType_canonicalizeCollections_persistentIDs_count_usingConnection___block_invoke_228(uint64_t a1)
{
  [*(a1 + 32) notifyEntitiesAddedOrRemoved];
  v2 = *(a1 + 32);

  return [v2 notifyContentsDidChange];
}

+ (BOOL)deleteFromLibrary:(id)library deletionType:(int)type persistentIDs:(const int64_t *)ds count:(unint64_t)count
{
  libraryCopy = library;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__ML3Entity_deleteFromLibrary_deletionType_persistentIDs_count___block_invoke;
  v13[3] = &unk_27875D080;
  v15 = &v20;
  selfCopy = self;
  v11 = libraryCopy;
  typeCopy = type;
  v14 = v11;
  dsCopy = ds;
  countCopy = count;
  [v11 databaseConnectionAllowingWrites:1 withBlock:v13];
  LOBYTE(count) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return count;
}

uint64_t __64__ML3Entity_deleteFromLibrary_deletionType_persistentIDs_count___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 48) deleteFromLibrary:*(a1 + 32) deletionType:*(a1 + 72) persistentIDs:*(a1 + 56) count:*(a1 + 64) usingConnection:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (BOOL)_deleteRowsFromLibraryPinsTableForPersistentIDs:(const int64_t *)ds count:(unint64_t)count library:(id)library usingConnection:(id)connection
{
  libraryCopy = library;
  connectionCopy = connection;
  if (count)
  {
    v25 = libraryCopy;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM library_pins WHERE (entity_type=0 AND entity_pid)"];
    v10 = 0;
    do
    {
      v11 = objc_autoreleasePoolPush();
      if (count - v10 >= 0x1F4)
      {
        v12 = 500;
      }

      else
      {
        v12 = count - v10;
      }

      v13 = +[ML3DatabaseStatementRenderer defaultRenderer];
      v14 = [v13 statementWithPrefix:v9 inParameterCount:v12];

      v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
      v16 = v12 + v10;
      if (v12 + v10 >= count)
      {
        countCopy = count;
      }

      else
      {
        countCopy = v12 + v10;
      }

      v18 = v10 - countCopy;
      if (v10 < countCopy)
      {
        v19 = &ds[v10];
        do
        {
          v20 = *v19++;
          v21 = [MEMORY[0x277CCABB0] numberWithLongLong:v20];
          [v15 addObject:v21];

          v23 = __CFADD__(v18++, 1);
        }

        while (!v23);
      }

      v22 = [connectionCopy executeUpdate:v14 withParameters:v15 error:0];

      objc_autoreleasePoolPop(v11);
      if (v22)
      {
        v23 = v16 >= count;
      }

      else
      {
        v23 = 1;
      }

      v10 = v16;
    }

    while (!v23);

    libraryCopy = v25;
  }

  else
  {
    LOBYTE(v22) = 1;
  }

  return v22;
}

+ (BOOL)_deleteRowForPersistentIDs:(const int64_t *)ds count:(unint64_t)count library:(id)library table:(id)table usingColumn:(id)column usingConnection:(id)connection
{
  libraryCopy = library;
  tableCopy = table;
  columnCopy = column;
  connectionCopy = connection;
  if (count)
  {
    v32 = libraryCopy;
    v31 = columnCopy;
    columnCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@ WHERE %@", tableCopy, columnCopy];
    v16 = 0;
    do
    {
      v17 = objc_autoreleasePoolPush();
      if (count - v16 >= 0x1F4)
      {
        v18 = 500;
      }

      else
      {
        v18 = count - v16;
      }

      v19 = +[ML3DatabaseStatementRenderer defaultRenderer];
      v20 = [v19 statementWithPrefix:columnCopy inParameterCount:v18];

      v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
      v22 = v18 + v16;
      if (v18 + v16 >= count)
      {
        countCopy = count;
      }

      else
      {
        countCopy = v18 + v16;
      }

      v24 = v16 - countCopy;
      if (v16 < countCopy)
      {
        v25 = &ds[v16];
        do
        {
          v26 = *v25++;
          v27 = [MEMORY[0x277CCABB0] numberWithLongLong:v26];
          [v21 addObject:v27];

          v29 = __CFADD__(v24++, 1);
        }

        while (!v29);
      }

      v28 = [connectionCopy executeUpdate:v20 withParameters:v21 error:0];

      objc_autoreleasePoolPop(v17);
      if (v28)
      {
        v29 = v22 >= count;
      }

      else
      {
        v29 = 1;
      }

      v16 = v22;
    }

    while (!v29);

    libraryCopy = v32;
    columnCopy = v31;
  }

  else
  {
    LOBYTE(v28) = 1;
  }

  return v28;
}

+ (void)_didChangeValueForProperties:(id)properties inLibrary:(id)library
{
  v24 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  libraryCopy = library;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = propertiesCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v18 = libraryCopy;
    v10 = *v20;
    v11 = 3;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if (([v13 isEqualToString:@"ROWID"] & 1) == 0)
        {
          unsettableProperties = [objc_opt_class() unsettableProperties];
          v15 = [unsettableProperties containsObject:v13];

          if ((v15 & 1) == 0)
          {
            if ([objc_opt_class() libraryContentsChangeForProperty:v13])
            {
              libraryCopy = v18;
              [v18 notifyContentsDidChange];
              if ([objc_opt_class() assistantLibraryContentsChangeForProperty:v13])
              {
                [v18 notifyAssistantContentsDidChange];
              }

              goto LABEL_22;
            }

            v16 = [objc_opt_class() libraryDynamicChangeForProperty:v13];
            if (v11 >= 2)
            {
              v17 = 2;
            }

            else
            {
              v17 = v11;
            }

            if (v16)
            {
              v11 = 1;
            }

            else
            {
              v11 = v17;
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    if (v11 == 2)
    {
      libraryCopy = v18;
      [v18 notifyInvisiblePropertyDidChange];
    }

    else
    {
      libraryCopy = v18;
      if (v11 == 1)
      {
        [v18 notifyNonContentsPropertyDidChange];
      }
    }
  }

  else
  {
LABEL_22:
  }
}

+ (BOOL)setDifferentValues:(id)values forProperties:(id)properties forEntityPersistentIDs:(id)ds inLibrary:(id)library usingConnection:(id)connection
{
  v56 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  propertiesCopy = properties;
  dsCopy = ds;
  libraryCopy = library;
  connectionCopy = connection;
  v17 = 1;
  if (valuesCopy && propertiesCopy && libraryCopy && [dsCopy count])
  {
    if ([libraryCopy isHomeSharingLibrary])
    {
      v18 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [propertiesCopy componentsJoinedByString:{@", "}];
        *buf = 138543362;
        *&buf[4] = v19;
        _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_ERROR, "Ignoring write to read-only Home Sharing database. Properties: %{public}@", buf, 0xCu);
      }

      v17 = 1;
    }

    else
    {
      v20 = [valuesCopy count];
      if (v20 == [dsCopy count])
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v55) = 1;
        v21 = [propertiesCopy count];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __95__ML3Entity_setDifferentValues_forProperties_forEntityPersistentIDs_inLibrary_usingConnection___block_invoke;
        v49[3] = &unk_27875D058;
        v49[4] = buf;
        v49[5] = v21;
        [valuesCopy enumerateObjectsUsingBlock:v49];
        if (*(*&buf[8] + 24))
        {
          v45 = 0;
          v46 = &v45;
          v47 = 0x2020000000;
          v48 = 0;
          v53[0] = dsCopy;
          v52[0] = @"MLDatabaseOperationAttributePersistentIDsArrayKey";
          v52[1] = @"MLDatabaseOperationAttributeEntityClassKey";
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          v53[1] = v23;
          v53[2] = valuesCopy;
          v52[2] = @"MLDatabaseOperationAttributeValuesKey";
          v52[3] = @"MLDatabaseOperationAttributePropertiesKey";
          v52[4] = @"MLDatabaseOperationAttributeApplyDifferentValuesToPIDs";
          v53[3] = propertiesCopy;
          v53[4] = MEMORY[0x277CBEC38];
          v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:5];

          currentTransactionID = [connectionCopy currentTransactionID];
          v25 = MEMORY[0x277CBEB38];
          v50 = @"MLDatabaseOperationOptionDatabasePathKey";
          databasePath = [libraryCopy databasePath];
          v51 = databasePath;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
          v28 = [v25 dictionaryWithDictionary:v27];

          if (currentTransactionID)
          {
            [v28 setObject:currentTransactionID forKey:@"MLDatabaseOperationOptionTransactionIdentifierKey"];
          }

          v29 = dispatch_semaphore_create(0);
          v30 = +[MLMediaLibraryService sharedMediaLibraryService];
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __95__ML3Entity_setDifferentValues_forProperties_forEntityPersistentIDs_inLibrary_usingConnection___block_invoke_2;
          v38[3] = &unk_27875D030;
          v43 = &v45;
          v39 = connectionCopy;
          selfCopy = self;
          v40 = propertiesCopy;
          v41 = libraryCopy;
          v31 = v29;
          v42 = v31;
          [v30 performDatabaseOperation:1 withAttributes:v37 options:v28 completionHandler:v38];
          dispatch_semaphore_wait(v31, 0xFFFFFFFFFFFFFFFFLL);
          v17 = *(v46 + 24);

          _Block_object_dispose(&v45, 8);
        }

        else
        {
          v17 = 0;
        }

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v32 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          *&buf[4] = propertiesCopy;
          *&buf[12] = 2048;
          *&buf[14] = [valuesCopy count];
          *&buf[22] = 2048;
          v55 = [dsCopy count];
          _os_log_impl(&dword_22D2FA000, v32, OS_LOG_TYPE_ERROR, "Ignoring not setting properties=%{public}@ as the input is not valid (values.count=%lu, persistentIDs.count=%lu)", buf, 0x20u);
        }

        v33 = [valuesCopy count];
        if (v33 == [dsCopy count])
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[ML3Entity setDifferentValues:forProperties:forEntityPersistentIDs:inLibrary:usingConnection:]"];
          [currentHandler handleFailureInFunction:v36 file:@"ML3Entity.m" lineNumber:1049 description:{@"Invalid parameter not satisfying: %@", @"values.count != persistentIDs.count"}];
        }

        v17 = 0;
      }
    }
  }

  return v17 & 1;
}

void __95__ML3Entity_setDifferentValues_forProperties_forEntityPersistentIDs_inLibrary_usingConnection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if ([v6 count] != *(a1 + 40))
  {
    v7 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "Not enough values to update all properties in %{public}@", buf, 0xCu);
    }

    if (a4)
    {
      *a4 = 1;
      *(*(*(a1 + 32) + 8) + 24) = 0;
      if ([v6 count] == *(a1 + 40))
      {
        v8 = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[ML3Entity setDifferentValues:forProperties:forEntityPersistentIDs:inLibrary:usingConnection:]_block_invoke"];
        [v8 handleFailureInFunction:v9 file:@"ML3Entity.m" lineNumber:1062 description:{@"Invalid parameter not satisfying: %@", @"obj.count != propsCount"}];
      }
    }
  }
}

void __95__ML3Entity_setDifferentValues_forProperties_forEntityPersistentIDs_inLibrary_usingConnection___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  *(*(*(a1 + 64) + 8) + 24) = a2;
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __95__ML3Entity_setDifferentValues_forProperties_forEntityPersistentIDs_inLibrary_usingConnection___block_invoke_3;
    v9[3] = &unk_27875D008;
    v12 = *(a1 + 72);
    v7 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    [v7 enqueueBlockForTransactionCommit:v9];

    v8 = v10;
LABEL_6:

    goto LABEL_7;
  }

  if (v5)
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "Daemon reported set values for properties was unsuccessful. %{public}@", buf, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:
  dispatch_semaphore_signal(*(a1 + 56));
}

+ (BOOL)setValues:(id)values forProperties:(id)properties forEntityPersistentIDs:(id)ds inLibrary:(id)library usingConnection:(id)connection
{
  v46 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  propertiesCopy = properties;
  dsCopy = ds;
  libraryCopy = library;
  connectionCopy = connection;
  v17 = 1;
  if (valuesCopy && propertiesCopy && libraryCopy && [dsCopy count])
  {
    if ([libraryCopy isHomeSharingLibrary])
    {
      v18 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [propertiesCopy componentsJoinedByString:{@", "}];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v19;
        _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_ERROR, "Ignoring write to read-only Home Sharing database. Properties: %{public}@", &buf, 0xCu);
      }

      v17 = 1;
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v44 = 0x2020000000;
      v45 = 0;
      v42[0] = dsCopy;
      v41[0] = @"MLDatabaseOperationAttributePersistentIDsArrayKey";
      v41[1] = @"MLDatabaseOperationAttributeEntityClassKey";
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v42[1] = v21;
      v42[2] = valuesCopy;
      v41[2] = @"MLDatabaseOperationAttributeValuesKey";
      v41[3] = @"MLDatabaseOperationAttributePropertiesKey";
      v42[3] = propertiesCopy;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:4];

      currentTransactionID = [connectionCopy currentTransactionID];
      v23 = MEMORY[0x277CBEB38];
      v39 = @"MLDatabaseOperationOptionDatabasePathKey";
      databasePath = [libraryCopy databasePath];
      v40 = databasePath;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v26 = [v23 dictionaryWithDictionary:v25];

      if (currentTransactionID)
      {
        [v26 setObject:currentTransactionID forKey:@"MLDatabaseOperationOptionTransactionIdentifierKey"];
      }

      v27 = dispatch_semaphore_create(0);
      v28 = +[MLMediaLibraryService sharedMediaLibraryService];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __86__ML3Entity_setValues_forProperties_forEntityPersistentIDs_inLibrary_usingConnection___block_invoke;
      v32[3] = &unk_27875D030;
      p_buf = &buf;
      v33 = connectionCopy;
      selfCopy = self;
      v34 = propertiesCopy;
      v35 = libraryCopy;
      v29 = v27;
      v36 = v29;
      [v28 performDatabaseOperation:1 withAttributes:v31 options:v26 completionHandler:v32];
      dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
      v17 = *(*(&buf + 1) + 24);

      _Block_object_dispose(&buf, 8);
    }
  }

  return v17 & 1;
}

void __86__ML3Entity_setValues_forProperties_forEntityPersistentIDs_inLibrary_usingConnection___block_invoke(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  *(*(*(a1 + 64) + 8) + 24) = a2;
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __86__ML3Entity_setValues_forProperties_forEntityPersistentIDs_inLibrary_usingConnection___block_invoke_2;
    v9[3] = &unk_27875D008;
    v12 = *(a1 + 72);
    v7 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    [v7 enqueueBlockForTransactionCommit:v9];

    v8 = v10;
LABEL_6:

    goto LABEL_7;
  }

  if (v5)
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "Daemon reported set values for properties was unsuccessful. %{public}@", buf, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:
  dispatch_semaphore_signal(*(a1 + 56));
}

+ (id)countingQueryForBaseQuery:(id)query countProperty:(id)property forIdentifier:(int64_t)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  propertyCopy = property;
  v8 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = 138543618;
    entityClass = [queryCopy entityClass];
    v13 = 2114;
    v14 = propertyCopy;
    v9 = entityClass;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "Invalid count query for entity class %{public}@, count property %{public}@", &v11, 0x16u);
  }

  return 0;
}

+ (id)newWithDictionary:(id)dictionary inLibrary:(id)library cachedNameOrders:(id)orders usingConnection:(id)connection
{
  connectionCopy = connection;
  ordersCopy = orders;
  libraryCopy = library;
  dictionaryCopy = dictionary;
  v14 = [[self alloc] initWithDictionary:dictionaryCopy inLibrary:libraryCopy cachedNameOrders:ordersCopy usingConnection:connectionCopy];

  return v14;
}

+ (id)newWithDictionary:(id)dictionary inLibrary:(id)library cachedNameOrders:(id)orders
{
  ordersCopy = orders;
  libraryCopy = library;
  dictionaryCopy = dictionary;
  v11 = [[self alloc] initWithDictionary:dictionaryCopy inLibrary:libraryCopy cachedNameOrders:ordersCopy usingConnection:0];

  return v11;
}

+ (id)newWithDictionary:(id)dictionary inLibrary:(id)library
{
  libraryCopy = library;
  dictionaryCopy = dictionary;
  v8 = [[self alloc] initWithDictionary:dictionaryCopy inLibrary:libraryCopy cachedNameOrders:0 usingConnection:0];

  return v8;
}

+ (id)newWithPersistentID:(int64_t)d inLibrary:(id)library
{
  libraryCopy = library;
  v7 = [[self alloc] initWithPersistentID:d inLibrary:libraryCopy];

  return v7;
}

+ (id)joinClausesForProperty:(id)property
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([property isEqualToString:@"entity_revision.revision"])
  {
    v4 = [MEMORY[0x277CCAB68] stringWithCapacity:80];
    objc_msgSend(v4, "appendString:", @"JOIN entity_revision ON (");
    databaseTable = [self databaseTable];
    [v4 appendString:databaseTable];

    [v4 appendString:@".ROWID = entity_revision.entity_pid"]);
    v8[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)predicateByOptimizingPredicate:(id)predicate
{
  predicateCopy = predicate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self predicateByOptimizingComparisonPredicate:predicateCopy];

    predicateCopy = v5;
  }

  return predicateCopy;
}

+ (id)URLForEntityWithPersistentID:(int64_t)d libraryUID:(id)iD
{
  v17[3] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCACE0];
  iDCopy = iD;
  v8 = objc_alloc_init(v6);
  entityURLScheme = [self entityURLScheme];
  [v8 setScheme:entityURLScheme];

  [v8 setHost:iDCopy];
  v10 = MEMORY[0x277CCACA8];
  v17[0] = @"/";
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(self, "revisionTrackingCode")];
  v17[1] = v11;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", d];
  v17[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v14 = [v10 pathWithComponents:v13];
  [v8 setPath:v14];

  v15 = [v8 URL];

  return v15;
}

+ (id)_entityForURLComponents:(id)components inLibrary:(id)library verifyExistence:(BOOL)existence reason:(id *)reason
{
  existenceCopy = existence;
  componentsCopy = components;
  libraryCopy = library;
  scheme = [componentsCopy scheme];
  entityURLScheme = [self entityURLScheme];
  v14 = [scheme isEqualToString:entityURLScheme];

  if (v14)
  {
    host = [componentsCopy host];
    libraryUID = [libraryCopy libraryUID];
    v17 = [host isEqualToString:libraryUID];

    if (v17)
    {
      path = [componentsCopy path];
      pathComponents = [path pathComponents];

      if ([pathComponents count] > 2)
      {
        v26 = [pathComponents objectAtIndexedSubscript:1];
        integerValue = [v26 integerValue];

        v28 = [pathComponents objectAtIndexedSubscript:2];
        longLongValue = [v28 longLongValue];

        v30 = MLEntityClassForType(integerValue);
        if (v30)
        {
          if (longLongValue)
          {
            v31 = v30;
            v32 = [[v30 alloc] initWithPersistentID:longLongValue inLibrary:libraryCopy];
            v33 = v32;
            if (!existenceCopy || ([v32 existsInLibrary] & 1) != 0)
            {
              v33 = v33;
              v25 = v33;
LABEL_23:

              goto LABEL_24;
            }

            v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"No %@ entity exists with persistentID: %lld", v31, longLongValue];
            if (reason)
            {
              v36 = v36;
              *reason = v36;
            }

LABEL_22:
            v25 = 0;
            goto LABEL_23;
          }

          [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid entity persistentID: %lld", 0];
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid entity type: %ld", integerValue];
        }
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"Insufficient path components [requires three]: %@", pathComponents];
      }
      v34 = ;
      v33 = v34;
      if (reason)
      {
        v35 = v34;
        v25 = 0;
        *reason = v33;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v22 = MEMORY[0x277CCACA8];
    host2 = [componentsCopy host];
    libraryUID2 = [libraryCopy libraryUID];
    pathComponents = [v22 stringWithFormat:@"Library UID mismatch: %@ != %@", host2, libraryUID2];
  }

  else
  {
    v20 = MEMORY[0x277CCACA8];
    host2 = [componentsCopy scheme];
    pathComponents = [v20 stringWithFormat:@"Invalid URL scheme: %@", host2];
  }

  if (reason)
  {
    v24 = pathComponents;
    v25 = 0;
    *reason = pathComponents;
  }

  else
  {
    v25 = 0;
  }

LABEL_24:

  return v25;
}

+ (id)entityFromURL:(id)l inLibrary:(id)library verifyExistence:(BOOL)existence
{
  existenceCopy = existence;
  v8 = MEMORY[0x277CCACE0];
  libraryCopy = library;
  lCopy = l;
  v11 = [[v8 alloc] initWithURL:lCopy resolvingAgainstBaseURL:0];

  v12 = [self _entityForURLComponents:v11 inLibrary:libraryCopy verifyExistence:existenceCopy reason:0];

  return v12;
}

+ (id)entityFromURL:(id)l reason:(id *)reason
{
  v34 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v7 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];
  scheme = [v7 scheme];
  entityURLScheme = [self entityURLScheme];
  v10 = [scheme isEqualToString:entityURLScheme];

  if (v10)
  {
    reasonCopy = reason;
    v28 = lCopy;
    host = [v7 host];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = +[ML3MusicLibrary allLibraries];
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          libraryUID = [v17 libraryUID];
          v19 = [host isEqualToString:libraryUID];

          if (v19)
          {
            v21 = [self _entityForURLComponents:v7 inLibrary:v17 verifyExistence:1 reason:reasonCopy];

            goto LABEL_17;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"No library with UID: %@", host];
    if (reasonCopy)
    {
      v20 = v20;
      *reasonCopy = v20;
    }

    v21 = 0;
LABEL_17:
    lCopy = v28;
  }

  else
  {
    v22 = MEMORY[0x277CCACA8];
    scheme2 = [v7 scheme];
    v24 = [v22 stringWithFormat:@"Invalid URL scheme: %@", scheme2];

    if (reason)
    {
      v25 = v24;
      *reason = v24;
    }

    v21 = 0;
  }

  return v21;
}

+ (id)newSelectSQLForProperties:(const void *)properties count:(unint64_t)count predicate:(id)predicate
{
  v56 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  if (predicateCopy)
  {
    v8 = 0;
    v9 = 0;
LABEL_3:
    v48 = v9;
    v49 = v8;
    databaseTable = [self databaseTable];
    v10 = [predicateCopy SQLForEntityClass:self];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_28408B690;
    }

    v13 = v12;

    v46 = v13;
    v14 = [(__CFString *)v13 length];
    v15 = @" AND ";
    if (!v14)
    {
      v15 = &stru_28408B690;
    }

    v45 = v15;
    v16 = [predicateCopy SQLJoinClausesForClass:self];
    v17 = [v16 mutableCopy];

    countCopy = count;
    if (count)
    {
      v19 = 0;
      propertiesCopy3 = properties;
      do
      {
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v21 = [self joinClausesForProperty:propertiesCopy3[v19]];
        v22 = [v21 countByEnumeratingWithState:&v51 objects:v55 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v52;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v52 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v51 + 1) + 8 * i);
              if (!v17)
              {
                v17 = objc_alloc_init(MEMORY[0x277CBEB40]);
              }

              [v17 addObject:v26];
            }

            v23 = [v21 countByEnumeratingWithState:&v51 objects:v55 count:16];
          }

          while (v23);
        }

        ++v19;
        propertiesCopy3 = properties;
      }

      while (v19 != countCopy);
    }

    else
    {
      propertiesCopy3 = properties;
    }

    if ([v17 count])
    {
      objectEnumerator = [v17 objectEnumerator];
      allObjects = [objectEnumerator allObjects];
      v35 = [allObjects componentsJoinedByString:@" "];
    }

    else
    {
      v35 = &stru_28408B690;
    }

    v36 = [self disambiguatedSelectSQLForProperty:*propertiesCopy3];
    v37 = v36;
    if (countCopy < 2)
    {
      v38 = v36;
    }

    else
    {
      v38 = [MEMORY[0x277CCAB68] stringWithString:v36];
      v39 = countCopy - 1;
      v40 = (propertiesCopy3 + 1);
      do
      {
        [v38 appendString:{@", "}];
        v41 = *v40++;
        v42 = [self disambiguatedSelectSQLForProperty:v41];
        [v38 appendString:v42];

        --v39;
      }

      while (v39);
    }

    v43 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT %@ FROM %@ %@ WHERE %@.ROWID = ?%@%@", v38, databaseTable, v35, databaseTable, v45, v46];
    v9 = v48;
    if (!predicateCopy && v48)
    {
      [v49 setObject:v43 forKey:v48];
    }

    v8 = v49;
    goto LABEL_42;
  }

  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v29 = [threadDictionary objectForKey:@"ML3EntityPropertySelectSQLCache"];
  if (!v29)
  {
    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [threadDictionary setObject:v29 forKey:@"ML3EntityPropertySelectSQLCache"];
  }

  v30 = NSStringFromClass(self);
  v8 = [v29 objectForKey:v30];

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v31 = NSStringFromClass(self);
    [v29 setObject:v8 forKey:v31];
  }

  if (count == 1)
  {
    v32 = *properties;
  }

  else
  {
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:properties count:count];
  }

  v9 = v32;
  v43 = [v8 objectForKey:v32];

  predicateCopy = 0;
  if (!v43)
  {
    goto LABEL_3;
  }

LABEL_42:

  return v43;
}

+ (id)newSelectAllEntitiesSQLForProperties:(const void *)properties count:(unint64_t)count predicate:(id)predicate
{
  v47 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  databaseTable = [self databaseTable];
  v9 = [predicateCopy SQLForEntityClass:self];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_28408B690;
  }

  v12 = v11;

  v38 = v12;
  v13 = [(__CFString *)v12 length];
  v14 = @" WHERE ";
  if (!v13)
  {
    v14 = &stru_28408B690;
  }

  v37 = v14;
  v40 = predicateCopy;
  selfCopy = self;
  v15 = [predicateCopy SQLJoinClausesForClass:self];
  v16 = [v15 mutableCopy];

  if (count)
  {
    v17 = 0;
    do
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      propertiesCopy = properties;
      v19 = [selfCopy joinClausesForProperty:properties[v17]];
      v20 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v43;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v43 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v42 + 1) + 8 * i);
            if (!v16)
            {
              v16 = objc_alloc_init(MEMORY[0x277CBEB40]);
            }

            [v16 addObject:v24];
          }

          v21 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v21);
      }

      ++v17;
      properties = propertiesCopy;
    }

    while (v17 != count);
  }

  if ([v16 count])
  {
    objectEnumerator = [v16 objectEnumerator];
    allObjects = [objectEnumerator allObjects];
    v27 = [allObjects componentsJoinedByString:@" "];
  }

  else
  {
    v27 = &stru_28408B690;
  }

  v28 = [selfCopy disambiguatedSelectSQLForProperty:*properties];
  v29 = v28;
  if (count < 2)
  {
    v30 = v28;
  }

  else
  {
    v30 = [MEMORY[0x277CCAB68] stringWithString:v28];
    v31 = count - 1;
    v32 = properties + 1;
    do
    {
      [v30 appendString:{@", "}];
      v33 = *v32++;
      v34 = [selfCopy disambiguatedSelectSQLForProperty:v33];
      [v30 appendString:v34];

      --v31;
    }

    while (v31);
  }

  v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT %@ FROM %@ %@%@%@", v30, databaseTable, v27, v37, v38];

  return v35;
}

+ (void)enumeratePersistentIDsInLibrary:(id)library matchingPredicate:(id)predicate orderingTerms:(id)terms persistentIDs:(const int64_t *)ds count:(unint64_t)count options:(int64_t)options usingBlock:(id)block
{
  v79 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  predicateCopy = predicate;
  termsCopy = terms;
  blockCopy = block;
  v19 = blockCopy;
  if (count)
  {
    countCopy = count;
    dsCopy = ds;
    v50 = blockCopy;
    databaseTable = [self databaseTable];
    v21 = objc_alloc_init(MEMORY[0x277CCAB68]);
    [v21 appendString:@"SELECT "];
    [v21 appendString:databaseTable];
    [v21 appendString:@".ROWID FROM "];
    v49 = databaseTable;
    [v21 appendString:databaseTable];
    v52 = libraryCopy;
    v46 = [self predicateIncludingSystemwidePredicatesWithPredicate:predicateCopy library:libraryCopy options:options];

    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v51 = termsCopy;
    v23 = termsCopy;
    v24 = [v23 countByEnumeratingWithState:&v72 objects:v78 count:16];
    obj = v23;
    selfCopy = self;
    if (v24)
    {
      v25 = v24;
      v26 = *v73;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v73 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v72 + 1) + 8 * i);
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          property = [v28 property];
          v30 = [self joinClausesForProperty:property];

          v31 = [v30 countByEnumeratingWithState:&v68 objects:v77 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v69;
            do
            {
              for (j = 0; j != v32; ++j)
              {
                if (*v69 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                [orderedSet addObject:*(*(&v68 + 1) + 8 * j)];
              }

              v32 = [v30 countByEnumeratingWithState:&v68 objects:v77 count:16];
            }

            while (v32);
          }

          self = selfCopy;
        }

        v23 = obj;
        v25 = [obj countByEnumeratingWithState:&v72 objects:v78 count:16];
      }

      while (v25);
    }

    v35 = v46;
    v36 = [v46 SQLJoinClausesForClass:self];
    if ([v36 count])
    {
      [orderedSet unionOrderedSet:v36];
    }

    v66 = 0u;
    v67 = 0u;
    v65 = 0u;
    v64 = 0u;
    v37 = orderedSet;
    v38 = [v37 countByEnumeratingWithState:&v64 objects:v76 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v65;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v65 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v64 + 1) + 8 * k);
          [v21 appendString:{@" ", v46}];
          [v21 appendString:v42];
        }

        v39 = [v37 countByEnumeratingWithState:&v64 objects:v76 count:16];
      }

      while (v39);
    }

    [v21 appendString:@" WHERE "];
    if (v35)
    {
      [v35 appendSQLToMutableString:v21 entityClass:selfCopy];
      [v21 appendString:@" AND "];
    }

    [v21 appendString:{v49, v46}];
    objc_msgSend(v21, "appendString:", @".ROWID IN (?");
    libraryCopy = v52;
    if (countCopy != 1)
    {
      v43 = 2;
      if (countCopy > 2)
      {
        v43 = countCopy;
      }

      v44 = v43 - 1;
      do
      {
        [v21 appendString:{@", ?"}];
        --v44;
      }

      while (v44);
    }

    [v21 appendString:@""]);
    if ([obj count])
    {
      [v21 appendString:@"ORDER BY "];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __116__ML3Entity_enumeratePersistentIDsInLibrary_matchingPredicate_orderingTerms_persistentIDs_count_options_usingBlock___block_invoke;
      v61[3] = &unk_27875CF90;
      v62 = v21;
      v63 = selfCopy;
      [obj enumerateObjectsUsingBlock:v61];
    }

    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __116__ML3Entity_enumeratePersistentIDsInLibrary_matchingPredicate_orderingTerms_persistentIDs_count_options_usingBlock___block_invoke_2;
    v55[3] = &unk_27875CFB8;
    predicateCopy = v35;
    v59 = countCopy;
    v60 = dsCopy;
    v56 = predicateCopy;
    v57 = v21;
    v19 = v50;
    v58 = v50;
    v45 = v21;
    [v52 databaseConnectionAllowingWrites:0 withBlock:v55];

    termsCopy = v51;
  }
}

void __116__ML3Entity_enumeratePersistentIDsInLibrary_matchingPredicate_orderingTerms_persistentIDs_count_options_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  [v5 appendSQLToMutableString:*(a1 + 32) entityClass:*(a1 + 40)];
}

void __116__ML3Entity_enumeratePersistentIDsInLibrary_matchingPredicate_orderingTerms_persistentIDs_count_options_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) databaseStatementParameters];
  v5 = [v4 mutableCopy];

  if (*(a1 + 56))
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*(a1 + 64) + 8 * v6)];
      [v5 addObject:v8];

      v6 = v7;
    }

    while (*(a1 + 56) > v7++);
  }

  v10 = [v3 executeQuery:*(a1 + 40) withParameters:v5];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __116__ML3Entity_enumeratePersistentIDsInLibrary_matchingPredicate_orderingTerms_persistentIDs_count_options_usingBlock___block_invoke_3;
  v11[3] = &unk_278760218;
  v12 = *(a1 + 48);
  [v10 enumerateRowsWithBlock:v11];
}

uint64_t __116__ML3Entity_enumeratePersistentIDsInLibrary_matchingPredicate_orderingTerms_persistentIDs_count_options_usingBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = 0;
  result = (*(*(a1 + 32) + 16))(*(a1 + 32), [a2 int64ForColumnIndex:0], &v6);
  *a4 = v6;
  return result;
}

+ (BOOL)incrementRevisionWithLibrary:(id)library persistentID:(int64_t)d deletionType:(int)type revisionType:(int)revisionType usingConnection:(id)connection
{
  v8 = *&revisionType;
  v9 = *&type;
  v33[4] = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  connectionCopy = connection;
  if (!v9 || !v8)
  {
    if (d)
    {
      goto LABEL_4;
    }

LABEL_12:
    if (MSVDeviceOSIsInternalInstall())
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ML3Entity.m" lineNumber:285 description:@"incrementRevisionWithLibrary called with invalid pid"];
    }

    goto LABEL_14;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"ML3Entity.m" lineNumber:282 description:{@"Wrong revision type for deletion type: %d, %d", v8, v9}];

  if (!d)
  {
    goto LABEL_12;
  }

LABEL_4:
  revisionTrackingCode = [self revisionTrackingCode];
  if (revisionTrackingCode == 0x7FFFFFFFFFFFFFFFLL)
  {
    LOBYTE(v16) = 1;
    goto LABEL_15;
  }

  v17 = revisionTrackingCode;
  if (![self _shouldIncrementRevisionForType:v8 persistentID:d usingConnection:connectionCopy])
  {
LABEL_14:
    LOBYTE(v16) = 0;
    goto LABEL_15;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  v33[0] = v18;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
  v33[1] = v19;
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
  v33[2] = v20;
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  v33[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  v16 = [connectionCopy executeUpdate:@"REPLACE INTO entity_revision (entity_pid withParameters:deleted error:{class, revision_type) VALUES (?, ?, ?, ?)", v22, 0}];

  if (!v8 && v16)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
    v32[0] = v23;
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
    v32[1] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    [connectionCopy executeUpdate:@"DELETE FROM entity_revision WHERE entity_pid=? AND revision_type > ?" withParameters:v25 error:0];
  }

  databasePath = [connectionCopy databasePath];
  v27 = [databasePath hash];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __97__ML3Entity_incrementRevisionWithLibrary_persistentID_deletionType_revisionType_usingConnection___block_invoke;
  v31[3] = &__block_descriptor_40_e8_v12__0B8l;
  v31[4] = v27;
  [connectionCopy enqueueBlockForTransactionCommit:v31];
LABEL_15:

  return v16;
}

void __97__ML3Entity_incrementRevisionWithLibrary_persistentID_deletionType_revisionType_usingConnection___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.medialibrary.entity-revision-changed::%zu", *(a1 + 32)];
    v2 = v3;
    notify_post([v3 UTF8String]);
  }
}

+ (BOOL)incrementRevisionWithLibrary:(id)library persistentID:(int64_t)d deletionType:(int)type revisionType:(int)revisionType
{
  libraryCopy = library;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__ML3Entity_incrementRevisionWithLibrary_persistentID_deletionType_revisionType___block_invoke;
  v13[3] = &unk_2787632C8;
  v15 = &v20;
  selfCopy = self;
  v11 = libraryCopy;
  v14 = v11;
  dCopy = d;
  typeCopy = type;
  revisionTypeCopy = revisionType;
  [v11 databaseConnectionAllowingWrites:1 withBlock:v13];
  LOBYTE(revisionType) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return revisionType;
}

void __81__ML3Entity_incrementRevisionWithLibrary_persistentID_deletionType_revisionType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() incrementRevisionWithLibrary:*(a1 + 32) persistentID:*(a1 + 56) deletionType:*(a1 + 64) revisionType:*(a1 + 68) usingConnection:v3];

  *(*(*(a1 + 40) + 8) + 24) = v4;
}

+ (BOOL)incrementRevisionForRevisionTypeContentWithConnection:(id)connection deletionType:(int)type persistentIDs:(const int64_t *)ds count:(unint64_t)count
{
  dsCopy = ds;
  v7 = *&type;
  connectionCopy = connection;
  if (count)
  {
    v9 = 0;
    do
    {
      v10 = objc_autoreleasePoolPush();
      if (count - v9 >= 0x1F4)
      {
        v11 = 500;
      }

      else
      {
        v11 = count - v9;
      }

      v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{v11, dsCopy}];
      v13 = v11 + v9;
      if (v11 + v9 >= count)
      {
        countCopy = count;
      }

      else
      {
        countCopy = v11 + v9;
      }

      v15 = v9 - countCopy;
      if (v9 < countCopy)
      {
        v16 = &dsCopy[v9];
        do
        {
          v17 = *v16++;
          v18 = [MEMORY[0x277CCABB0] numberWithLongLong:v17];
          [v12 addObject:v18];

          v20 = __CFADD__(v15++, 1);
        }

        while (!v20);
      }

      v19 = [self incrementRevisionForRevisionTypeContentWithConnection:connectionCopy deletionType:v7 persistentIDs:v12];

      objc_autoreleasePoolPop(v10);
      if (v19)
      {
        v20 = v13 >= count;
      }

      else
      {
        v20 = 1;
      }

      v9 = v13;
    }

    while (!v20);
  }

  else
  {
    LOBYTE(v19) = 1;
  }

  return v19;
}

+ (BOOL)incrementRevisionForRevisionTypeContentWithConnection:(id)connection deletionType:(int)type persistentIDs:(id)ds
{
  v6 = *&type;
  v89 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  dsCopy = ds;
  v10 = [dsCopy count];
  revisionTrackingCode = [self revisionTrackingCode];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:v10];
  if (revisionTrackingCode != 0x7FFFFFFFFFFFFFFFLL)
  {
    obj = v6;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v13 = dsCopy;
    v14 = dsCopy;
    v15 = [v14 countByEnumeratingWithState:&v80 objects:v88 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v81;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v81 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v80 + 1) + 8 * i);
          if ([self _shouldIncrementRevisionForType:0 persistentID:objc_msgSend(v19 usingConnection:{"longLongValue"), connectionCopy}])
          {
            [v12 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v80 objects:v88 count:16];
      }

      while (v16);
    }

    dsCopy = v13;
    v6 = obj;
  }

  v20 = [v12 count];
  if (v20)
  {
    v64 = v20;
    v62 = dsCopy;
    v21 = -1;
    v22 = 1;
    v61 = [&stru_28408B690 stringByPaddingToLength:500 * objc_msgSend(@" withString:(? startingAtIndex:{?, ?, ?)", "length") - 1, @", (?, ?, ?, ?)", 1}];
    deleted = [CFSTR(""REPLACE INTO entity_revision (entity_pid deleted];
    v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:2000];
    v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:revisionTrackingCode];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    obja = v12;
    v25 = [obja countByEnumeratingWithState:&v76 objects:v87 count:16];
    v65 = v24;
    v63 = v12;
    if (v25)
    {
      v26 = v25;
      v60 = -1;
      v27 = 0;
      v28 = 0;
      v29 = *v77;
      while (2)
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v77 != v29)
          {
            objc_enumerationMutation(obja);
          }

          v31 = *(*(&v76 + 1) + 8 * j);
          if ([v31 longLongValue])
          {
            [v23 addObject:v31];
            [v23 addObject:v69];
            [v23 addObject:v24];
            [v23 addObject:&unk_2840C8888];
            if ([v23 count] == 2000)
            {
              v75 = v27;
              v32 = [connectionCopy executeUpdate:deleted withParameters:v23 error:&v75];
              v33 = v75;

              if ((v32 & 1) == 0)
              {
                v38 = os_log_create("com.apple.amp.medialibrary", "Default");
                v35 = v28;
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v86 = v33;
                  _os_log_impl(&dword_22D2FA000, v38, OS_LOG_TYPE_DEFAULT, "Failed to insert batch of persistent ids in entity_revision, error = %{public}@", buf, 0xCu);
                }

                v22 = 0;
                v12 = v63;
                goto LABEL_35;
              }

              if ((v28 & 1) == 0)
              {
                v28 = 1;
              }

              [v23 removeAllObjects];
              v27 = v33;
              v24 = v65;
            }
          }

          else if (MSVDeviceOSIsInternalInstall())
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"ML3Entity.m" lineNumber:184 description:@"incrementRevisionForRevisionTypeContentWithConnection called with invalid pid"];
          }
        }

        v26 = [obja countByEnumeratingWithState:&v76 objects:v87 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }

      v22 = 1;
      v33 = v27;
      v12 = v63;
      v35 = v28;
LABEL_35:
      v21 = v60;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    if ([v23 count])
    {
      v39 = [&stru_28408B690 stringByPaddingToLength:v21 + (objc_msgSend(v23 withString:"count") >> 2) * objc_msgSend(@" startingAtIndex:{(?, ?, ?, ?)", "length"), @", (?, ?, ?, ?)", 1}];
      deleted2 = [CFSTR(""REPLACE INTO entity_revision (entity_pid deleted];
      v74 = v33;
      v41 = [connectionCopy executeUpdate:deleted2 withParameters:v23 error:&v74];
      v42 = v74;

      if (!v41)
      {
        v57 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v86 = v42;
          _os_log_impl(&dword_22D2FA000, v57, OS_LOG_TYPE_DEFAULT, "Failed to insert batch of persistent ids in entity_revision, error = %{public}@", buf, 0xCu);
        }

        v55 = 0;
        dsCopy = v62;
        v56 = v65;
        goto LABEL_56;
      }

      v35 = 1;
      v33 = v42;
    }

    else if (!v22)
    {
      goto LABEL_53;
    }

    LODWORD(v60) = v35;
    v43 = 0;
    v42 = v33;
    v44 = v64;
    do
    {
      v45 = v42;
      contexta = objc_autoreleasePoolPush();
      if (v44 - v43 >= 0x1F4)
      {
        v46 = 500;
      }

      else
      {
        v46 = v44 - v43;
      }

      v47 = +[ML3DatabaseStatementRenderer defaultRenderer];
      v48 = [v47 statementWithPrefix:@"DELETE FROM entity_revision WHERE revision_type > ? AND entity_pid" inParameterCount:v46];

      v49 = [obja subarrayWithRange:{v43, v46}];
      v84 = &unk_2840C8888;
      v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
      v51 = [v50 arrayByAddingObjectsFromArray:v49];

      v73 = v45;
      v52 = [connectionCopy executeUpdate:v48 withParameters:v51 error:&v73];
      v42 = v73;

      v44 = v64;
      objc_autoreleasePoolPop(contexta);
      if (!v52)
      {
        break;
      }

      v43 += v46;
    }

    while (v43 < v64);
    if (v52)
    {
      databasePath = [connectionCopy databasePath];
      v54 = [databasePath hash];

      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __94__ML3Entity_incrementRevisionForRevisionTypeContentWithConnection_deletionType_persistentIDs___block_invoke;
      v72[3] = &__block_descriptor_40_e8_v12__0B8l;
      v72[4] = v54;
      [connectionCopy enqueueBlockForTransactionCommit:v72];
      v55 = 1;
      dsCopy = v62;
      v12 = v63;
      v56 = v65;
      LOBYTE(v35) = v60;
LABEL_56:

      v37 = v55 & v35;
      goto LABEL_57;
    }

    v33 = v42;
    v12 = v63;
    LOBYTE(v35) = v60;
LABEL_53:
    v58 = os_log_create("com.apple.amp.medialibrary", "Default");
    dsCopy = v62;
    v56 = v65;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v86 = v33;
      _os_log_impl(&dword_22D2FA000, v58, OS_LOG_TYPE_DEFAULT, "Failed to delete persistent ids in entity_revision, error = %{public}@", buf, 0xCu);
    }

    v55 = 0;
    v42 = v33;
    goto LABEL_56;
  }

  v36 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v36, OS_LOG_TYPE_DEBUG, "No entities for which to increment revision numbers.", buf, 2u);
  }

  v37 = 0;
LABEL_57:

  return v37;
}

void __94__ML3Entity_incrementRevisionForRevisionTypeContentWithConnection_deletionType_persistentIDs___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.medialibrary.entity-revision-changed::%zu", *(a1 + 32)];
    v2 = v3;
    notify_post([v3 UTF8String]);
  }
}

+ (BOOL)incrementRevisionForRevisionTypeContentWithLibrary:(id)library deletionType:(int)type persistentIDs:(id)ds
{
  libraryCopy = library;
  dsCopy = ds;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__ML3Entity_incrementRevisionForRevisionTypeContentWithLibrary_deletionType_persistentIDs___block_invoke;
  v12[3] = &unk_27875CEF0;
  v14 = &v17;
  selfCopy = self;
  typeCopy = type;
  v10 = dsCopy;
  v13 = v10;
  [libraryCopy performDatabaseTransactionWithBlock:v12];
  LOBYTE(type) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return type;
}

+ (BOOL)_shouldIncrementRevisionForType:(int)type persistentID:(int64_t)d usingConnection:(id)connection
{
  connectionCopy = connection;
  revisionTrackingCode = [self revisionTrackingCode];
  if (revisionTrackingCode == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else if (type && revisionTrackingCode == +[ML3Track revisionTrackingCode])
  {
    v10 = [ML3Track trackWithPersistentID:d existsInLibraryWithConnection:connectionCopy];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

+ (BOOL)insertValues:(id)values intoTable:(id)table persistentID:(int64_t)d connection:(id)connection
{
  v50 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  tableCopy = table;
  connectionCopy = connection;
  v12 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v12 appendString:@"INSERT OR REPLACE INTO "];
  [v12 appendString:tableCopy];
  objc_msgSend(v12, "appendString:", @" (");
  v39 = tableCopy;
  v13 = [self persistentIDColumnForTable:tableCopy];
  v14 = v13;
  v15 = @"ROWID";
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  v37 = v16;
  [v12 appendString:v16];
  allKeys = [valuesCopy allKeys];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v18 = [allKeys countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v45;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v45 != v20)
        {
          objc_enumerationMutation(allKeys);
        }

        v22 = *(*(&v44 + 1) + 8 * i);
        [v12 appendString:{@", "}];
        [v12 appendString:v22];
      }

      v19 = [allKeys countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v19);
  }

  [v12 appendString:@") VALUES (?"];
  if ([allKeys count])
  {
    v23 = 0;
    do
    {
      [v12 appendString:{@", ?"}];
      ++v23;
    }

    while (v23 < [allKeys count]);
  }

  [v12 appendString:@";"]);
  v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(allKeys, "count") + 1}];
  v25 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  [v24 addObject:v25];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v26 = allKeys;
  v27 = [v26 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v41;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [valuesCopy objectForKey:*(*(&v40 + 1) + 8 * j)];
        v32 = v31;
        if (v31)
        {
          null = v31;
        }

        else
        {
          null = [MEMORY[0x277CBEB68] null];
        }

        v34 = null;

        [v24 addObject:v34];
      }

      v28 = [v26 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v28);
  }

  v35 = [connectionCopy executeUpdate:v12 withParameters:v24 error:0];
  return v35;
}

+ (BOOL)insertValues:(id)values intoTable:(id)table persistentID:(int64_t)d library:(id)library
{
  valuesCopy = values;
  tableCopy = table;
  libraryCopy = library;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__ML3Entity_insertValues_intoTable_persistentID_library___block_invoke;
  v16[3] = &unk_27875CEC8;
  v19 = &v22;
  selfCopy = self;
  v13 = valuesCopy;
  v17 = v13;
  v14 = tableCopy;
  v18 = v14;
  dCopy = d;
  [libraryCopy databaseConnectionAllowingWrites:1 withBlock:v16];
  LOBYTE(d) = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return d;
}

void __57__ML3Entity_insertValues_intoTable_persistentID_library___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() insertValues:a1[4] intoTable:a1[5] persistentID:a1[8] connection:v3];

  *(*(a1[6] + 8) + 24) = v4;
}

+ (id)unrestrictedAllItemsQueryWithlibrary:(id)withlibrary predicate:(id)predicate orderingTerms:(id)terms
{
  withlibraryCopy = withlibrary;
  predicateCopy = predicate;
  termsCopy = terms;
  v11 = [[ML3Query alloc] initWithLibrary:withlibraryCopy entityClass:self predicate:predicateCopy orderingTerms:termsCopy usingSections:0 nonDirectAggregateQuery:0 propertyToCount:0 options:7];

  return v11;
}

+ (id)allItemsQueryWithLibrary:(id)library predicate:(id)predicate orderingTerms:(id)terms usingSections:(BOOL)sections
{
  sectionsCopy = sections;
  libraryCopy = library;
  predicateCopy = predicate;
  termsCopy = terms;
  v13 = [[ML3Query alloc] initWithLibrary:libraryCopy entityClass:self predicate:predicateCopy orderingTerms:termsCopy usingSections:sectionsCopy nonDirectAggregateQuery:0 propertyToCount:0 options:4];

  return v13;
}

+ (id)unrestrictedQueryWithLibrary:(id)library predicate:(id)predicate orderingTerms:(id)terms
{
  libraryCopy = library;
  predicateCopy = predicate;
  termsCopy = terms;
  v11 = [[ML3Query alloc] initWithLibrary:libraryCopy entityClass:self predicate:predicateCopy orderingTerms:termsCopy usingSections:0 nonDirectAggregateQuery:0 propertyToCount:0 options:3];

  return v11;
}

+ (id)queryWithLibrary:(id)library predicate:(id)predicate orderingTerms:(id)terms usingSections:(BOOL)sections options:(int64_t)options
{
  sectionsCopy = sections;
  libraryCopy = library;
  predicateCopy = predicate;
  termsCopy = terms;
  v15 = [[ML3Query alloc] initWithLibrary:libraryCopy entityClass:self predicate:predicateCopy orderingTerms:termsCopy usingSections:sectionsCopy nonDirectAggregateQuery:0 propertyToCount:0 options:options];

  return v15;
}

+ (id)queryWithLibrary:(id)library predicate:(id)predicate orderingTerms:(id)terms usingSections:(BOOL)sections
{
  sectionsCopy = sections;
  libraryCopy = library;
  predicateCopy = predicate;
  termsCopy = terms;
  v13 = [[ML3Query alloc] initWithLibrary:libraryCopy entityClass:self predicate:predicateCopy orderingTerms:termsCopy usingSections:sectionsCopy nonDirectAggregateQuery:0 propertyToCount:0 options:0];

  return v13;
}

+ (id)queryWithLibrary:(id)library predicate:(id)predicate orderingTerms:(id)terms propertyToCount:(id)count options:(int64_t)options
{
  libraryCopy = library;
  predicateCopy = predicate;
  termsCopy = terms;
  countCopy = count;
  v16 = [[ML3Query alloc] initWithLibrary:libraryCopy entityClass:self predicate:predicateCopy orderingTerms:termsCopy usingSections:0 nonDirectAggregateQuery:0 propertyToCount:countCopy options:options];

  return v16;
}

+ (id)queryWithLibrary:(id)library predicate:(id)predicate orderingTerms:(id)terms propertyToCount:(id)count
{
  libraryCopy = library;
  predicateCopy = predicate;
  termsCopy = terms;
  countCopy = count;
  v14 = [[ML3Query alloc] initWithLibrary:libraryCopy entityClass:self predicate:predicateCopy orderingTerms:termsCopy usingSections:0 nonDirectAggregateQuery:0 propertyToCount:countCopy options:0];

  return v14;
}

+ (id)queryWithLibrary:(id)library predicate:(id)predicate orderingTerms:(id)terms
{
  libraryCopy = library;
  predicateCopy = predicate;
  termsCopy = terms;
  v11 = [[ML3Query alloc] initWithLibrary:libraryCopy entityClass:self predicate:predicateCopy orderingTerms:termsCopy usingSections:0 nonDirectAggregateQuery:0 propertyToCount:0 options:0];

  return v11;
}

+ (id)queryWithLibrary:(id)library predicate:(id)predicate usingSections:(BOOL)sections
{
  sectionsCopy = sections;
  libraryCopy = library;
  predicateCopy = predicate;
  defaultOrderingTerms = [self defaultOrderingTerms];
  v11 = [[ML3Query alloc] initWithLibrary:libraryCopy entityClass:self predicate:predicateCopy orderingTerms:defaultOrderingTerms usingSections:sectionsCopy nonDirectAggregateQuery:0 propertyToCount:0 options:0];

  return v11;
}

+ (id)queryWithLibrary:(id)library predicate:(id)predicate options:(int64_t)options
{
  libraryCopy = library;
  predicateCopy = predicate;
  defaultOrderingTerms = [self defaultOrderingTerms];
  v11 = [self queryWithLibrary:libraryCopy predicate:predicateCopy orderingTerms:defaultOrderingTerms usingSections:0 options:options];

  return v11;
}

+ (id)queryWithLibrary:(id)library predicate:(id)predicate
{
  libraryCopy = library;
  predicateCopy = predicate;
  defaultOrderingTerms = [self defaultOrderingTerms];
  v9 = [self queryWithLibrary:libraryCopy predicate:predicateCopy orderingTerms:defaultOrderingTerms usingSections:0];

  return v9;
}

+ (id)queryWithLibrary:(id)library predicate:(id)predicate orderingProperties:(id)properties orderingDirectionMappings:(id)mappings usingSections:(BOOL)sections
{
  v7 = [self queryWithLibrary:library predicate:predicate usingSections:{sections, mappings}];

  return v7;
}

+ (id)queryWithLibrary:(id)library predicate:(id)predicate orderingProperties:(id)properties usingSections:(BOOL)sections
{
  v6 = [self queryWithLibrary:library predicate:predicate usingSections:sections];

  return v6;
}

+ (id)queryWithLibrary:(id)library predicate:(id)predicate orderingProperties:(id)properties
{
  v5 = [self queryWithLibrary:library predicate:{predicate, properties}];

  return v5;
}

+ (id)anyInLibrary:(id)library predicate:(id)predicate options:(int64_t)options
{
  libraryCopy = library;
  predicateCopy = predicate;
  v10 = [[ML3Query alloc] initWithLibrary:libraryCopy entityClass:self predicate:predicateCopy orderingTerms:0 usingSections:0 nonDirectAggregateQuery:0 propertyToCount:0 options:options];
  anyEntityPersistentID = [(ML3Query *)v10 anyEntityPersistentID];
  if (anyEntityPersistentID)
  {
    v12 = [objc_alloc(objc_opt_class()) initWithPersistentID:anyEntityPersistentID inLibrary:libraryCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)anyInLibrary:(id)library predicate:(id)predicate
{
  libraryCopy = library;
  predicateCopy = predicate;
  v7 = [objc_opt_class() anyInLibrary:libraryCopy predicate:predicateCopy options:0];

  return v7;
}

+ (id)predicateIncludingSystemwidePredicatesWithPredicate:(id)predicate library:(id)library options:(int64_t)options
{
  optionsCopy = options;
  predicateCopy = predicate;
  libraryCopy = library;
  array = [MEMORY[0x277CBEB18] array];
  defaultFilterPredicates = [self defaultFilterPredicates];
  [array addObjectsFromArray:defaultFilterPredicates];

  if (optionsCopy)
  {
    goto LABEL_7;
  }

  if (objc_opt_class() != self)
  {
    v12 = [libraryCopy libraryEntityFilterPredicatesForEntityClass:self];
    if (v12)
    {
      [array addObjectsFromArray:v12];
    }
  }

  if (objc_opt_class() != self)
  {
LABEL_7:
    if ((optionsCopy & 2) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v14 = [libraryCopy libraryEntityFilterPredicatesForContainerClass:self];
  if (v14)
  {
    [array addObjectsFromArray:v14];
  }

  if ((optionsCopy & 2) == 0)
  {
LABEL_8:
    if (objc_opt_class() == self && [libraryCopy mediaRestrictionEnabled])
    {
      v13 = [ML3ComparisonPredicate predicateWithProperty:@"ML3IsCurrentlyRestrictedMedia(item.media_type equalToInteger:item_extra.content_rating, item_extra.content_rating_level, (SELECT value FROM _MLDatabaseProperties WHERE key='MPExplicitContentAllowedBoolean'))", 0];
      [array addObject:v13];
    }
  }

LABEL_14:
  if ((optionsCopy & 8) != 0 && objc_opt_class() == self)
  {
    v16 = [ML3PropertyPredicate predicateWithProperty:@"(item.base_location_id OR item.remote_location_id)"];
    [array addObject:v16];

    if ((optionsCopy & 4) != 0)
    {
      goto LABEL_20;
    }
  }

  else if ((optionsCopy & 4) != 0)
  {
    goto LABEL_20;
  }

  if (objc_opt_class() != self)
  {
    v15 = [ML3PropertyPredicate predicateWithProperty:@"in_my_library"];
    [array addObject:v15];
  }

LABEL_20:
  if (predicateCopy)
  {
    [array addObject:predicateCopy];
  }

  if ([array count] >= 2)
  {
    lastObject = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:array];
LABEL_26:
    v18 = lastObject;
    goto LABEL_28;
  }

  if ([array count] == 1)
  {
    lastObject = [array lastObject];
    goto LABEL_26;
  }

  v18 = 0;
LABEL_28:

  return v18;
}

+ (id)aggregateQueryWithUnitQuery:(id)query foreignPersistentIDProperty:(id)property
{
  propertyCopy = property;
  queryCopy = query;
  v8 = [[ML3AggregateQuery alloc] initWithUnitQuery:queryCopy aggregateEntityClass:self foreignPersistentIDProperty:propertyCopy];

  return v8;
}

@end