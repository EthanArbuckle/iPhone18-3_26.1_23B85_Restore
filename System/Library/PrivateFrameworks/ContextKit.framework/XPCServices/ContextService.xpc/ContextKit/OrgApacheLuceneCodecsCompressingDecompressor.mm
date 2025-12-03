@interface OrgApacheLuceneCodecsCompressingDecompressor
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation OrgApacheLuceneCodecsCompressingDecompressor

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(OrgApacheLuceneCodecsCompressingDecompressor *)self clone];

  return clone;
}

@end