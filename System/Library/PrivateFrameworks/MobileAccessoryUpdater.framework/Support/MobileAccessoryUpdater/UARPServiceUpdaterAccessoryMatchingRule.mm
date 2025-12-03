@interface UARPServiceUpdaterAccessoryMatchingRule
- (BOOL)isEqual:(id)equal;
- (UARPServiceUpdaterAccessoryMatchingRule)initWithCoder:(id)coder;
- (UARPServiceUpdaterAccessoryMatchingRule)initWithIdentifier:(id)identifier xpcEventStream:(id)stream matchingDictionary:(id)dictionary;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPServiceUpdaterAccessoryMatchingRule

- (UARPServiceUpdaterAccessoryMatchingRule)initWithIdentifier:(id)identifier xpcEventStream:(id)stream matchingDictionary:(id)dictionary
{
  v10.receiver = self;
  v10.super_class = UARPServiceUpdaterAccessoryMatchingRule;
  v8 = [(UARPServiceUpdaterAccessoryMatchingRule *)&v10 init];
  if (v8)
  {
    v8->_identifier = [identifier copy];
    v8->_xpcEventStream = [stream copy];
    v8->_matchingDictionary = [dictionary copy];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPServiceUpdaterAccessoryMatchingRule;
  [(UARPServiceUpdaterAccessoryMatchingRule *)&v3 dealloc];
}

- (UARPServiceUpdaterAccessoryMatchingRule)initWithCoder:(id)coder
{
  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"xpcEventStream"];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v8[3] = objc_opt_class();
  return -[UARPServiceUpdaterAccessoryMatchingRule initWithIdentifier:xpcEventStream:matchingDictionary:](self, "initWithIdentifier:xpcEventStream:matchingDictionary:", v5, v6, [coder decodeObjectOfClasses:+[NSSet setWithArray:](NSSet forKey:{"setWithArray:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v8, 4)), @"matchingDictionary"}]);
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_identifier forKey:@"identifier"];
  [coder encodeObject:self->_xpcEventStream forKey:@"xpcEventStream"];
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
        v5 = [(NSString *)self->_xpcEventStream isEqual:*(equal + 2)];
        if (v5)
        {
          matchingDictionary = self->_matchingDictionary;
          v7 = *(equal + 3);

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