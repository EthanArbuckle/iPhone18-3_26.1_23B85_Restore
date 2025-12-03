@interface _CNBlockObservable
- (_CNBlockObservable)initWithBlock:(id)block;
@end

@implementation _CNBlockObservable

- (_CNBlockObservable)initWithBlock:(id)block
{
  blockCopy = block;
  v10.receiver = self;
  v10.super_class = _CNBlockObservable;
  v5 = [(_CNBlockObservable *)&v10 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    block = v5->_block;
    v5->_block = v6;

    v8 = v5;
  }

  return v5;
}

@end