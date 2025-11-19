@interface JavaUtilCollections_UnmodifiableCollection_$1
- (BOOL)hasNext;
- (JavaUtilCollections_UnmodifiableCollection_$1)initWithJavaUtilCollections_UnmodifiableCollection:(id)a3;
- (id)next;
- (void)dealloc;
@end

@implementation JavaUtilCollections_UnmodifiableCollection_$1

- (BOOL)hasNext
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilIterator *)iterator hasNext];
}

- (id)next
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilIterator *)iterator next];
}

- (JavaUtilCollections_UnmodifiableCollection_$1)initWithJavaUtilCollections_UnmodifiableCollection:(id)a3
{
  v4 = *(a3 + 1);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign(&self->iterator_, [v4 iterator]);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_UnmodifiableCollection__1;
  [(JavaUtilCollections_UnmodifiableCollection_$1 *)&v3 dealloc];
}

@end