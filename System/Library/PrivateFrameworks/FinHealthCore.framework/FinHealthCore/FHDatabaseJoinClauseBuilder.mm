@interface FHDatabaseJoinClauseBuilder
- (FHDatabaseJoinClauseBuilder)init;
- (void)addKeyPairsWithJoinType:(id)type leftEntity:(id)entity leftJoinKey:(id)key rightEntity:(id)rightEntity rightJoinKey:(id)joinKey;
@end

@implementation FHDatabaseJoinClauseBuilder

- (FHDatabaseJoinClauseBuilder)init
{
  v8.receiver = self;
  v8.super_class = FHDatabaseJoinClauseBuilder;
  v2 = [(FHDatabaseJoinClauseBuilder *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    clauses = v2->_clauses;
    v2->_clauses = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    entities = v2->_entities;
    v2->_entities = v5;
  }

  return v2;
}

- (void)addKeyPairsWithJoinType:(id)type leftEntity:(id)entity leftJoinKey:(id)key rightEntity:(id)rightEntity rightJoinKey:(id)joinKey
{
  v12 = MEMORY[0x277CCACA8];
  rightEntityCopy = rightEntity;
  entityCopy = entity;
  joinKey = [v12 stringWithFormat:@" %@ join %@ on %@.%@ = %@.%@", type, rightEntityCopy, entityCopy, key, rightEntityCopy, joinKey];
  entities = self->_entities;
  lowercaseString = [entityCopy lowercaseString];

  [(NSMutableArray *)entities addObject:lowercaseString];
  v17 = self->_entities;
  lowercaseString2 = [rightEntityCopy lowercaseString];

  [(NSMutableArray *)v17 addObject:lowercaseString2];
  [(NSMutableArray *)self->_clauses addObject:joinKey];
}

@end