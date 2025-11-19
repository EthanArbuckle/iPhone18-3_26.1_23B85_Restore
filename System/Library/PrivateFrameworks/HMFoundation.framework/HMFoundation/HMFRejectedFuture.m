@interface HMFRejectedFuture
- (_HMFFutureBlockOutcome)outcomeIfSettled;
- (id)initWithError:(id *)a1;
- (id)recover:(id)a3;
- (id)then:(id)a3 orRecover:(id)a4;
@end

@implementation HMFRejectedFuture

- (id)initWithError:(id *)a1
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
  v2 = self->_error;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
  }

  v5 = v4;

  v6 = 2;
  v7 = v5;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- (id)recover:(id)a3
{
  v4 = a3;
  v5 = HMFFuture;
  v6 = v4[2](v4, self->_error);
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
  v9 = v7[2](v7, self->_error);
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