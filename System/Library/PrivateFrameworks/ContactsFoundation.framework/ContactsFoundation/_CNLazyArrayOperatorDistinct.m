@interface _CNLazyArrayOperatorDistinct
- (_CNLazyArrayOperatorDistinct)initWithInput:(id)a3;
- (id)nextObject;
@end

@implementation _CNLazyArrayOperatorDistinct

- (_CNLazyArrayOperatorDistinct)initWithInput:(id)a3
{
  v8.receiver = self;
  v8.super_class = _CNLazyArrayOperatorDistinct;
  v3 = [(_CNLazyArrayOperator *)&v8 initWithInput:a3];
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
  v3 = [(_CNLazyArrayOperator *)self input];
  v4 = [v3 nextObject];

  if (v4)
  {
    while ([(NSMutableSet *)self->_seenValues containsObject:v4])
    {
      v5 = [(_CNLazyArrayOperator *)self input];
      v6 = [v5 nextObject];

      v4 = v6;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    [(NSMutableSet *)self->_seenValues addObject:v4];
  }

LABEL_6:

  return v4;
}

@end