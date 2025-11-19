@interface OrgApacheLuceneSearchTopDocs_ShardRef
- (id)description;
@end

@implementation OrgApacheLuceneSearchTopDocs_ShardRef

- (id)description
{
  hitIndex = self->hitIndex_;
  shardIndex = self->shardIndex_;
  return JreStrcat("$I$IC", a2, v2, v3, v4, v5, v6, v7, @"ShardRef(shardIndex=");
}

@end