@interface _EFBlockObservable
- (_EFBlockObservable)initWithBlock:(id)block;
- (id)subscribe:(id)subscribe;
@end

@implementation _EFBlockObservable

- (_EFBlockObservable)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = _EFBlockObservable;
  v5 = [(_EFBlockObservable *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(blockCopy);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (id)subscribe:(id)subscribe
{
  v3 = (*(self->_block + 2))();

  return v3;
}

@end