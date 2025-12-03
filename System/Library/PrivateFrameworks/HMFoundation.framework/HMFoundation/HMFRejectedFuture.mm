@interface HMFRejectedFuture
- (_HMFFutureBlockOutcome)outcomeIfSettled;
- (id)initWithError:(id *)error;
- (id)recover:(id)recover;
- (id)then:(id)then orRecover:(id)recover;
@end

@implementation HMFRejectedFuture

- (id)initWithError:(id *)error
{
  v4 = a2;
  if (error)
  {
    objc_storeStrong(error + 1, a2);
    errorCopy = error;
  }

  return error;
}

- (_HMFFutureBlockOutcome)outcomeIfSettled
{
  v2 = self->_error;
  v3 = v2;
  if (v2)
  {
    hmfUnspecifiedError = v2;
  }

  else
  {
    hmfUnspecifiedError = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
  }

  v5 = hmfUnspecifiedError;

  v6 = 2;
  v7 = v5;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- (id)recover:(id)recover
{
  recoverCopy = recover;
  v5 = HMFFuture;
  v6 = recoverCopy[2](recoverCopy, self->_error);
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
  v9 = recoverCopy[2](recoverCopy, self->_error);
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