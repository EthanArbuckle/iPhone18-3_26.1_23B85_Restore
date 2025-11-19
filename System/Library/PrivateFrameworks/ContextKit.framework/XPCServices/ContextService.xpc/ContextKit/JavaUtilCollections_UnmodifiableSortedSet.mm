@interface JavaUtilCollections_UnmodifiableSortedSet
- (JavaUtilCollections_UnmodifiableSortedSet)initWithJavaUtilSortedSet:(id)a3;
- (id)comparator;
- (id)first;
- (id)headSetWithId:(id)a3;
- (id)last;
- (id)subSetWithId:(id)a3 withId:(id)a4;
- (id)tailSetWithId:(id)a3;
- (void)dealloc;
@end

@implementation JavaUtilCollections_UnmodifiableSortedSet

- (JavaUtilCollections_UnmodifiableSortedSet)initWithJavaUtilSortedSet:(id)a3
{
  JreStrongAssign(&self->super.super.c_, a3);
  JreStrongAssign(&self->ss_, a3);
  return self;
}

- (id)comparator
{
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSortedSet *)ss comparator];
}

- (id)first
{
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSortedSet *)ss first];
}

- (id)headSetWithId:(id)a3
{
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  v4 = sub_1001C2470([(JavaUtilSortedSet *)ss headSetWithId:a3]);

  return v4;
}

- (id)last
{
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSortedSet *)ss last];
}

- (id)subSetWithId:(id)a3 withId:(id)a4
{
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  v5 = sub_1001C2470([(JavaUtilSortedSet *)ss subSetWithId:a3 withId:a4]);

  return v5;
}

- (id)tailSetWithId:(id)a3
{
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  v4 = sub_1001C2470([(JavaUtilSortedSet *)ss tailSetWithId:a3]);

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_UnmodifiableSortedSet;
  [(JavaUtilCollections_UnmodifiableCollection *)&v3 dealloc];
}

@end