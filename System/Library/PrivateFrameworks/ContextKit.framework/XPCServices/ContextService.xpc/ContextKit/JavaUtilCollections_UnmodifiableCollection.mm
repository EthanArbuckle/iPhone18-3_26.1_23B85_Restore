@interface JavaUtilCollections_UnmodifiableCollection
- (BOOL)containsAllWithJavaUtilCollection:(id)collection;
- (BOOL)containsWithId:(id)id;
- (BOOL)isEmpty;
- (NSString)description;
- (id)iterator;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)array;
- (int)size;
- (void)dealloc;
@end

@implementation JavaUtilCollections_UnmodifiableCollection

- (BOOL)containsWithId:(id)id
{
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)c containsWithId:id];
}

- (BOOL)containsAllWithJavaUtilCollection:(id)collection
{
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)c containsAllWithJavaUtilCollection:collection];
}

- (BOOL)isEmpty
{
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)c isEmpty];
}

- (id)iterator
{
  v3 = [JavaUtilCollections_UnmodifiableCollection__1 alloc];
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign(&v3->iterator_, [(JavaUtilCollection *)c iterator]);

  return v3;
}

- (int)size
{
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)c size];
}

- (id)toArray
{
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)c toArray];
}

- (id)toArrayWithNSObjectArray:(id)array
{
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)c toArrayWithNSObjectArray:array];
}

- (NSString)description
{
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)c description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_UnmodifiableCollection;
  [(JavaUtilCollections_UnmodifiableCollection *)&v3 dealloc];
}

@end