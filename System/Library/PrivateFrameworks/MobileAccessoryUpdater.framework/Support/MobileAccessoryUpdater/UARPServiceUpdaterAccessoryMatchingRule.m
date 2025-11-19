@interface UARPServiceUpdaterAccessoryMatchingRule
- (BOOL)isEqual:(id)a3;
- (UARPServiceUpdaterAccessoryMatchingRule)initWithCoder:(id)a3;
- (UARPServiceUpdaterAccessoryMatchingRule)initWithIdentifier:(id)a3 xpcEventStream:(id)a4 matchingDictionary:(id)a5;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPServiceUpdaterAccessoryMatchingRule

- (UARPServiceUpdaterAccessoryMatchingRule)initWithIdentifier:(id)a3 xpcEventStream:(id)a4 matchingDictionary:(id)a5
{
  v10.receiver = self;
  v10.super_class = UARPServiceUpdaterAccessoryMatchingRule;
  v8 = [(UARPServiceUpdaterAccessoryMatchingRule *)&v10 init];
  if (v8)
  {
    v8->_identifier = [a3 copy];
    v8->_xpcEventStream = [a4 copy];
    v8->_matchingDictionary = [a5 copy];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPServiceUpdaterAccessoryMatchingRule;
  [(UARPServiceUpdaterAccessoryMatchingRule *)&v3 dealloc];
}

- (UARPServiceUpdaterAccessoryMatchingRule)initWithCoder:(id)a3
{
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"xpcEventStream"];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v8[3] = objc_opt_class();
  return -[UARPServiceUpdaterAccessoryMatchingRule initWithIdentifier:xpcEventStream:matchingDictionary:](self, "initWithIdentifier:xpcEventStream:matchingDictionary:", v5, v6, [a3 decodeObjectOfClasses:+[NSSet setWithArray:](NSSet forKey:{"setWithArray:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v8, 4)), @"matchingDictionary"}]);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_identifier forKey:@"identifier"];
  [a3 encodeObject:self->_xpcEventStream forKey:@"xpcEventStream"];
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
        v5 = [(NSString *)self->_xpcEventStream isEqual:*(a3 + 2)];
        if (v5)
        {
          matchingDictionary = self->_matchingDictionary;
          v7 = *(a3 + 3);

          LOBYTE(v5) = [(NSDictionary *)matchingDictionary isEqual:v7];
        }
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
  v2 = [NSString stringWithFormat:@"%@%@", self->_identifier, self->_xpcEventStream];

  return [(NSString *)v2 hash];
}

@end