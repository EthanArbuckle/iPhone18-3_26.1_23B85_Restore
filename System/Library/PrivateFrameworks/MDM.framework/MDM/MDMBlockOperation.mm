@interface MDMBlockOperation
+ (MDMBlockOperation)blockOperationWithBlock:(id)block;
- (void)main;
@end

@implementation MDMBlockOperation

+ (MDMBlockOperation)blockOperationWithBlock:(id)block
{
  blockCopy = block;
  v4 = objc_opt_new();
  [v4 setBlock:blockCopy];

  return v4;
}

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_new();
  [v4 setOperation:self];
  block = [(MDMBlockOperation *)self block];
  (block)[2](block, v4);

  objc_autoreleasePoolPop(v3);
}

@end