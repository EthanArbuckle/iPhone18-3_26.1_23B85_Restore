@interface JavaUtilCollections_UnmodifiableList
- (BOOL)isEqual:(id)a3;
- (JavaUtilCollections_UnmodifiableList)initWithJavaUtilList:(id)a3;
- (id)readResolve;
- (int)indexOfWithId:(id)a3;
- (int)lastIndexOfWithId:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilCollections_UnmodifiableList

- (JavaUtilCollections_UnmodifiableList)initWithJavaUtilList:(id)a3
{
  JreStrongAssign(&self->super.c_, a3);
  JreStrongAssign(&self->list_, a3);
  return self;
}

- (BOOL)isEqual:(id)a3
{
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)list isEqual:a3];
}

- (unint64_t)hash
{
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)list hash];
}

- (int)indexOfWithId:(id)a3
{
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)list indexOfWithId:a3];
}

- (int)lastIndexOfWithId:(id)a3
{
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)list lastIndexOfWithId:a3];
}

- (id)readResolve
{
  if (![JavaUtilRandomAccess_class_() isInstance:self->list_])
  {
    return self;
  }

  v3 = sub_1001C2374(self->list_);

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_UnmodifiableList;
  [(JavaUtilCollections_UnmodifiableCollection *)&v3 dealloc];
}

@end