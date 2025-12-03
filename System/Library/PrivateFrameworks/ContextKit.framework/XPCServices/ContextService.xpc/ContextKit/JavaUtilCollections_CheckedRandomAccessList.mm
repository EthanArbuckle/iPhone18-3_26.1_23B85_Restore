@interface JavaUtilCollections_CheckedRandomAccessList
- (JavaUtilCollections_CheckedRandomAccessList)initWithJavaUtilList:(id)list withIOSClass:(id)class;
@end

@implementation JavaUtilCollections_CheckedRandomAccessList

- (JavaUtilCollections_CheckedRandomAccessList)initWithJavaUtilList:(id)list withIOSClass:(id)class
{
  sub_1001C7CC4(self, list, class);
  JreStrongAssign(&self->super.l_, list);
  return self;
}

@end