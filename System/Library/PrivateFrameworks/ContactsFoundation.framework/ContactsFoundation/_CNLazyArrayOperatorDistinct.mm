@interface _CNLazyArrayOperatorDistinct
- (_CNLazyArrayOperatorDistinct)initWithInput:(id)input;
- (id)nextObject;
@end

@implementation _CNLazyArrayOperatorDistinct

- (_CNLazyArrayOperatorDistinct)initWithInput:(id)input
{
  v8.receiver = self;
  v8.super_class = _CNLazyArrayOperatorDistinct;
  v3 = [(_CNLazyArrayOperator *)&v8 initWithInput:input];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    seenValues = v3->_seenValues;
    v3->_seenValues = v4;

    v6 = v3;
  }

  return v3;
}

- (id)nextObject
{
  input = [(_CNLazyArrayOperator *)self input];
  nextObject = [input nextObject];

  if (nextObject)
  {
    while ([(NSMutableSet *)self->_seenValues containsObject:nextObject])
    {
      input2 = [(_CNLazyArrayOperator *)self input];
      nextObject2 = [input2 nextObject];

      nextObject = nextObject2;
      if (!nextObject2)
      {
        goto LABEL_6;
      }
    }

    [(NSMutableSet *)self->_seenValues addObject:nextObject];
  }

LABEL_6:

  return nextObject;
}

@end