@interface JavaUtilCollections_CheckedSortedSet
- (JavaUtilCollections_CheckedSortedSet)initWithJavaUtilSortedSet:(id)set withIOSClass:(id)class;
- (id)comparator;
- (id)first;
- (id)headSetWithId:(id)id;
- (id)last;
- (id)subSetWithId:(id)id withId:(id)withId;
- (id)tailSetWithId:(id)id;
- (void)dealloc;
@end

@implementation JavaUtilCollections_CheckedSortedSet

- (JavaUtilCollections_CheckedSortedSet)initWithJavaUtilSortedSet:(id)set withIOSClass:(id)class
{
  sub_1001C7CC4(self, set, class);
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

- (id)subSetWithId:(id)id withId:(id)withId
{
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  v6 = sub_1001C26E8([(JavaUtilSortedSet *)ss subSetWithId:id withId:withId], self->super.super.type_);

  return v6;
}

- (id)headSetWithId:(id)id
{
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  v5 = sub_1001C26E8([(JavaUtilSortedSet *)ss headSetWithId:id], self->super.super.type_);

  return v5;
}

- (id)tailSetWithId:(id)id
{
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  v5 = sub_1001C26E8([(JavaUtilSortedSet *)ss tailSetWithId:id], self->super.super.type_);

  return v5;
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

- (id)last
{
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSortedSet *)ss last];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_CheckedSortedSet;
  [(JavaUtilCollections_CheckedCollection *)&v3 dealloc];
}

@end