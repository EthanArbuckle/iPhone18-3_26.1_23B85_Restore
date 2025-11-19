@interface _CNLazyArrayOperatorMap
- (_CNLazyArrayOperatorMap)initWithInput:(id)a3 transform:(id)a4;
- (id)nextObject;
@end

@implementation _CNLazyArrayOperatorMap

- (_CNLazyArrayOperatorMap)initWithInput:(id)a3 transform:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = _CNLazyArrayOperatorMap;
  v7 = [(_CNLazyArrayOperator *)&v12 initWithInput:a3];
  if (v7)
  {
    v8 = [v6 copy];
    transform = v7->_transform;
    v7->_transform = v8;

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
    v5 = (*(self->_transform + 2))();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end