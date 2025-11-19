@interface JavaUtilCollections_UnmodifiableRandomAccessList
- (JavaUtilCollections_UnmodifiableRandomAccessList)initWithJavaUtilList:(id)a3;
- (id)writeReplace;
@end

@implementation JavaUtilCollections_UnmodifiableRandomAccessList

- (JavaUtilCollections_UnmodifiableRandomAccessList)initWithJavaUtilList:(id)a3
{
  JreStrongAssign(&self->super.super.c_, a3);
  JreStrongAssign(&self->super.list_, a3);
  return self;
}

- (id)writeReplace
{
  v2 = sub_1001C23C8(self->super.list_);

  return v2;
}

@end