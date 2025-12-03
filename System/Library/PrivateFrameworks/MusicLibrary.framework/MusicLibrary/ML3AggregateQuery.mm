@interface ML3AggregateQuery
- (ML3AggregateQuery)initWithCoder:(id)coder;
- (ML3AggregateQuery)initWithUnitQuery:(id)query aggregateEntityClass:(Class)class foreignPersistentIDProperty:(id)property;
- (id)copyWithZone:(_NSZone *)zone;
- (id)selectPersistentIDsSQLAndProperties:(id)properties ordered:(BOOL)ordered;
- (unint64_t)countOfEntities;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ML3AggregateQuery

- (id)selectPersistentIDsSQLAndProperties:(id)properties ordered:(BOOL)ordered
{
  orderedCopy = ordered;
  v23 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [propertiesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(propertiesCopy);
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

      v7 = [propertiesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v17.receiver = self;
  v17.super_class = ML3AggregateQuery;
  v14 = [(ML3Query *)&v17 selectPersistentIDsSQLAndProperties:v8 ordered:orderedCopy distinct:1];

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
    persistentIDProperty = [(ML3AggregateQuery *)self persistentIDProperty];
    v5 = [(ML3Query *)self countOfDistinctRowsForColumn:persistentIDProperty];

    return v5;
  }
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = ML3AggregateQuery;
  coderCopy = coder;
  [(ML3Query *)&v7 encodeWithCoder:coderCopy];
  v5 = NSStringFromClass([(ML3AggregateQuery *)self aggregateEntityClass:v7.receiver]);
  [coderCopy encodeObject:v5 forKey:@"aggregateEntityClass"];

  foreignPersistentIDProperty = [(ML3AggregateQuery *)self foreignPersistentIDProperty];
  [coderCopy encodeObject:foreignPersistentIDProperty forKey:@"foreignPersistentIDProperty"];
}

- (ML3AggregateQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ML3AggregateQuery;
  v5 = [(ML3Query *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"aggregateEntityClass"];
    v5->_aggregateEntityClass = NSClassFromString(v6);

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"foreignPersistentIDProperty"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = ML3AggregateQuery;
  v4 = [(ML3Query *)&v6 copyWithZone:zone];
  *(v4 + 11) = self->_aggregateEntityClass;
  objc_storeStrong(v4 + 12, self->_foreignPersistentIDProperty);
  return v4;
}

- (ML3AggregateQuery)initWithUnitQuery:(id)query aggregateEntityClass:(Class)class foreignPersistentIDProperty:(id)property
{
  propertyCopy = property;
  queryCopy = query;
  library = [queryCopy library];
  entityClass = [queryCopy entityClass];
  predicate = [queryCopy predicate];
  orderingTerms = [queryCopy orderingTerms];
  usingSections = [queryCopy usingSections];
  options = [queryCopy options];

  v20.receiver = self;
  v20.super_class = ML3AggregateQuery;
  v16 = [(ML3Query *)&v20 initWithLibrary:library entityClass:entityClass predicate:predicate orderingTerms:orderingTerms usingSections:usingSections nonDirectAggregateQuery:0 propertyToCount:0 options:options];

  if (v16)
  {
    v16->_aggregateEntityClass = class;
    v17 = [propertyCopy copy];
    foreignPersistentIDProperty = v16->_foreignPersistentIDProperty;
    v16->_foreignPersistentIDProperty = v17;
  }

  return v16;
}

@end