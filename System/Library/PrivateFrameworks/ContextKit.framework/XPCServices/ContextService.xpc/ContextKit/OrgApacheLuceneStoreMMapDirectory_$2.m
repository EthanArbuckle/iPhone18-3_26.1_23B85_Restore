@interface OrgApacheLuceneStoreMMapDirectory_$2
- (void)freeBufferWithOrgApacheLuceneStoreByteBufferIndexInput:(id)a3 withJavaNioByteBuffer:(id)a4;
@end

@implementation OrgApacheLuceneStoreMMapDirectory_$2

- (void)freeBufferWithOrgApacheLuceneStoreByteBufferIndexInput:(id)a3 withJavaNioByteBuffer:(id)a4
{
  v5 = [OrgApacheLuceneStoreMMapDirectory__2__1 alloc];
  JreStrongAssign(&v5->val$buffer_, a4);
  JavaSecurityAccessController_doPrivilegedWithJavaSecurityPrivilegedExceptionAction_(v5);
}

@end