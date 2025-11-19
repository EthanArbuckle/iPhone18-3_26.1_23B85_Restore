@interface _CNLazyArrayActionOnNext
- (_CNLazyArrayActionOnNext)initWithInput:(id)a3 action:(id)a4;
- (id)nextObject;
@end

@implementation _CNLazyArrayActionOnNext

- (_CNLazyArrayActionOnNext)initWithInput:(id)a3 action:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = _CNLazyArrayActionOnNext;
  v7 = [(_CNLazyArrayOperator *)&v12 initWithInput:a3];
  if (v7)
  {
    v8 = [v6 copy];
    action = v7->_action;
    v7->_action = v8;

    v10 = v7;
  }

  return v7;
}

- (id)nextObject
{
  v3 = [(_CNLazyArrayOperator *)self input];
  v4 = [v3 nextObject];

  if (v4)
  {
    (*(self->_action + 2))();
  }

  return v4;
}

@end