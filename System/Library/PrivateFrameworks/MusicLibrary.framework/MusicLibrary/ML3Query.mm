@interface ML3Query
- (BOOL)deleteAllEntitiesFromLibraryWithDeletionType:(int)type;
- (BOOL)deleteAllEntitiesFromLibraryWithDeletionType:(int)type usingConnection:(id)connection;
- (BOOL)hasRowForColumn:(id)column;
- (BOOL)isEqual:(id)equal;
- (ML3Predicate)predicateIncludingSystemwidePredicates;
- (ML3Query)initWithCoder:(id)coder;
- (ML3Query)initWithLibrary:(id)library entityClass:(Class)class predicate:(id)predicate orderingTerms:(id)terms usingSections:(BOOL)sections nonDirectAggregateQuery:(id)query propertyToCount:(id)count options:(int64_t)self0;
- (NSString)sectionProperty;
- (NSString)selectCountSQL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)countStatementParameters;
- (id)description;
- (id)enumerationDatabaseResultForSQL:(id)l onConnection:(id)connection withParameters:(id)parameters;
- (id)lowerBoundParametersForOrderingTerms:(id)terms lowerBoundPersistentID:(int64_t)d;
- (id)nameOrderPropertyForProperty:(id)property;
- (id)persistentIDParameters;
- (id)reverseQuery;
- (id)sections;
- (id)sectionsParameters;
- (id)selectPersistentIDsSQLAndProperties:(id)properties ordered:(BOOL)ordered;
- (id)selectPersistentIDsSQLAndProperties:(id)properties ordered:(BOOL)ordered distinct:(BOOL)distinct;
- (id)selectSQLWithColumns:(id)columns groupBy:(id)by;
- (id)selectSQLWithColumns:(id)columns groupBy:(id)by distinct:(BOOL)distinct;
- (id)selectSQLWithColumns:(id)columns groupBy:(id)by orderingTerms:(id)terms;
- (id)selectSQLWithColumns:(id)columns groupBy:(id)by orderingTerms:(id)terms directionality:(id)directionality usingLowerBound:(BOOL)bound;
- (id)selectSQLWithColumns:(id)columns groupBy:(id)by orderingTerms:(id)terms directionality:(id)directionality usingLowerBound:(BOOL)bound distinct:(BOOL)distinct limit:(unint64_t)limit;
- (id)selectSQLWithColumns:(id)columns groupBy:(id)by orderingTerms:(id)terms limit:(unint64_t)limit;
- (id)selectSQLWithColumns:(id)columns orderingTerms:(id)terms;
- (id)selectSQLWithColumns:(id)columns orderingTerms:(id)terms directionality:(id)directionality;
- (id)selectSQLWithColumns:(id)columns orderingTerms:(id)terms distinct:(BOOL)distinct;
- (id)selectSQLWithColumns:(id)columns orderingTerms:(id)terms limit:(unint64_t)limit;
- (id)selectSectionsSQL;
- (id)valueForAggregateFunction:(id)function onEntitiesForProperty:(id)property;
- (int64_t)anyEntityPersistentID;
- (unint64_t)countOfDistinctRowsForColumn:(id)column;
- (void)encodeWithCoder:(id)coder;
- (void)enumeratePersistentIDsAndProperties:(id)properties ordered:(BOOL)ordered cancelBlock:(id)block usingBlock:(id)usingBlock;
- (void)enumeratePersistentIDsAndProperties:(id)properties ordered:(BOOL)ordered sectionProperty:(id)property cancelBlock:(id)block usingBlock:(id)usingBlock;
- (void)enumeratePersistentIDsAndProperties:(id)properties ordered:(BOOL)ordered usingBlock:(id)block;
- (void)enumeratePersistentIDsAndProperties:(id)properties usingBlock:(id)block;
- (void)enumeratePersistentIDsAndSectionsWithProperty:(id)property usingBlock:(id)block;
- (void)enumeratePersistentIDsUsingBlock:(id)block;
- (void)enumerateSectionsUsingBlock:(id)block;
- (void)loadNamesFromLibrary:(id)library onConnection:(id)connection forPredicate:(id)predicate loadAllNames:(BOOL)names cancelHandler:(id)handler;
- (void)setIgnoreRestrictionsPredicates:(BOOL)predicates;
@end

@implementation ML3Query

- (NSString)sectionProperty
{
  if (self->_usingSections && [(NSArray *)self->_orderingTerms count])
  {
    v3 = [(NSArray *)self->_orderingTerms objectAtIndex:0];
    property = [v3 property];

    if (property)
    {
      v5 = [(objc_class *)self->_entityClass sectionPropertyForProperty:property];
      goto LABEL_7;
    }
  }

  else
  {
    property = 0;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (ML3Predicate)predicateIncludingSystemwidePredicates
{
  if ([(objc_class *)self->_entityClass isSubclassOfClass:objc_opt_class()])
  {
    v3 = [(objc_class *)self->_entityClass predicateIncludingSystemwidePredicatesWithPredicate:self->_predicate library:self->_library options:self->_options];
  }

  else
  {
    v3 = self->_predicate;
  }

  return v3;
}

- (id)persistentIDParameters
{
  entityClass = self->_entityClass;
  if (entityClass == objc_opt_class() || (v4 = self->_entityClass, v4 == objc_opt_class()))
  {
    predicateIncludingSystemwidePredicates = [(ML3Query *)self predicateIncludingSystemwidePredicates];
  }

  else
  {
    predicateIncludingSystemwidePredicates = [(ML3Query *)self predicate];
  }

  v6 = predicateIncludingSystemwidePredicates;
  databaseStatementParameters = [predicateIncludingSystemwidePredicates databaseStatementParameters];

  return databaseStatementParameters;
}

- (id)countStatementParameters
{
  predicateIncludingSystemwidePredicates = [(ML3Query *)self predicateIncludingSystemwidePredicates];
  databaseStatementParameters = [predicateIncludingSystemwidePredicates databaseStatementParameters];

  return databaseStatementParameters;
}

- (NSString)selectCountSQL
{
  v3 = [MEMORY[0x277CBEA60] arrayWithObject:@"COUNT(1)"];
  v4 = [(ML3Query *)self selectSQLWithColumns:v3 orderingTerms:0];

  return v4;
}

- (id)selectPersistentIDsSQLAndProperties:(id)properties ordered:(BOOL)ordered distinct:(BOOL)distinct
{
  distinctCopy = distinct;
  orderedCopy = ordered;
  v25 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(propertiesCopy, "count") + 1}];
  entityClass = self->_entityClass;
  persistentIDProperty = [(ML3Query *)self persistentIDProperty];
  v11 = [(objc_class *)entityClass disambiguatedSQLForProperty:persistentIDProperty];

  [v8 addObject:v11];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = propertiesCopy;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [(objc_class *)self->_entityClass disambiguatedSQLForProperty:*(*(&v20 + 1) + 8 * i)];
        [v8 addObject:v16];
      }

      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  if (orderedCopy)
  {
    [(ML3Query *)self selectSQLWithColumns:v8 groupBy:0 distinct:distinctCopy];
  }

  else
  {
    [(ML3Query *)self selectSQLWithColumns:v8 orderingTerms:0 distinct:distinctCopy];
  }
  v17 = ;

  return v17;
}

- (id)selectPersistentIDsSQLAndProperties:(id)properties ordered:(BOOL)ordered
{
  v4 = [(ML3Query *)self selectPersistentIDsSQLAndProperties:properties ordered:ordered distinct:0];

  return v4;
}

- (id)sectionsParameters
{
  entityClass = self->_entityClass;
  if (entityClass == objc_opt_class() || (v4 = self->_entityClass, v4 == objc_opt_class()))
  {
    predicateIncludingSystemwidePredicates = [(ML3Query *)self predicateIncludingSystemwidePredicates];
  }

  else
  {
    predicateIncludingSystemwidePredicates = [(ML3Query *)self predicate];
  }

  v6 = predicateIncludingSystemwidePredicates;
  databaseStatementParameters = [predicateIncludingSystemwidePredicates databaseStatementParameters];

  return databaseStatementParameters;
}

- (id)selectSectionsSQL
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  persistentIDProperty = [(ML3Query *)self persistentIDProperty];
  v5 = [(objc_class *)self->_entityClass disambiguatedSQLForProperty:persistentIDProperty];
  if (self->_limit)
  {
    sectionsPersistentIDColumnIsDistinct = [(ML3Query *)self sectionsPersistentIDColumnIsDistinct];
    limit = self->_limit;
    if (sectionsPersistentIDColumnIsDistinct)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"MIN(COUNT(DISTINCT %@), %lu)", v5, limit];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"MIN(COUNT(%@), %lu)", v5, limit];
    }
  }

  else if ([(ML3Query *)self sectionsPersistentIDColumnIsDistinct])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"COUNT(DISTINCT %@)", v5];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"COUNT(%@)", v5];
  }
  v8 = ;
  [v3 addObject:v8];

  sectionProperty = [(ML3Query *)self sectionProperty];
  if (sectionProperty)
  {
    v10 = [(objc_class *)self->_entityClass disambiguatedSQLForProperty:sectionProperty];
    [v3 addObject:v10];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(ML3Query *)self selectSQLWithColumns:v3 groupBy:v10 orderingTerms:0 limit:0];

  return v11;
}

- (id)selectSQLWithColumns:(id)columns groupBy:(id)by orderingTerms:(id)terms directionality:(id)directionality usingLowerBound:(BOOL)bound distinct:(BOOL)distinct limit:(unint64_t)limit
{
  distinctCopy = distinct;
  boundCopy = bound;
  v92 = *MEMORY[0x277D85DE8];
  columnsCopy = columns;
  byCopy = by;
  termsCopy = terms;
  directionalityCopy = directionality;
  string = [MEMORY[0x277CCAB68] string];
  v58 = string;
  databaseTable = [(objc_class *)self->_entityClass databaseTable];
  entityClass = self->_entityClass;
  if (entityClass == objc_opt_class() || (v16 = self->_entityClass, v16 == objc_opt_class()))
  {
    predicateIncludingSystemwidePredicates = [(ML3Query *)self predicateIncludingSystemwidePredicates];
  }

  else
  {
    predicateIncludingSystemwidePredicates = [(ML3Query *)self predicate];
  }

  v18 = predicateIncludingSystemwidePredicates;
  v52 = predicateIncludingSystemwidePredicates;
  [string appendString:@"SELECT "];
  if (distinctCopy)
  {
    [string appendString:@"DISTINCT "];
  }

  v19 = [columnsCopy componentsJoinedByString:{@", "}];
  [string appendString:v19];

  [string appendString:@" FROM "];
  [string appendString:databaseTable];
  v20 = objc_alloc(MEMORY[0x277CBEB40]);
  v21 = [v18 SQLJoinClausesForClass:self->_entityClass];
  v22 = [v20 initWithOrderedSet:v21];

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = termsCopy;
  v23 = [obj countByEnumeratingWithState:&v83 objects:v91 count:16];
  if (v23)
  {
    v24 = *v84;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v84 != v24)
        {
          objc_enumerationMutation(obj);
        }

        property = [*(*(&v83 + 1) + 8 * i) property];
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v27 = [(objc_class *)self->_entityClass joinClausesForProperty:property];
        v28 = [v27 countByEnumeratingWithState:&v79 objects:v90 count:16];
        if (v28)
        {
          v29 = *v80;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v80 != v29)
              {
                objc_enumerationMutation(v27);
              }

              [v22 addObject:*(*(&v79 + 1) + 8 * j)];
            }

            v28 = [v27 countByEnumeratingWithState:&v79 objects:v90 count:16];
          }

          while (v28);
        }
      }

      v23 = [obj countByEnumeratingWithState:&v83 objects:v91 count:16];
    }

    while (v23);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v31 = columnsCopy;
  v32 = [v31 countByEnumeratingWithState:&v75 objects:v89 count:16];
  if (v32)
  {
    v33 = *v76;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v76 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = *(*(&v75 + 1) + 8 * k);
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v36 = [(objc_class *)self->_entityClass joinClausesForProperty:v35];
        v37 = [v36 countByEnumeratingWithState:&v71 objects:v88 count:16];
        if (v37)
        {
          v38 = *v72;
          do
          {
            for (m = 0; m != v37; ++m)
            {
              if (*v72 != v38)
              {
                objc_enumerationMutation(v36);
              }

              [v22 addObject:*(*(&v71 + 1) + 8 * m)];
            }

            v37 = [v36 countByEnumeratingWithState:&v71 objects:v88 count:16];
          }

          while (v37);
        }
      }

      v32 = [v31 countByEnumeratingWithState:&v75 objects:v89 count:16];
    }

    while (v32);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v40 = v22;
  v41 = [v40 countByEnumeratingWithState:&v67 objects:v87 count:16];
  if (v41)
  {
    v42 = *v68;
    do
    {
      for (n = 0; n != v41; ++n)
      {
        if (*v68 != v42)
        {
          objc_enumerationMutation(v40);
        }

        v44 = *(*(&v67 + 1) + 8 * n);
        [v58 appendString:@" "];
        [v58 appendString:v44];
      }

      v41 = [v40 countByEnumeratingWithState:&v67 objects:v87 count:16];
    }

    while (v41);
  }

  v45 = v58;
  if (v52)
  {
    [v58 appendString:@" WHERE "];
    [v52 appendSQLToMutableString:v58 entityClass:self->_entityClass];
  }

  if (boundCopy && [obj count])
  {
    objc_msgSend(v58, "appendString:", @" AND (");
    v46 = [obj count];
    if (v46)
    {
      for (ii = 0; ii != v46; ++ii)
      {
        if (ii)
        {
          [v58 appendString:@" OR "];
        }

        objc_msgSend(v58, "appendString:", @"(");
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __101__ML3Query_selectSQLWithColumns_groupBy_orderingTerms_directionality_usingLowerBound_distinct_limit___block_invoke;
        v62[3] = &unk_278760420;
        v66 = ii;
        v48 = v58;
        v63 = v48;
        selfCopy = self;
        v65 = directionalityCopy;
        [obj enumerateObjectsUsingBlock:v62];
        [v48 appendString:@""]);
      }
    }

    v45 = v58;
    [v58 appendString:@""]);
  }

  if (byCopy)
  {
    [v45 appendString:@" GROUP BY "];
    [v45 appendString:byCopy];
    [v45 appendString:@" ORDER BY "];
    [v45 appendString:byCopy];
  }

  else if ([obj count])
  {
    [v45 appendString:@" ORDER BY "];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __101__ML3Query_selectSQLWithColumns_groupBy_orderingTerms_directionality_usingLowerBound_distinct_limit___block_invoke_2;
    v59[3] = &unk_278760448;
    v60 = v45;
    selfCopy2 = self;
    [obj enumerateObjectsUsingBlock:v59];

    v45 = v58;
  }

  if (limit)
  {
    [v45 appendFormat:@" LIMIT %lu", limit];
  }

  return v58;
}

void __101__ML3Query_selectSQLWithColumns_groupBy_orderingTerms_directionality_usingLowerBound_distinct_limit___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (*(a1 + 56) < a3)
  {
    *a4 = 1;
    goto LABEL_16;
  }

  v14 = v7;
  if (a3)
  {
    [*(a1 + 32) appendString:@" AND "];
  }

  v8 = [v14 property];
  v9 = *(a1 + 32);
  v10 = [*(*(a1 + 40) + 16) disambiguatedSQLForProperty:v8];
  [v9 appendString:v10];

  if (*(a1 + 56) == a3)
  {
    v11 = [*(a1 + 48) count];
    if (v11 > a3 && ([*(a1 + 48) objectAtIndex:a3], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "uppercaseString"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "isEqualToString:", @"DESC")))
    {
    }

    else
    {
      v13 = [v14 direction];
      if (v11 > a3)
      {
      }

      if (v13 != 2)
      {
        v12 = @" > ";
        goto LABEL_15;
      }
    }

    v12 = @" < ";
  }

  else
  {
    v12 = @" = ";
  }

LABEL_15:
  [*(a1 + 32) appendString:v12];
  [*(a1 + 32) appendString:@"?"];

  v7 = v14;
LABEL_16:
}

void __101__ML3Query_selectSQLWithColumns_groupBy_orderingTerms_directionality_usingLowerBound_distinct_limit___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  [v5 appendSQLToMutableString:*(a1 + 32) entityClass:*(*(a1 + 40) + 16)];
}

- (id)lowerBoundParametersForOrderingTerms:(id)terms lowerBoundPersistentID:(int64_t)d
{
  v40 = *MEMORY[0x277D85DE8];
  termsCopy = terms;
  array = [MEMORY[0x277CBEB18] array];
  string = [MEMORY[0x277CCAB68] string];
  databaseTable = [(objc_class *)self->_entityClass databaseTable];
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  [string appendString:@"SELECT "];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __72__ML3Query_lowerBoundParametersForOrderingTerms_lowerBoundPersistentID___block_invoke;
  v35[3] = &unk_2787603A8;
  v6 = string;
  v36 = v6;
  selfCopy = self;
  v7 = orderedSet;
  v38 = v7;
  [termsCopy enumerateObjectsUsingBlock:v35];
  [v6 appendString:@" FROM "];
  [v6 appendString:databaseTable];
  if ([v7 count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v9)
    {
      v10 = *v32;
      do
      {
        v11 = 0;
        do
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v31 + 1) + 8 * v11);
          [v6 appendString:@" "];
          [v6 appendString:v12];
          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v9);
    }
  }

  [v6 appendString:@" WHERE "];
  databaseTable2 = [(objc_class *)self->_entityClass databaseTable];
  [v6 appendString:databaseTable2];

  [v6 appendString:@".ROWID = ?"];
  library = self->_library;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __72__ML3Query_lowerBoundParametersForOrderingTerms_lowerBoundPersistentID___block_invoke_2;
  v26[3] = &unk_2787603F8;
  v15 = v6;
  v27 = v15;
  dCopy = d;
  v16 = termsCopy;
  v28 = v16;
  v17 = array;
  v29 = v17;
  [(ML3MusicLibrary *)library databaseConnectionAllowingWrites:0 withBlock:v26];
  v18 = v29;
  v19 = v17;

  return v17;
}

void __72__ML3Query_lowerBoundParametersForOrderingTerms_lowerBoundPersistentID___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  [v5 appendSQLToMutableString:*(a1 + 32) entityClass:*(*(a1 + 40) + 16)];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(*(a1 + 40) + 16);
  v7 = [v5 property];
  v8 = [v6 joinClausesForProperty:v7];

  v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(a1 + 48) addObject:*(*(&v12 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

void __72__ML3Query_lowerBoundParametersForOrderingTerms_lowerBoundPersistentID___block_invoke_2(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 56)];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [v3 executeQuery:v4 withParameters:v6];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__ML3Query_lowerBoundParametersForOrderingTerms_lowerBoundPersistentID___block_invoke_3;
  v8[3] = &unk_278763E40;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  [v7 enumerateRowsWithBlock:v8];
}

void __72__ML3Query_lowerBoundParametersForOrderingTerms_lowerBoundPersistentID___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) count];
  if (v7)
  {
    v8 = 0;
    v9 = MEMORY[0x277D85DD0];
    do
    {
      v10 = *(a1 + 32);
      v11[0] = v9;
      v11[1] = 3221225472;
      v11[2] = __72__ML3Query_lowerBoundParametersForOrderingTerms_lowerBoundPersistentID___block_invoke_4;
      v11[3] = &unk_2787603D0;
      v14 = v8;
      v12 = v6;
      v13 = *(a1 + 40);
      [v10 enumerateObjectsUsingBlock:v11];

      ++v8;
    }

    while (v7 != v8);
  }

  *a4 = 1;
}

void __72__ML3Query_lowerBoundParametersForOrderingTerms_lowerBoundPersistentID___block_invoke_4(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  if (*(a1 + 48) >= a3)
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:?];
    v6 = *(a1 + 40);
    v7 = v5;
    v9 = v5;
    if (!v5)
    {
      v7 = [MEMORY[0x277CBEB68] null];
    }

    [v6 addObject:v7];
    v8 = v9;
    if (!v9)
    {

      v8 = 0;
    }
  }

  else
  {
    *a4 = 1;
  }
}

- (id)selectSQLWithColumns:(id)columns groupBy:(id)by orderingTerms:(id)terms directionality:(id)directionality usingLowerBound:(BOOL)bound
{
  v7 = [(ML3Query *)self selectSQLWithColumns:columns groupBy:by orderingTerms:terms directionality:directionality usingLowerBound:bound distinct:0 limit:self->_limit];

  return v7;
}

- (id)selectSQLWithColumns:(id)columns groupBy:(id)by orderingTerms:(id)terms limit:(unint64_t)limit
{
  v6 = [(ML3Query *)self selectSQLWithColumns:columns groupBy:by orderingTerms:terms directionality:0 usingLowerBound:0 distinct:0 limit:limit];

  return v6;
}

- (id)selectSQLWithColumns:(id)columns groupBy:(id)by orderingTerms:(id)terms
{
  v5 = [(ML3Query *)self selectSQLWithColumns:columns groupBy:by orderingTerms:terms directionality:0 usingLowerBound:0 distinct:0 limit:self->_limit];

  return v5;
}

- (id)selectSQLWithColumns:(id)columns orderingTerms:(id)terms distinct:(BOOL)distinct
{
  v5 = [(ML3Query *)self selectSQLWithColumns:columns groupBy:0 orderingTerms:terms directionality:0 usingLowerBound:0 distinct:distinct limit:self->_limit];

  return v5;
}

- (id)selectSQLWithColumns:(id)columns orderingTerms:(id)terms limit:(unint64_t)limit
{
  v5 = [(ML3Query *)self selectSQLWithColumns:columns groupBy:0 orderingTerms:terms directionality:0 usingLowerBound:0 distinct:0 limit:limit];

  return v5;
}

- (id)selectSQLWithColumns:(id)columns orderingTerms:(id)terms
{
  v4 = [(ML3Query *)self selectSQLWithColumns:columns groupBy:0 orderingTerms:terms directionality:0 usingLowerBound:0 distinct:0 limit:self->_limit];

  return v4;
}

- (id)selectSQLWithColumns:(id)columns orderingTerms:(id)terms directionality:(id)directionality
{
  v5 = [(ML3Query *)self selectSQLWithColumns:columns groupBy:0 orderingTerms:terms directionality:directionality usingLowerBound:0 distinct:0 limit:self->_limit];

  return v5;
}

- (id)selectSQLWithColumns:(id)columns groupBy:(id)by distinct:(BOOL)distinct
{
  v5 = [(ML3Query *)self selectSQLWithColumns:columns groupBy:by orderingTerms:self->_orderingTerms directionality:0 usingLowerBound:0 distinct:distinct limit:self->_limit];

  return v5;
}

- (id)selectSQLWithColumns:(id)columns groupBy:(id)by
{
  v4 = [(ML3Query *)self selectSQLWithColumns:columns groupBy:by orderingTerms:self->_orderingTerms directionality:0 usingLowerBound:0 distinct:0 limit:self->_limit];

  return v4;
}

- (id)valueForAggregateFunction:(id)function onEntitiesForProperty:(id)property
{
  v28[2] = *MEMORY[0x277D85DE8];
  functionCopy = function;
  propertyCopy = property;
  if ([ML3Query valueForAggregateFunction:onEntitiesForProperty:]::onceToken != -1)
  {
    dispatch_once(&[ML3Query valueForAggregateFunction:onEntitiesForProperty:]::onceToken, &__block_literal_global_5210);
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__5211;
  v26 = __Block_byref_object_dispose__5212;
  v27 = 0;
  if ([__supportedAggregateFunctions containsObject:functionCopy])
  {
    v8 = [(objc_class *)[(ML3Query *)self entityClass] disambiguatedSQLForProperty:propertyCopy];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@(%@)", functionCopy, v8];
      v28[0] = v9;
      v28[1] = propertyCopy;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
      v11 = [(ML3Query *)self selectSQLWithColumns:v10 orderingTerms:0];

      persistentIDParameters = [(ML3Query *)self persistentIDParameters];
      library = self->_library;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __60__ML3Query_valueForAggregateFunction_onEntitiesForProperty___block_invoke_86;
      v18[3] = &unk_278763398;
      v14 = v11;
      v19 = v14;
      v20 = persistentIDParameters;
      v21 = &v22;
      v15 = persistentIDParameters;
      [(ML3MusicLibrary *)library databaseConnectionAllowingWrites:0 withBlock:v18];
    }
  }

  v16 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v16;
}

void __60__ML3Query_valueForAggregateFunction_onEntitiesForProperty___block_invoke_86(void *a1, void *a2)
{
  v7 = a2;
  v3 = [v7 executeQuery:a1[4] withParameters:a1[5]];
  v4 = [v3 objectForFirstRowAndColumn];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t __60__ML3Query_valueForAggregateFunction_onEntitiesForProperty___block_invoke()
{
  __supportedAggregateFunctions = [MEMORY[0x277CBEB98] setWithObjects:{@"TOTAL", @"MAX", @"MIN", 0}];

  return MEMORY[0x2821F96F8]();
}

- (void)enumeratePersistentIDsAndProperties:(id)properties ordered:(BOOL)ordered sectionProperty:(id)property cancelBlock:(id)block usingBlock:(id)usingBlock
{
  orderedCopy = ordered;
  propertiesCopy = properties;
  propertyCopy = property;
  blockCopy = block;
  usingBlockCopy = usingBlock;
  library = [(ML3Query *)self library];
  v35 = blockCopy;
  checkoutReaderConnection = [library checkoutReaderConnection];
  memset(v54, 0, sizeof(v54));
  v55 = 1065353216;
  if (propertiesCopy | propertyCopy)
  {
    v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(propertiesCopy, "count") + 1}];
    v16 = v15;
    if (propertyCopy)
    {
      [v15 addObject:propertyCopy];
    }

    if (propertiesCopy)
    {
      for (i = 0; ; ++i)
      {
        LODWORD(v52[0]) = i;
        if ([propertiesCopy count] <= i)
        {
          break;
        }

        v18 = [propertiesCopy objectAtIndexedSubscript:i];
        if ([(objc_class *)self->_entityClass propertyIsCountProperty:v18])
        {
          std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v54, i);
        }

        else
        {
          [v16 addObject:v18];
        }
      }
    }
  }

  else
  {
    v16 = 0;
  }

  [(ML3Predicate *)self->_predicate spotlightPredicate];
  memset(v52, 0, sizeof(v52));
  v36 = v53 = 1065353216;
  if (v36)
  {
    v32 = orderedCopy;
    string = [MEMORY[0x277CCAB68] string];
    [v36 appendSQLToMutableString:string entityClass:self->_entityClass];
    persistentIDParameters = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_orderingTerms, "count") + 1}];
    [persistentIDParameters addObjectsFromArray:self->_orderingTerms];
    v21 = [ML3OrderingTerm orderingTermWithProperty:string direction:2];
    [persistentIDParameters addObject:v21];

    objc_storeStrong(&self->_orderingTerms, persistentIDParameters);
    v22 = 0;
    v23 = 0;
    while (1)
    {
      LODWORD(v50[0]) = v22;
      if ([v16 count] <= v22)
      {
        break;
      }

      v24 = [v16 objectAtIndex:v22];
      v25 = [(ML3Query *)self nameOrderPropertyForProperty:v24];

      if (v25)
      {
        [v16 replaceObjectAtIndex:v22 withObject:v25];
        std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v52, v22);
        v23 = 1;
      }

      ++v22;
    }

    library2 = [(ML3Query *)self library];
    [(ML3Query *)self loadNamesFromLibrary:library2 onConnection:checkoutReaderConnection forPredicate:v36 loadAllNames:v23 & 1 cancelHandler:v35];

    if (v35 && v35[2]())
    {
      [library checkInDatabaseConnection:checkoutReaderConnection];
      v27 = v35;
      goto LABEL_29;
    }

    orderedCopy = v32;
  }

  else
  {
    v23 = 0;
  }

  string = [(ML3Query *)self selectPersistentIDsSQLAndProperties:v16 ordered:orderedCopy];
  persistentIDParameters = [(ML3Query *)self persistentIDParameters];
  v28 = [(ML3Query *)self enumerationDatabaseResultForSQL:string onConnection:checkoutReaderConnection withParameters:persistentIDParameters];
  v29 = [propertiesCopy count];
  v30 = v29;
  if (v29)
  {
    v31 = malloc_type_calloc(v29, 8uLL, 0x80040B8603338uLL);
    bzero(v31, 8 * v30);
  }

  else
  {
    v31 = 0;
  }

  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2020000000;
  v51 = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v49[3] = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3321888768;
  v38[2] = __95__ML3Query_enumeratePersistentIDsAndProperties_ordered_sectionProperty_cancelBlock_usingBlock___block_invoke;
  v38[3] = &unk_284085948;
  v38[4] = self;
  v44 = v50;
  v42 = v35;
  v39 = propertyCopy;
  v46 = v30;
  v48[40] = v23 & 1;
  std::unordered_set<int>::unordered_set(v47, v52);
  v47[5] = v31;
  v40 = v36;
  std::unordered_set<int>::unordered_set(v48, v54);
  v41 = propertiesCopy;
  v43 = usingBlockCopy;
  v45 = v49;
  v27 = v35;
  [v28 enumerateRowsWithBlock:v38];
  [library checkInDatabaseConnection:checkoutReaderConnection];
  if (v31)
  {
    free(v31);
  }

  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v48);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v47);

  _Block_object_dispose(v49, 8);
  _Block_object_dispose(v50, 8);

LABEL_29:
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v52);

  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v54);
}

void __95__ML3Query_enumeratePersistentIDsAndProperties_ordered_sectionProperty_cancelBlock_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (v8)
  {
    v9 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v27 = v10;
      v28 = 2114;
      v29 = v8;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Error enumerating results. err=%{public}@", buf, 0x16u);
    }

    LOBYTE(v11) = 1;
    goto LABEL_6;
  }

  v11 = *(*(*(a1 + 80) + 8) + 24);
  if (v11 != 1)
  {
    v12 = *(a1 + 64);
    if (v12 && (*(v12 + 16))())
    {
      *(*(*(a1 + 80) + 8) + 24) = 1;
      *a4 = 1;
      goto LABEL_7;
    }

    v13 = [v7 int64ForColumnIndex:0];
    if (*(a1 + 40))
    {
      [v7 intForColumnIndex:1];
    }

    if (!*(a1 + 96))
    {
LABEL_31:
      (*(*(a1 + 72) + 16))();
      ++*(*(*(a1 + 88) + 8) + 24);
      goto LABEL_7;
    }

    v14 = 0;
    while (1)
    {
      if (*(a1 + 192) == 1 && std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 104), v14))
      {
        v15 = [v7 int64ForColumnIndex:v14 + 1];
        v16 = ML3SpotlightMatchPredicateNameForID(v15, v15);
      }

      else
      {
        if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 152), v14))
        {
          v17 = *(a1 + 32);
          v18 = *(v17 + 16);
          v19 = [*(a1 + 56) objectAtIndexedSubscript:v14];
          v20 = [v18 countingQueryForBaseQuery:v17 countProperty:v19 forIdentifier:v13];

          if (v20)
          {
            v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v20, "countOfEntities")}];
          }

          else
          {
            v23 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = *(*(a1 + 32) + 16);
              v25 = [*(a1 + 56) objectAtIndexedSubscript:v14];
              *buf = 138543618;
              v27 = v24;
              v28 = 2114;
              v29 = v25;
              _os_log_impl(&dword_22D2FA000, v23, OS_LOG_TYPE_DEFAULT, "No counting query for entity class %{public}@ count property %{public}@", buf, 0x16u);
            }

            v21 = &unk_2840C8CC0;
          }

          *(*(a1 + 144) + 8 * v14) = v21;

          goto LABEL_30;
        }

        if (*(a1 + 40))
        {
          v22 = 2;
        }

        else
        {
          v22 = 1;
        }

        v16 = [v7 objectAtIndexedSubscript:v22 + v14];
      }

      *(*(a1 + 144) + 8 * v14) = v16;
LABEL_30:
      if (*(a1 + 96) <= ++v14)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_6:
  *a4 = v11;
LABEL_7:
}

- (void)enumeratePersistentIDsAndProperties:(id)properties ordered:(BOOL)ordered cancelBlock:(id)block usingBlock:(id)usingBlock
{
  orderedCopy = ordered;
  usingBlockCopy = usingBlock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__ML3Query_enumeratePersistentIDsAndProperties_ordered_cancelBlock_usingBlock___block_invoke;
  v12[3] = &unk_278760380;
  v13 = usingBlockCopy;
  v11 = usingBlockCopy;
  [(ML3Query *)self enumeratePersistentIDsAndProperties:properties ordered:orderedCopy sectionProperty:0 cancelBlock:block usingBlock:v12];
}

- (void)enumeratePersistentIDsAndProperties:(id)properties ordered:(BOOL)ordered usingBlock:(id)block
{
  orderedCopy = ordered;
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__ML3Query_enumeratePersistentIDsAndProperties_ordered_usingBlock___block_invoke;
  v10[3] = &unk_278760380;
  v11 = blockCopy;
  v9 = blockCopy;
  [(ML3Query *)self enumeratePersistentIDsAndProperties:properties ordered:orderedCopy sectionProperty:0 cancelBlock:0 usingBlock:v10];
}

- (void)enumeratePersistentIDsAndSectionsWithProperty:(id)property usingBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__ML3Query_enumeratePersistentIDsAndSectionsWithProperty_usingBlock___block_invoke;
  v8[3] = &unk_278760380;
  v9 = blockCopy;
  v7 = blockCopy;
  [(ML3Query *)self enumeratePersistentIDsAndProperties:0 ordered:1 sectionProperty:property cancelBlock:0 usingBlock:v8];
}

- (void)enumeratePersistentIDsAndProperties:(id)properties usingBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__ML3Query_enumeratePersistentIDsAndProperties_usingBlock___block_invoke;
  v8[3] = &unk_278760380;
  v9 = blockCopy;
  v7 = blockCopy;
  [(ML3Query *)self enumeratePersistentIDsAndProperties:properties ordered:1 sectionProperty:0 cancelBlock:0 usingBlock:v8];
}

- (void)enumeratePersistentIDsUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__ML3Query_enumeratePersistentIDsUsingBlock___block_invoke;
  v6[3] = &unk_278760380;
  v7 = blockCopy;
  v5 = blockCopy;
  [(ML3Query *)self enumeratePersistentIDsAndProperties:0 ordered:1 sectionProperty:0 cancelBlock:0 usingBlock:v6];
}

- (id)enumerationDatabaseResultForSQL:(id)l onConnection:(id)connection withParameters:(id)parameters
{
  v5 = [connection executeQuery:l withParameters:parameters];

  return v5;
}

- (void)enumerateSectionsUsingBlock:(id)block
{
  blockCopy = block;
  if (self->_usingSections)
  {
    library = [(ML3Query *)self library];
    selectSectionsSQL = [(ML3Query *)self selectSectionsSQL];
    sectionProperty = [(ML3Query *)self sectionProperty];
    checkoutReaderConnection = [(ML3QuerySection *)library checkoutReaderConnection];
    spotlightPredicate = [(ML3Predicate *)self->_predicate spotlightPredicate];
    if (spotlightPredicate)
    {
      library2 = [(ML3Query *)self library];
      [(ML3Query *)self loadNamesFromLibrary:library2 onConnection:checkoutReaderConnection forPredicate:spotlightPredicate loadAllNames:0 cancelHandler:0];
    }

    sectionsParameters = [(ML3Query *)self sectionsParameters];
    v11 = [checkoutReaderConnection executeQuery:selectSectionsSQL withParameters:sectionsParameters];
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v20[3] = 0;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v19[3] = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __40__ML3Query_enumerateSectionsUsingBlock___block_invoke;
    v14[3] = &unk_278760358;
    v12 = sectionProperty;
    v15 = v12;
    v17 = v20;
    v16 = blockCopy;
    v18 = v19;
    [v11 enumerateRowsWithBlock:v14];
    [(ML3QuerySection *)library checkInDatabaseConnection:checkoutReaderConnection];

    _Block_object_dispose(v19, 8);
    _Block_object_dispose(v20, 8);
  }

  else
  {
    library = objc_alloc_init(ML3QuerySection);
    [(ML3QuerySection *)library setRange:0, [(ML3Query *)self countOfEntities]];
    LOBYTE(v20[0]) = 0;
    (*(blockCopy + 2))(blockCopy, library, 0, v20);
  }
}

void __40__ML3Query_enumerateSectionsUsingBlock___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 int64ForColumnIndex:0];
  if (v7 && (!a1[4] ? (v8 = 0) : (v8 = [v6 intForColumnIndex:1]), v9 = -[ML3QuerySection initWithRange:sectionIndex:]([ML3QuerySection alloc], "initWithRange:sectionIndex:", *(*(a1[6] + 8) + 24), v7, v8), *(*(a1[6] + 8) + 24) += v7, v11 = 0, v9))
  {
    (*(a1[5] + 16))();
    ++*(*(a1[7] + 8) + 24);
    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
}

- (BOOL)deleteAllEntitiesFromLibraryWithDeletionType:(int)type usingConnection:(id)connection
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__ML3Query_deleteAllEntitiesFromLibraryWithDeletionType_usingConnection___block_invoke;
  v6[3] = &unk_278760330;
  v6[4] = self;
  v6[5] = &v8;
  typeCopy = type;
  [connection performTransactionWithBlock:v6];
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __73__ML3Query_deleteAllEntitiesFromLibraryWithDeletionType_usingConnection___block_invoke(uint64_t a1)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 10000;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v9 = malloc_type_malloc(0x13880uLL, 0x100004000313F17uLL);
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__ML3Query_deleteAllEntitiesFromLibraryWithDeletionType_usingConnection___block_invoke_2;
  v5[3] = &unk_2787602E0;
  v5[4] = &v10;
  v5[5] = v14;
  v5[6] = &v6;
  [v2 enumeratePersistentIDsUsingBlock:v5];
  *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 16) deleteFromLibrary:*(*(a1 + 32) + 8) deletionType:*(a1 + 48) persistentIDs:v7[3] count:v11[3]];
  free(v7[3]);
  v3 = *(*(*(a1 + 40) + 8) + 24);
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(v14, 8);
  return v3;
}

void *__73__ML3Query_deleteAllEntitiesFromLibraryWithDeletionType_usingConnection___block_invoke_2(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(*(result[4] + 8) + 24);
  v7 = *(result[5] + 8);
  if (v6 == *(v7 + 24))
  {
    *(v7 + 24) = 2 * v6;
    result = malloc_type_realloc(*(*(result[6] + 8) + 24), 8 * *(*(result[5] + 8) + 24), 0x100004000313F17uLL);
    *(*(v5[6] + 8) + 24) = result;
  }

  *(*(*(v5[6] + 8) + 24) + 8 * a3) = a2;
  ++*(*(v5[4] + 8) + 24);
  return result;
}

- (BOOL)deleteAllEntitiesFromLibraryWithDeletionType:(int)type
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  library = self->_library;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__ML3Query_deleteAllEntitiesFromLibraryWithDeletionType___block_invoke;
  v6[3] = &unk_278760308;
  v6[4] = self;
  v6[5] = &v8;
  typeCopy = type;
  [(ML3MusicLibrary *)library performDatabaseTransactionWithBlock:v6];
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __57__ML3Query_deleteAllEntitiesFromLibraryWithDeletionType___block_invoke(uint64_t a1)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 10000;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v9 = malloc_type_malloc(0x13880uLL, 0x100004000313F17uLL);
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__ML3Query_deleteAllEntitiesFromLibraryWithDeletionType___block_invoke_2;
  v5[3] = &unk_2787602E0;
  v5[4] = &v10;
  v5[5] = v14;
  v5[6] = &v6;
  [v2 enumeratePersistentIDsUsingBlock:v5];
  *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 16) deleteFromLibrary:*(*(a1 + 32) + 8) deletionType:*(a1 + 48) persistentIDs:v7[3] count:v11[3]];
  free(v7[3]);
  v3 = *(*(*(a1 + 40) + 8) + 24);
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(v14, 8);
  return v3;
}

void *__57__ML3Query_deleteAllEntitiesFromLibraryWithDeletionType___block_invoke_2(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(*(result[4] + 8) + 24);
  v7 = *(result[5] + 8);
  if (v6 == *(v7 + 24))
  {
    *(v7 + 24) = 2 * v6;
    result = malloc_type_realloc(*(*(result[6] + 8) + 24), 8 * *(*(result[5] + 8) + 24), 0x100004000313F17uLL);
    *(*(v5[6] + 8) + 24) = result;
  }

  *(*(*(v5[6] + 8) + 24) + 8 * a3) = a2;
  ++*(*(v5[4] + 8) + 24);
  return result;
}

- (id)sections
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __20__ML3Query_sections__block_invoke;
  v6[3] = &unk_2787602B8;
  v4 = array;
  v7 = v4;
  [(ML3Query *)self enumerateSectionsUsingBlock:v6];

  return v4;
}

- (unint64_t)countOfDistinctRowsForColumn:(id)column
{
  columnCopy = column;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  library = self->_library;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__ML3Query_countOfDistinctRowsForColumn___block_invoke;
  v9[3] = &unk_278763398;
  v9[4] = self;
  v10 = columnCopy;
  v11 = &v12;
  v6 = columnCopy;
  [(ML3MusicLibrary *)library databaseConnectionAllowingWrites:0 withBlock:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __41__ML3Query_countOfDistinctRowsForColumn___block_invoke(uint64_t a1, void *a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 24) spotlightPredicate];
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v5 library];
    [v5 loadNamesFromLibrary:v6 onConnection:v3 forPredicate:v4 loadAllNames:0 cancelHandler:0];
  }

  if (*(a1 + 40))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"COUNT(DISTINCT %@)", *(a1 + 40)];
  }

  else
  {
    v7 = @"COUNT()";
  }

  v8 = *(a1 + 32);
  v9 = v8[10];
  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"MIN(%@, %lu)", v7, v9];

    v8 = *(a1 + 32);
    v7 = v10;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v18[0] = v7;
    v18[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  }

  else
  {
    v17 = v7;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  }

  v13 = v12;
  v14 = [v8 selectSQLWithColumns:v12 orderingTerms:0 limit:0];

  v15 = [*(a1 + 32) persistentIDParameters];
  v16 = [v3 executeQuery:v14 withParameters:v15];
  *(*(*(a1 + 48) + 8) + 24) = [v16 int64ValueForFirstRowAndColumn];
}

- (int64_t)anyEntityPersistentID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  library = self->_library;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__ML3Query_anyEntityPersistentID__block_invoke;
  v5[3] = &unk_2787651A8;
  v5[4] = self;
  v5[5] = &v6;
  [(ML3MusicLibrary *)library databaseConnectionAllowingWrites:0 withBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __33__ML3Query_anyEntityPersistentID__block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 24) spotlightPredicate];
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v5 library];
    [v5 loadNamesFromLibrary:v6 onConnection:v3 forPredicate:v4 loadAllNames:0 cancelHandler:0];
  }

  v7 = *(a1 + 32);
  v8 = [v7[2] databaseTable];
  v9 = [v8 stringByAppendingString:@".ROWID"];
  v14[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v7 selectSQLWithColumns:v10 orderingTerms:*(*(a1 + 32) + 32) limit:1];

  v12 = [*(a1 + 32) persistentIDParameters];
  v13 = [v3 executeQuery:v11 withParameters:v12];
  *(*(*(a1 + 40) + 8) + 24) = [v13 int64ValueForFirstRowAndColumn];
}

- (BOOL)hasRowForColumn:(id)column
{
  columnCopy = column;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  library = self->_library;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__ML3Query_hasRowForColumn___block_invoke;
  v8[3] = &unk_278763398;
  v8[4] = self;
  v9 = columnCopy;
  v10 = &v11;
  v6 = columnCopy;
  [(ML3MusicLibrary *)library databaseConnectionAllowingWrites:0 withBlock:v8];
  LOBYTE(library) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return library;
}

void __28__ML3Query_hasRowForColumn___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(*(a1 + 32) + 24) spotlightPredicate];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v4 library];
    [v4 loadNamesFromLibrary:v5 onConnection:v12 forPredicate:v3 loadAllNames:0 cancelHandler:0];
  }

  v6 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v7 = *(a1 + 40);
  }

  else
  {
    v7 = @"1";
  }

  v8 = [MEMORY[0x277CBEA60] arrayWithObject:v7];
  v9 = [v6 selectSQLWithColumns:v8 orderingTerms:0 limit:1];

  v10 = [*(a1 + 32) persistentIDParameters];
  v11 = [v12 executeQuery:v9 withParameters:v10];
  *(*(*(a1 + 48) + 8) + 24) = [v11 hasAtLeastOneRow];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = ML3Query;
  v4 = [(ML3Query *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@(_predicate = %@, _orderingTerms = %@, _using sections = %d)", v4, self->_predicate, self->_orderingTerms, self->_usingSections];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 1, self->_library);
  v4[2] = self->_entityClass;
  v5 = [(ML3Predicate *)self->_predicate copy];
  v6 = v4[3];
  v4[3] = v5;

  v7 = [(NSArray *)self->_orderingTerms copy];
  v8 = v4[4];
  v4[4] = v7;

  v9 = [(ML3AggregateQuery *)self->_nonDirectAggregateQuery copy];
  v10 = v4[6];
  v4[6] = v9;

  objc_storeStrong(v4 + 5, self->_propertyToCount);
  *(v4 + 56) = self->_usingSections;
  v4[10] = self->_limit;
  v4[8] = self->_options;
  return v4;
}

- (id)reverseQuery
{
  v3 = [(ML3Query *)self copy];
  v4 = [ML3OrderingTerm reversedTerms:self->_orderingTerms];
  v5 = v3[4];
  v3[4] = v4;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    entityClass = [(ML3Query *)self entityClass];
    if (entityClass == [equalCopy entityClass])
    {
      predicate = [(ML3Query *)self predicate];
      predicate2 = [equalCopy predicate];
      v11 = predicate;
      v12 = predicate2;
      v13 = v12;
      if (v11 == v12)
      {
      }

      else
      {
        v14 = [v11 isEqual:v12];

        if (!v14)
        {
          LOBYTE(v7) = 0;
LABEL_23:

          goto LABEL_4;
        }
      }

      orderingTerms = [(ML3Query *)self orderingTerms];
      orderingTerms2 = [equalCopy orderingTerms];
      v17 = orderingTerms;
      v18 = orderingTerms2;
      v19 = v18;
      if (v17 == v18)
      {
      }

      else
      {
        v20 = [v17 isEqual:v18];

        if (!v20)
        {
          LOBYTE(v7) = 0;
LABEL_22:

          goto LABEL_23;
        }
      }

      nonDirectAggregateQuery = [(ML3Query *)self nonDirectAggregateQuery];
      nonDirectAggregateQuery2 = [equalCopy nonDirectAggregateQuery];
      v23 = nonDirectAggregateQuery;
      v24 = nonDirectAggregateQuery2;
      v25 = v24;
      if (v23 == v24)
      {
      }

      else
      {
        v7 = [v23 isEqual:v24];

        if (!v7)
        {
LABEL_21:

          goto LABEL_22;
        }
      }

      usingSections = [(ML3Query *)self usingSections];
      if (usingSections == [equalCopy usingSections] && (v27 = -[ML3Query ignoreSystemFilterPredicates](self, "ignoreSystemFilterPredicates"), v27 == objc_msgSend(equalCopy, "ignoreSystemFilterPredicates")))
      {
        ignoreRestrictionsPredicates = [(ML3Query *)self ignoreRestrictionsPredicates];
        v7 = ignoreRestrictionsPredicates ^ [equalCopy ignoreRestrictionsPredicates] ^ 1;
      }

      else
      {
        LOBYTE(v7) = 0;
      }

      goto LABEL_21;
    }
  }

  LOBYTE(v7) = 0;
LABEL_4:

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  library = [(ML3Query *)self library];
  [coderCopy encodeObject:library forKey:@"musicLibrary"];

  v5 = NSStringFromClass([(ML3Query *)self entityClass]);
  [coderCopy encodeObject:v5 forKey:@"entityClass"];

  predicate = [(ML3Query *)self predicate];
  [coderCopy encodeObject:predicate forKey:@"predicate"];

  orderingTerms = [(ML3Query *)self orderingTerms];
  [coderCopy encodeObject:orderingTerms forKey:@"orderingTerms"];

  nonDirectAggregateQuery = [(ML3Query *)self nonDirectAggregateQuery];
  [coderCopy encodeObject:nonDirectAggregateQuery forKey:@"nonDirectAggregateQuery"];

  propertyToCount = [(ML3Query *)self propertyToCount];
  [coderCopy encodeObject:propertyToCount forKey:@"propertyToCount"];

  [coderCopy encodeBool:-[ML3Query usingSections](self forKey:{"usingSections"), @"usingSections"}];
  [coderCopy encodeBool:-[ML3Query ignoreSystemFilterPredicates](self forKey:{"ignoreSystemFilterPredicates"), @"ignoreSystemFilterPredicates"}];
  [coderCopy encodeBool:-[ML3Query ignoreRestrictionsPredicates](self forKey:{"ignoreRestrictionsPredicates"), @"ignoreRestrictionsPredicates"}];
  [coderCopy encodeInt64:self->_options forKey:@"options"];
}

- (ML3Query)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"musicLibrary"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityClass"];
  v7 = NSClassFromString(v6);

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"orderingTerms"];

  v13 = [coderCopy decodeBoolForKey:@"usingSections"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nonDirectAggregateQuery"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"propertyToCount"];
  v16 = -[ML3Query initWithLibrary:entityClass:predicate:orderingTerms:usingSections:nonDirectAggregateQuery:propertyToCount:options:](self, "initWithLibrary:entityClass:predicate:orderingTerms:usingSections:nonDirectAggregateQuery:propertyToCount:options:", v5, v7, v8, v12, v13, v14, v15, [coderCopy decodeInt64ForKey:@"options"]);

  return v16;
}

- (ML3Query)initWithLibrary:(id)library entityClass:(Class)class predicate:(id)predicate orderingTerms:(id)terms usingSections:(BOOL)sections nonDirectAggregateQuery:(id)query propertyToCount:(id)count options:(int64_t)self0
{
  libraryCopy = library;
  predicateCopy = predicate;
  termsCopy = terms;
  queryCopy = query;
  countCopy = count;
  v27.receiver = self;
  v27.super_class = ML3Query;
  v19 = [(ML3Query *)&v27 init];
  v20 = v19;
  if (v19)
  {
    v19->_entityClass = class;
    objc_storeStrong(&v19->_predicate, predicate);
    v21 = [termsCopy copy];
    orderingTerms = v20->_orderingTerms;
    v20->_orderingTerms = v21;

    objc_storeStrong(&v20->_propertyToCount, count);
    objc_storeStrong(&v20->_library, library);
    v20->_usingSections = sections;
    objc_storeStrong(&v20->_nonDirectAggregateQuery, query);
    v20->_filtersOnDynamicProperties = [predicateCopy isDynamicForEntityClass:class];
    v20->_options = options;
  }

  return v20;
}

- (void)setIgnoreRestrictionsPredicates:(BOOL)predicates
{
  v3 = 2;
  if (!predicates)
  {
    v3 = 0;
  }

  self->_options = self->_options & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (id)nameOrderPropertyForProperty:(id)property
{
  v8[6] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  v7[0] = @"item_extra.title";
  v7[1] = @"album.album";
  v8[0] = @"item_search.search_title";
  v8[1] = @"item_search.search_album";
  v7[2] = @"album_artist.album_artist";
  v7[3] = @"item_artist.item_artist";
  v8[2] = @"item_search.search_album_artist";
  v8[3] = @"item_search.search_artist";
  v7[4] = @"composer.composer";
  v7[5] = @"item_artist.series_name";
  v8[4] = @"item_search.search_composer";
  v8[5] = @"item_search.search_series";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v5 = [v4 objectForKey:propertyCopy];

  return v5;
}

- (void)loadNamesFromLibrary:(id)library onConnection:(id)connection forPredicate:(id)predicate loadAllNames:(BOOL)names cancelHandler:(id)handler
{
  namesCopy = names;
  libraryCopy = library;
  connectionCopy = connection;
  predicateCopy = predicate;
  handlerCopy = handler;
  if (namesCopy)
  {
    v14 = [ML3SpotlightNameCache copyFromLibrary:libraryCopy cancelHandler:handlerCopy];
    v15 = predicateCopy[1];
    predicateCopy[1] = v14;
  }

  [ML3SpotlightMatchingNameCache loadFromLibrary:libraryCopy namesMatchingString:predicateCopy[3] cancelHandler:handlerCopy];
}

@end