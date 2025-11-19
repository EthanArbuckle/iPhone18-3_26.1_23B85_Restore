@interface OrgApacheLuceneSearchTopDocs_MergeSortQueue
- (BOOL)lessThanWithId:(id)a3 withId:(id)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopDocs_MergeSortQueue

- (BOOL)lessThanWithId:(id)a3 withId:(id)a4
{
  shardHits = self->shardHits_;
  if (!shardHits || !a3)
  {
    goto LABEL_41;
  }

  v8 = *(a3 + 2);
  size = shardHits->super.size_;
  if (v8 < 0 || v8 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v8);
  }

  v10 = (&shardHits->elementType_)[v8];
  if (!v10)
  {
    goto LABEL_41;
  }

  v11 = *(a3 + 3);
  isa_low = LODWORD(v10[1].super.isa);
  if (v11 < 0 || v11 >= isa_low)
  {
    IOSArray_throwOutOfBoundsWithMsg(isa_low, v11);
  }

  isa = v10[v11 + 3].super.isa;
  objc_opt_class();
  if (isa && (objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_42:
    JreThrowClassCastException();
  }

  if (!a4)
  {
    goto LABEL_41;
  }

  v38 = a3;
  v14 = self->shardHits_;
  v15 = *(a4 + 2);
  v16 = v14->super.size_;
  if (v15 < 0 || v15 >= v16)
  {
    IOSArray_throwOutOfBoundsWithMsg(v16, v15);
  }

  v17 = (&v14->elementType_)[v15];
  if (!v17)
  {
LABEL_41:
    JreThrowNullPointerException();
  }

  v18 = *(a4 + 3);
  v19 = LODWORD(v17[1].super.isa);
  if (v18 < 0 || v18 >= v19)
  {
    IOSArray_throwOutOfBoundsWithMsg(v19, v18);
  }

  v20 = v17[v18 + 3].super.isa;
  objc_opt_class();
  if (v20 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_42;
  }

  v37 = a4;
  comparators = self->comparators_;
  if (!comparators)
  {
    goto LABEL_41;
  }

  v22 = 0;
  while (v22 < comparators->super.size_)
  {
    reverseMul = self->reverseMul_;
    if (!reverseMul)
    {
      goto LABEL_41;
    }

    v24 = (&comparators->elementType_)[v22];
    v25 = reverseMul->super.size_;
    if (v22 >= v25)
    {
      IOSArray_throwOutOfBoundsWithMsg(v25, v22);
    }

    if (!v24)
    {
      goto LABEL_41;
    }

    if (!isa)
    {
      goto LABEL_41;
    }

    v26 = *(isa + 3);
    if (!v26)
    {
      goto LABEL_41;
    }

    v27 = *(&reverseMul->super.size_ + v22 + 1);
    v28 = *(v26 + 8);
    if (v22 >= v28)
    {
      IOSArray_throwOutOfBoundsWithMsg(v28, v22);
    }

    if (!v20)
    {
      goto LABEL_41;
    }

    v29 = *(v26 + 24 + 8 * v22);
    v30 = *(v20 + 3);
    v31 = *(v30 + 8);
    if (v22 >= v31)
    {
      IOSArray_throwOutOfBoundsWithMsg(v31, v22);
    }

    v32 = [(IOSClass *)v24 compareValuesWithId:v29 withId:*(v30 + 24 + 8 * v22)]* v27;
    if (v32)
    {
      return v32 >> 31;
    }

    ++v22;
    comparators = self->comparators_;
    if (!comparators)
    {
      goto LABEL_41;
    }
  }

  v33 = v38[2];
  v34 = v37[2];
  LOBYTE(v35) = v33 < v34 || v33 <= v34 && v38[3] < v37[3];
  return v35;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopDocs_MergeSortQueue;
  [(OrgApacheLuceneUtilPriorityQueue *)&v3 dealloc];
}

@end