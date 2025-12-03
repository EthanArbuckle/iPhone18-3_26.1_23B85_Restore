@interface JavaUtilCollections_CheckedList
- (BOOL)isEqual:(id)equal;
- (JavaUtilCollections_CheckedList)initWithJavaUtilList:(id)list withIOSClass:(id)class;
- (id)listIterator;
- (int)indexOfWithId:(id)id;
- (int)lastIndexOfWithId:(id)id;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilCollections_CheckedList

- (JavaUtilCollections_CheckedList)initWithJavaUtilList:(id)list withIOSClass:(id)class
{
  sub_1001C7CC4(self, list, class);
  JreStrongAssign(&self->l_, list);
  return self;
}

- (int)indexOfWithId:(id)id
{
  l = self->l_;
  if (!l)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)l indexOfWithId:id];
}

- (int)lastIndexOfWithId:(id)id
{
  l = self->l_;
  if (!l)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)l lastIndexOfWithId:id];
}

- (id)listIterator
{
  l = self->l_;
  if (!l)
  {
    JreThrowNullPointerException();
  }

  v4 = sub_1001C7E30([(JavaUtilList *)l listIterator], self->super.type_);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  l = self->l_;
  if (!l)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)l isEqual:equal];
}

- (unint64_t)hash
{
  l = self->l_;
  if (!l)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)l hash];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_CheckedList;
  [(JavaUtilCollections_CheckedCollection *)&v3 dealloc];
}

@end