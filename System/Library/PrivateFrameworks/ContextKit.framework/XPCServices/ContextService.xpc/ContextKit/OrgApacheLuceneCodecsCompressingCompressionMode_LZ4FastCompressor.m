@interface OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor
- (OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor)init;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor

- (OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor)init
{
  OrgApacheLuceneCodecsCompressingCompressor_init(self, a2);
  v3 = new_OrgApacheLuceneCodecsCompressingLZ4_HashTable_init();
  JreStrongAssignAndConsume(&self->ht_, v3);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor;
  [(OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor *)&v3 dealloc];
}

@end