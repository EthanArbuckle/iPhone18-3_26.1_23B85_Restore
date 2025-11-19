@interface JavaUtilCollections_CheckedMap_CheckedEntrySet_CheckedEntryIterator
- (BOOL)hasNext;
- (JavaUtilCollections_CheckedMap_CheckedEntrySet_CheckedEntryIterator)initWithJavaUtilIterator:(id)a3 withIOSClass:(id)a4;
- (id)next;
- (void)dealloc;
- (void)remove;
@end

@implementation JavaUtilCollections_CheckedMap_CheckedEntrySet_CheckedEntryIterator

- (JavaUtilCollections_CheckedMap_CheckedEntrySet_CheckedEntryIterator)initWithJavaUtilIterator:(id)a3 withIOSClass:(id)a4
{
  JreStrongAssign(&self->i_, a3);
  JreStrongAssign(&self->valueType_, a4);
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

  v4 = [(JavaUtilIterator *)i next];
  valueType = self->valueType_;
  v6 = [JavaUtilCollections_CheckedMap_CheckedEntry alloc];
  sub_1001C8EC8(v6, v4, valueType);

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_CheckedMap_CheckedEntrySet_CheckedEntryIterator;
  [(JavaUtilCollections_CheckedMap_CheckedEntrySet_CheckedEntryIterator *)&v3 dealloc];
}

@end