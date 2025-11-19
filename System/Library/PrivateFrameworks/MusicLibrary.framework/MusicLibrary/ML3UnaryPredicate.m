@interface ML3UnaryPredicate
+ (id)predicateWithPredicate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ML3UnaryPredicate)initWithCoder:(id)a3;
- (ML3UnaryPredicate)initWithPredicate:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ML3UnaryPredicate

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = ML3UnaryPredicate;
  v3 = [(ML3Predicate *)&v7 hash];
  v4 = [(ML3UnaryPredicate *)self predicate];
  v5 = [v4 hash];

  return v3 + v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ML3UnaryPredicate;
    if ([(ML3Predicate *)&v9 isEqual:v4])
    {
      v5 = [(ML3UnaryPredicate *)self predicate];
      v6 = [(ML3UnaryPredicate *)v4 predicate];
      if (v5 == v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = [v5 isEqual:v6];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ML3UnaryPredicate;
  v4 = a3;
  [(ML3Predicate *)&v6 encodeWithCoder:v4];
  v5 = [(ML3UnaryPredicate *)self predicate:v6.receiver];
  [v4 encodeObject:v5 forKey:@"predicate"];
}

- (ML3UnaryPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ML3UnaryPredicate;
  v5 = [(ML3UnaryPredicate *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
    [(ML3UnaryPredicate *)v5 setPredicate:v6];
  }

  return v5;
}

- (ML3UnaryPredicate)initWithPredicate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ML3UnaryPredicate;
  v5 = [(ML3UnaryPredicate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ML3UnaryPredicate *)v5 setPredicate:v4];
  }

  return v6;
}

+ (id)predicateWithPredicate:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPredicate:v4];

  return v5;
}

@end