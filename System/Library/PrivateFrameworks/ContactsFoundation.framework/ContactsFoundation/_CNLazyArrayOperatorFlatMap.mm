@interface _CNLazyArrayOperatorFlatMap
- (_CNLazyArrayOperatorFlatMap)initWithInput:(id)input transform:(id)transform;
- (id)nextObject;
@end

@implementation _CNLazyArrayOperatorFlatMap

- (_CNLazyArrayOperatorFlatMap)initWithInput:(id)input transform:(id)transform
{
  transformCopy = transform;
  v14.receiver = self;
  v14.super_class = _CNLazyArrayOperatorFlatMap;
  v7 = [(_CNLazyArrayOperator *)&v14 initWithInput:input];
  if (v7)
  {
    v8 = [transformCopy copy];
    transform = v7->_transform;
    v7->_transform = v8;

    v10 = objc_alloc_init(CNQueue);
    buffer = v7->_buffer;
    v7->_buffer = v10;

    v12 = v7;
  }

  return v7;
}

- (id)nextObject
{
  if ([(CNQueue *)self->_buffer count])
  {
    dequeue = [(CNQueue *)self->_buffer dequeue];
  }

  else
  {
    v4 = 0;
    while (1)
    {
      input = [(_CNLazyArrayOperator *)self input];
      nextObject = [input nextObject];

      if (!nextObject)
      {
        break;
      }

      v7 = (*(self->_transform + 2))();

      v4 = v7;
      if ([v7 count])
      {
        [(CNQueue *)self->_buffer enqueueObjectsFromArray:v7];
        dequeue = [(CNQueue *)self->_buffer dequeue];
        v4 = v7;
        goto LABEL_8;
      }
    }

    dequeue = 0;
LABEL_8:
  }

  return dequeue;
}

@end