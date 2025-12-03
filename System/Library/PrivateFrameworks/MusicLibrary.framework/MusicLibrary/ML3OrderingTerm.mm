@interface ML3OrderingTerm
+ (id)orderingTermWithProperty:(id)property;
+ (id)orderingTermWithProperty:(id)property direction:(int)direction;
+ (id)reversedTerms:(id)terms;
- (BOOL)isEqual:(id)equal;
- (ML3OrderingTerm)initWithCoder:(id)coder;
- (ML3OrderingTerm)initWithProperty:(id)property direction:(int)direction collation:(id)collation;
- (id)description;
- (void)appendSQLToMutableString:(id)string entityClass:(Class)class;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ML3OrderingTerm

- (void)appendSQLToMutableString:(id)string entityClass:(Class)class
{
  stringCopy = string;
  v6 = [(NSString *)self->_property hasPrefix:@"ML3SpotlightMatch"];
  property = self->_property;
  if (v6)
  {
    [stringCopy appendString:property];
  }

  else
  {
    v8 = [(objc_class *)class disambiguatedSQLForProperty:property];
    [stringCopy appendString:v8];
  }

  if (self->_collation)
  {
    [stringCopy appendString:@" COLLATE "];
    [stringCopy appendString:self->_collation];
  }

  v9 = stringCopy;
  if (self->_direction == 2)
  {
    [stringCopy appendString:@" DESC"];
    v9 = stringCopy;
  }
}

- (id)description
{
  if (self->_direction == 1)
  {
    v3 = @"ascending";
  }

  else
  {
    v3 = @"descending";
  }

  v4 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = ML3OrderingTerm;
  v5 = v3;
  v6 = [(ML3OrderingTerm *)&v9 description];
  v7 = [v4 stringWithFormat:@"%@(%@ %@)", v6, self->_property, v5];

  return v7;
}

- (ML3OrderingTerm)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"property"];
  v6 = [coderCopy decodeIntegerForKey:@"direction"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collation"];

  v8 = [(ML3OrderingTerm *)self initWithProperty:v5 direction:v6 collation:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  property = self->_property;
  coderCopy = coder;
  [coderCopy encodeObject:property forKey:@"property"];
  [coderCopy encodeInteger:self->_direction forKey:@"direction"];
  [coderCopy encodeObject:self->_collation forKey:@"collation"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ((property = self->_property, property == equalCopy[2]) || [(NSString *)property isEqual:?]) && self->_direction == *(equalCopy + 2))
  {
    collation = self->_collation;
    if (collation == equalCopy[3])
    {
      v7 = 1;
    }

    else
    {
      v7 = [(NSString *)collation isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (ML3OrderingTerm)initWithProperty:(id)property direction:(int)direction collation:(id)collation
{
  propertyCopy = property;
  collationCopy = collation;
  v16.receiver = self;
  v16.super_class = ML3OrderingTerm;
  v10 = [(ML3OrderingTerm *)&v16 init];
  if (v10)
  {
    v11 = [propertyCopy copy];
    property = v10->_property;
    v10->_property = v11;

    v10->_direction = direction;
    v13 = [collationCopy copy];
    collation = v10->_collation;
    v10->_collation = v13;
  }

  return v10;
}

+ (id)orderingTermWithProperty:(id)property direction:(int)direction
{
  v4 = *&direction;
  propertyCopy = property;
  v6 = [[ML3OrderingTerm alloc] initWithProperty:propertyCopy direction:v4];

  return v6;
}

+ (id)orderingTermWithProperty:(id)property
{
  propertyCopy = property;
  v4 = [[ML3OrderingTerm alloc] initWithProperty:propertyCopy];

  return v4;
}

+ (id)reversedTerms:(id)terms
{
  v20 = *MEMORY[0x277D85DE8];
  termsCopy = terms;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(termsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = termsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        property = [v10 property];
        if ([v10 direction] == 2)
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }

        v13 = [ML3OrderingTerm orderingTermWithProperty:property direction:v12];
        [v4 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

@end