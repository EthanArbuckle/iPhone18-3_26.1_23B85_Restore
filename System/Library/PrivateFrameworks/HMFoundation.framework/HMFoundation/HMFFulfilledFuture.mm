@interface HMFFulfilledFuture
- (_HMFFutureBlockOutcome)outcomeIfSettled;
- (id)initWithValue:(id *)a1;
- (id)then:(id)a3;
- (id)then:(id)a3 orRecover:(id)a4;
@end

@implementation HMFFulfilledFuture

- (id)initWithValue:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    objc_storeStrong(a1 + 1, a2);
    v5 = a1;
  }

  return a1;
}

- (_HMFFutureBlockOutcome)outcomeIfSettled
{
  v2 = self->_value;
  v3 = 1;
  result.var1 = v2;
  result.var0 = v3;
  return result;
}

- (id)then:(id)a3
{
  v4 = a3;
  v5 = HMFFuture;
  v6 = v4[2](v4, self->_value);
  if (HMFFuture)
  {
    v5 = [HMFFuture _futureWithOutcome:v6, v7];
  }

  else
  {
  }

  return v5;
}

- (id)then:(id)a3 orRecover:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = HMFFuture;
  v9 = v6[2](v6, self->_value);
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