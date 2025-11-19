@interface _MFEmailSetEnumerator
- (_MFEmailSetEnumerator)initWithSet:(id)a3;
- (id)nextObject;
- (void)dealloc;
@end

@implementation _MFEmailSetEnumerator

- (_MFEmailSetEnumerator)initWithSet:(id)a3
{
  v6.receiver = self;
  v6.super_class = _MFEmailSetEnumerator;
  v4 = [(_MFEmailSetEnumerator *)&v6 init];
  if (v4)
  {
    v4->_set = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MFEmailSetEnumerator;
  [(_MFEmailSetEnumerator *)&v3 dealloc];
}

- (id)nextObject
{
  v3 = 0xAAAAAAAAAAAAAAAALL;
  if ([(MFEmailSet *)self->_set countByEnumeratingWithState:&self->_state objects:&v3 count:1])
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

@end