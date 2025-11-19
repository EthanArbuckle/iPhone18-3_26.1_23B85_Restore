@interface HDSQLiteQueryDescriptor
- (id)_SQLForDeleteWithError:(id *)a3;
- (id)_SQLForSelectWithProperties:(id)a3 columns:(id)a4;
- (id)_joinClauseComparatorWithPreferredEntityOrder:(void *)a1;
- (id)_joinClauseForProperties:(id)a3;
- (id)_sortedJoinClauses:(id)a3 preferredOrder:(id)a4 baseTables:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)selectSQLForProperties:(id)a3;
- (void)bindToDeleteStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4;
- (void)bindToSelectStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4;
@end

@implementation HDSQLiteQueryDescriptor

- (id)selectSQLForProperties:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(HDSQLiteQueryDescriptor *)self entityClass];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [(objc_class *)v6 disambiguatedSQLForProperty:*(*(&v15 + 1) + 8 * i), v15];
        [v5 addObject:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [(HDSQLiteQueryDescriptor *)self _SQLForSelectWithProperties:v7 columns:v5];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)bindToSelectStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4
{
  [HDSQLitePredicate bindToStatement:"bindToStatement:bindingIndex:" bindingIndex:?];
  groupBy = self->_groupBy;
  if (groupBy)
  {
    sqlite3_bind_text(a3, *a4, [(NSString *)groupBy UTF8String], [(NSString *)self->_groupBy length], 0xFFFFFFFFFFFFFFFFLL);
  }

  limitCount = self->_limitCount;
  if (limitCount >= 0x80000000)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HDSQLiteQuery.mm" lineNumber:160 description:{@"bindToSelectStatement called with limit count %ld, greater than maximum allowed limit count (%d)", self->_limitCount, 0x7FFFFFFFLL}];

    limitCount = self->_limitCount;
    if (!limitCount)
    {
      return;
    }
  }

  else if (!limitCount)
  {
    return;
  }

  sqlite3_bind_int(a3, *a4, limitCount);
  ++*a4;
}

- (void)bindToDeleteStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4
{
  [HDSQLitePredicate bindToStatement:"bindToStatement:bindingIndex:" bindingIndex:?];
  limitCount = self->_limitCount;
  if (limitCount >= 0x80000000)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HDSQLiteQuery.mm" lineNumber:170 description:{@"bindToDeleteStatement called with limit count %ld, greater than maximum allowed limit count (%d)", self->_limitCount, 0x7FFFFFFFLL}];

    limitCount = self->_limitCount;
    if (!limitCount)
    {
      return;
    }
  }

  else if (!limitCount)
  {
    return;
  }

  sqlite3_bind_int(a3, *a4, limitCount);
  ++*a4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 16) = self->_entityClass;
  *(v5 + 24) = self->_limitCount;
  v6 = [(NSArray *)self->_orderingTerms copy];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(HDSQLitePredicate *)self->_predicate copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  *(v5 + 8) = self->_returnsDistinctEntities;
  v10 = [(NSString *)self->_groupBy copy];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSArray *)self->_preferredEntityJoinOrder copy];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  *(v5 + 9) = self->_shouldExpandLastSQLStatement;
  return v5;
}

- (id)_sortedJoinClauses:(id)a3 preferredOrder:(id)a4 baseTables:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v28 = a4;
  v26 = a5;
  v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v26];
  v31 = [v27 mutableCopy];
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v28)
  {
    v30 = [(HDSQLiteQueryDescriptor *)self _joinClauseComparatorWithPreferredEntityOrder:v28];
  }

  else
  {
    v30 = 0;
  }

  while ([v31 count])
  {
    [v9 removeAllObjects];
    [v10 removeAllObjects];
    v11 = [v31 allObjects];
    v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_8];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v14)
    {
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          v18 = [v17 localTable];
          v19 = [v8 containsObject:v18];

          if (v19)
          {
            [v9 addObject:v17];
            v20 = [v17 joinAsName];
            v21 = [v8 containsObject:v20];

            if ((v21 & 1) == 0)
            {
              v22 = [v17 joinAsName];
              [v8 addObject:v22];

              [v10 addObject:v17];
            }
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v14);
    }

    if (![v9 count])
    {
      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        [HDSQLiteQueryDescriptor _sortedJoinClauses:v31 preferredOrder:v8 baseTables:v23];
      }

      break;
    }

    if (v30)
    {
      [v10 sortUsingComparator:v30];
    }

    [v29 addObjectsFromArray:v10];
    [v31 minusSet:v9];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)_joinClauseComparatorWithPreferredEntityOrder:(void *)a1
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
    v7 = 0;
    if (v6)
    {
      v8 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
          [v4 setObject:v11 forKeyedSubscript:v10];

          ++v7;
        }

        v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v6);
    }

    v12 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
    [(HDSQLiteQueryDescriptor *)v12 _joinClauseComparatorWithPreferredEntityOrder:v4, &v20];
    a1 = v20;
  }

  v13 = *MEMORY[0x277D85DE8];

  return a1;
}

uint64_t __72__HDSQLiteQueryDescriptor__sortedJoinClauses_preferredOrder_baseTables___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 joinType];
  if (v6 >= [v5 joinType])
  {
    v8 = [v4 joinType];
    v7 = v8 > [v5 joinType];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t __73__HDSQLiteQueryDescriptor__joinClauseComparatorWithPreferredEntityOrder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(v5, "targetEntityClass")}];
  v8 = v7;
  if (!v7)
  {
    v8 = *(a1 + 40);
  }

  v9 = v8;

  v10 = [*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(v6, "targetEntityClass")}];
  v11 = v10;
  if (!v10)
  {
    v11 = *(a1 + 40);
  }

  v12 = v11;

  v13 = [v9 compare:v12];
  return v13;
}

- (id)_SQLForSelectWithProperties:(id)a3 columns:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"SELECT "];
  v10 = v6;
  v11 = v5;
  HKWithAutoreleasePool();
  v7 = v9;

  return v9;
}

uint64_t __63__HDSQLiteQueryDescriptor__SQLForSelectWithProperties_columns___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8) == 1)
  {
    [*(a1 + 40) appendString:@"DISTINCT "];
  }

  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) componentsJoinedByString:{@", "}];
  [v2 appendString:v3];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) _joinClauseForProperties:*(a1 + 56)];
  [v4 appendFormat:@" FROM %@", v5];

  v6 = [*(*(a1 + 32) + 40) SQLForEntityClass:*(*(a1 + 32) + 16)];
  if (v6)
  {
    [*(a1 + 40) appendFormat:@" WHERE %@", v6];
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@" GROUP BY %@", v8];
    [v9 appendString:v10];

    v7 = *(a1 + 32);
  }

  if ([*(v7 + 32) count])
  {
    [*(a1 + 40) appendString:@" ORDER BY "];
    [*(a1 + 40) hk_appendComponentsJoinedByString:@" container:" componentGenerator:{*(*(a1 + 32) + 32), &__block_literal_global_390}];
  }

  if (*(*(a1 + 32) + 24))
  {
    [*(a1 + 40) appendString:@" LIMIT ?"];
  }

  return 1;
}

id __63__HDSQLiteQueryDescriptor__SQLForSelectWithProperties_columns___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 SQL];

  return v2;
}

- (id)_joinClauseForProperties:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v26 = [-[objc_class entityClassForEnumeration](self->_entityClass "entityClassForEnumeration")];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = [(HDSQLitePredicate *)self->_predicate SQLJoinClausesForEntityClass:self->_entityClass];
  if ([v5 count])
  {
    [v4 unionSet:v5];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = v25;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [(objc_class *)self->_entityClass joinClausesForProperty:*(*(&v31 + 1) + 8 * i)];
        if (v10)
        {
          [v4 unionSet:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    if ([v4 count] < 2)
    {
      v18 = [v4 anyObject];
      v19 = MEMORY[0x277CCACA8];
      v20 = [v18 SQLJoinClause];
      v11 = [v19 stringWithFormat:@"%@ %@", v26, v20];
    }

    else
    {
      v23 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v26, 0}];
      v24 = [(HDSQLiteQueryDescriptor *)self _sortedJoinClauses:v4 preferredOrder:self->_preferredEntityJoinOrder baseTables:?];
      v11 = [v26 mutableCopy];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = v24;
      v13 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v13)
      {
        v14 = *v28;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v27 + 1) + 8 * j);
            [v11 appendString:@" "];
            v17 = [v16 SQLJoinClause];
            [v11 appendString:v17];
          }

          v13 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v13);
      }
    }
  }

  else
  {
    v11 = v26;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_SQLForDeleteWithError:(id *)a3
{
  v5 = MEMORY[0x277CBE660];
  if (self->_returnsDistinctEntities)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The DELETE statement does not support the DISTINCT keyword"];
  }

  if (self->_groupBy)
  {
    [MEMORY[0x277CBEAD8] raise:*v5 format:@"The DELETE statement does not support the GROUP BY keyword"];
  }

  v6 = [(objc_class *)self->_entityClass disambiguatedDatabaseTable];
  v7 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"DELETE FROM %@", v6];
  v8 = [(HDSQLitePredicate *)self->_predicate SQLJoinClausesForEntityClass:self->_entityClass];
  if ([v8 count])
  {
    v9 = [(HDSQLiteQueryDescriptor *)self _joinClauseForProperties:0];
    if (!v9)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 format:@"SQL could not be created due to non-expected nil join clause"];
      v13 = 0;
      goto LABEL_16;
    }

    v10 = [(HDSQLitePredicate *)self->_predicate SQLForEntityClass:self->_entityClass];
    if (v10)
    {
      v11 = [(objc_class *)self->_entityClass disambiguatedSQLForProperty:@"ROWID"];
      [v7 appendFormat:@" WHERE %@ IN (SELECT %@ FROM %@ WHERE %@)", v11, v11, v9, v10];
    }
  }

  else
  {
    v12 = [(HDSQLitePredicate *)self->_predicate SQLForEntityClass:self->_entityClass];
    v9 = v12;
    if (v12)
    {
      [v7 appendFormat:@" WHERE %@", v12];
    }
  }

  if (self->_limitCount)
  {
    [v7 appendFormat:@" LIMIT ?"];
  }

  v13 = v7;
LABEL_16:

  return v13;
}

- (void)_sortedJoinClauses:(uint64_t)a1 preferredOrder:(uint64_t)a2 baseTables:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_25156C000, log, OS_LOG_TYPE_ERROR, "No clauses in %@ can be joined after tables %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_joinClauseComparatorWithPreferredEntityOrder:(void *)a3 .cold.1(void *a1, id *a2, void *a3, void **a4)
{
  *a2 = MEMORY[0x277D85DD0];
  a2[1] = 3221225472;
  a2[2] = __73__HDSQLiteQueryDescriptor__joinClauseComparatorWithPreferredEntityOrder___block_invoke;
  a2[3] = &unk_2796BE490;
  a2[4] = a3;
  a2[5] = a1;
  v7 = a1;
  v8 = a3;
  *a4 = _Block_copy(a2);
}

@end