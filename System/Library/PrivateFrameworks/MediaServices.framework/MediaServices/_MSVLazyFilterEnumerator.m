@interface _MSVLazyFilterEnumerator
- (id)nextObject;
@end

@implementation _MSVLazyFilterEnumerator

- (id)nextObject
{
  v3 = 0;
  do
  {
    v4 = [(NSEnumerator *)self->_enumerator nextObject];

    if (!v4)
    {
      break;
    }

    v3 = v4;
  }

  while (!(*(self->_block + 2))());

  return v4;
}

@end