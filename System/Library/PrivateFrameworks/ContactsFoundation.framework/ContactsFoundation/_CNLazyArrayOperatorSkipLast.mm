@interface _CNLazyArrayOperatorSkipLast
- (BOOL)fillBuffer;
- (_CNLazyArrayOperatorSkipLast)initWithInput:(id)a3 limit:(unint64_t)a4;
- (id)nextObject;
@end

@implementation _CNLazyArrayOperatorSkipLast

- (_CNLazyArrayOperatorSkipLast)initWithInput:(id)a3 limit:(unint64_t)a4
{
  v11.receiver = self;
  v11.super_class = _CNLazyArrayOperatorSkipLast;
  v5 = [(_CNLazyArrayOperator *)&v11 initWithInput:a3];
  v6 = v5;
  if (v5)
  {
    v5->_limit = a4;
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
    v3 = [(_CNLazyArrayOperator *)self input];
    v4 = [v3 nextObject];

    if (v4)
    {
      v5 = [(CNQueue *)self->_buffer dequeue];
      [(CNQueue *)self->_buffer enqueue:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)fillBuffer
{
  v2 = 1;
  if (!self->_haveFilledBuffer)
  {
    self->_haveFilledBuffer = 1;
    do
    {
      v4 = [(_CNLazyArrayOperator *)self input];
      v5 = [v4 nextObject];

      v2 = v5 != 0;
      if (!v5)
      {
        break;
      }

      [(CNQueue *)self->_buffer enqueue:v5];
    }

    while ([(CNQueue *)self->_buffer count]< self->_limit);
  }

  return v2;
}

@end