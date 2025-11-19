@interface _CNBlockObservable
- (_CNBlockObservable)initWithBlock:(id)a3;
@end

@implementation _CNBlockObservable

- (_CNBlockObservable)initWithBlock:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _CNBlockObservable;
  v5 = [(_CNBlockObservable *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    block = v5->_block;
    v5->_block = v6;

    v8 = v5;
  }

  return v5;
}

@end