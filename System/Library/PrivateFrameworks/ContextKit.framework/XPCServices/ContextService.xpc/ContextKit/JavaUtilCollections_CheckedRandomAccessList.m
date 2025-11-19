@interface JavaUtilCollections_CheckedRandomAccessList
- (JavaUtilCollections_CheckedRandomAccessList)initWithJavaUtilList:(id)a3 withIOSClass:(id)a4;
@end

@implementation JavaUtilCollections_CheckedRandomAccessList

- (JavaUtilCollections_CheckedRandomAccessList)initWithJavaUtilList:(id)a3 withIOSClass:(id)a4
{
  sub_1001C7CC4(self, a3, a4);
  JreStrongAssign(&self->super.l_, a3);
  return self;
}

@end