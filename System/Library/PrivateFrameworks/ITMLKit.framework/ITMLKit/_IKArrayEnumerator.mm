@interface _IKArrayEnumerator
- (_IKArrayEnumerator)initWithArray:(id)array;
- (id)nextObject;
@end

@implementation _IKArrayEnumerator

- (_IKArrayEnumerator)initWithArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = _IKArrayEnumerator;
  v6 = [(_IKArrayEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_array, array);
  }

  return v7;
}

- (id)nextObject
{
  currentIndex = self->_currentIndex;
  if (currentIndex >= [(IKArray *)self->_array count])
  {
    v5 = 0;
  }

  else
  {
    array = self->_array;
    ++self->_currentIndex;
    v5 = [(IKArray *)array objectAtIndex:?];
  }

  return v5;
}

@end