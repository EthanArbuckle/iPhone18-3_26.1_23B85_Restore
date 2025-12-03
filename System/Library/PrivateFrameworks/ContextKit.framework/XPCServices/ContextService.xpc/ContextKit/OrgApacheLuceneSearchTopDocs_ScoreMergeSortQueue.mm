@interface OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue
- (BOOL)lessThanWithId:(id)id withId:(id)withId;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue

- (BOOL)lessThanWithId:(id)id withId:(id)withId
{
  shardHits = self->shardHits_;
  if (!shardHits || !id)
  {
    goto LABEL_23;
  }

  v6 = *(id + 2);
  size = shardHits->super.size_;
  if (v6 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  v8 = (&shardHits->elementType_)[v6];
  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = *(id + 3);
  isa_low = LODWORD(v8[1].super.isa);
  if (v9 < 0 || v9 >= isa_low)
  {
    IOSArray_throwOutOfBoundsWithMsg(isa_low, v9);
  }

  isa = v8[v9 + 3].super.isa;
  if (!isa || !withId)
  {
    goto LABEL_23;
  }

  v12 = *(isa + 2);
  v13 = self->shardHits_;
  v14 = *(withId + 2);
  v15 = v13->super.size_;
  if (v14 < 0 || v14 >= v15)
  {
    IOSArray_throwOutOfBoundsWithMsg(v15, v14);
  }

  v16 = (&v13->elementType_)[v14];
  if (!v16)
  {
    goto LABEL_23;
  }

  v17 = *(withId + 3);
  v18 = LODWORD(v16[1].super.isa);
  if (v17 < 0 || v17 >= v18)
  {
    IOSArray_throwOutOfBoundsWithMsg(v18, v17);
  }

  v19 = v16[v17 + 3].super.isa;
  if (!v19)
  {
LABEL_23:
    JreThrowNullPointerException();
  }

  v20 = *(v19 + 2);
  if (v12 < v20)
  {
    return 0;
  }

  if (v12 > v20)
  {
    return 1;
  }

  v22 = *(id + 2);
  v23 = *(withId + 2);
  if (v22 < v23)
  {
    return 1;
  }

  if (v22 > v23)
  {
    return 0;
  }

  return *(id + 3) < *(withId + 3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue;
  [(OrgApacheLuceneUtilPriorityQueue *)&v3 dealloc];
}

@end