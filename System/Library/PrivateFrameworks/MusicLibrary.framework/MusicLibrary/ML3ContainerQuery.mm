@interface ML3ContainerQuery
- (BOOL)hasEntities;
- (BOOL)requiresSmartLimiting;
- (ML3ContainerQuery)initWithCoder:(id)coder;
- (ML3ContainerQuery)initWithEntityClass:(Class)class container:(id)container predicate:(id)predicate orderingTerms:(id)terms;
- (id)copyWithZone:(_NSZone *)zone;
- (id)enumerationDatabaseResultForSQL:(id)l onConnection:(id)connection withParameters:(id)parameters;
- (id)selectPersistentIDsSQLAndProperties:(id)properties ordered:(BOOL)ordered;
- (id)valueForAggregateFunction:(id)function onEntitiesForProperty:(id)property;
- (unint64_t)countOfDistinctRowsForColumn:(id)column;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ML3ContainerQuery

- (id)enumerationDatabaseResultForSQL:(id)l onConnection:(id)connection withParameters:(id)parameters
{
  lCopy = l;
  connectionCopy = connection;
  parametersCopy = parameters;
  if ([(ML3ContainerQuery *)self requiresSmartLimiting]&& ![(ML3Container *)self->_container isLimitedByCount])
  {
    limitingProperty = [(ML3Container *)self->_container limitingProperty];
    v11 = [connectionCopy executeQuery:lCopy withParameters:parametersCopy limitProperty:limitingProperty limitValue:{-[ML3Container limitValue](self->_container, "limitValue")}];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ML3ContainerQuery;
    v11 = [(ML3Query *)&v14 enumerationDatabaseResultForSQL:lCopy onConnection:connectionCopy withParameters:parametersCopy];
  }

  return v11;
}

- (id)selectPersistentIDsSQLAndProperties:(id)properties ordered:(BOOL)ordered
{
  orderedCopy = ordered;
  v15[1] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  if ([(ML3ContainerQuery *)self requiresSmartLimiting])
  {
    if ([(ML3Container *)self->_container isLimitedByCount])
    {
      v7 = 1;
      goto LABEL_8;
    }

    limitingProperty = [(ML3Container *)self->_container limitingProperty];
    v9 = limitingProperty;
    if (propertiesCopy)
    {
      v10 = [propertiesCopy arrayByAddingObject:limitingProperty];

      v7 = 0;
      propertiesCopy = v10;
      goto LABEL_8;
    }

    v15[0] = limitingProperty;
    propertiesCopy = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  }

  v7 = 0;
LABEL_8:
  v14.receiver = self;
  v14.super_class = ML3ContainerQuery;
  v11 = [(ML3Query *)&v14 selectPersistentIDsSQLAndProperties:propertiesCopy ordered:orderedCopy];
  if (v7)
  {
    v12 = [v11 stringByAppendingFormat:@" LIMIT %lu", -[ML3Container limitValue](self->_container, "limitValue")];

    v11 = v12;
  }

  return v11;
}

- (id)valueForAggregateFunction:(id)function onEntitiesForProperty:(id)property
{
  functionCopy = function;
  propertyCopy = property;
  if (valueForAggregateFunction_onEntitiesForProperty__onceToken != -1)
  {
    dispatch_once(&valueForAggregateFunction_onEntitiesForProperty__onceToken, &__block_literal_global_8701);
  }

  if ([(ML3ContainerQuery *)self requiresSmartLimiting])
  {
    if ([__supportedAggregateFunctions containsObject:functionCopy])
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0;
      library = self->super._library;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __69__ML3ContainerQuery_valueForAggregateFunction_onEntitiesForProperty___block_invoke_2;
      v13[3] = &unk_2787628F8;
      v13[4] = self;
      v14 = propertyCopy;
      v15 = functionCopy;
      v16 = &v17;
      [(ML3MusicLibrary *)library databaseConnectionAllowingWrites:0 withBlock:v13];
      v10 = [MEMORY[0x277CCABB0] numberWithLongLong:v18[3]];

      _Block_object_dispose(&v17, 8);
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ML3ContainerQuery.m" lineNumber:209 description:{@"Attempting to get value for unsupported aggregate function %@", functionCopy}];

      v10 = 0;
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = ML3ContainerQuery;
    v10 = [(ML3Query *)&v21 valueForAggregateFunction:functionCopy onEntitiesForProperty:propertyCopy];
  }

  return v10;
}

void __69__ML3ContainerQuery_valueForAggregateFunction_onEntitiesForProperty___block_invoke_2(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 24) spotlightPredicate];
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v5 library];
    [v5 loadNamesFromLibrary:v6 onConnection:v3 forPredicate:v4 loadAllNames:0 cancelHandler:0];
  }

  v7 = *(a1 + 32);
  v18[0] = *(a1 + 40);
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  if ([*(*(a1 + 32) + 96) isLimitedByCount])
  {
    v9 = [*(*(a1 + 32) + 96) limitValue];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 selectSQLWithColumns:v8 orderingTerms:0 limit:v9];

  v11 = [*(a1 + 32) persistentIDParameters];
  v12 = [*(a1 + 32) enumerationDatabaseResultForSQL:v10 onConnection:v3 withParameters:v11];
  if ([*(a1 + 48) isEqualToString:@"TOTAL"])
  {
    v13 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v14 = __69__ML3ContainerQuery_valueForAggregateFunction_onEntitiesForProperty___block_invoke_3;
LABEL_12:
    v13[2] = v14;
    v13[3] = &unk_2787653C8;
    v13[4] = *(a1 + 56);
    [v12 enumerateRowsWithBlock:?];
    goto LABEL_13;
  }

  if ([*(a1 + 48) isEqualToString:@"MAX"])
  {
    v13 = v16;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v14 = __69__ML3ContainerQuery_valueForAggregateFunction_onEntitiesForProperty___block_invoke_4;
    goto LABEL_12;
  }

  if ([*(a1 + 48) isEqualToString:@"MIN"])
  {
    v13 = v15;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v14 = __69__ML3ContainerQuery_valueForAggregateFunction_onEntitiesForProperty___block_invoke_5;
    goto LABEL_12;
  }

LABEL_13:
}

uint64_t __69__ML3ContainerQuery_valueForAggregateFunction_onEntitiesForProperty___block_invoke_3(uint64_t a1, void *a2)
{
  result = [a2 int64ForColumnIndex:0];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t __69__ML3ContainerQuery_valueForAggregateFunction_onEntitiesForProperty___block_invoke_4(uint64_t a1, void *a2)
{
  result = [a2 int64ForColumnIndex:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (result > v5)
  {
    v5 = result;
  }

  *(v4 + 24) = v5;
  return result;
}

uint64_t __69__ML3ContainerQuery_valueForAggregateFunction_onEntitiesForProperty___block_invoke_5(uint64_t a1, void *a2)
{
  result = [a2 int64ForColumnIndex:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (result < v5)
  {
    v5 = result;
  }

  *(v4 + 24) = v5;
  return result;
}

uint64_t __69__ML3ContainerQuery_valueForAggregateFunction_onEntitiesForProperty___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"TOTAL", @"MAX", @"MIN", 0}];
  v1 = __supportedAggregateFunctions;
  __supportedAggregateFunctions = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (unint64_t)countOfDistinctRowsForColumn:(id)column
{
  columnCopy = column;
  if ([(ML3ContainerQuery *)self requiresSmartLimiting])
  {
    if ([(ML3Container *)self->_container isLimitedByCount])
    {
      v15.receiver = self;
      v15.super_class = ML3ContainerQuery;
      v5 = [(ML3Query *)&v15 countOfDistinctRowsForColumn:columnCopy];
      limitValue = [(ML3Container *)self->_container limitValue];
      if (v5 >= limitValue)
      {
        v7 = limitValue;
      }

      else
      {
        v7 = v5;
      }
    }

    else
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v14 = 0;
      library = self->super._library;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __50__ML3ContainerQuery_countOfDistinctRowsForColumn___block_invoke;
      v10[3] = &unk_2787651A8;
      v10[4] = self;
      v10[5] = &v11;
      [(ML3MusicLibrary *)library databaseConnectionAllowingWrites:0 withBlock:v10];
      v7 = v12[3];
      _Block_object_dispose(&v11, 8);
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = ML3ContainerQuery;
    v7 = [(ML3Query *)&v16 countOfDistinctRowsForColumn:columnCopy];
  }

  return v7;
}

void __50__ML3ContainerQuery_countOfDistinctRowsForColumn___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 24) spotlightPredicate];
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v5 library];
    [v5 loadNamesFromLibrary:v6 onConnection:v3 forPredicate:v4 loadAllNames:0 cancelHandler:0];
  }

  v7 = [*(a1 + 32) selectPersistentIDsSQLAndProperties:0 ordered:1];
  v8 = [*(a1 + 32) persistentIDParameters];
  v9 = [*(a1 + 32) enumerationDatabaseResultForSQL:v7 onConnection:v3 withParameters:v8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__ML3ContainerQuery_countOfDistinctRowsForColumn___block_invoke_2;
  v10[3] = &unk_2787653C8;
  v10[4] = *(a1 + 40);
  [v9 enumerateRowsWithBlock:v10];
}

- (BOOL)hasEntities
{
  if ([(ML3ContainerQuery *)self requiresSmartLimiting])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    library = self->super._library;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __32__ML3ContainerQuery_hasEntities__block_invoke;
    v6[3] = &unk_2787651A8;
    v6[4] = self;
    v6[5] = &v7;
    [(ML3MusicLibrary *)library databaseConnectionAllowingWrites:0 withBlock:v6];
    hasEntities = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = ML3ContainerQuery;
    hasEntities = [(ML3Query *)&v11 hasEntities];
  }

  return hasEntities & 1;
}

void __32__ML3ContainerQuery_hasEntities__block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(*(a1 + 32) + 24) spotlightPredicate];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v4 library];
    [v4 loadNamesFromLibrary:v5 onConnection:v13 forPredicate:v3 loadAllNames:0 cancelHandler:0];
  }

  v6 = [*(a1 + 32) selectPersistentIDsSQLAndProperties:0 ordered:0];
  if ([*(*(a1 + 32) + 96) isLimitedByCount])
  {
    if ([*(*(a1 + 32) + 96) limitValue] < 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = log10([*(*(a1 + 32) + 96) limitValue]) + 1;
    }

    v9 = MEMORY[0x277CCACA8];
    v10 = [v6 stringByReplacingCharactersInRange:objc_msgSend(v6 withString:{"length") - v7, v7, @"1"}];
    v8 = [v9 stringWithFormat:@"SELECT 1 FROM (%@)", v10];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT 1 FROM (%@ LIMIT 1)", v6];
  }

  v11 = [*(a1 + 32) persistentIDParameters];
  v12 = [*(a1 + 32) enumerationDatabaseResultForSQL:v8 onConnection:v13 withParameters:v11];
  *(*(*(a1 + 40) + 8) + 24) = [v12 hasAtLeastOneRow];
}

- (BOOL)requiresSmartLimiting
{
  v3 = [(ML3Entity *)self->_container valueForProperty:@"smart_is_limited"];
  if ([v3 intValue])
  {
    v4 = [(ML3Entity *)self->_container valueForProperty:@"smart_is_dynamic"];
    v5 = [v4 intValue] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  library = [(ML3Query *)self library];
  [coderCopy encodeObject:library forKey:@"musicLibrary"];

  v6 = NSStringFromClass([(ML3Query *)self entityClass]);
  [coderCopy encodeObject:v6 forKey:@"entityClass"];

  container = [(ML3ContainerQuery *)self container];
  [coderCopy encodeInt64:objc_msgSend(container forKey:{"persistentID"), @"containerPersistentID"}];

  predicate = [(ML3Query *)self predicate];
  [coderCopy encodeObject:predicate forKey:@"predicate"];

  orderingTerms = [(ML3Query *)self orderingTerms];
  [coderCopy encodeObject:orderingTerms forKey:@"orderingTerms"];
}

- (ML3ContainerQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"musicLibrary"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityClass"];
  v7 = NSClassFromString(v6);

  v8 = +[ML3Entity newWithPersistentID:inLibrary:](ML3Container, "newWithPersistentID:inLibrary:", [coderCopy decodeInt64ForKey:@"containerPersistentID"], v5);
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"orderingTerm"];

  v14 = [(ML3ContainerQuery *)self initWithEntityClass:v7 container:v8 predicate:v9 orderingTerms:v13];
  return v14;
}

- (ML3ContainerQuery)initWithEntityClass:(Class)class container:(id)container predicate:(id)predicate orderingTerms:(id)terms
{
  v41[1] = *MEMORY[0x277D85DE8];
  containerCopy = container;
  predicateCopy = predicate;
  termsCopy = terms;
  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(containerCopy, "persistentID")}];
  v15 = [ML3ComparisonPredicate predicateWithProperty:@"container_item.container_pid" value:v14 comparison:1];
  containerPredicate = self->_containerPredicate;
  self->_containerPredicate = v15;

  objc_storeStrong(&self->_container, container);
  v17 = [containerCopy valueForProperty:@"smart_is_dynamic"];
  intValue = [v17 intValue];

  v19 = [containerCopy valueForProperty:@"distinguished_kind"];
  intValue2 = [v19 intValue];

  if (intValue)
  {
    smartCriteriaPredicate = [containerCopy smartCriteriaPredicate];
  }

  else
  {
    smartCriteriaPredicate = self->_containerPredicate;
  }

  v22 = smartCriteriaPredicate;
  if (predicateCopy)
  {
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:{predicateCopy, smartCriteriaPredicate, 0}];
    v24 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v23];

    if (termsCopy)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v24 = smartCriteriaPredicate;
    if (termsCopy)
    {
      goto LABEL_20;
    }
  }

  if ([(ML3ContainerQuery *)self requiresSmartLimiting])
  {
    limitOrderingTerms = [containerCopy limitOrderingTerms];
    v26 = limitOrderingTerms;
    if (limitOrderingTerms)
    {
      displayOrderingTerms = limitOrderingTerms;
    }

    else
    {
      displayOrderingTerms = [containerCopy displayOrderingTerms];
    }
  }

  else
  {
    if (intValue)
    {
      termsCopy = [containerCopy displayOrderingTerms];
      goto LABEL_20;
    }

    v28 = [containerCopy valueForProperty:@"has_cloud_play_order"];
    intValue3 = [v28 intValue];

    if (intValue3)
    {
      termsCopy = [containerCopy cloudDisplayOrderingTerms];
      if (termsCopy)
      {
        goto LABEL_20;
      }

      v26 = [ML3OrderingTerm orderingTermWithProperty:@"container_item.position"];
      v41[0] = v26;
      v30 = MEMORY[0x277CBEA60];
      v31 = v41;
    }

    else
    {
      v26 = [ML3OrderingTerm orderingTermWithProperty:@"container_item.position"];
      v40 = v26;
      v30 = MEMORY[0x277CBEA60];
      v31 = &v40;
    }

    displayOrderingTerms = [v30 arrayWithObjects:v31 count:1];
  }

  termsCopy = displayOrderingTerms;

LABEL_20:
  v32 = intValue == 0;
  if (intValue2 == 71)
  {
    v32 = 1;
  }

  v33 = !v32;
  v34 = 4;
  if (v33)
  {
    v34 = 0;
  }

  v35 = v34 | (8 * (intValue2 == 71));
  library = [containerCopy library];
  v39.receiver = self;
  v39.super_class = ML3ContainerQuery;
  v37 = [(ML3Query *)&v39 initWithLibrary:library entityClass:class predicate:v24 orderingTerms:termsCopy usingSections:0 nonDirectAggregateQuery:0 propertyToCount:0 options:v35];

  return v37;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = ML3ContainerQuery;
  v4 = [(ML3Query *)&v8 copyWithZone:zone];
  v5 = [(ML3Predicate *)self->_containerPredicate copy];
  v6 = *(v4 + 11);
  *(v4 + 11) = v5;

  objc_storeStrong(v4 + 12, self->_container);
  return v4;
}

@end