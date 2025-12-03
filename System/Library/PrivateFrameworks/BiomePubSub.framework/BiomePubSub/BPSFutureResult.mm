@interface BPSFutureResult
+ (id)failureWithError:(id)error;
+ (id)successWithValue:(id)value;
- (BPSFutureResult)initWithState:(int64_t)state value:(id)value error:(id)error;
@end

@implementation BPSFutureResult

- (BPSFutureResult)initWithState:(int64_t)state value:(id)value error:(id)error
{
  valueCopy = value;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = BPSFutureResult;
  v11 = [(BPSFutureResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_state = state;
    objc_storeStrong(&v11->_error, error);
    objc_storeStrong(&v12->_value, value);
  }

  return v12;
}

+ (id)successWithValue:(id)value
{
  valueCopy = value;
  v5 = [[self alloc] initWithState:0 value:valueCopy error:0];

  return v5;
}

+ (id)failureWithError:(id)error
{
  errorCopy = error;
  v5 = [[self alloc] initWithState:1 value:0 error:errorCopy];

  return v5;
}

@end