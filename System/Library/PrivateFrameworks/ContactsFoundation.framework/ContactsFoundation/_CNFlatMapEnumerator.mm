@interface _CNFlatMapEnumerator
- (_CNFlatMapEnumerator)initWithEnumerator:(id)enumerator transform:(id)transform;
- (id)nextObject;
- (void)refillBuffer;
@end

@implementation _CNFlatMapEnumerator

- (_CNFlatMapEnumerator)initWithEnumerator:(id)enumerator transform:(id)transform
{
  enumeratorCopy = enumerator;
  transformCopy = transform;
  v15.receiver = self;
  v15.super_class = _CNFlatMapEnumerator;
  v9 = [(_CNFlatMapEnumerator *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_enumerator, enumerator);
    v11 = [transformCopy copy];
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
    nextBufferedObject = [(_CNFlatMapEnumerator *)self nextBufferedObject];
    if (nextBufferedObject)
    {
      break;
    }

    if (!self->_buffer)
    {
      nextBufferedObject = 0;
      break;
    }
  }

  return nextBufferedObject;
}

- (void)refillBuffer
{
  nextObject = [(NSEnumerator *)self->_enumerator nextObject];
  v5 = nextObject;
  if (nextObject)
  {
    nextObject = (*(self->_transform + 2))();
  }

  buffer = self->_buffer;
  self->_buffer = nextObject;
}

@end