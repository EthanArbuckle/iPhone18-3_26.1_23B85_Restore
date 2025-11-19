@interface JavaUtilCollections_SynchronizedRandomAccessList
- (JavaUtilCollections_SynchronizedRandomAccessList)initWithJavaUtilList:(id)a3;
- (id)writeReplace;
@end

@implementation JavaUtilCollections_SynchronizedRandomAccessList

- (JavaUtilCollections_SynchronizedRandomAccessList)initWithJavaUtilList:(id)a3
{
  JavaUtilCollections_SynchronizedCollection_initWithJavaUtilCollection_(self, a3);
  JreStrongAssign(&self->super.list_, a3);
  return self;
}

- (id)writeReplace
{
  v2 = new_JavaUtilCollections_SynchronizedList_initWithJavaUtilList_(self->super.list_);

  return v2;
}

@end