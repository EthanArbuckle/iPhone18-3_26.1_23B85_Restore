@interface _CNLazyArrayOperatorFilter
- (_CNLazyArrayOperatorFilter)initWithInput:(id)a3 test:(id)a4;
- (id)nextObject;
@end

@implementation _CNLazyArrayOperatorFilter

- (_CNLazyArrayOperatorFilter)initWithInput:(id)a3 test:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = _CNLazyArrayOperatorFilter;
  v7 = [(_CNLazyArrayOperator *)&v12 initWithInput:a3];
  if (v7)
  {
    v8 = [v6 copy];
    test = v7->_test;
    v7->_test = v8;

    v10 = v7;
  }

  return v7;
}

- (id)nextObject
{
  v3 = [(_CNLazyArrayOperator *)self input];
  v4 = [v3 nextObject];

  if (v4)
  {
    do
    {
      if ((*(self->_test + 2))())
      {
        break;
      }

      v5 = [(_CNLazyArrayOperator *)self input];
      v6 = [v5 nextObject];

      v4 = v6;
    }

    while (v6);
  }

  return v4;
}

@end