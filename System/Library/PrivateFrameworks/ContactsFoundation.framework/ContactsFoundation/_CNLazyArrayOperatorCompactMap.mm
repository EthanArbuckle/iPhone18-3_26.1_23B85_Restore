@interface _CNLazyArrayOperatorCompactMap
- (_CNLazyArrayOperatorCompactMap)initWithInput:(id)input transform:(id)transform;
- (id)nextObject;
@end

@implementation _CNLazyArrayOperatorCompactMap

- (_CNLazyArrayOperatorCompactMap)initWithInput:(id)input transform:(id)transform
{
  transformCopy = transform;
  v12.receiver = self;
  v12.super_class = _CNLazyArrayOperatorCompactMap;
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
  while (1)
  {
    input = [(_CNLazyArrayOperator *)self input];
    nextObject = [input nextObject];

    if (!nextObject)
    {
      break;
    }

    v5 = (*(self->_transform + 2))();

    if (v5)
    {
      goto LABEL_5;
    }
  }

  v5 = 0;
LABEL_5:

  return v5;
}

@end