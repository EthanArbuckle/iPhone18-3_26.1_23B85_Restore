@interface JavaUtilZipCheckedOutputStream
- (JavaUtilZipCheckedOutputStream)initWithJavaIoOutputStream:(id)stream withJavaUtilZipChecksum:(id)checksum;
- (void)dealloc;
@end

@implementation JavaUtilZipCheckedOutputStream

- (JavaUtilZipCheckedOutputStream)initWithJavaIoOutputStream:(id)stream withJavaUtilZipChecksum:(id)checksum
{
  JavaIoFilterOutputStream_initWithJavaIoOutputStream_(self, stream);
  JreStrongAssign(&self->check_, checksum);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilZipCheckedOutputStream;
  [(JavaIoFilterOutputStream *)&v3 dealloc];
}

@end