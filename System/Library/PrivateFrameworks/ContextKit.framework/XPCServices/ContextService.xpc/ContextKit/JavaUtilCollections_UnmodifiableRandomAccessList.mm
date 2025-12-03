@interface JavaUtilCollections_UnmodifiableRandomAccessList
- (JavaUtilCollections_UnmodifiableRandomAccessList)initWithJavaUtilList:(id)list;
- (id)writeReplace;
@end

@implementation JavaUtilCollections_UnmodifiableRandomAccessList

- (JavaUtilCollections_UnmodifiableRandomAccessList)initWithJavaUtilList:(id)list
{
  JreStrongAssign(&self->super.super.c_, list);
  JreStrongAssign(&self->super.list_, list);
  return self;
}

- (id)writeReplace
{
  v2 = sub_1001C23C8(self->super.list_);

  return v2;
}

@end