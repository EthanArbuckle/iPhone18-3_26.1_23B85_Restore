@interface FINodeIterator
- (FINodeIterator)initWithIterator:(OpaqueNodeIterator *)iterator;
- (id)first;
- (id)next;
- (void)dealloc;
@end

@implementation FINodeIterator

- (void)dealloc
{
  NodeDisposeIterator(self->_iterator);
  v3.receiver = self;
  v3.super_class = FINodeIterator;
  [(FINodeIterator *)&v3 dealloc];
}

- (id)first
{
  v4 = NodeIteratorFirst(self->_iterator);
  v2 = [FINode nodeFromNodeRef:v4];
  TRef<OpaqueNodeRef *,TRetainReleasePolicy<OpaqueNodeRef *>>::~TRef(&v4);

  return v2;
}

- (id)next
{
  v4 = NodeIteratorNext(self->_iterator);
  v2 = [FINode nodeFromNodeRef:v4];
  TRef<OpaqueNodeRef *,TRetainReleasePolicy<OpaqueNodeRef *>>::~TRef(&v4);

  return v2;
}

- (FINodeIterator)initWithIterator:(OpaqueNodeIterator *)iterator
{
  v5.receiver = self;
  v5.super_class = FINodeIterator;
  result = [(FINodeIterator *)&v5 init];
  result->_iterator = iterator;
  return result;
}

@end