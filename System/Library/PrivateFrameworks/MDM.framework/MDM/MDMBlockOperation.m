@interface MDMBlockOperation
+ (MDMBlockOperation)blockOperationWithBlock:(id)a3;
- (void)main;
@end

@implementation MDMBlockOperation

+ (MDMBlockOperation)blockOperationWithBlock:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setBlock:v3];

  return v4;
}

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_new();
  [v4 setOperation:self];
  v5 = [(MDMBlockOperation *)self block];
  (v5)[2](v5, v4);

  objc_autoreleasePoolPop(v3);
}

@end