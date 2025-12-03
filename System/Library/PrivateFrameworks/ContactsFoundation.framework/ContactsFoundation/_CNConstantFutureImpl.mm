@interface _CNConstantFutureImpl
- (_CNConstantFutureImpl)initWithResult:(id)result;
@end

@implementation _CNConstantFutureImpl

- (_CNConstantFutureImpl)initWithResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = _CNConstantFutureImpl;
  v6 = [(_CNConstantFutureImpl *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_result, result);
    v8 = v7;
  }

  return v7;
}

@end