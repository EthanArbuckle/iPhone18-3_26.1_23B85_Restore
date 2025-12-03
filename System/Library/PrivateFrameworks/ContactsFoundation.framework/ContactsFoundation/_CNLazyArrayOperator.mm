@interface _CNLazyArrayOperator
- (_CNLazyArrayOperator)initWithInput:(id)input;
- (id)nextObject;
@end

@implementation _CNLazyArrayOperator

- (_CNLazyArrayOperator)initWithInput:(id)input
{
  inputCopy = input;
  v10.receiver = self;
  v10.super_class = _CNLazyArrayOperator;
  v6 = [(_CNLazyArrayOperator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_input, input);
    v8 = v7;
  }

  return v7;
}

- (id)nextObject
{
  v2 = CNAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

@end