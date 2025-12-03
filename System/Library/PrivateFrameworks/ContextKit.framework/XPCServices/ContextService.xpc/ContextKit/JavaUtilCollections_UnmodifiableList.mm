@interface JavaUtilCollections_UnmodifiableList
- (BOOL)isEqual:(id)equal;
- (JavaUtilCollections_UnmodifiableList)initWithJavaUtilList:(id)list;
- (id)readResolve;
- (int)indexOfWithId:(id)id;
- (int)lastIndexOfWithId:(id)id;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilCollections_UnmodifiableList

- (JavaUtilCollections_UnmodifiableList)initWithJavaUtilList:(id)list
{
  JreStrongAssign(&self->super.c_, list);
  JreStrongAssign(&self->list_, list);
  return self;
}

- (BOOL)isEqual:(id)equal
{
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)list isEqual:equal];
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

- (int)indexOfWithId:(id)id
{
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)list indexOfWithId:id];
}

- (int)lastIndexOfWithId:(id)id
{
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)list lastIndexOfWithId:id];
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