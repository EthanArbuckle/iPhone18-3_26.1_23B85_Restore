@interface WFContentPredicate
+ (id)falsePredicate;
+ (id)predicateWithBlock:(id)block;
+ (id)truePredicate;
- (WFContentPredicate)initWithBlock:(id)block;
- (void)evaluateWithObject:(id)object propertySubstitutor:(id)substitutor completionHandler:(id)handler;
@end

@implementation WFContentPredicate

+ (id)predicateWithBlock:(id)block
{
  blockCopy = block;
  v5 = [[self alloc] initWithBlock:blockCopy];

  return v5;
}

+ (id)falsePredicate
{
  v2 = objc_opt_new();

  return v2;
}

- (void)evaluateWithObject:(id)object propertySubstitutor:(id)substitutor completionHandler:(id)handler
{
  objectCopy = object;
  substitutorCopy = substitutor;
  handlerCopy = handler;
  if (handlerCopy)
  {
    block = self->_block;
    if (block)
    {
      v11 = block[2](block, objectCopy);
    }

    else
    {
      v11 = 0;
    }

    handlerCopy[2](handlerCopy, v11);
  }
}

- (WFContentPredicate)initWithBlock:(id)block
{
  blockCopy = block;
  v10.receiver = self;
  v10.super_class = WFContentPredicate;
  v5 = [(WFContentPredicate *)&v10 init];
  if (v5)
  {
    v6 = _Block_copy(blockCopy);
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