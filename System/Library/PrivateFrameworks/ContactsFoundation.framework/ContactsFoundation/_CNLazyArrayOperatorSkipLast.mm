@interface _CNLazyArrayOperatorSkipLast
- (BOOL)fillBuffer;
- (_CNLazyArrayOperatorSkipLast)initWithInput:(id)input limit:(unint64_t)limit;
- (id)nextObject;
@end

@implementation _CNLazyArrayOperatorSkipLast

- (_CNLazyArrayOperatorSkipLast)initWithInput:(id)input limit:(unint64_t)limit
{
  v11.receiver = self;
  v11.super_class = _CNLazyArrayOperatorSkipLast;
  v5 = [(_CNLazyArrayOperator *)&v11 initWithInput:input];
  v6 = v5;
  if (v5)
  {
    v5->_limit = limit;
    v7 = objc_alloc_init(CNQueue);
    buffer = v6->_buffer;
    v6->_buffer = v7;

    v6->_haveFilledBuffer = 0;
    v9 = v6;
  }

  return v6;
}

- (id)nextObject
{
  if (self->_haveFilledBuffer || [(_CNLazyArrayOperatorSkipLast *)self fillBuffer])
  {
    input = [(_CNLazyArrayOperator *)self input];
    nextObject = [input nextObject];

    if (nextObject)
    {
      dequeue = [(CNQueue *)self->_buffer dequeue];
      [(CNQueue *)self->_buffer enqueue:nextObject];
    }

    else
    {
      dequeue = 0;
    }
  }

  else
  {
    dequeue = 0;
  }

  return dequeue;
}

- (BOOL)fillBuffer
{
  v2 = 1;
  if (!self->_haveFilledBuffer)
  {
    self->_haveFilledBuffer = 1;
    do
    {
      input = [(_CNLazyArrayOperator *)self input];
      nextObject = [input nextObject];

      v2 = nextObject != 0;
      if (!nextObject)
      {
        break;
      }

      [(CNQueue *)self->_buffer enqueue:nextObject];
    }

    while ([(CNQueue *)self->_buffer count]< self->_limit);
  }

  return v2;
}

@end