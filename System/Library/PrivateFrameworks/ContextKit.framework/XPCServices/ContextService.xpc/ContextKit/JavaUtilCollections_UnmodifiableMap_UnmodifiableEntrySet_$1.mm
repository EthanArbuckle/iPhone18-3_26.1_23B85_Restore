@interface JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet_$1
- (BOOL)hasNext;
- (JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet_$1)initWithJavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet:(id)a3;
- (id)next;
- (void)dealloc;
@end

@implementation JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet_$1

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

  v3 = [(JavaUtilIterator *)iterator next];
  v4 = [JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet_UnmodifiableMapEntry alloc];
  JreStrongAssign(&v4->mapEntry_, v3);

  return v4;
}

- (JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet_$1)initWithJavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet:(id)a3
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
  v3.super_class = JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet__1;
  [(JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet_$1 *)&v3 dealloc];
}

@end