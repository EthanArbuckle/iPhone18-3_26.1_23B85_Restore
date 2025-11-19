@interface _CNFlatMapEnumerator
- (_CNFlatMapEnumerator)initWithEnumerator:(id)a3 transform:(id)a4;
- (id)nextObject;
- (void)refillBuffer;
@end

@implementation _CNFlatMapEnumerator

- (_CNFlatMapEnumerator)initWithEnumerator:(id)a3 transform:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = _CNFlatMapEnumerator;
  v9 = [(_CNFlatMapEnumerator *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_enumerator, a3);
    v11 = [v8 copy];
    transform = v10->_transform;
    v10->_transform = v11;

    v13 = v10;
  }

  return v10;
}

- (id)nextObject
{
  if (self->_buffer)
  {
    goto LABEL_3;
  }

  while (1)
  {
    [(_CNFlatMapEnumerator *)self refillBuffer];
LABEL_3:
    v3 = [(_CNFlatMapEnumerator *)self nextBufferedObject];
    if (v3)
    {
      break;
    }

    if (!self->_buffer)
    {
      v3 = 0;
      break;
    }
  }

  return v3;
}

- (void)refillBuffer
{
  v3 = [(NSEnumerator *)self->_enumerator nextObject];
  v5 = v3;
  if (v3)
  {
    v3 = (*(self->_transform + 2))();
  }

  buffer = self->_buffer;
  self->_buffer = v3;
}

@end