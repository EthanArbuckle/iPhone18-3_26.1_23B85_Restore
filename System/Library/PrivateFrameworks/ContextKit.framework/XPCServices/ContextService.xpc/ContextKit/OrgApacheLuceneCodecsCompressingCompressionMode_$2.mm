@interface OrgApacheLuceneCodecsCompressingCompressionMode_$2
- (id)newCompressor;
- (id)newDecompressor;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressionMode_$2

- (id)newCompressor
{
  v2 = [OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor alloc];
  sub_10009C124(v2, 6);

  return v2;
}

- (id)newDecompressor
{
  v2 = [OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor alloc];
  sub_10009BD7C(v2, v3);

  return v2;
}

@end