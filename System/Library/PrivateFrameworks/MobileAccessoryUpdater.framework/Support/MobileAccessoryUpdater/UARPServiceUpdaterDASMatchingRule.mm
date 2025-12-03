@interface UARPServiceUpdaterDASMatchingRule
- (BOOL)isEqual:(id)equal;
- (UARPServiceUpdaterDASMatchingRule)initWithCoder:(id)coder;
- (UARPServiceUpdaterDASMatchingRule)initWithIdentifier:(id)identifier matchingDictionary:(id)dictionary;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPServiceUpdaterDASMatchingRule

- (UARPServiceUpdaterDASMatchingRule)initWithIdentifier:(id)identifier matchingDictionary:(id)dictionary
{
  v8.receiver = self;
  v8.super_class = UARPServiceUpdaterDASMatchingRule;
  v6 = [(UARPServiceUpdaterDASMatchingRule *)&v8 init];
  if (v6)
  {
    v6->_identifier = [identifier copy];
    v6->_matchingDictionary = [dictionary copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPServiceUpdaterDASMatchingRule;
  [(UARPServiceUpdaterDASMatchingRule *)&v3 dealloc];
}

- (UARPServiceUpdaterDASMatchingRule)initWithCoder:(id)coder
{
  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v7[3] = objc_opt_class();
  return -[UARPServiceUpdaterDASMatchingRule initWithIdentifier:matchingDictionary:](self, "initWithIdentifier:matchingDictionary:", v5, [coder decodeObjectOfClasses:+[NSSet setWithArray:](NSSet forKey:{"setWithArray:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v7, 4)), @"matchingDictionary"}]);
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_identifier forKey:@"identifier"];
  matchingDictionary = self->_matchingDictionary;

  [coder encodeObject:matchingDictionary forKey:@"matchingDictionary"];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equal)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = [(NSString *)self->_identifier isEqual:*(equal + 1)];
      if (v5)
      {
        matchingDictionary = self->_matchingDictionary;
        v7 = *(equal + 2);

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