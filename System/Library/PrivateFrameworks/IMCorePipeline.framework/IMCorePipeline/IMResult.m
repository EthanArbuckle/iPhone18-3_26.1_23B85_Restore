@interface IMResult
- (IMResult)initWithState:(int64_t)a3 value:(id)a4 error:(id)a5;
@end

@implementation IMResult

- (IMResult)initWithState:(int64_t)a3 value:(id)a4 error:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = IMResult;
  v11 = [(IMResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_inError, a5);
    objc_storeStrong(&v12->_inValue, a4);
    v12->_state = a3;
  }

  return v12;
}

@end