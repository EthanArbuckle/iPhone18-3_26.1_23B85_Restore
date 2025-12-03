@interface ML3ConditionalPredicate
+ (id)predicateWithConditionPredicate:(id)predicate thenPredicate:(id)thenPredicate elsePredicate:(id)elsePredicate;
- (BOOL)isDynamicForEntityClass:(Class)class;
- (BOOL)isEqual:(id)equal;
- (ML3ConditionalPredicate)initWithCoder:(id)coder;
- (ML3ConditionalPredicate)initWithConditionPredicate:(id)predicate thenPredicate:(id)thenPredicate elsePredicate:(id)elsePredicate;
- (id)SQLJoinClausesForClass:(Class)class;
- (id)databaseStatementParameters;
- (id)description;
- (id)spotlightPredicate;
- (unint64_t)hash;
- (void)appendSQLToMutableString:(id)string entityClass:(Class)class;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ML3ConditionalPredicate

- (id)spotlightPredicate
{
  spotlightPredicate = [(ML3Predicate *)self->_conditionPredicate spotlightPredicate];
  v4 = spotlightPredicate;
  if (spotlightPredicate)
  {
    v5 = spotlightPredicate;
  }

  else
  {
    spotlightPredicate2 = [(ML3Predicate *)self->_thenPredicate spotlightPredicate];
    v7 = spotlightPredicate2;
    if (spotlightPredicate2)
    {
      spotlightPredicate3 = spotlightPredicate2;
    }

    else
    {
      spotlightPredicate3 = [(ML3Predicate *)self->_elsePredicate spotlightPredicate];
    }

    v5 = spotlightPredicate3;
  }

  return v5;
}

- (BOOL)isDynamicForEntityClass:(Class)class
{
  if ([(ML3Predicate *)self->_conditionPredicate isDynamicForEntityClass:?]|| [(ML3Predicate *)self->_thenPredicate isDynamicForEntityClass:class])
  {
    return 1;
  }

  elsePredicate = self->_elsePredicate;

  return [(ML3Predicate *)elsePredicate isDynamicForEntityClass:class];
}

- (id)databaseStatementParameters
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  conditionPredicate = self->_conditionPredicate;
  if (conditionPredicate)
  {
    databaseStatementParameters = [(ML3Predicate *)conditionPredicate databaseStatementParameters];
    [v3 addObjectsFromArray:databaseStatementParameters];
  }

  thenPredicate = self->_thenPredicate;
  if (thenPredicate)
  {
    databaseStatementParameters2 = [(ML3Predicate *)thenPredicate databaseStatementParameters];
    [v3 addObjectsFromArray:databaseStatementParameters2];
  }

  elsePredicate = self->_elsePredicate;
  if (elsePredicate)
  {
    databaseStatementParameters3 = [(ML3Predicate *)elsePredicate databaseStatementParameters];
    [v3 addObjectsFromArray:databaseStatementParameters3];
  }

  return v3;
}

- (void)appendSQLToMutableString:(id)string entityClass:(Class)class
{
  stringCopy = string;
  v8 = stringCopy;
  if (self->_conditionPredicate && self->_thenPredicate)
  {
    objc_msgSend(stringCopy, "appendString:", @"(CASE WHEN ");
    [(ML3Predicate *)self->_conditionPredicate appendSQLToMutableString:v8 entityClass:class];
    [v8 appendString:@" THEN "];
    [(ML3Predicate *)self->_thenPredicate appendSQLToMutableString:v8 entityClass:class];
    if (self->_elsePredicate)
    {
      [v8 appendString:@" ELSE "];
      [(ML3Predicate *)self->_elsePredicate appendSQLToMutableString:v8 entityClass:class];
    }

    else
    {
      [v8 appendString:@" ELSE 1"];
    }

    v7 = @" END");
    stringCopy = v8;
  }

  else
  {
    v7 = @"1";
  }

  [stringCopy appendString:v7];
}

- (id)SQLJoinClausesForClass:(Class)class
{
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  conditionPredicate = [(ML3ConditionalPredicate *)self conditionPredicate];
  v7 = [conditionPredicate SQLJoinClausesForClass:class];
  [orderedSet unionOrderedSet:v7];

  thenPredicate = [(ML3ConditionalPredicate *)self thenPredicate];
  v9 = [thenPredicate SQLJoinClausesForClass:class];
  [orderedSet unionOrderedSet:v9];

  elsePredicate = [(ML3ConditionalPredicate *)self elsePredicate];
  v11 = [elsePredicate SQLJoinClausesForClass:class];
  [orderedSet unionOrderedSet:v11];

  return orderedSet;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = ML3ConditionalPredicate;
  v4 = [(ML3ConditionalPredicate *)&v10 description];
  conditionPredicate = [(ML3ConditionalPredicate *)self conditionPredicate];
  thenPredicate = [(ML3ConditionalPredicate *)self thenPredicate];
  elsePredicate = [(ML3ConditionalPredicate *)self elsePredicate];
  v8 = [v3 stringWithFormat:@"%@(If %@ then %@ else %@)", v4, conditionPredicate, thenPredicate, elsePredicate];

  return v8;
}

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = ML3ConditionalPredicate;
  v3 = [(ML3Predicate *)&v11 hash];
  conditionPredicate = [(ML3ConditionalPredicate *)self conditionPredicate];
  v5 = [conditionPredicate hash];
  thenPredicate = [(ML3ConditionalPredicate *)self thenPredicate];
  v7 = v5 ^ [thenPredicate hash];
  elsePredicate = [(ML3ConditionalPredicate *)self elsePredicate];
  v9 = v7 ^ [elsePredicate hash];

  return v9 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ML3ConditionalPredicate;
    if ([(ML3Predicate *)&v13 isEqual:equalCopy])
    {
      conditionPredicate = [(ML3ConditionalPredicate *)self conditionPredicate];
      conditionPredicate2 = [(ML3ConditionalPredicate *)equalCopy conditionPredicate];
      if (conditionPredicate == conditionPredicate2 || [conditionPredicate isEqual:conditionPredicate2])
      {
        thenPredicate = [(ML3ConditionalPredicate *)self thenPredicate];
        thenPredicate2 = [(ML3ConditionalPredicate *)equalCopy thenPredicate];
        if (thenPredicate == thenPredicate2 || [thenPredicate isEqual:thenPredicate2])
        {
          elsePredicate = [(ML3ConditionalPredicate *)self elsePredicate];
          elsePredicate2 = [(ML3ConditionalPredicate *)equalCopy elsePredicate];
          if (elsePredicate == elsePredicate2)
          {
            v11 = 1;
          }

          else
          {
            v11 = [elsePredicate isEqual:elsePredicate2];
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

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = ML3ConditionalPredicate;
  coderCopy = coder;
  [(ML3Predicate *)&v8 encodeWithCoder:coderCopy];
  v5 = [(ML3ConditionalPredicate *)self conditionPredicate:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"condition"];

  thenPredicate = [(ML3ConditionalPredicate *)self thenPredicate];
  [coderCopy encodeObject:thenPredicate forKey:@"then"];

  elsePredicate = [(ML3ConditionalPredicate *)self elsePredicate];
  [coderCopy encodeObject:elsePredicate forKey:@"else"];
}

- (ML3ConditionalPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ML3ConditionalPredicate;
  v5 = [(ML3Predicate *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"condition"];
    conditionPredicate = v5->_conditionPredicate;
    v5->_conditionPredicate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"then"];
    thenPredicate = v5->_thenPredicate;
    v5->_thenPredicate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"else"];
    elsePredicate = v5->_elsePredicate;
    v5->_elsePredicate = v10;
  }

  return v5;
}

- (ML3ConditionalPredicate)initWithConditionPredicate:(id)predicate thenPredicate:(id)thenPredicate elsePredicate:(id)elsePredicate
{
  predicateCopy = predicate;
  thenPredicateCopy = thenPredicate;
  elsePredicateCopy = elsePredicate;
  v15.receiver = self;
  v15.super_class = ML3ConditionalPredicate;
  v12 = [(ML3ConditionalPredicate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_conditionPredicate, predicate);
    objc_storeStrong(&v13->_thenPredicate, thenPredicate);
    objc_storeStrong(&v13->_elsePredicate, elsePredicate);
  }

  return v13;
}

+ (id)predicateWithConditionPredicate:(id)predicate thenPredicate:(id)thenPredicate elsePredicate:(id)elsePredicate
{
  elsePredicateCopy = elsePredicate;
  thenPredicateCopy = thenPredicate;
  predicateCopy = predicate;
  v10 = [objc_alloc(objc_opt_class()) initWithConditionPredicate:predicateCopy thenPredicate:thenPredicateCopy elsePredicate:elsePredicateCopy];

  return v10;
}

@end