@interface OrgApacheLuceneCodecsCompressingCompressionMode
+ (void)initialize;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressionMode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&OrgApacheLuceneCodecsCompressingCompressionMode_FAST_, [OrgApacheLuceneCodecsCompressingCompressionMode__1 alloc]);
    JreStrongAssignAndConsume(&OrgApacheLuceneCodecsCompressingCompressionMode_HIGH_COMPRESSION_, [OrgApacheLuceneCodecsCompressingCompressionMode__2 alloc]);
    JreStrongAssignAndConsume(&OrgApacheLuceneCodecsCompressingCompressionMode_FAST_DECOMPRESSION_, [OrgApacheLuceneCodecsCompressingCompressionMode__3 alloc]);
    v2 = [OrgApacheLuceneCodecsCompressingCompressionMode__4 alloc];
    OrgApacheLuceneCodecsCompressingDecompressor_init(v2, v3);
    JreStrongAssignAndConsume(&qword_100554290, v2);
    atomic_store(1u, OrgApacheLuceneCodecsCompressingCompressionMode__initialized);
  }
}

@end