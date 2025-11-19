@interface OrgApacheLuceneCodecsCompressingCompressionMode_$1
- (id)newCompressor;
- (id)newDecompressor;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressionMode_$1

- (id)newCompressor
{
  v2 = [OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor alloc];
  OrgApacheLuceneCodecsCompressingCompressor_init(v2, v3);
  v4 = new_OrgApacheLuceneCodecsCompressingLZ4_HashTable_init();
  JreStrongAssignAndConsume(&v2->ht_, v4);

  return v2;
}

- (id)newDecompressor
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsCompressingCompressionMode__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10005CD10();
  }

  return qword_100554290;
}

@end