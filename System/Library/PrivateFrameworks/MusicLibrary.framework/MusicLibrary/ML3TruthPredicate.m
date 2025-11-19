@interface ML3TruthPredicate
+ (id)falsePredicate;
+ (id)truePredicate;
- (BOOL)isEqual:(id)a3;
- (ML3TruthPredicate)initWithCoder:(id)a3;
- (id)_predicateString;
- (id)description;
- (unint64_t)hash;
- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ML3TruthPredicate

- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4
{
  v5 = a3;
  v6 = [(ML3TruthPredicate *)self _predicateString];
  [v5 appendString:v6];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = ML3TruthPredicate;
  return [(ML3Predicate *)&v3 hash]+ self->_truthValue;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ML3TruthPredicate;
    v5 = [(ML3Predicate *)&v7 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_truthValue == v4->_truthValue;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ML3TruthPredicate;
  v4 = [(ML3TruthPredicate *)&v8 description];
  v5 = [(ML3TruthPredicate *)self _predicateString];
  v6 = [v3 stringWithFormat:@"%@(NOT %@)", v4, v5];

  return v6;
}

- (id)_predicateString
{
  if (self->_truthValue)
  {
    return @" 1 ";
  }

  else
  {
    return @" 0 ";
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ML3TruthPredicate;
  v4 = a3;
  [(ML3Predicate *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_truthValue forKey:{@"truthValue", v5.receiver, v5.super_class}];
}

- (ML3TruthPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ML3TruthPredicate;
  v5 = [(ML3TruthPredicate *)&v11 init];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 decodeBoolForKey:@"truthValue"];
    v6->_truthValue = v7;
    v8 = objc_opt_class();
    if (v7)
    {
      [v8 truePredicate];
    }

    else
    {
      [v8 falsePredicate];
    }
    v9 = ;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)falsePredicate
{
  if (falsePredicate_onceToken != -1)
  {
    dispatch_once(&falsePredicate_onceToken, &__block_literal_global_35);
  }

  v3 = falsePredicate_predicate;

  return v3;
}

void __35__ML3TruthPredicate_falsePredicate__block_invoke()
{
  v0 = objc_alloc_init(ML3TruthPredicate);
  v1 = falsePredicate_predicate;
  falsePredicate_predicate = v0;

  *(falsePredicate_predicate + 8) = 0;
}

+ (id)truePredicate
{
  if (truePredicate_onceToken != -1)
  {
    dispatch_once(&truePredicate_onceToken, &__block_literal_global_6917);
  }

  v3 = truePredicate_predicate;

  return v3;
}

void __34__ML3TruthPredicate_truePredicate__block_invoke()
{
  v0 = objc_alloc_init(ML3TruthPredicate);
  v1 = truePredicate_predicate;
  truePredicate_predicate = v0;

  *(truePredicate_predicate + 8) = 1;
}

@end