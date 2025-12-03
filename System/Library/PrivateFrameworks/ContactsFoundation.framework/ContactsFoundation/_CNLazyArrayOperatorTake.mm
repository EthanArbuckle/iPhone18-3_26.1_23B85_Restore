@interface _CNLazyArrayOperatorTake
- (_CNLazyArrayOperatorTake)initWithInput:(id)input limit:(unint64_t)limit;
- (id)nextObject;
@end

@implementation _CNLazyArrayOperatorTake

- (_CNLazyArrayOperatorTake)initWithInput:(id)input limit:(unint64_t)limit
{
  v9.receiver = self;
  v9.super_class = _CNLazyArrayOperatorTake;
  v5 = [(_CNLazyArrayOperator *)&v9 initWithInput:input];
  v6 = v5;
  if (v5)
  {
    v5->_remainingTakeCount = limit;
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
    input = [(_CNLazyArrayOperator *)self input];
    nextObject = [input nextObject];
  }

  else
  {
    nextObject = 0;
  }

  return nextObject;
}

@end