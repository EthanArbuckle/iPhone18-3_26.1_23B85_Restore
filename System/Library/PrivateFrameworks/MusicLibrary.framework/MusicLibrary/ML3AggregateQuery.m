@interface ML3AggregateQuery
- (ML3AggregateQuery)initWithCoder:(id)a3;
- (ML3AggregateQuery)initWithUnitQuery:(id)a3 aggregateEntityClass:(Class)a4 foreignPersistentIDProperty:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)selectPersistentIDsSQLAndProperties:(id)a3 ordered:(BOOL)a4;
- (unint64_t)countOfEntities;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ML3AggregateQuery

- (id)selectPersistentIDsSQLAndProperties:(id)a3 ordered:(BOOL)a4
{
  v16 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [(objc_class *)self->_aggregateEntityClass foreignPropertyForProperty:v11 entityClass:self->super._entityClass];
        if (!v8)
        {
          v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = v11;
        }

        [v8 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v17.receiver = self;
  v17.super_class = ML3AggregateQuery;
  v14 = [(ML3Query *)&v17 selectPersistentIDsSQLAndProperties:v8 ordered:v16 distinct:1];

  return v14;
}

- (unint64_t)countOfEntities
{
  if (self->super._propertyToCount)
  {

    return [(ML3Query *)self countOfDistinctRowsForColumn:?];
  }

  else
  {
    v4 = [(ML3AggregateQuery *)self persistentIDProperty];
    v5 = [(ML3Query *)self countOfDistinctRowsForColumn:v4];

    return v5;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = ML3AggregateQuery;
  v4 = a3;
  [(ML3Query *)&v7 encodeWithCoder:v4];
  v5 = NSStringFromClass([(ML3AggregateQuery *)self aggregateEntityClass:v7.receiver]);
  [v4 encodeObject:v5 forKey:@"aggregateEntityClass"];

  v6 = [(ML3AggregateQuery *)self foreignPersistentIDProperty];
  [v4 encodeObject:v6 forKey:@"foreignPersistentIDProperty"];
}

- (ML3AggregateQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ML3AggregateQuery;
  v5 = [(ML3Query *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"aggregateEntityClass"];
    v5->_aggregateEntityClass = NSClassFromString(v6);

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"foreignPersistentIDProperty"];
    v8 = [v7 copy];
    foreignPersistentIDProperty = v5->_foreignPersistentIDProperty;
    v5->_foreignPersistentIDProperty = v8;
  }

  return v5;
}

- (void)dealloc
{
  foreignPersistentIDProperty = self->_foreignPersistentIDProperty;
  self->_foreignPersistentIDProperty = 0;

  v4.receiver = self;
  v4.super_class = ML3AggregateQuery;
  [(ML3AggregateQuery *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = ML3AggregateQuery;
  v4 = [(ML3Query *)&v6 copyWithZone:a3];
  *(v4 + 11) = self->_aggregateEntityClass;
  objc_storeStrong(v4 + 12, self->_foreignPersistentIDProperty);
  return v4;
}

- (ML3AggregateQuery)initWithUnitQuery:(id)a3 aggregateEntityClass:(Class)a4 foreignPersistentIDProperty:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v9 library];
  v11 = [v9 entityClass];
  v12 = [v9 predicate];
  v13 = [v9 orderingTerms];
  v14 = [v9 usingSections];
  v15 = [v9 options];

  v20.receiver = self;
  v20.super_class = ML3AggregateQuery;
  v16 = [(ML3Query *)&v20 initWithLibrary:v10 entityClass:v11 predicate:v12 orderingTerms:v13 usingSections:v14 nonDirectAggregateQuery:0 propertyToCount:0 options:v15];

  if (v16)
  {
    v16->_aggregateEntityClass = a4;
    v17 = [v8 copy];
    foreignPersistentIDProperty = v16->_foreignPersistentIDProperty;
    v16->_foreignPersistentIDProperty = v17;
  }

  return v16;
}

@end