@interface OrgApacheLuceneCodecsStoredFieldsReader
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation OrgApacheLuceneCodecsStoredFieldsReader

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(OrgApacheLuceneCodecsStoredFieldsReader *)self clone];

  return clone;
}

@end