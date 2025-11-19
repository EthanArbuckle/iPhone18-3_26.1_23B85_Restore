@interface OrgApacheLuceneSearchSort
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (BOOL)needsScores;
- (OrgApacheLuceneSearchSort)init;
- (id)description;
- (id)rewriteWithOrgApacheLuceneSearchIndexSearcher:(id)a3;
- (void)dealloc;
- (void)setSortWithOrgApacheLuceneSearchSortField:(id)a3;
@end

@implementation OrgApacheLuceneSearchSort

- (OrgApacheLuceneSearchSort)init
{
  if ((atomic_load_explicit(OrgApacheLuceneSearchSortField__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000114A0();
  }

  [(OrgApacheLuceneSearchSort *)self setSortWithOrgApacheLuceneSearchSortField:OrgApacheLuceneSearchSortField_FIELD_SCORE_];
  return self;
}

- (void)setSortWithOrgApacheLuceneSearchSortField:(id)a3
{
  v5 = a3;
  v4 = [IOSObjectArray newArrayWithObjects:&v5 count:1 type:OrgApacheLuceneSearchSortField_class_()];
  JreStrongAssignAndConsume(&self->fields_, v4);
}

- (id)rewriteWithOrgApacheLuceneSearchIndexSearcher:(id)a3
{
  fields = self->fields_;
  if (!fields)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v6 = [IOSObjectArray arrayWithLength:fields->super.size_ type:OrgApacheLuceneSearchSortField_class_()];
  v7 = self->fields_;
  if (v7->super.size_ < 1)
  {
    return self;
  }

  v8 = v6;
  v9 = 0;
  v10 = 0;
  do
  {
    v11 = (&v7->elementType_)[v9];
    if (!v11)
    {
      goto LABEL_16;
    }

    IOSObjectArray_Set(v8, v9, [(IOSClass *)v11 rewriteWithOrgApacheLuceneSearchIndexSearcher:a3]);
    v12 = self->fields_;
    size = v12->super.size_;
    if (v9 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v9);
    }

    v14 = (&v12->elementType_)[v9];
    v15 = *(v8 + 8);
    if (v9 >= v15)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, v9);
    }

    v10 |= v14 != *(v8 + 24 + 8 * v9++);
    v7 = self->fields_;
  }

  while (v9 < v7->super.size_);
  if ((v10 & 1) == 0)
  {
    return self;
  }

  v16 = [OrgApacheLuceneSearchSort alloc];
  [(OrgApacheLuceneSearchSort *)v16 setSortWithOrgApacheLuceneSearchSortFieldArray:v8];

  return v16;
}

- (id)description
{
  v3 = new_JavaLangStringBuilder_init();
  fields = self->fields_;
  if (!fields)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v5 = v3;
  v6 = 0;
  while (v6 < fields->super.size_)
  {
    v7 = (&fields->elementType_)[v6];
    if (v7)
    {
      [(JavaLangStringBuilder *)v5 appendWithNSString:[(IOSClass *)v7 description]];
      fields = self->fields_;
      if (fields->super.size_ > v6 + 1)
      {
        [(JavaLangStringBuilder *)v5 appendWithChar:44];
        fields = self->fields_;
      }

      ++v6;
      if (fields)
      {
        continue;
      }
    }

    goto LABEL_8;
  }

  return [(JavaLangStringBuilder *)v5 description];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  fields = self->fields_;
  v6 = *(a3 + 1);

  return JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(fields, v6);
}

- (BOOL)needsScores
{
  fields = self->fields_;
  if (!fields)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  p_elementType = &fields->elementType_;
  v4 = &(&fields->elementType_)[fields->super.size_];
  do
  {
    v5 = p_elementType;
    if (p_elementType >= v4)
    {
      break;
    }

    v6 = *p_elementType;
    if (!*p_elementType)
    {
      goto LABEL_7;
    }

    ++p_elementType;
  }

  while (![v6 needsScores]);
  return v5 < v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchSort;
  [(OrgApacheLuceneSearchSort *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = new_OrgApacheLuceneSearchSort_init();
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSort_RELEVANCE_, v2);
    if ((atomic_load_explicit(OrgApacheLuceneSearchSortField__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000114A0();
    }

    v3 = OrgApacheLuceneSearchSortField_FIELD_DOC_;
    v4 = [OrgApacheLuceneSearchSort alloc];
    [(OrgApacheLuceneSearchSort *)v4 setSortWithOrgApacheLuceneSearchSortField:v3];
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSort_INDEXORDER_, v4);
    atomic_store(1u, OrgApacheLuceneSearchSort__initialized);
  }
}

@end