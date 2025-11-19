@interface OrgApacheLuceneIndexMergeState_DocMap_$1
- (OrgApacheLuceneIndexMergeState_DocMap_$1)initWithOrgApacheLuceneUtilBits:(id)a3 withOrgApacheLuceneUtilPackedPackedLongValues:(id)a4 withInt:(int)a5 withInt:(int)a6;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMergeState_DocMap_$1

- (OrgApacheLuceneIndexMergeState_DocMap_$1)initWithOrgApacheLuceneUtilBits:(id)a3 withOrgApacheLuceneUtilPackedPackedLongValues:(id)a4 withInt:(int)a5 withInt:(int)a6
{
  JreStrongAssign(&self->val$liveDocs_, a3);
  JreStrongAssign(&self->val$docMap_, a4);
  self->val$maxDoc_ = a5;
  self->val$numDeletedDocs_ = a6;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMergeState_DocMap__1;
  [(OrgApacheLuceneIndexMergeState_DocMap_$1 *)&v3 dealloc];
}

@end