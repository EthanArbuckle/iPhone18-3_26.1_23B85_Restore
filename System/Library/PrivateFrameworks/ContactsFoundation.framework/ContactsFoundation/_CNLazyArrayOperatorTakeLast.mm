@interface _CNLazyArrayOperatorTakeLast
- (_CNLazyArrayOperatorTakeLast)initWithInput:(id)input limit:(unint64_t)limit;
- (id)nextObject;
- (void)fillBuffer;
@end

@implementation _CNLazyArrayOperatorTakeLast

- (_CNLazyArrayOperatorTakeLast)initWithInput:(id)input limit:(unint64_t)limit
{
  v10.receiver = self;
  v10.super_class = _CNLazyArrayOperatorTakeLast;
  v5 = [(_CNLazyArrayOperator *)&v10 initWithInput:input];
  if (v5)
  {
    v6 = [CNQueue boundedQueueWithCapacity:limit];
    buffer = v5->_buffer;
    v5->_buffer = v6;

    v5->_haveFilledBuffer = 0;
    v8 = v5;
  }

  return v5;
}

- (id)nextObject
{
  if (!self->_haveFilledBuffer)
  {
    [(_CNLazyArrayOperatorTakeLast *)self fillBuffer];
  }

  buffer = self->_buffer;

  return [(CNQueue *)buffer dequeue];
}

- (void)fillBuffer
{
  if (!self->_haveFilledBuffer)
  {
    self->_haveFilledBuffer = 1;
    input = [(_CNLazyArrayOperator *)self input];
    nextObject = [input nextObject];

    if (nextObject)
    {
      do
      {
        [(CNQueue *)self->_buffer enqueue:nextObject];
        input2 = [(_CNLazyArrayOperator *)self input];
        nextObject2 = [input2 nextObject];

        nextObject = nextObject2;
      }

      while (nextObject2);
    }
  }
}

@end