@interface ML3PropertyPredicate
+ (id)predicateWithProperty:(id)property;
- (BOOL)isEqual:(id)equal;
- (ML3PropertyPredicate)initWithCoder:(id)coder;
- (ML3PropertyPredicate)initWithProperty:(id)property;
- (id)SQLJoinClausesForClass:(Class)class;
- (id)description;
- (unint64_t)hash;
- (void)appendSQLToMutableString:(id)string entityClass:(Class)class;
- (void)encodeWithCoder:(id)coder;
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

- (void)appendSQLToMutableString:(id)string entityClass:(Class)class
{
  property = self->_property;
  stringCopy = string;
  v7 = [(objc_class *)class disambiguatedSQLForProperty:property];
  [stringCopy appendString:v7];
}

- (id)SQLJoinClausesForClass:(Class)class
{
  v5 = [(objc_class *)class subselectStatementForProperty:self->_property];
  if (v5 || ([(objc_class *)class joinClausesForProperty:self->_property], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
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
  property = [(ML3PropertyPredicate *)self property];
  v5 = [property hash];

  return v3 + v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ML3PropertyPredicate;
    if ([(ML3Predicate *)&v9 isEqual:equalCopy])
    {
      property = [(ML3PropertyPredicate *)self property];
      property2 = [(ML3PropertyPredicate *)equalCopy property];
      if (property == property2)
      {
        v7 = 1;
      }

      else
      {
        v7 = [property isEqual:property2];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ML3PropertyPredicate;
  coderCopy = coder;
  [(ML3Predicate *)&v6 encodeWithCoder:coderCopy];
  v5 = [(ML3PropertyPredicate *)self property:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"property"];
}

- (ML3PropertyPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = ML3PropertyPredicate;
  v5 = [(ML3Predicate *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"property"];
    [(ML3PropertyPredicate *)v5 setProperty:v6];
  }

  return v5;
}

- (ML3PropertyPredicate)initWithProperty:(id)property
{
  propertyCopy = property;
  v8.receiver = self;
  v8.super_class = ML3PropertyPredicate;
  v5 = [(ML3PropertyPredicate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ML3PropertyPredicate *)v5 setProperty:propertyCopy];
  }

  return v6;
}

+ (id)predicateWithProperty:(id)property
{
  propertyCopy = property;
  v4 = [[ML3PropertyPredicate alloc] initWithProperty:propertyCopy];

  return v4;
}

@end