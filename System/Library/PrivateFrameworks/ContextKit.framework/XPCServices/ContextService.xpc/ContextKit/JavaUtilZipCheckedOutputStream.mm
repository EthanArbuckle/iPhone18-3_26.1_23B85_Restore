@interface JavaUtilZipCheckedOutputStream
- (JavaUtilZipCheckedOutputStream)initWithJavaIoOutputStream:(id)a3 withJavaUtilZipChecksum:(id)a4;
- (void)dealloc;
@end

@implementation JavaUtilZipCheckedOutputStream

- (JavaUtilZipCheckedOutputStream)initWithJavaIoOutputStream:(id)a3 withJavaUtilZipChecksum:(id)a4
{
  JavaIoFilterOutputStream_initWithJavaIoOutputStream_(self, a3);
  JreStrongAssign(&self->check_, a4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilZipCheckedOutputStream;
  [(JavaIoFilterOutputStream *)&v3 dealloc];
}

@end