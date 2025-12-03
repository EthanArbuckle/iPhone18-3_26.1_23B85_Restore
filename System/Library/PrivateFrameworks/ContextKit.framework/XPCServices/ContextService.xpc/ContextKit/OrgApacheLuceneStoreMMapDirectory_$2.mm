@interface OrgApacheLuceneStoreMMapDirectory_$2
- (void)freeBufferWithOrgApacheLuceneStoreByteBufferIndexInput:(id)input withJavaNioByteBuffer:(id)buffer;
@end

@implementation OrgApacheLuceneStoreMMapDirectory_$2

- (void)freeBufferWithOrgApacheLuceneStoreByteBufferIndexInput:(id)input withJavaNioByteBuffer:(id)buffer
{
  v5 = [OrgApacheLuceneStoreMMapDirectory__2__1 alloc];
  JreStrongAssign(&v5->val$buffer_, buffer);
  JavaSecurityAccessController_doPrivilegedWithJavaSecurityPrivilegedExceptionAction_(v5);
}

@end