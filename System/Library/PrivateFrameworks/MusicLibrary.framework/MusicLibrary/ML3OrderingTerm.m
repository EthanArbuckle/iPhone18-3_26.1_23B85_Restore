@interface ML3OrderingTerm
+ (id)orderingTermWithProperty:(id)a3;
+ (id)orderingTermWithProperty:(id)a3 direction:(int)a4;
+ (id)reversedTerms:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ML3OrderingTerm)initWithCoder:(id)a3;
- (ML3OrderingTerm)initWithProperty:(id)a3 direction:(int)a4 collation:(id)a5;
- (id)description;
- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ML3OrderingTerm

- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4
{
  v10 = a3;
  v6 = [(NSString *)self->_property hasPrefix:@"ML3SpotlightMatch"];
  property = self->_property;
  if (v6)
  {
    [v10 appendString:property];
  }

  else
  {
    v8 = [(objc_class *)a4 disambiguatedSQLForProperty:property];
    [v10 appendString:v8];
  }

  if (self->_collation)
  {
    [v10 appendString:@" COLLATE "];
    [v10 appendString:self->_collation];
  }

  v9 = v10;
  if (self->_direction == 2)
  {
    [v10 appendString:@" DESC"];
    v9 = v10;
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

- (ML3OrderingTerm)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"property"];
  v6 = [v4 decodeIntegerForKey:@"direction"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collation"];

  v8 = [(ML3OrderingTerm *)self initWithProperty:v5 direction:v6 collation:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  property = self->_property;
  v5 = a3;
  [v5 encodeObject:property forKey:@"property"];
  [v5 encodeInteger:self->_direction forKey:@"direction"];
  [v5 encodeObject:self->_collation forKey:@"collation"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ((property = self->_property, property == v4[2]) || [(NSString *)property isEqual:?]) && self->_direction == *(v4 + 2))
  {
    collation = self->_collation;
    if (collation == v4[3])
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

- (ML3OrderingTerm)initWithProperty:(id)a3 direction:(int)a4 collation:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = ML3OrderingTerm;
  v10 = [(ML3OrderingTerm *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    property = v10->_property;
    v10->_property = v11;

    v10->_direction = a4;
    v13 = [v9 copy];
    collation = v10->_collation;
    v10->_collation = v13;
  }

  return v10;
}

+ (id)orderingTermWithProperty:(id)a3 direction:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = [[ML3OrderingTerm alloc] initWithProperty:v5 direction:v4];

  return v6;
}

+ (id)orderingTermWithProperty:(id)a3
{
  v3 = a3;
  v4 = [[ML3OrderingTerm alloc] initWithProperty:v3];

  return v4;
}

+ (id)reversedTerms:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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
        v11 = [v10 property];
        if ([v10 direction] == 2)
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }

        v13 = [ML3OrderingTerm orderingTermWithProperty:v11 direction:v12];
        [v4 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

@end