@interface OrgApacheLuceneIndexMergeState_DocMap_$1
- (OrgApacheLuceneIndexMergeState_DocMap_$1)initWithOrgApacheLuceneUtilBits:(id)bits withOrgApacheLuceneUtilPackedPackedLongValues:(id)values withInt:(int)int withInt:(int)withInt;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMergeState_DocMap_$1

- (OrgApacheLuceneIndexMergeState_DocMap_$1)initWithOrgApacheLuceneUtilBits:(id)bits withOrgApacheLuceneUtilPackedPackedLongValues:(id)values withInt:(int)int withInt:(int)withInt
{
  JreStrongAssign(&self->val$liveDocs_, bits);
  JreStrongAssign(&self->val$docMap_, values);
  self->val$maxDoc_ = int;
  self->val$numDeletedDocs_ = withInt;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMergeState_DocMap__1;
  [(OrgApacheLuceneIndexMergeState_DocMap_$1 *)&v3 dealloc];
}

@end