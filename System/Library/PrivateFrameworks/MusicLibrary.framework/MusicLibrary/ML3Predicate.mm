@interface ML3Predicate
- (BOOL)isEqual:(id)a3;
- (ML3Predicate)initWithCoder:(id)a3;
- (id)SQLForEntityClass:(Class)a3;
- (unint64_t)hash;
@end

@implementation ML3Predicate

- (id)SQLForEntityClass:(Class)a3
{
  v5 = [MEMORY[0x277CCAB68] string];
  [(ML3Predicate *)self appendSQLToMutableString:v5 entityClass:a3];

  return v5;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v3 = objc_opt_class();
  return v3 == objc_opt_class();
}

- (ML3Predicate)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = ML3Predicate;
  return [(ML3Predicate *)&v4 init];
}

@end