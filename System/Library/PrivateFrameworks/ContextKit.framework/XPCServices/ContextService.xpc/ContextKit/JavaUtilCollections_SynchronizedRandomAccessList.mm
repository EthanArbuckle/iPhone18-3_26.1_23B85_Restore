@interface JavaUtilCollections_SynchronizedRandomAccessList
- (JavaUtilCollections_SynchronizedRandomAccessList)initWithJavaUtilList:(id)list;
- (id)writeReplace;
@end

@implementation JavaUtilCollections_SynchronizedRandomAccessList

- (JavaUtilCollections_SynchronizedRandomAccessList)initWithJavaUtilList:(id)list
{
  JavaUtilCollections_SynchronizedCollection_initWithJavaUtilCollection_(self, list);
  JreStrongAssign(&self->super.list_, list);
  return self;
}

- (id)writeReplace
{
  v2 = new_JavaUtilCollections_SynchronizedList_initWithJavaUtilList_(self->super.list_);

  return v2;
}

@end