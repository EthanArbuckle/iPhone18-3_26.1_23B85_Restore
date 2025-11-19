@interface FHDatabaseJoinClauseFromBuilder
+ (id)initWithBuilder:(id)a3;
- (id)_init:(id)a3;
- (id)description;
@end

@implementation FHDatabaseJoinClauseFromBuilder

+ (id)initWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(FHDatabaseJoinClauseBuilder);
  v3[2](v3, v4);

  v5 = [[FHDatabaseJoinClauseFromBuilder alloc] _init:v4];

  return v5;
}

- (id)_init:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = FHDatabaseJoinClauseFromBuilder;
  v13.receiver = [(FHDatabaseJoinClauseFromBuilder *)&v14 init];
  v13.super_class = FHDatabaseJoinClauseFromBuilder;
  v5 = [(FHDatabaseJoinClauseFromBuilder *)&v13 init];
  if (v5)
  {
    v6 = [v4 clauses];
    v7 = [v6 copy];
    clauses = v5->_clauses;
    v5->_clauses = v7;

    v9 = [v4 entities];
    v10 = [v9 copy];
    entities = v5->_entities;
    v5->_entities = v10;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(NSArray *)self->_clauses componentsJoinedByString:@"\n"];
  [v3 appendFormat:@"clauses: '%@'; ", v4];

  [v3 appendFormat:@">"];

  return v3;
}

@end