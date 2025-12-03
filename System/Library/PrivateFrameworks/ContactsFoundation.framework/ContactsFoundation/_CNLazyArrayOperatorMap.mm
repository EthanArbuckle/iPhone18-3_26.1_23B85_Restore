@interface _CNLazyArrayOperatorMap
- (_CNLazyArrayOperatorMap)initWithInput:(id)input transform:(id)transform;
- (id)nextObject;
@end

@implementation _CNLazyArrayOperatorMap

- (_CNLazyArrayOperatorMap)initWithInput:(id)input transform:(id)transform
{
  transformCopy = transform;
  v12.receiver = self;
  v12.super_class = _CNLazyArrayOperatorMap;
  v7 = [(_CNLazyArrayOperator *)&v12 initWithInput:input];
  if (v7)
  {
    v8 = [transformCopy copy];
    transform = v7->_transform;
    v7->_transform = v8;

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
    v5 = (*(self->_transform + 2))();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end