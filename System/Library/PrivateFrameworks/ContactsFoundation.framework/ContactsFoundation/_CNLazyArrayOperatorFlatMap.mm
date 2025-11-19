@interface _CNLazyArrayOperatorFlatMap
- (_CNLazyArrayOperatorFlatMap)initWithInput:(id)a3 transform:(id)a4;
- (id)nextObject;
@end

@implementation _CNLazyArrayOperatorFlatMap

- (_CNLazyArrayOperatorFlatMap)initWithInput:(id)a3 transform:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = _CNLazyArrayOperatorFlatMap;
  v7 = [(_CNLazyArrayOperator *)&v14 initWithInput:a3];
  if (v7)
  {
    v8 = [v6 copy];
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
    v3 = [(CNQueue *)self->_buffer dequeue];
  }

  else
  {
    v4 = 0;
    while (1)
    {
      v5 = [(_CNLazyArrayOperator *)self input];
      v6 = [v5 nextObject];

      if (!v6)
      {
        break;
      }

      v7 = (*(self->_transform + 2))();

      v4 = v7;
      if ([v7 count])
      {
        [(CNQueue *)self->_buffer enqueueObjectsFromArray:v7];
        v3 = [(CNQueue *)self->_buffer dequeue];
        v4 = v7;
        goto LABEL_8;
      }
    }

    v3 = 0;
LABEL_8:
  }

  return v3;
}

@end