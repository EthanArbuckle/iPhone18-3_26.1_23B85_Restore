@interface HMFFulfilledFuture
- (_HMFFutureBlockOutcome)outcomeIfSettled;
- (id)initWithValue:(id *)value;
- (id)then:(id)then;
- (id)then:(id)then orRecover:(id)recover;
@end

@implementation HMFFulfilledFuture

- (id)initWithValue:(id *)value
{
  v4 = a2;
  if (value)
  {
    objc_storeStrong(value + 1, a2);
    valueCopy = value;
  }

  return value;
}

- (_HMFFutureBlockOutcome)outcomeIfSettled
{
  v2 = self->_value;
  v3 = 1;
  result.var1 = v2;
  result.var0 = v3;
  return result;
}

- (id)then:(id)then
{
  thenCopy = then;
  v5 = HMFFuture;
  v6 = thenCopy[2](thenCopy, self->_value);
  if (HMFFuture)
  {
    v5 = [HMFFuture _futureWithOutcome:v6, v7];
  }

  else
  {
  }

  return v5;
}

- (id)then:(id)then orRecover:(id)recover
{
  thenCopy = then;
  recoverCopy = recover;
  v8 = HMFFuture;
  v9 = thenCopy[2](thenCopy, self->_value);
  if (HMFFuture)
  {
    v8 = [HMFFuture _futureWithOutcome:v9, v10];
  }

  else
  {
  }

  return v8;
}

@end