@interface FHDatabaseJoinClauseBuilder
- (FHDatabaseJoinClauseBuilder)init;
- (void)addKeyPairsWithJoinType:(id)a3 leftEntity:(id)a4 leftJoinKey:(id)a5 rightEntity:(id)a6 rightJoinKey:(id)a7;
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

- (void)addKeyPairsWithJoinType:(id)a3 leftEntity:(id)a4 leftJoinKey:(id)a5 rightEntity:(id)a6 rightJoinKey:(id)a7
{
  v12 = MEMORY[0x277CCACA8];
  v13 = a6;
  v14 = a4;
  v19 = [v12 stringWithFormat:@" %@ join %@ on %@.%@ = %@.%@", a3, v13, v14, a5, v13, a7];
  entities = self->_entities;
  v16 = [v14 lowercaseString];

  [(NSMutableArray *)entities addObject:v16];
  v17 = self->_entities;
  v18 = [v13 lowercaseString];

  [(NSMutableArray *)v17 addObject:v18];
  [(NSMutableArray *)self->_clauses addObject:v19];
}

@end