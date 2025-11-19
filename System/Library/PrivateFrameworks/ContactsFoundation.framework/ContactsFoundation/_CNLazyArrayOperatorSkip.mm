@interface _CNLazyArrayOperatorSkip
- (_CNLazyArrayOperatorSkip)initWithInput:(id)a3 limit:(unint64_t)a4;
- (id)nextObject;
@end

@implementation _CNLazyArrayOperatorSkip

- (_CNLazyArrayOperatorSkip)initWithInput:(id)a3 limit:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = _CNLazyArrayOperatorSkip;
  v5 = [(_CNLazyArrayOperator *)&v9 initWithInput:a3];
  v6 = v5;
  if (v5)
  {
    v5->_remainingSkipCount = a4;
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
      v3 = [(_CNLazyArrayOperator *)self input];
      v4 = [v3 nextObject];

      v5 = self->_remainingSkipCount - 1;
      self->_remainingSkipCount = v5;
    }

    while (v5);
  }

  v6 = [(_CNLazyArrayOperator *)self input];
  v7 = [v6 nextObject];

  return v7;
}

@end