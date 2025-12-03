@interface _MSVLazyFilterEnumerator
- (id)nextObject;
@end

@implementation _MSVLazyFilterEnumerator

- (id)nextObject
{
  v3 = 0;
  do
  {
    nextObject = [(NSEnumerator *)self->_enumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    v3 = nextObject;
  }

  while (!(*(self->_block + 2))());

  return nextObject;
}

@end