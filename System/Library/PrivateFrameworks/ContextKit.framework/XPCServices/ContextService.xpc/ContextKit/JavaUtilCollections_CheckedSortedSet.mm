@interface JavaUtilCollections_CheckedSortedSet
- (JavaUtilCollections_CheckedSortedSet)initWithJavaUtilSortedSet:(id)a3 withIOSClass:(id)a4;
- (id)comparator;
- (id)first;
- (id)headSetWithId:(id)a3;
- (id)last;
- (id)subSetWithId:(id)a3 withId:(id)a4;
- (id)tailSetWithId:(id)a3;
- (void)dealloc;
@end

@implementation JavaUtilCollections_CheckedSortedSet

- (JavaUtilCollections_CheckedSortedSet)initWithJavaUtilSortedSet:(id)a3 withIOSClass:(id)a4
{
  sub_1001C7CC4(self, a3, a4);
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

- (id)subSetWithId:(id)a3 withId:(id)a4
{
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  v6 = sub_1001C26E8([(JavaUtilSortedSet *)ss subSetWithId:a3 withId:a4], self->super.super.type_);

  return v6;
}

- (id)headSetWithId:(id)a3
{
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  v5 = sub_1001C26E8([(JavaUtilSortedSet *)ss headSetWithId:a3], self->super.super.type_);

  return v5;
}

- (id)tailSetWithId:(id)a3
{
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  v5 = sub_1001C26E8([(JavaUtilSortedSet *)ss tailSetWithId:a3], self->super.super.type_);

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