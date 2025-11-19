@interface _CNLazyArrayOperatorTake
- (_CNLazyArrayOperatorTake)initWithInput:(id)a3 limit:(unint64_t)a4;
- (id)nextObject;
@end

@implementation _CNLazyArrayOperatorTake

- (_CNLazyArrayOperatorTake)initWithInput:(id)a3 limit:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = _CNLazyArrayOperatorTake;
  v5 = [(_CNLazyArrayOperator *)&v9 initWithInput:a3];
  v6 = v5;
  if (v5)
  {
    v5->_remainingTakeCount = a4;
    v7 = v5;
  }

  return v6;
}

- (id)nextObject
{
  remainingTakeCount = self->_remainingTakeCount;
  if (remainingTakeCount)
  {
    self->_remainingTakeCount = remainingTakeCount - 1;
    v3 = [(_CNLazyArrayOperator *)self input];
    v4 = [v3 nextObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end