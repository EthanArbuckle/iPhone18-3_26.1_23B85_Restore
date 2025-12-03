@interface _CNLazyArrayOperatorFilter
- (_CNLazyArrayOperatorFilter)initWithInput:(id)input test:(id)test;
- (id)nextObject;
@end

@implementation _CNLazyArrayOperatorFilter

- (_CNLazyArrayOperatorFilter)initWithInput:(id)input test:(id)test
{
  testCopy = test;
  v12.receiver = self;
  v12.super_class = _CNLazyArrayOperatorFilter;
  v7 = [(_CNLazyArrayOperator *)&v12 initWithInput:input];
  if (v7)
  {
    v8 = [testCopy copy];
    test = v7->_test;
    v7->_test = v8;

    v10 = v7;
  }

  return v7;
}

- (id)nextObject
{
  input = [(_CNLazyArrayOperator *)self input];
  nextObject = [input nextObject];

  if (nextObject)
  {
    do
    {
      if ((*(self->_test + 2))())
      {
        break;
      }

      input2 = [(_CNLazyArrayOperator *)self input];
      nextObject2 = [input2 nextObject];

      nextObject = nextObject2;
    }

    while (nextObject2);
  }

  return nextObject;
}

@end