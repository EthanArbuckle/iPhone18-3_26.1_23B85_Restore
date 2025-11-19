@interface HDSQLiteNullPredicate
+ (id)isNotNullPredicateWithProperty:(id)a3;
+ (id)isNullPredicateWithProperty:(id)a3;
- (BOOL)isCompatibleWithPredicate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)SQLForEntityClass:(Class)a3;
- (id)description;
@end

@implementation HDSQLiteNullPredicate

+ (id)isNotNullPredicateWithProperty:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v4[16] = 0;
  v5 = [v3 copy];

  v6 = *(v4 + 1);
  *(v4 + 1) = v5;

  return v4;
}

+ (id)isNullPredicateWithProperty:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v4[16] = 1;
  v5 = [v3 copy];

  v6 = *(v4 + 1);
  *(v4 + 1) = v5;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDSQLiteNullPredicate;
  if ([(HDSQLitePropertyPredicate *)&v8 isEqual:v4])
  {
    v5 = [(HDSQLiteNullPredicate *)self matchesNull];
    v6 = v5 ^ [v4 matchesNull] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)SQLForEntityClass:(Class)a3
{
  v5 = [(HDSQLitePropertyPredicate *)self property];
  v6 = [(objc_class *)a3 disambiguatedSQLForProperty:v5];

  v7 = MEMORY[0x277CCACA8];
  v8 = [(HDSQLiteNullPredicate *)self matchesNull];
  v9 = @"IS NOT NULL";
  if (v8)
  {
    v9 = @"IS NULL";
  }

  v10 = [v7 stringWithFormat:@"(%@ %@)", v6, v9];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HDSQLitePropertyPredicate *)self property];
  v5 = v4;
  if (self->_matchesNull)
  {
    v6 = "";
  }

  else
  {
    v6 = "NOT ";
  }

  v7 = [v3 stringWithFormat:@"<%@ IS %sNULL>", v4, v6];

  return v7;
}

- (BOOL)isCompatibleWithPredicate:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HDSQLiteNullPredicate;
  if ([(HDSQLitePropertyPredicate *)&v7 isCompatibleWithPredicate:v4])
  {
    v5 = self->_matchesNull == v4[16];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end