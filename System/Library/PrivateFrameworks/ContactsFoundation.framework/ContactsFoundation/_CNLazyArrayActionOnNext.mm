@interface _CNLazyArrayActionOnNext
- (_CNLazyArrayActionOnNext)initWithInput:(id)input action:(id)action;
- (id)nextObject;
@end

@implementation _CNLazyArrayActionOnNext

- (_CNLazyArrayActionOnNext)initWithInput:(id)input action:(id)action
{
  actionCopy = action;
  v12.receiver = self;
  v12.super_class = _CNLazyArrayActionOnNext;
  v7 = [(_CNLazyArrayOperator *)&v12 initWithInput:input];
  if (v7)
  {
    v8 = [actionCopy copy];
    action = v7->_action;
    v7->_action = v8;

    v10 = v7;
  }

  return v7;
}

- (id)nextObject
{
  input = [(_CNLazyArrayOperator *)self input];
  nextObject = [input nextObject];

  if (nextObject)
  {
    (*(self->_action + 2))();
  }

  return nextObject;
}

@end