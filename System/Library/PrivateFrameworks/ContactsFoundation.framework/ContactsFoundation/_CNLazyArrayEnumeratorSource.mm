@interface _CNLazyArrayEnumeratorSource
- (_CNLazyArrayEnumeratorSource)initWithEnumerator:(id)enumerator;
@end

@implementation _CNLazyArrayEnumeratorSource

- (_CNLazyArrayEnumeratorSource)initWithEnumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  v10.receiver = self;
  v10.super_class = _CNLazyArrayEnumeratorSource;
  v6 = [(_CNLazyArrayEnumeratorSource *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_enumerator, enumerator);
    v8 = v7;
  }

  return v7;
}

@end