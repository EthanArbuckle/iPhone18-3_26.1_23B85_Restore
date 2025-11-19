@interface DKComponentPredicate
+ (id)componentPredicateMatchingComponentIdentity:(id)a3;
+ (id)componentPredicateWithType:(id)a3 identifier:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToComponentPredicate:(id)a3;
- (BOOL)matchesComponentIdentity:(id)a3;
- (DKComponentPredicate)initWithDomain:(id)a3 exactMatch:(BOOL)a4;
- (DKComponentPredicate)initWithType:(id)a3 identifier:(id)a4;
- (unint64_t)hash;
@end

@implementation DKComponentPredicate

- (DKComponentPredicate)initWithDomain:(id)a3 exactMatch:(BOOL)a4
{
  v7 = a3;
  v16.receiver = self;
  v16.super_class = DKComponentPredicate;
  v8 = [(DKComponentPredicate *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_domain, a3);
    v10 = [v7 componentsSeparatedByString:@"."];
    v11 = [v10 objectAtIndexedSubscript:0];
    type = v9->_type;
    v9->_type = v11;

    if ([v10 count] >= 2)
    {
      v13 = [v10 objectAtIndexedSubscript:1];
      identifier = v9->_identifier;
      v9->_identifier = v13;
    }

    v9->_exactMatch = a4;
  }

  return v9;
}

+ (id)componentPredicateWithType:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithType:v7 identifier:v6];

  return v8;
}

- (DKComponentPredicate)initWithType:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = DKComponentPredicate;
  v9 = [(DKComponentPredicate *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_type, a3);
    objc_storeStrong(&v10->_identifier, a4);
    objc_storeStrong(&v10->_domain, a3);
    if (v8)
    {
      v11 = [(NSString *)v10->_domain stringByAppendingString:@"."];
      v12 = [v11 stringByAppendingString:v8];
      domain = v10->_domain;
      v10->_domain = v12;
    }
  }

  return v10;
}

+ (id)componentPredicateMatchingComponentIdentity:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 domain];

  v7 = [v5 initWithDomain:v6 exactMatch:1];

  return v7;
}

- (BOOL)matchesComponentIdentity:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = [(DKComponentPredicate *)self domain];
  v7 = [v5 isEqualToString:v6];

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
    v9 = [v4 domain];
    v10 = [v9 stringByAppendingString:@"."];

    v11 = [(DKComponentPredicate *)self domain];
    v8 = [v10 hasPrefix:v11];
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(DKComponentPredicate *)self domain];
  v4 = [v3 hash];
  v5 = [(DKComponentPredicate *)self exactMatch]^ 1;

  return v4 + v5;
}

- (BOOL)isEqualToComponentPredicate:(id)a3
{
  v4 = a3;
  v5 = [(DKComponentPredicate *)self domain];
  v6 = [v4 domain];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = self == v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(DKComponentPredicate *)self isEqualToComponentPredicate:v4];
  }

  return v5;
}

@end