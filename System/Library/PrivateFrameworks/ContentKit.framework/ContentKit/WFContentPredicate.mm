@interface WFContentPredicate
+ (id)falsePredicate;
+ (id)predicateWithBlock:(id)a3;
+ (id)truePredicate;
- (WFContentPredicate)initWithBlock:(id)a3;
- (void)evaluateWithObject:(id)a3 propertySubstitutor:(id)a4 completionHandler:(id)a5;
@end

@implementation WFContentPredicate

+ (id)predicateWithBlock:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBlock:v4];

  return v5;
}

+ (id)falsePredicate
{
  v2 = objc_opt_new();

  return v2;
}

- (void)evaluateWithObject:(id)a3 propertySubstitutor:(id)a4 completionHandler:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    block = self->_block;
    if (block)
    {
      v11 = block[2](block, v12);
    }

    else
    {
      v11 = 0;
    }

    v9[2](v9, v11);
  }
}

- (WFContentPredicate)initWithBlock:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFContentPredicate;
  v5 = [(WFContentPredicate *)&v10 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    block = v5->_block;
    v5->_block = v6;

    v8 = v5;
  }

  return v5;
}

+ (id)truePredicate
{
  v2 = objc_opt_new();

  return v2;
}

@end