@interface _CNLazyArrayOperatorSkip
- (_CNLazyArrayOperatorSkip)initWithInput:(id)input limit:(unint64_t)limit;
- (id)nextObject;
@end

@implementation _CNLazyArrayOperatorSkip

- (_CNLazyArrayOperatorSkip)initWithInput:(id)input limit:(unint64_t)limit
{
  v9.receiver = self;
  v9.super_class = _CNLazyArrayOperatorSkip;
  v5 = [(_CNLazyArrayOperator *)&v9 initWithInput:input];
  v6 = v5;
  if (v5)
  {
    v5->_remainingSkipCount = limit;
    v7 = v5;
  }

  return v6;
}

- (id)nextObject
{
  if (self->_remainingSkipCount)
  {
    do
    {
      input = [(_CNLazyArrayOperator *)self input];
      nextObject = [input nextObject];

      v5 = self->_remainingSkipCount - 1;
      self->_remainingSkipCount = v5;
    }

    while (v5);
  }

  input2 = [(_CNLazyArrayOperator *)self input];
  nextObject2 = [input2 nextObject];

  return nextObject2;
}

@end