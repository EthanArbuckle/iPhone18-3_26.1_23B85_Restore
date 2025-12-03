@interface OrgApacheLuceneUtilAutomatonOperations_PointTransitionSet
- (id)description;
- (void)addWithOrgApacheLuceneUtilAutomatonTransition:(id)transition;
- (void)dealloc;
- (void)reset;
- (void)sort;
@end

@implementation OrgApacheLuceneUtilAutomatonOperations_PointTransitionSet

- (void)reset
{
  if (self->useHash_)
  {
    map = self->map_;
    if (!map)
    {
      JreThrowNullPointerException();
    }

    [(JavaUtilHashMap *)map clear];
    self->useHash_ = 0;
  }

  self->count_ = 0;
}

- (void)sort
{
  count = self->count_;
  if (count >= 2)
  {
    OrgApacheLuceneUtilArrayUtil_timSortWithJavaLangComparableArray_withInt_withInt_(self->points_, 0, count);
  }
}

- (void)addWithOrgApacheLuceneUtilAutomatonTransition:(id)transition
{
  if (!transition || (v10 = sub_1000D0884(self, *(transition + 4), transition, v3, v4, v5, v6, v7)) == 0 || (v11 = v10[3]) == 0 || ([v11 addWithOrgApacheLuceneUtilAutomatonTransition:transition], (v18 = sub_1000D0884(self, (*(transition + 5) + 1), v12, v13, v14, v15, v16, v17)) == 0) || (v19 = v18[2]) == 0)
  {
    JreThrowNullPointerException();
  }

  [v19 addWithOrgApacheLuceneUtilAutomatonTransition:transition];
}

- (id)description
{
  v3 = new_JavaLangStringBuilder_init();
  if (self->count_ >= 1)
  {
    v4 = 0;
    do
    {
      if (v4)
      {
        [(JavaLangStringBuilder *)v3 appendWithChar:32];
      }

      points = self->points_;
      if (!points)
      {
        goto LABEL_26;
      }

      size = points->super.size_;
      if (v4 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v4);
      }

      v7 = (&points->elementType_)[v4];
      if (!v7)
      {
        goto LABEL_26;
      }

      v8 = [(JavaLangStringBuilder *)v3 appendWithInt:LODWORD(v7[1].super.isa)];
      if (!v8)
      {
        goto LABEL_26;
      }

      v9 = [v8 appendWithChar:58];
      if (!v9)
      {
        goto LABEL_26;
      }

      v10 = v9;
      v11 = self->points_;
      v12 = v11->super.size_;
      if (v4 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v4);
      }

      v13 = (&v11->elementType_)[v4];
      if (!v13)
      {
        goto LABEL_26;
      }

      isa = v13[3].super.isa;
      if (!isa)
      {
        goto LABEL_26;
      }

      v15 = [v10 appendWithInt:(*(isa + 4) / 3)];
      if (!v15)
      {
        goto LABEL_26;
      }

      v16 = [v15 appendWithChar:44];
      if (!v16)
      {
        goto LABEL_26;
      }

      v17 = v16;
      v18 = self->points_;
      v19 = v18->super.size_;
      if (v4 >= v19)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, v4);
      }

      v20 = (&v18->elementType_)[v4];
      if (!v20 || (v21 = v20[2].super.isa) == 0)
      {
LABEL_26:
        JreThrowNullPointerException();
      }

      [v17 appendWithInt:(*(v21 + 4) / 3)];
      ++v4;
    }

    while (v4 < self->count_);
  }

  return [(JavaLangStringBuilder *)v3 description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAutomatonOperations_PointTransitionSet;
  [(OrgApacheLuceneUtilAutomatonOperations_PointTransitionSet *)&v3 dealloc];
}

@end