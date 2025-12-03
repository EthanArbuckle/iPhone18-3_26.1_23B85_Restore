@interface ML3UnaryPredicate
+ (id)predicateWithPredicate:(id)predicate;
- (BOOL)isEqual:(id)equal;
- (ML3UnaryPredicate)initWithCoder:(id)coder;
- (ML3UnaryPredicate)initWithPredicate:(id)predicate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ML3UnaryPredicate

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = ML3UnaryPredicate;
  v3 = [(ML3Predicate *)&v7 hash];
  predicate = [(ML3UnaryPredicate *)self predicate];
  v5 = [predicate hash];

  return v3 + v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ML3UnaryPredicate;
    if ([(ML3Predicate *)&v9 isEqual:equalCopy])
    {
      predicate = [(ML3UnaryPredicate *)self predicate];
      predicate2 = [(ML3UnaryPredicate *)equalCopy predicate];
      if (predicate == predicate2)
      {
        v7 = 1;
      }

      else
      {
        v7 = [predicate isEqual:predicate2];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ML3UnaryPredicate;
  coderCopy = coder;
  [(ML3Predicate *)&v6 encodeWithCoder:coderCopy];
  v5 = [(ML3UnaryPredicate *)self predicate:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"predicate"];
}

- (ML3UnaryPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = ML3UnaryPredicate;
  v5 = [(ML3UnaryPredicate *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
    [(ML3UnaryPredicate *)v5 setPredicate:v6];
  }

  return v5;
}

- (ML3UnaryPredicate)initWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v8.receiver = self;
  v8.super_class = ML3UnaryPredicate;
  v5 = [(ML3UnaryPredicate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ML3UnaryPredicate *)v5 setPredicate:predicateCopy];
  }

  return v6;
}

+ (id)predicateWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = [[self alloc] initWithPredicate:predicateCopy];

  return v5;
}

@end