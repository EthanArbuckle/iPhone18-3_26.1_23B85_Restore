@interface JavaUtilCollections_CheckedMap_CheckedEntrySet_CheckedEntryIterator
- (BOOL)hasNext;
- (JavaUtilCollections_CheckedMap_CheckedEntrySet_CheckedEntryIterator)initWithJavaUtilIterator:(id)iterator withIOSClass:(id)class;
- (id)next;
- (void)dealloc;
- (void)remove;
@end

@implementation JavaUtilCollections_CheckedMap_CheckedEntrySet_CheckedEntryIterator

- (JavaUtilCollections_CheckedMap_CheckedEntrySet_CheckedEntryIterator)initWithJavaUtilIterator:(id)iterator withIOSClass:(id)class
{
  JreStrongAssign(&self->i_, iterator);
  JreStrongAssign(&self->valueType_, class);
  return self;
}

- (BOOL)hasNext
{
  i = self->i_;
  if (!i)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilIterator *)i hasNext];
}

- (void)remove
{
  i = self->i_;
  if (!i)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilIterator *)i remove];
}

- (id)next
{
  i = self->i_;
  if (!i)
  {
    JreThrowNullPointerException();
  }

  next = [(JavaUtilIterator *)i next];
  valueType = self->valueType_;
  v6 = [JavaUtilCollections_CheckedMap_CheckedEntry alloc];
  sub_1001C8EC8(v6, next, valueType);

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_CheckedMap_CheckedEntrySet_CheckedEntryIterator;
  [(JavaUtilCollections_CheckedMap_CheckedEntrySet_CheckedEntryIterator *)&v3 dealloc];
}

@end