@interface DKComponentPredicate
+ (id)componentPredicateMatchingComponentIdentity:(id)identity;
+ (id)componentPredicateWithType:(id)type identifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToComponentPredicate:(id)predicate;
- (BOOL)matchesComponentIdentity:(id)identity;
- (DKComponentPredicate)initWithDomain:(id)domain exactMatch:(BOOL)match;
- (DKComponentPredicate)initWithType:(id)type identifier:(id)identifier;
- (unint64_t)hash;
@end

@implementation DKComponentPredicate

- (DKComponentPredicate)initWithDomain:(id)domain exactMatch:(BOOL)match
{
  domainCopy = domain;
  v16.receiver = self;
  v16.super_class = DKComponentPredicate;
  v8 = [(DKComponentPredicate *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_domain, domain);
    v10 = [domainCopy componentsSeparatedByString:@"."];
    v11 = [v10 objectAtIndexedSubscript:0];
    type = v9->_type;
    v9->_type = v11;

    if ([v10 count] >= 2)
    {
      v13 = [v10 objectAtIndexedSubscript:1];
      identifier = v9->_identifier;
      v9->_identifier = v13;
    }

    v9->_exactMatch = match;
  }

  return v9;
}

+ (id)componentPredicateWithType:(id)type identifier:(id)identifier
{
  identifierCopy = identifier;
  typeCopy = type;
  v8 = [[self alloc] initWithType:typeCopy identifier:identifierCopy];

  return v8;
}

- (DKComponentPredicate)initWithType:(id)type identifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = DKComponentPredicate;
  v9 = [(DKComponentPredicate *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_type, type);
    objc_storeStrong(&v10->_identifier, identifier);
    objc_storeStrong(&v10->_domain, type);
    if (identifierCopy)
    {
      v11 = [(NSString *)v10->_domain stringByAppendingString:@"."];
      v12 = [v11 stringByAppendingString:identifierCopy];
      domain = v10->_domain;
      v10->_domain = v12;
    }
  }

  return v10;
}

+ (id)componentPredicateMatchingComponentIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [self alloc];
  domain = [identityCopy domain];

  v7 = [v5 initWithDomain:domain exactMatch:1];

  return v7;
}

- (BOOL)matchesComponentIdentity:(id)identity
{
  identityCopy = identity;
  domain = [identityCopy domain];
  domain2 = [(DKComponentPredicate *)self domain];
  v7 = [domain isEqualToString:domain2];

  if (v7)
  {
    v8 = 1;
  }

  else if ([(DKComponentPredicate *)self exactMatch])
  {
    v8 = 0;
  }

  else
  {
    domain3 = [identityCopy domain];
    v10 = [domain3 stringByAppendingString:@"."];

    domain4 = [(DKComponentPredicate *)self domain];
    v8 = [v10 hasPrefix:domain4];
  }

  return v8;
}

- (unint64_t)hash
{
  domain = [(DKComponentPredicate *)self domain];
  v4 = [domain hash];
  v5 = [(DKComponentPredicate *)self exactMatch]^ 1;

  return v4 + v5;
}

- (BOOL)isEqualToComponentPredicate:(id)predicate
{
  predicateCopy = predicate;
  domain = [(DKComponentPredicate *)self domain];
  domain2 = [predicateCopy domain];

  LOBYTE(predicateCopy) = [domain isEqual:domain2];
  return predicateCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = self == equalCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(DKComponentPredicate *)self isEqualToComponentPredicate:equalCopy];
  }

  return v5;
}

@end