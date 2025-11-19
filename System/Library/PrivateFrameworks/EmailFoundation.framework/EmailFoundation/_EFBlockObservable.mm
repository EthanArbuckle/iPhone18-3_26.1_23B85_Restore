@interface _EFBlockObservable
- (_EFBlockObservable)initWithBlock:(id)a3;
- (id)subscribe:(id)a3;
@end

@implementation _EFBlockObservable

- (_EFBlockObservable)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _EFBlockObservable;
  v5 = [(_EFBlockObservable *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (id)subscribe:(id)a3
{
  v3 = (*(self->_block + 2))();

  return v3;
}

@end