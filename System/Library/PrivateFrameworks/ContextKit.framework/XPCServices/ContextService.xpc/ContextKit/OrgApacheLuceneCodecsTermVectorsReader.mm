@interface OrgApacheLuceneCodecsTermVectorsReader
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation OrgApacheLuceneCodecsTermVectorsReader

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(OrgApacheLuceneCodecsTermVectorsReader *)self clone];

  return clone;
}

@end