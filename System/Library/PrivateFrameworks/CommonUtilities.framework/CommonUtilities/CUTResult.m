@interface CUTResult
- (CUTResult)initWithState:(int64_t)a3 value:(id)a4 error:(id)a5;
- (NSError)error;
- (id)value;
@end

@implementation CUTResult

- (id)value
{
  if ([(CUTResult *)self state])
  {
    sub_1B2331850(a2, self);
  }

  inValue = self->_inValue;

  return inValue;
}

- (CUTResult)initWithState:(int64_t)a3 value:(id)a4 error:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CUTResult;
  v11 = [(CUTResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_inError, a5);
    objc_storeStrong(&v12->_inValue, a4);
    v12->_state = a3;
  }

  return v12;
}

- (NSError)error
{
  if ([(CUTResult *)self state]!= 1)
  {
    sub_1B23318C4(a2, self);
  }

  inError = self->_inError;

  return inError;
}

@end