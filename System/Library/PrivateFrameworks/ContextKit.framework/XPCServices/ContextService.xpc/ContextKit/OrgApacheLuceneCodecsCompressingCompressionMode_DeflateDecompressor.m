@interface OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor
- (id)clone;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor

- (id)clone
{
  v2 = [OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor alloc];
  sub_10009BD7C(v2, v3);

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor;
  [(OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor *)&v3 dealloc];
}

@end