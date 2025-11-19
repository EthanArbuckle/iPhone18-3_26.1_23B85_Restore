@interface AsynchronousOperation
- (BOOL)isCancelled;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (NSString)description;
@end

@implementation AsynchronousOperation

- (BOOL)isFinished
{
  v2 = self;
  v3 = sub_1D0F1A6CC();

  return v3 & 1;
}

- (BOOL)isCancelled
{
  v2 = self;
  sub_1D0FF4908();

  return v4;
}

- (BOOL)isExecuting
{
  v2 = self;
  sub_1D0FF4908();
  if (v5 && v5 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1D0FF6278();
  }

  return v3 & 1;
}

- (NSString)description
{
  v2 = self;
  sub_1D0F45278();

  v3 = sub_1D0FF53E8();

  return v3;
}

@end