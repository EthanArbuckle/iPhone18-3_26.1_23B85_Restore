@interface ML3Predicate
- (BOOL)isEqual:(id)equal;
- (ML3Predicate)initWithCoder:(id)coder;
- (id)SQLForEntityClass:(Class)class;
- (unint64_t)hash;
@end

@implementation ML3Predicate

- (id)SQLForEntityClass:(Class)class
{
  string = [MEMORY[0x277CCAB68] string];
  [(ML3Predicate *)self appendSQLToMutableString:string entityClass:class];

  return string;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  v3 = objc_opt_class();
  return v3 == objc_opt_class();
}

- (ML3Predicate)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = ML3Predicate;
  return [(ML3Predicate *)&v4 init];
}

@end