@interface HDSQLiteNullPredicate
+ (id)isNotNullPredicateWithProperty:(id)property;
+ (id)isNullPredicateWithProperty:(id)property;
- (BOOL)isCompatibleWithPredicate:(id)predicate;
- (BOOL)isEqual:(id)equal;
- (id)SQLForEntityClass:(Class)class;
- (id)description;
@end

@implementation HDSQLiteNullPredicate

+ (id)isNotNullPredicateWithProperty:(id)property
{
  propertyCopy = property;
  v4 = objc_alloc_init(objc_opt_class());
  v4[16] = 0;
  v5 = [propertyCopy copy];

  v6 = *(v4 + 1);
  *(v4 + 1) = v5;

  return v4;
}

+ (id)isNullPredicateWithProperty:(id)property
{
  propertyCopy = property;
  v4 = objc_alloc_init(objc_opt_class());
  v4[16] = 1;
  v5 = [propertyCopy copy];

  v6 = *(v4 + 1);
  *(v4 + 1) = v5;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = HDSQLiteNullPredicate;
  if ([(HDSQLitePropertyPredicate *)&v8 isEqual:equalCopy])
  {
    matchesNull = [(HDSQLiteNullPredicate *)self matchesNull];
    v6 = matchesNull ^ [equalCopy matchesNull] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)SQLForEntityClass:(Class)class
{
  property = [(HDSQLitePropertyPredicate *)self property];
  v6 = [(objc_class *)class disambiguatedSQLForProperty:property];

  v7 = MEMORY[0x277CCACA8];
  matchesNull = [(HDSQLiteNullPredicate *)self matchesNull];
  v9 = @"IS NOT NULL";
  if (matchesNull)
  {
    v9 = @"IS NULL";
  }

  v10 = [v7 stringWithFormat:@"(%@ %@)", v6, v9];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  property = [(HDSQLitePropertyPredicate *)self property];
  v5 = property;
  if (self->_matchesNull)
  {
    v6 = "";
  }

  else
  {
    v6 = "NOT ";
  }

  v7 = [v3 stringWithFormat:@"<%@ IS %sNULL>", property, v6];

  return v7;
}

- (BOOL)isCompatibleWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v7.receiver = self;
  v7.super_class = HDSQLiteNullPredicate;
  if ([(HDSQLitePropertyPredicate *)&v7 isCompatibleWithPredicate:predicateCopy])
  {
    v5 = self->_matchesNull == predicateCopy[16];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end