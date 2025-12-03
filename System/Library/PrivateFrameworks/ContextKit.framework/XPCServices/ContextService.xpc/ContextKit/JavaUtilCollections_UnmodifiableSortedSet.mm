@interface JavaUtilCollections_UnmodifiableSortedSet
- (JavaUtilCollections_UnmodifiableSortedSet)initWithJavaUtilSortedSet:(id)set;
- (id)comparator;
- (id)first;
- (id)headSetWithId:(id)id;
- (id)last;
- (id)subSetWithId:(id)id withId:(id)withId;
- (id)tailSetWithId:(id)id;
- (void)dealloc;
@end

@implementation JavaUtilCollections_UnmodifiableSortedSet

- (JavaUtilCollections_UnmodifiableSortedSet)initWithJavaUtilSortedSet:(id)set
{
  JreStrongAssign(&self->super.super.c_, set);
  JreStrongAssign(&self->ss_, set);
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

- (id)headSetWithId:(id)id
{
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  v4 = sub_1001C2470([(JavaUtilSortedSet *)ss headSetWithId:id]);

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

- (id)subSetWithId:(id)id withId:(id)withId
{
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  v5 = sub_1001C2470([(JavaUtilSortedSet *)ss subSetWithId:id withId:withId]);

  return v5;
}

- (id)tailSetWithId:(id)id
{
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  v4 = sub_1001C2470([(JavaUtilSortedSet *)ss tailSetWithId:id]);

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_UnmodifiableSortedSet;
  [(JavaUtilCollections_UnmodifiableCollection *)&v3 dealloc];
}

@end