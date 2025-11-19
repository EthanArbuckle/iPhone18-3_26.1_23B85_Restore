@interface BPSFutureResult
+ (id)failureWithError:(id)a3;
+ (id)successWithValue:(id)a3;
- (BPSFutureResult)initWithState:(int64_t)a3 value:(id)a4 error:(id)a5;
@end

@implementation BPSFutureResult

- (BPSFutureResult)initWithState:(int64_t)a3 value:(id)a4 error:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = BPSFutureResult;
  v11 = [(BPSFutureResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_state = a3;
    objc_storeStrong(&v11->_error, a5);
    objc_storeStrong(&v12->_value, a4);
  }

  return v12;
}

+ (id)successWithValue:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithState:0 value:v4 error:0];

  return v5;
}

+ (id)failureWithError:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithState:1 value:0 error:v4];

  return v5;
}

@end