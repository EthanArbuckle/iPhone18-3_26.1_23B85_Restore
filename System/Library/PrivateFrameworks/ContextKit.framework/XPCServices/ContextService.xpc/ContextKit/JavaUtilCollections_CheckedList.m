@interface JavaUtilCollections_CheckedList
- (BOOL)isEqual:(id)a3;
- (JavaUtilCollections_CheckedList)initWithJavaUtilList:(id)a3 withIOSClass:(id)a4;
- (id)listIterator;
- (int)indexOfWithId:(id)a3;
- (int)lastIndexOfWithId:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilCollections_CheckedList

- (JavaUtilCollections_CheckedList)initWithJavaUtilList:(id)a3 withIOSClass:(id)a4
{
  sub_1001C7CC4(self, a3, a4);
  JreStrongAssign(&self->l_, a3);
  return self;
}

- (int)indexOfWithId:(id)a3
{
  l = self->l_;
  if (!l)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)l indexOfWithId:a3];
}

- (int)lastIndexOfWithId:(id)a3
{
  l = self->l_;
  if (!l)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)l lastIndexOfWithId:a3];
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

- (BOOL)isEqual:(id)a3
{
  l = self->l_;
  if (!l)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)l isEqual:a3];
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