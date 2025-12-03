@interface BPSPartialCompletion
+ (id)withState:(int64_t)state;
+ (id)withState:(int64_t)state error:(id)error;
+ (id)withState:(int64_t)state value:(id)value;
- (BPSPartialCompletion)initWithState:(int64_t)state value:(id)value error:(id)error;
@end

@implementation BPSPartialCompletion

- (BPSPartialCompletion)initWithState:(int64_t)state value:(id)value error:(id)error
{
  valueCopy = value;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = BPSPartialCompletion;
  v11 = [(BPSPartialCompletion *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_state = state;
    objc_storeStrong(&v11->_value, value);
    objc_storeStrong(&v12->_error, error);
  }

  return v12;
}

+ (id)withState:(int64_t)state value:(id)value
{
  valueCopy = value;
  v7 = [[self alloc] initWithState:state value:valueCopy error:0];

  return v7;
}

+ (id)withState:(int64_t)state error:(id)error
{
  errorCopy = error;
  v7 = [[self alloc] initWithState:state value:0 error:errorCopy];

  return v7;
}

+ (id)withState:(int64_t)state
{
  v3 = [[self alloc] initWithState:state value:0 error:0];

  return v3;
}

@end