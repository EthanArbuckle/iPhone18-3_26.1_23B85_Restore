@interface IMResult
- (IMResult)initWithState:(int64_t)state value:(id)value error:(id)error;
@end

@implementation IMResult

- (IMResult)initWithState:(int64_t)state value:(id)value error:(id)error
{
  valueCopy = value;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = IMResult;
  v11 = [(IMResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_inError, error);
    objc_storeStrong(&v12->_inValue, value);
    v12->_state = state;
  }

  return v12;
}

@end