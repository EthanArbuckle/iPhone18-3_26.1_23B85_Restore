@interface OrgApacheLuceneSearchTopFieldCollector
+ (void)initialize;
- (id)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(id)array withInt:(int)int;
- (id)topDocs;
- (void)dealloc;
- (void)populateResultsWithOrgApacheLuceneSearchScoreDocArray:(id)array withInt:(int)int;
@end

@implementation OrgApacheLuceneSearchTopFieldCollector

- (void)populateResultsWithOrgApacheLuceneSearchScoreDocArray:(id)array withInt:(int)int
{
  if (!self->fillFields_)
  {
    v9 = (int - 1);
    if (v9 < 0)
    {
      return;
    }

    while (1)
    {
      pq = self->super.pq_;
      if (!pq)
      {
        break;
      }

      v11 = [(OrgApacheLuceneUtilPriorityQueue *)pq pop];
      if (!array || !v11)
      {
        break;
      }

      v12 = new_OrgApacheLuceneSearchFieldDoc_initWithInt_withFloat_(*(v11 + 3), *(v11 + 2));
      IOSObjectArray_SetAndConsume(array, v9, v12);
      if (v9-- <= 0)
      {
        return;
      }
    }

    goto LABEL_16;
  }

  v7 = self->super.pq_;
  objc_opt_class();
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v8 = (int - 1);
  if (v8 >= 0)
  {
    if (array && v7)
    {
      do
      {
        IOSObjectArray_Set(array, v8--, [(OrgApacheLuceneUtilPriorityQueue *)v7 fillFieldsWithOrgApacheLuceneSearchFieldValueHitQueue_Entry:[(OrgApacheLuceneUtilPriorityQueue *)v7 pop]]);
      }

      while (v8 != -1);
      return;
    }

LABEL_16:
    JreThrowNullPointerException();
  }
}

- (id)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(id)array withInt:(int)int
{
  arrayCopy = array;
  if (!array)
  {
    arrayCopy = qword_100554230;
    *(&self->super.totalHits_ + 1) = 2143289344;
  }

  totalHits = self->super.totalHits_;
  pq = self->super.pq_;
  objc_opt_class();
  if (!pq)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v8 = new_OrgApacheLuceneSearchTopFieldDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withOrgApacheLuceneSearchSortFieldArray_withFloat_(totalHits, arrayCopy, [(OrgApacheLuceneUtilPriorityQueue *)pq getFields], *(&self->super.totalHits_ + 1));

  return v8;
}

- (id)topDocs
{
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneSearchTopFieldCollector;
  topDocs = [(OrgApacheLuceneSearchTopDocsCollector *)&v4 topDocs];
  objc_opt_class();
  if (topDocs && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return topDocs;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldCollector;
  [(OrgApacheLuceneSearchTopDocsCollector *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneSearchScoreDoc_class_()];
    JreStrongAssignAndConsume(&qword_100554230, v2);
    atomic_store(1u, &OrgApacheLuceneSearchTopFieldCollector__initialized);
  }
}

@end