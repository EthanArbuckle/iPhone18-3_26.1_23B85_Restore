@interface JavaUtilCollections_$3
- (BOOL)hasMoreElements;
- (id)nextElement;
- (void)dealloc;
@end

@implementation JavaUtilCollections_$3

- (BOOL)hasMoreElements
{
  it = self->it_;
  if (!it)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilIterator *)it hasNext];
}

- (id)nextElement
{
  it = self->it_;
  if (!it)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilIterator *)it next];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections__3;
  [(JavaUtilCollections_$3 *)&v3 dealloc];
}

@end