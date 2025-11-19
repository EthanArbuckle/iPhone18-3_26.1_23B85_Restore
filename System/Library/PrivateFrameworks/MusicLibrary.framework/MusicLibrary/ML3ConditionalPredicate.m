@interface ML3ConditionalPredicate
+ (id)predicateWithConditionPredicate:(id)a3 thenPredicate:(id)a4 elsePredicate:(id)a5;
- (BOOL)isDynamicForEntityClass:(Class)a3;
- (BOOL)isEqual:(id)a3;
- (ML3ConditionalPredicate)initWithCoder:(id)a3;
- (ML3ConditionalPredicate)initWithConditionPredicate:(id)a3 thenPredicate:(id)a4 elsePredicate:(id)a5;
- (id)SQLJoinClausesForClass:(Class)a3;
- (id)databaseStatementParameters;
- (id)description;
- (id)spotlightPredicate;
- (unint64_t)hash;
- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ML3ConditionalPredicate

- (id)spotlightPredicate
{
  v3 = [(ML3Predicate *)self->_conditionPredicate spotlightPredicate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(ML3Predicate *)self->_thenPredicate spotlightPredicate];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(ML3Predicate *)self->_elsePredicate spotlightPredicate];
    }

    v5 = v8;
  }

  return v5;
}

- (BOOL)isDynamicForEntityClass:(Class)a3
{
  if ([(ML3Predicate *)self->_conditionPredicate isDynamicForEntityClass:?]|| [(ML3Predicate *)self->_thenPredicate isDynamicForEntityClass:a3])
  {
    return 1;
  }

  elsePredicate = self->_elsePredicate;

  return [(ML3Predicate *)elsePredicate isDynamicForEntityClass:a3];
}

- (id)databaseStatementParameters
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  conditionPredicate = self->_conditionPredicate;
  if (conditionPredicate)
  {
    v5 = [(ML3Predicate *)conditionPredicate databaseStatementParameters];
    [v3 addObjectsFromArray:v5];
  }

  thenPredicate = self->_thenPredicate;
  if (thenPredicate)
  {
    v7 = [(ML3Predicate *)thenPredicate databaseStatementParameters];
    [v3 addObjectsFromArray:v7];
  }

  elsePredicate = self->_elsePredicate;
  if (elsePredicate)
  {
    v9 = [(ML3Predicate *)elsePredicate databaseStatementParameters];
    [v3 addObjectsFromArray:v9];
  }

  return v3;
}

- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4
{
  v6 = a3;
  v8 = v6;
  if (self->_conditionPredicate && self->_thenPredicate)
  {
    objc_msgSend(v6, "appendString:", @"(CASE WHEN ");
    [(ML3Predicate *)self->_conditionPredicate appendSQLToMutableString:v8 entityClass:a4];
    [v8 appendString:@" THEN "];
    [(ML3Predicate *)self->_thenPredicate appendSQLToMutableString:v8 entityClass:a4];
    if (self->_elsePredicate)
    {
      [v8 appendString:@" ELSE "];
      [(ML3Predicate *)self->_elsePredicate appendSQLToMutableString:v8 entityClass:a4];
    }

    else
    {
      [v8 appendString:@" ELSE 1"];
    }

    v7 = @" END");
    v6 = v8;
  }

  else
  {
    v7 = @"1";
  }

  [v6 appendString:v7];
}

- (id)SQLJoinClausesForClass:(Class)a3
{
  v5 = [MEMORY[0x277CBEB40] orderedSet];
  v6 = [(ML3ConditionalPredicate *)self conditionPredicate];
  v7 = [v6 SQLJoinClausesForClass:a3];
  [v5 unionOrderedSet:v7];

  v8 = [(ML3ConditionalPredicate *)self thenPredicate];
  v9 = [v8 SQLJoinClausesForClass:a3];
  [v5 unionOrderedSet:v9];

  v10 = [(ML3ConditionalPredicate *)self elsePredicate];
  v11 = [v10 SQLJoinClausesForClass:a3];
  [v5 unionOrderedSet:v11];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = ML3ConditionalPredicate;
  v4 = [(ML3ConditionalPredicate *)&v10 description];
  v5 = [(ML3ConditionalPredicate *)self conditionPredicate];
  v6 = [(ML3ConditionalPredicate *)self thenPredicate];
  v7 = [(ML3ConditionalPredicate *)self elsePredicate];
  v8 = [v3 stringWithFormat:@"%@(If %@ then %@ else %@)", v4, v5, v6, v7];

  return v8;
}

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = ML3ConditionalPredicate;
  v3 = [(ML3Predicate *)&v11 hash];
  v4 = [(ML3ConditionalPredicate *)self conditionPredicate];
  v5 = [v4 hash];
  v6 = [(ML3ConditionalPredicate *)self thenPredicate];
  v7 = v5 ^ [v6 hash];
  v8 = [(ML3ConditionalPredicate *)self elsePredicate];
  v9 = v7 ^ [v8 hash];

  return v9 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ML3ConditionalPredicate;
    if ([(ML3Predicate *)&v13 isEqual:v4])
    {
      v5 = [(ML3ConditionalPredicate *)self conditionPredicate];
      v6 = [(ML3ConditionalPredicate *)v4 conditionPredicate];
      if (v5 == v6 || [v5 isEqual:v6])
      {
        v7 = [(ML3ConditionalPredicate *)self thenPredicate];
        v8 = [(ML3ConditionalPredicate *)v4 thenPredicate];
        if (v7 == v8 || [v7 isEqual:v8])
        {
          v9 = [(ML3ConditionalPredicate *)self elsePredicate];
          v10 = [(ML3ConditionalPredicate *)v4 elsePredicate];
          if (v9 == v10)
          {
            v11 = 1;
          }

          else
          {
            v11 = [v9 isEqual:v10];
          }
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = ML3ConditionalPredicate;
  v4 = a3;
  [(ML3Predicate *)&v8 encodeWithCoder:v4];
  v5 = [(ML3ConditionalPredicate *)self conditionPredicate:v8.receiver];
  [v4 encodeObject:v5 forKey:@"condition"];

  v6 = [(ML3ConditionalPredicate *)self thenPredicate];
  [v4 encodeObject:v6 forKey:@"then"];

  v7 = [(ML3ConditionalPredicate *)self elsePredicate];
  [v4 encodeObject:v7 forKey:@"else"];
}

- (ML3ConditionalPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ML3ConditionalPredicate;
  v5 = [(ML3Predicate *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"condition"];
    conditionPredicate = v5->_conditionPredicate;
    v5->_conditionPredicate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"then"];
    thenPredicate = v5->_thenPredicate;
    v5->_thenPredicate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"else"];
    elsePredicate = v5->_elsePredicate;
    v5->_elsePredicate = v10;
  }

  return v5;
}

- (ML3ConditionalPredicate)initWithConditionPredicate:(id)a3 thenPredicate:(id)a4 elsePredicate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ML3ConditionalPredicate;
  v12 = [(ML3ConditionalPredicate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_conditionPredicate, a3);
    objc_storeStrong(&v13->_thenPredicate, a4);
    objc_storeStrong(&v13->_elsePredicate, a5);
  }

  return v13;
}

+ (id)predicateWithConditionPredicate:(id)a3 thenPredicate:(id)a4 elsePredicate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithConditionPredicate:v9 thenPredicate:v8 elsePredicate:v7];

  return v10;
}

@end