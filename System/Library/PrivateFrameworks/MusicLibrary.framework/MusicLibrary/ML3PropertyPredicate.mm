@interface ML3PropertyPredicate
+ (id)predicateWithProperty:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ML3PropertyPredicate)initWithCoder:(id)a3;
- (ML3PropertyPredicate)initWithProperty:(id)a3;
- (id)SQLJoinClausesForClass:(Class)a3;
- (id)description;
- (unint64_t)hash;
- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ML3PropertyPredicate

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = ML3PropertyPredicate;
  v4 = [(ML3PropertyPredicate *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@(%@)", v4, self->_property];

  return v5;
}

- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4
{
  property = self->_property;
  v6 = a3;
  v7 = [(objc_class *)a4 disambiguatedSQLForProperty:property];
  [v6 appendString:v7];
}

- (id)SQLJoinClausesForClass:(Class)a3
{
  v5 = [(objc_class *)a3 subselectStatementForProperty:self->_property];
  if (v5 || ([(objc_class *)a3 joinClausesForProperty:self->_property], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = 0;
  }

  else
  {
    v8 = v7;
    v6 = [MEMORY[0x277CBEB70] orderedSetWithArray:v7];
  }

  return v6;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = ML3PropertyPredicate;
  v3 = [(ML3Predicate *)&v7 hash];
  v4 = [(ML3PropertyPredicate *)self property];
  v5 = [v4 hash];

  return v3 + v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ML3PropertyPredicate;
    if ([(ML3Predicate *)&v9 isEqual:v4])
    {
      v5 = [(ML3PropertyPredicate *)self property];
      v6 = [(ML3PropertyPredicate *)v4 property];
      if (v5 == v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = [v5 isEqual:v6];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ML3PropertyPredicate;
  v4 = a3;
  [(ML3Predicate *)&v6 encodeWithCoder:v4];
  v5 = [(ML3PropertyPredicate *)self property:v6.receiver];
  [v4 encodeObject:v5 forKey:@"property"];
}

- (ML3PropertyPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ML3PropertyPredicate;
  v5 = [(ML3Predicate *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"property"];
    [(ML3PropertyPredicate *)v5 setProperty:v6];
  }

  return v5;
}

- (ML3PropertyPredicate)initWithProperty:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ML3PropertyPredicate;
  v5 = [(ML3PropertyPredicate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ML3PropertyPredicate *)v5 setProperty:v4];
  }

  return v6;
}

+ (id)predicateWithProperty:(id)a3
{
  v3 = a3;
  v4 = [[ML3PropertyPredicate alloc] initWithProperty:v3];

  return v4;
}

@end