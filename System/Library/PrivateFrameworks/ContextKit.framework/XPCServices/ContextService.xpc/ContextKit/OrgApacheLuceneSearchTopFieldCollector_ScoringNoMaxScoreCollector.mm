@interface OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector
- (OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector)initWithOrgApacheLuceneSearchSort:(id)sort withOrgApacheLuceneSearchFieldValueHitQueue:(id)queue withInt:(int)int withBoolean:(BOOL)boolean;
- (id)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector

- (OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector)initWithOrgApacheLuceneSearchSort:(id)sort withOrgApacheLuceneSearchFieldValueHitQueue:(id)queue withInt:(int)int withBoolean:(BOOL)boolean
{
  sub_1000944EC(self, queue, int, boolean, 1);
  JreStrongAssign(&self->queue_, queue);
  return self;
}

- (id)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  if (!context)
  {
    goto LABEL_12;
  }

  self->super.docBase_ = *(context + 8);
  queue = self->queue_;
  if (!queue)
  {
    goto LABEL_12;
  }

  v5 = [(OrgApacheLuceneSearchFieldValueHitQueue *)queue getComparatorsWithOrgApacheLuceneIndexLeafReaderContext:?];
  getReverseMul = [(OrgApacheLuceneSearchFieldValueHitQueue *)self->queue_ getReverseMul];
  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = getReverseMul;
  if (v5[2] != 1)
  {
    v11 = [OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector__2 alloc];
    JreStrongAssign(&v11[1].super.comparator_, self);
    sub_100094EC0(v11, v5, v7);
    goto LABEL_9;
  }

  if (!getReverseMul)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v8 = *(v5 + 3);
  v9 = getReverseMul[2];
  if (v9 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, 0);
  }

  v10 = v7[3];
  v11 = [OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector__1 alloc];
  JreStrongAssign(&v11->this$0_, self);
  JreStrongAssign(&v11->super.comparator_, v8);
  v11->super.reverseMul_ = v10;
LABEL_9:

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector;
  [(OrgApacheLuceneSearchTopFieldCollector *)&v3 dealloc];
}

@end