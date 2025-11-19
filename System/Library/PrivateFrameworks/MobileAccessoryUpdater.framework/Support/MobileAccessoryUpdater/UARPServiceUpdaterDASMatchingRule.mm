@interface UARPServiceUpdaterDASMatchingRule
- (BOOL)isEqual:(id)a3;
- (UARPServiceUpdaterDASMatchingRule)initWithCoder:(id)a3;
- (UARPServiceUpdaterDASMatchingRule)initWithIdentifier:(id)a3 matchingDictionary:(id)a4;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPServiceUpdaterDASMatchingRule

- (UARPServiceUpdaterDASMatchingRule)initWithIdentifier:(id)a3 matchingDictionary:(id)a4
{
  v8.receiver = self;
  v8.super_class = UARPServiceUpdaterDASMatchingRule;
  v6 = [(UARPServiceUpdaterDASMatchingRule *)&v8 init];
  if (v6)
  {
    v6->_identifier = [a3 copy];
    v6->_matchingDictionary = [a4 copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPServiceUpdaterDASMatchingRule;
  [(UARPServiceUpdaterDASMatchingRule *)&v3 dealloc];
}

- (UARPServiceUpdaterDASMatchingRule)initWithCoder:(id)a3
{
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v7[3] = objc_opt_class();
  return -[UARPServiceUpdaterDASMatchingRule initWithIdentifier:matchingDictionary:](self, "initWithIdentifier:matchingDictionary:", v5, [a3 decodeObjectOfClasses:+[NSSet setWithArray:](NSSet forKey:{"setWithArray:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v7, 4)), @"matchingDictionary"}]);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_identifier forKey:@"identifier"];
  matchingDictionary = self->_matchingDictionary;

  [a3 encodeObject:matchingDictionary forKey:@"matchingDictionary"];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == a3)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = [(NSString *)self->_identifier isEqual:*(a3 + 1)];
      if (v5)
      {
        matchingDictionary = self->_matchingDictionary;
        v7 = *(a3 + 2);

        LOBYTE(v5) = [(NSDictionary *)matchingDictionary isEqual:v7];
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [NSString stringWithFormat:@"%@", self->_identifier];

  return [(NSString *)v2 hash];
}

@end